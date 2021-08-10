/**
 * 
 */
$(document).ready(()=>{
	$("#insertDate").val(new Date().toISOString().substring(0, 10));
	
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
				console.log(data)
				let str = "";
				if(checkImageType(data)){
					str = "<div><a href='imgDisplay.do?fileName="+getImageLink(data).replaceAll("\\", "/") + "'>";
					str += "<img src='imgDisplay.do?fileName="+data.replaceAll("\\", "/")+"'></a>";
				} else{
					str = "<div><a href='imgDisplay.do?fileName="+data.replaceAll("\\", "/")+"''>"+getOriginalName(data)+"</a>";
				}
				str += "<span class = 'delThumbnail' data-src="+data.replaceAll("\\", "/")+">[delete]</span></div>";
				$(".fileDrop").append(str);
				$("input[name=picture]").val(getImageLink(data).replaceAll("\\", "/"));
				
				$(".delThumbnail").on("click", (e) => {
				alert("이미지 삭제");
				$("input[name=picture]").val("");
				console.log($("span").data("src"));
				$.ajax({
					url : "imgDelete.do",
					type : "post",
					data : {fileName: $(".delThumbnail").data("src")},
					dataType : "text",
					success : (res) => {
						if(res == "deleted"){
							$(".delThumbnail").parent("div").remove();
						}
					},
					error : (res) =>{
						console.log(res);
					}
				})
			})
			},
			error : (e, data) => {
				console.log(e);
				console.log(data);
			}
		})
	})
})


$(".select").on("click", ()=> {
	$(".slt_diary_list").remove();
	$("#modal_diary_select_month").show();
	$("#modal_diary_insert").hide();
	$("#modal_diary_detail").hide();
	$("#modal_diary_update").hide();
})

$("#modal_close_btn_dairy").on("click", () =>{
	$("#modal_diary_select_month").hide();
})

$(".slt_month > .month").on("click", (e)=>{
	console.log($(e.currentTarget).val());
	console.log($(".id").val())
	$.ajax({
		url : "diaryContent.do",
		method : "post",
		datatype : "json",
		data : {id : $(".id").val(), diary_data : $(e.currentTarget).val()},
		traditional : true,
		success : (result) =>{
			console.log(result);
			$("#modal_diary_list").show();
			$("#modal_diary_select_month").hide();
			$("#diaryList").html(result.toString());
		},
		error : (e)=>{
			console.log(e);
		}
	})
})

$("#modal_back_btn_diary").on("click", () => {
	$("#modal_diary_list").hide();
	$("#modal_diary_select_month").show();
})


$(".write").on("click", ()=>{
	$("#modal_diary_select_month").hide();
	$("#modal_diary_detail").hide();
	$("#modal_diary_update").hide();
	$("#modal_diary_list").hide();
	$("#modal_diary_insert").show();
})

$("#modal_close_btn_dairy_insert").on("click", ()=>{
	$("#modal_diary_insert").hide();
})

$(document).on("click", ".select_diary",(e)=>{
	console.log(e.currentTarget)
	console.log($(e.currentTarget).attr("value"));
	$(".modal_diary_list").hide();
	$.ajax({
		url : "diaryDetail.do",
		method : "post",
		type : "json",
		data : {diary_no : $(e.currentTarget).attr("value")},
		success : (res)=>{
			$("#diary_detail").html(res.toString());
			$("#modal_diary_detail").show();
			$("#modal_diary_list").hide();
		}
	})
})

$("#modal_back_btn_dairy_detail").on("click", ()=>{
	$("#modal_diary_update").hide();
	$("#modal_diary_detail").show();
})

$("#modal_detail_btn_diary").on("click", () =>{
	$("#modal_diary_detail").hide();
	$("#modal_diary_update").show();
})

$("#modal_detail_btn_diary").on("click", ()=>{
	$.ajax({
		url : "showDiaryUpdate.do",
		method : "post",
		type : "json",
		success : (res)=>{
			console.log(res)
			$("#diary_update").html(res.toString());
			$("#modal_diary_update").show();
			$("#modal_diary_detail").hide();
		}
	})
})

$("#modal_back_btn_diary_list").on("click", ()=>{
	$("#modal_diary_detail").hide();
	$("#modal_diary_list").show();
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
	console.log(fileName);
	console.log(front);
	console.log(end);
	return front+end;
}

function checkImageType(fileName){
	let pattern = /jpg|gif|png|jpeg/i;
	return fileName.match(pattern);
}

function delImg(){
				alert("이미지 삭제");
				$("input[name=picture]").val("");
				console.log($(".delThumbnail").data("src"));
				$.ajax({
					url : "imgDelete.do",
					type : "post",
					data : {fileName: $(".delThumbnail").data("src")},
					dataType : "text",
					success : (res) => {
						if(res == "deleted"){
							$(".delThumbnail").parent("div").remove();
						}
					},
					error : (res) =>{
						console.log(res);
					}
				})
}
function imgDrop(e){
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
				console.log(data)
				let str = "";
				if(checkImageType(data)){
					str = "<div><a href='imgDisplay.do?fileName="+getImageLink(data).replaceAll("\\", "/") + "'>";
					str += "<img src='imgDisplay.do?fileName="+data.replaceAll("\\", "/")+"'></a>";
				} else{
					str = "<div><a href='imgDisplay.do?fileName="+data.replaceAll("\\", "/")+"''>"+getOriginalName(data)+"</a>";
				}
				str += "<span class = 'delThumbnail' data-src="+data.replaceAll("\\", "/")+">[delete]</span></div>";
				$(".fileDrop").append(str);
				$("input[name=picture]").val(getImageLink(data).replaceAll("\\", "/"));
				
				$(".delThumbnail").on("click", (e) => {
				alert("이미지 삭제");
				$("input[name=picture]").val("");
				console.log($("span").data("src"));
				$.ajax({
					url : "imgDelete.do",
					type : "post",
					data : {fileName: $(".delThumbnail").data("src")},
					dataType : "text",
					success : (res) => {
						if(res == "deleted"){
							$(".delThumbnail").parent("div").remove();
						}
					},
					error : (res) =>{
						console.log(res);
					}
				})
			})
			},
			error : (e, data) => {
				console.log(e);
				console.log(data);
			}
		})
	}