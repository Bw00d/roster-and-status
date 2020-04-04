$(document).on("turbolinks:load", function() {


  // display roster form
  $('#new-roster-button').click(function() {
    $('#roster-form').show();
  });
  $('#cancel-new-roster').click(function() {
    $(this).closest('.slide-panel').slideUp();
  });


  // $('#edit-roster-button').click(function() {
  //   $('#edit-roster-button').hide();
  //   $('#edit-roster-form').show();
  // });

  $('.edit-roster-link').click(function() {
    $('#edit-roster-button').hide();
    $('#edit-roster-form').toggle();
  });

  $('#cancel-roster-edit').click(function() {
    $('#edit-roster-button').show();
    $('#edit-roster-form').hide();
  });

  $('#add-to-roster').click(function() {
    $('#add-rostered-resource').show();
    $('#add-to-roster').hide();
  });


  $('#cancel-add-rostered').click(function() {
    $('#add-rostered-resource').hide();
    $('#add-to-roster').show();
  });



  // local storage
  if (localStorage.getItem("current-roster-panel") == "expanded") {
    $("#current-roster-panel").next('div').show();
    $("#current-roster-panel").addClass('expanded');
    $("#current-roster-panel").find('span').toggleClass('hidden');
  }
  if (localStorage.getItem("alternates-panel") == "expanded") {
    $("#alternates-panel").next('div').show();
    $("#alternates-panel").addClass('expanded');
    $("#alternates-panel").find('span').toggleClass('hidden');
  }
  if (localStorage.getItem("alternate-leads") == "expanded") {
    $("#alternate-leads").next('div').show();
    $("#alternate-leads").addClass('expanded');
    $("#alternate-leads").find('span').toggleClass('hidden');
  }
  if (localStorage.getItem("trainees-panel") == "expanded") {
    $("#trainees-panel").next('div').show();
    $("#trainees-panel").addClass('expanded');
    $("#trainees-panel").find('span').toggleClass('hidden');
  }

  // Slide panels
  $('.slidable').click(function(){
    $(this).closest('span').hide();
      var div = $(this).attr("id");
      if ($(this).hasClass('expanded')) {
        $(this).removeClass('expanded');
        localStorage.setItem(div, "closed");
        $(this).next('.slide-panel').slideUp();
        $(this).find('span').toggleClass('hidden');
      } 
      else {
      $(this).next('.slide-panel').slideDown();
      localStorage.setItem(div, "expanded");
      $(this).addClass('expanded');
      $(this).find('span').toggleClass('hidden');
     
      }
    });

});
