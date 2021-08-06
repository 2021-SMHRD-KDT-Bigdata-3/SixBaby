/**
 * 
 */

$(document).ready(() => {
	$(".fileDrop").on("dragenter dragover", (e) => {
		e.preventDefault();
	});
	
	$(".fileDrop").on("drop", (e) => {
		e.preventDefault();
		
		let files = e.originalEvent.dataTransfer.files;
		
		let file = files[0];
		
		console.log(file);
		
		let formData = new FormData();
		formData.append("file", file);
		$.ajax({
			url : "imgTestAjax.do",
			type : "post",
			data : formData,
			dataType : "text",
			processData : false,
			contentType : false,
			success : (data) => {
				let str = "";
				if(checkImageType(data)){
					str = "<div><a href='imgDisplay.do?fileName="+getImageLink(data) + "'>";
					str += "<img src='imgDisplay.do?fileName="+data+"'></a>";
				} else{
					str = "<div><a href='imgDisplay.do?fileName="+data+"''>"+getOriginalName(data)+"</a>";
				}
				str += "<span data-src="+data+">[delete]</span></div>";
				$(".fileList").append(str);
			},
			error : (e, data) => {
				console.log(e);
				console.log(data);
			}
			
		})
	})
})

$(".fileList").on("click", "span", (e) => {
	alert("이미지 삭제");
	
	let that = $(this);
	$.ajax({
		url : "imgDelete.do",
		type : "post",
		data : {fileName:$(this).attr("data-src")},
		dataType : "text",
		success : (res) => {
			if(res == "deleted"){
				that.parent("div").remove();
			}
		}
	})
})

function getOriginalName(filename){
	if(checkImageType(filename)){
		return;
	}
	
	let idx = fileName.indexOf("_")+1;
	return fileName.substr(idx);
}

function getImageLink(fileName){
	if(!checkImageType(fileName)){
		return;
	}
	
	let front = fileName.substr(0, 12);
	let end = fileName.substr(14);
	console.log(front);
	console.log(end);
	return front+end;
}

function checkImageType(fileName){
	let pattern = /jpg|gif|png|jpeg/i;
	return fileName.match(pattern);
}