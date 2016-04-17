# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$.ajax
  url: 'http://api.wunderground.com/api/c0e779ad9d53eacd/conditions/q/TX/Houston.json'
  dataType: 'jsonp'
  data: 'url'
  success: (data) ->
    for index, result of data
      temp = Math.round result.temp_f
      icon = result.icon_url
      weather = result.weather
      wind = result.wind_string

      $('p.currentConditions').html "Houston, TX:#{temp} &deg;F #{weather}"
      $('p.currentWind').html "#{wind}"
      $('div.currentIcon').html "<img src='#{icon}' >"