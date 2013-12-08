Alchemy::Modules.register_module({
  name: 'user_manual',
  engine_name: 'alchemy',
  navigation: {
    name: 'modules.user_manual',
    controller: 'alchemy/admin/user_manual',
    action: 'show',
    image: 'alchemy/icon_user_manual.png',
    sub_navigation: [{
      name: 'modules.user_manual',
      controller: 'alchemy/admin/user_manual',
      action: 'show'
    }]
  }
})
