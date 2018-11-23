$(function(){
	alert("aaa");
	$("#changeCode").mousedown(function(){
		alert("aaa");
		$("#validateCode").attr("src","Number.jsp?"+Math.random());
		return false;
	});
});