/**
         * 分页函数 
         * pno--页数
         * psize--每页显示记录数 
         * 分页部分是从真实数据行开始，因而存在加减某个常数，以确定真正的记录数 
         * 纯js分页实质是数据行全部加载，通过是否显示属性完成分页功能
         **/
 var pageSize = 0;
 //每页显示行数
 var currentPage_ = 1;
 //当前页全局变量，用于跳转时判断是否在相同页，在就不跳，否则跳转。
 var totalPage;
 //总页数
 function goPage(pno, psize) {
     var itable = document.getElementById("adminTbody");
     var num = itable.rows.length;
     //表格所有行数(所有记录数)   
     pageSize = psize;
     //每页显示行数    
     //总共分几页     
     if (num / pageSize > parseInt(num / pageSize)) {
         totalPage = parseInt(num / pageSize) + 1;
     } else {
         totalPage = parseInt(num / pageSize);
     }
     var currentPage =
         pno;
     //当前页数  
     currentPage_ = currentPage;
     var startRow = (currentPage - 1) * pageSize + 1;
     var endRow = currentPage * pageSize;
     endRow = (endRow > num) ? num :
         endRow;

     //遍历显示数据实现分页    
     for (var i = 1; i < (num + 1); i++) {
         var irow = itable.rows[i - 1];
         if (i >= startRow && i <= endRow) {
             irow.style.display = "";
         } else {
             irow.style.display = "none";
         }
     }
     $("#adminTbody tr").hide();
     for (var i = startRow - 1; i < endRow; i++) {
         $("#adminTbody tr").eq(i).show();
     }
     var tempStr = "共" + num + "条记录 分" + totalPage + "页 当前第" + currentPage + "页";
     document.getElementById("barcon1").innerHTML = tempStr;
     if (currentPage > 1) {
         $("#firstPage").on("click", function () {
             goPage(1, psize);
         }).removeClass("ban");
         $("#prePage").on("click", function () {
             goPage(currentPage - 1, psize);
         }).removeClass("ban");
     } else {
         $("#firstPage").off("click").addClass("ban");
         $("#prePage").off("click").addClass("ban");
     }
     if (currentPage < totalPage) {
         $("#nextPage").on("click", function () {
             goPage(currentPage + 1, psize);
         }).removeClass("ban")
         $("#lastPage").on("click", function () {
             goPage(totalPage, psize);
         }).removeClass("ban")
     } else {
         $("#nextPage").off("click").addClass("ban");
         $("#lastPage").off("click").addClass("ban");
     }
     $("#jumpWhere").val(currentPage);
 }
 //跳转
 function jumpPage() {
     var num = parseInt($("#jumpWhere").val());
     if (num != currentPage_) {
         goPage(num, pageSize);
     }
 }


//  上传图片并预览的js文件 start  无需改动
function preserve()
{
    var formData    = new FormData();
    var img = $("[name='img']").prop('files')[0];/*获取上传图片的信息*/
    formData.append("img",img);
    $.ajax({
        type : "post",
        url : "{:URL('admin/Banner/shopbanneradd')}",/*此处填写上传路径*/
        processData : false,
        contentType : false,
        data : formData,
        success : function(data) {

        }
    });
}

 var small_img = document.querySelector('input[name=small_img]');
    var img = document.querySelector('input[name=img]');
    small_imgs = document.querySelector('#small_img');
    imgs = document.querySelector('#img');
    if (small_img) {
        small_img.addEventListener('change', function() {
            var file = this.files[0];
            var reader = new FileReader();
            // 监听reader对象的的onload事件，当图片加载完成时，把base64编码賦值给预览图片
            reader.addEventListener("load", function() {
                small_imgs.src = reader.result;
            }, false);
            // 调用reader.readAsDataURL()方法，把图片转成base64
            reader.readAsDataURL(file);
            $("img").eq(0).css("display", "block");
        }, false);
    }
    if(img){
        img.addEventListener('change', function() {
            var file = this.files[0];
            var reader = new FileReader();
            // 监听reader对象的的onload事件，当图片加载完成时，把base64编码賦值给预览图片
            reader.addEventListener("load", function() {
                imgs.src = reader.result;
            }, false);
            // 调用reader.readAsDataURL()方法，把图片转成base64
            reader.readAsDataURL(file);
            $("img").eq(1).css("display", "block");
        }, false);
    }



