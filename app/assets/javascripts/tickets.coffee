# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $(".submit-ticket-btn").click (event)->
    event.preventDefault()
    console.log 'in click'
    $(".ticket-form").validate ->
      console.log 'in validate'
      rules:
        "ticket[title]":
          required: true
      messages:
        "ticket[title]":
          required: "Title is required."
    if $(".ticket-form").valid()
      $(".ticket-form").submit()
    false

