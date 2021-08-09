/**
 * 
 */
$(document).ready(()=>{
	$("#insertDate").val(new Date().toISOString().substring(0, 10));
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
	$(".slt_diary_list").remove();
	$("#modal_diary_select_month").hide();
	$("#modal_diary_select_day").hide();
	$(".modal_diary_list").hide();
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