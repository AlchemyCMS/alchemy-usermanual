require 'erb'
require 'github/markdown'

module Alchemy
  module UserManual
    class Creator
      include TemplateHelper

      attr_accessor :name

      def initialize(name = Rails.application.class.parent_name)
        self.name = name
        @manual = self
      end

      def html_content
        @content ||= GitHub::Markdown.render_gfm(render_content)
      end

    private

      def template_path
        File.expand_path("../templates", __FILE__)
      end

      def ordered_template_files
        Dir[
          "#{template_path}/introduction.md.erb",
          "#{template_path}/page_layouts.md.erb",
          "#{template_path}/elements.md.erb"
        ]
      end

      def render_content
        render_result = ""
        ordered_template_files.each do |template|
          render_result << ERB.new(File.read(template)).result(binding)
        end
        render_result
      end
    end
  end
end
