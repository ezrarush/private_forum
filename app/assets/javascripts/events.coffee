# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'page:change',  ->
  $("#calendar").fullCalendar(events: '/events.json')
  
  $("#event_all_day").change( ->
    if this.checked
      $("#start_time_span").hide()
      $("#end_time_div").hide()
    else
      $("#start_time_span").show()
      $("#end_time_div").show())
