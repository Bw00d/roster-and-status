$(document).on("turbolinks:load", function() {


  // display roster form
  $('#new-roster-button').click(function() {
    $('#roster-form').show();
  });

  $('#edit-roster-button').click(function() {
    $('#edit-roster-button').hide();
    $('#edit-roster-form').show();
  });

  $('#cancel-roster-edit').click(function() {
    $('#edit-roster-button').show();
    $('#edit-roster-form').hide();
  });

});
