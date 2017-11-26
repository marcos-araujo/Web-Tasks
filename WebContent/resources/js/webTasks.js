function closeTask(id){	
	$.post(
		"closeTask", 
		{'id' : id}, 
		function(response){
			$("#task_"+id).html(response);
		}
	); 
}
			
function reopenTask(id){ 
	$.post(
		"reopenTask", 
		{'id' : id}, 
		function(response){
			$("#task_"+id).html(response);
		}
	); 
}
			
function deleteTask(id){ 
	$.post("deleteTask", 
		{'id' : id}, 
		function(){
			$("#task_"+id).closest("tr").hide();
		}
	); 
}
