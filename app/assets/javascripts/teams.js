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

});

function myFunction() {
  var x = document.getElementById("mySelect").value;
  document.getElementById("demo").innerHTML = "You selected: " + x;
}
