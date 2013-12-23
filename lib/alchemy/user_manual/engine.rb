module Alchemy
  module UserManual
    class Engine < ::Rails::Engine
      isolate_namespace Alchemy
      engine_name 'alchemy_user_manual'

      initializer 'alchemy_user_manual.assets' do |app|
        app.config.assets.precompile += [
          "alchemy/user_manual.css",
          "alchemy/user_manual.js"
        ]
      end

      def self.add_auth_rules
        Alchemy::Auth::Engine.get_instance.load(File.join(File.dirname(__FILE__), '../../..', 'config/authorization_rules.rb'))
      end

      config.to_prepare &method(:add_auth_rules).to_proc
    end
  end
end
