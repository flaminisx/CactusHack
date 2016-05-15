/*# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
*/

$(document).ready(function(){
  $(".types").find("a").click(function(e){
    e.preventDefault();
    t = $(e.target).attr("href").replace("#","");
    if(location.href.indexOf("?") > -1){
      if(location.href.indexOf("type=") > -1)
         location.href = location.href.replace(/type=.*/, "type="+t);
      else
        location.href+= "&type=" + t;
    }
    return false;
  });
  $(".rezult-item ").click(function(e){
		console.log($(e.target));
		var id = $(e.target).parents("li").attr('id') || $(e.target).attr('id');
		//if(id) location.href = "/project/"+id;
    console.log($(".rezult-item#"+id));
	});
  $("#searchbar").on("keydown", function(e){
    if(e.keyCode===13){
      var t = $("#searchbar").val();
      var ar = t.split(/\s/);
      var str = "";
      var tags = "";
      for(var i in ar){
        if(ar[i][0]=='#'){
          tags+= ar[i].replace("#","") + ",";
        }else{
          str += ar[i]+" ";
        }
      }
      console.log(tags);
      var request = "/search?";
      if(str.length>0) request += "str="+str;
      if(tags.length>0) request += "tag="+tags
      location.href = request;

      e.preventDefault();
    }
  })
});
