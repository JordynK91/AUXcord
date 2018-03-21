$(document).ready(function(){
	console.log('whatevere from Oggi')
	$("#calendar_id").change(function() {
  var newAction = $(this).val();
  $("#add_event").attr("action", "/events/" + newAction);
});

});

