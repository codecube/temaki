$(document).ready ->
  $('.table_item').mouseenter ->
    $(this).children(".table_item_menu").show()

  
  $('.table_item').mouseleave ->
    $(this).children(".table_item_menu").hide()

 
  $('.dialog').click ->
    $("#dialog").html($(this).attr('title'))
    link = $(this).attr('href')
    $("#dialog").dialog
      autoOpen: true
      modal: true
      buttons : 
        "Confirm" : () -> 
          $(this).dialog("close")
          window.location.href = link
        "Cancel" : ()  -> 
          $(this).dialog("close")
    return false   
