$ ->
  # Because of the toolbar at the top, all anchor links scroll to their targets with an offset
  $('.user_manual a[href^="#"]').on 'click', (e) ->
    e.preventDefault()
    $target = $("a[name=#{$(@).attr('href').split('#')[1]}]")
    $("html, body").animate
      scrollTop: $target.offset().top - '85'
    , 200
