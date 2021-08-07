/**
 * 
 */
$(document).ready(() => {})

$('#login').on("click", () => {
	$("#modal_login").css({
		display : "block"
	});
})

$("#modal_close_btn_login").on("click", () => {
	$("#modal_login").css({
		display : 'none'
	});
})

$("#logout").on("click", ()=>{
	$.ajax({
		url : "logout.do",
		method : "post",
		success : (res) =>{
			alert("로그아웃 되었습니다.");
		}
	})
	window.location.href = "http://localhost:8081/sixbaby2/main.do"
})