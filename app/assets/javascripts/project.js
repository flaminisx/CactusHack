$(document).ready(function(){
  $('.datepicker').pickadate({
      selectMonths: true, // Creates a dropdown to control month
      selectYears: 15 // Creates a dropdown of 15 years to control year
    });
  $("#save-data").click(function(e){
    $.post('/project/update/'+$("#project-id").val(),
      {
        speaker:$("#speaker-btn").attr("data-id"),
        description:$("#project-desc").val()
      }, function(data){
        if(data==true) Materialize.toast('Saved!', 4000);
      });
  });
  $("#speaker-dropdown li a").click(function(e){
    $("#speaker-btn").text($(e.target).text());
    $("#speaker-btn").attr("data-id", $(e.target).attr("data-id"));
  });
});



function createMyPortfolioPoint() {
	document.getElementById('all-my-blocks').style.display = 'none';
	document.getElementById('my-create-block').style.display = 'block'
}

function closeMyPortfolioPoint() {
	document.getElementById('all-my-blocks').style.display = 'block';
	document.getElementById('my-create-block').style.display = 'none'
}
