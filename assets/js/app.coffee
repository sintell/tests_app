$ ->
  x = -> $('<h2>Express Coffee Template 1.4</h2>').prependTo('.right')
  setTimeout x, 500

  $("#signup").click (e) ->
    e.preventDefault()
    $("#gr1").addClass("hide")
    $("#gr2").removeClass("hide")

  $("#hidegr2").click (e) ->
    e.preventDefault()
    $("#gr1").removeClass("hide")
    $("#gr2").addClass("hide")

  $("#pwdch").find('input').blur (e) ->
    cg = $("#pwdch")
    pcg = $("#pwd")
    cg.removeClass("success")
    pcg.removeClass("success")
    cg.removeClass("error")
    pcg.removeClass("error")
    
    if $("#pwdch").find('input').val() != $("#pwd").find('input').val() 
      console.log("Passwords doesn't match")
      $("#pwd").popover({content:"Пароли не совпадают.", trigger: 'manual'})
      $("#pwd").popover('show')
      cg.addClass("error")
      pcg.addClass("error")
    else
      cg.addClass("success")
      pcg.addClass("success")
      $("#pwd").popover('destroy')
  $("#pwd").find('input').blur (e) ->
    cg = $("#pwdch")
    pcg = $("#pwd")
    cg.removeClass("success")
    pcg.removeClass("success")
    cg.removeClass("error")
    pcg.removeClass("error")
    
    if $("#pwdch").find('input').val() != $("#pwd").find('input').val() 
      console.log("Passwords doesn't match")
      $("#pwd").popover({content:"Пароли не совпадают.", trigger: 'manual'})
      $("#pwd").popover('show')
      cg.addClass("error")
      pcg.addClass("error")
    else
      cg.addClass("success")
      pcg.addClass("success")
      $("#pwd").popover('destroy')


  $("#uname").find('input').blur (e) ->
    cg = $("#uname")
    cg.removeClass("success")
    cg.removeClass("error")
    cg.popover('destroy')
    if $("#uname").find('input').val().length == 0
        cg.addClass("error")
        cg.popover({content:"Имя пользователя должно содержать более 6 букв или цифр.", trigger: 'manual'})
        cg.popover('show')
        return
    cg.find('.controls').addClass('ajax-loader')
    setTimeout(()->
      cg.find('.controls').removeClass('ajax-loader')
      console.log $("#uname").find('input')
      if $("#uname").find('input').val() == "sintell"
        cg.addClass("success")
        console.log("User name available")
      else
        cg.addClass("error")
        cg.popover({content:"Такое имя пользователя уже существует.", trigger: 'manual'})
        cg.popover('show')
    , 2000 )

