/**
 * 
 */
$(document).ready(()=>{
   $("#insertDate").val(new Date().toISOString().substring(0, 10));
   
   $("#fileDrop").on("dragenter dragover", (e) => {
      e.preventDefault();
   });
   
   $("#fileDrop").on("drop", (e) => {
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
            $("#fileDrop").append(str);
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

				 $("input[name=picture]").val($(".delThumbnail").data("src"));
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