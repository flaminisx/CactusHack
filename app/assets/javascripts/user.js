$(document).ready(function(){
	$(".quests li").click(function(e){
		//console.log($(e.target).parent("li"));
		var id = $(e.target).parents("li").attr('id');
		if(id) location.href = "/quest/"+id;
	});
})