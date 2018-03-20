function getCurrentSysInfo(){
	$.ajax({
		url : basePath + "sysinfo/getCurrentSysInfo",
		type : "get",
		success : function(sysInfo){
			$("#disk_text").text(sysInfo.diskRate);
			$("#disk_chart").attr("data-percent",sysInfo.diskRate);
			
			$("#cpu_text").text(sysInfo.cpuRate);
			$("#cpu_chart").attr("data-percent",sysInfo.cpuRate);
			
			$("#memery_text").text(sysInfo.memeryRate);
			$("#memery_chart").attr("data-percent",memeryRate);
        }
	});
}

function resetHeight(){
	var height = $(document.body).height() - 80;
	$("#myFrameId").height(height);
}

$(document).ready(function(){
	window.setTimeout(getCurrentSysInfo, 2000)
	window.setInterval(getCurrentSysInfo, 10000);
	resetHeight();
});