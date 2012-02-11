$(document).ready ->
  $('.table_item').mouseenter ->
    $(this).children(".table_item_menu").show()

  $('.markitup_form').markItUp(myMarkdownSettings)
  
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
    
  $(".template_button").click ->
    $(".template_class").hide()
    $('#'+$(this).attr("id")+'_form').show()
  
  if $('#template_buttons').length > 0 
    $('.template_form').hide()
    $('.template_form h3').show()
  
  $(".template_form :submit").click ->
    $(this).hide()
    
  

window.remove_special_chars = (strVal) ->
  strVal = strVal.replace(/[^a-zA-Z 0-9]+/g,'')
  strVal = strVal.replace(/[' ']+/g,'-')
  return strVal
