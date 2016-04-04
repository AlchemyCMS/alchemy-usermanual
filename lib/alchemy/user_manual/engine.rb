module Alchemy
  module UserManual
    class Engine < ::Rails::Engine
      isolate_namespace Alchemy
      engine_name 'alchemy_user_manual'

      initializer 'alchemy_user_manual.assets' do |app|
        app.config.assets.precompile += [
          "alchemy/icon_user_manual.png",
          "alchemy/user_manual.css",
          "alchemy/user_manual.js"
        ]
      end

      initializer 'alchemy_register_user_manual_ability' do
        Alchemy.register_ability Alchemy::UserManual::Ability
      end
    end
  end
end
