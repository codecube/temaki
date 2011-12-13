$(document).ready ->
  $('.table_item').mouseenter ->
    $(this).children(".table_item_menu").show()
  
  $('.table_item').mouseleave ->
    $(this).children(".table_item_menu").hide()
    
  $.rails.confirm = (message) ->
    $(this).dialog()
    