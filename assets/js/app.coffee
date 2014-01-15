$ ->
  x = -> $('<h2>Express Coffee Template 1.4</h2>').prependTo('.right')
  setTimeout x, 500

  $("#signup").click (e) ->
    $("#gr1").addClass("hide")
    $("#gr2").removeClass("hide")