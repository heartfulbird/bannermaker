$ ->

  alert = $('.alert')
  setTimeout( ->
    alert.animate({opacity: 0})
  ,5000)

  setTimeout(->
    alert.remove()
  , 6000)

