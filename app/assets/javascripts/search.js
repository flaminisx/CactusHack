/*# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
*/

$(document).ready(function(){
  $(".rezult-item ").click(function(e){
		console.log($(e.target));
		var id = $(e.target).parents("li").attr('id') || $(e.target).attr('id');
		//if(id) location.href = "/project/"+id;
    console.log($(".rezult-item#"+id));
	});
});
