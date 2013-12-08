require 'spec_helper'

module Alchemy::UserManual
  describe "Creator" do

    let(:manual) { Creator.new("testmanual") }

    describe "#name" do
      context "when a name was passed on manual creation" do
        it "should return the given name" do
          expect(manual.name).to eq "testmanual"
        end
      end
      context "when no name was passed on manual creation" do
        it "should return the main apps name" do
          expect(Creator.new.name).to eq Rails.application.class.parent_name
        end
      end
    end

    describe "#html_content" do
      it "renders github flavored markdown" do
        GitHub::Markdown.should_receive(:render_gfm)
        manual.html_content
      end
    end

  end
end
