$(document).on("turbolinks:load", function() {
  // date picker
  $('.input-daterange').datepicker({
  });

  // setting incident and location inputs
  $('#team-status').change(function() {
    var x = (this).value;
    if (x == "Assigned"){
      $('.if-assigned').show();
    }
  });

  // display shared-lead-form
  $('#add-shared').click(function() {
    $('#add-shared').hide();
    $('#shared-form').show();
  });

  // display alternates form
  $('#add-alternate').click(function() {
    $('#add-alternate').hide();
    $('#add-alternate-form').show();
  });

  $('#cancel-add-alternate').click(function() {
    $('#add-alternate').show();
    $('#add-alternate-form').hide();
  });

  // display trainees form
  $('#add-trainee').click(function() {
    $('#add-trainee').hide();
    $('#add-trainee-form').show();
  });

  $('#cancel-add-trainee').click(function() {
    $('#add-trainee').show();
    $('#add-trainee-form').hide();
  });

  // $('#shared-form').onsubmit(function(event) {
  //   $('#shared-form').hide();
  //   $('#add-shared').show();
  //   event.preventDefault();
  // })



});
