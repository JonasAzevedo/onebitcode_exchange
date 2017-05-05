validQuantity = (value) ->
  return parseFloat(value);

calculateCurrency = ->
  if $('form').attr('action') == '/exchange'
    $('#result').val('')
    if ! validQuantity($("#quantity").val())
      return false;
    $.ajax '/exchange',
        type: 'POST'
        dataType: 'json'
        data: {
                currency: $("#currency").val(),
                currency_destination: $("#currency_destination").val(),
                quantity: $("#quantity").val()
              }
        beforeSend: ->
          $('.loading').show("fast")
        complete: ->
          $('.loading').hide()
        error: (jqXHR, textStatus, errorThrown) ->
          alert textStatus
        success: (data, text, jqXHR) ->
          $('#result').val(data.value)
      return false;

$(document).ready ->
  $('form').change ->
    calculateCurrency();

  $('.changeCurrency').click ->
    currency = $('#currency').val()
    currency_destination = $("#currency_destination").val()
    $("#currency").val(currency_destination)
    $("#currency_destination").val(currency)
    calculateCurrency();
