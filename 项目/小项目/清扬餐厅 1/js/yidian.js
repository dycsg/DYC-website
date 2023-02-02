window.onload = function(){
        // 获取弹窗
    var modal = document.getElementById('mymodal');

    // 打开弹窗的按钮对象
    var btn = document.getElementById("mcbtn");

    // 获取 <span> 元素，用于关闭弹窗
    var span = document.querySelector('.close');

    // 点击按钮打开弹窗
    btn.onclick = function () {
        modal.style.display = "block";
    }

    // 点击 <span> (x), 关闭弹窗
    span.onclick = function () {
        modal.style.display = "none";
    }

    // 在用户点击其他地方时，关闭弹窗
    window.onclick = function (event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }

    // 弹窗确定支付
// 获取元素，使用数组下标的方式来控制具体元素
var payfor = document.querySelector('.tczfbtn');

var desc = document.querySelector('.tcqxbtn');
// 分别为两个按钮注册鼠标单击事件
payfor.addEventListener('click', function () {
    let payfortrue = window.confirm("您是否确认支付");
    if (payfortrue) {
        location.href = '/href/linshi.html';
    }
})
// 取消按钮可以直接复制，结构与内容相差不大
desc.addEventListener('click', function () {
    let desctrue = window.confirm("您是否确认取消本次支付");
    if (desctrue) {
        alert("取消支付成功");
    }
})

var item = document.querySelector(".item")
var pay = document.querySelector(".pay")
if(item){
    pay
}

 }



//  jquery
 $(function () {

    


    // 点击添菜
    $("#mybtn").click(function () {
        location.href = '/diancanlan.html';
    })

    // 点击加数量
    $(".increment").click(function(){
        // 得到当前文本框的值
        var n = $(this).siblings(".itxt").val()
        // console.log(n);
        n++;
        // 在赋值
        $(this).siblings(".itxt").val(n)

        // 计算小计 加
        var p = $(this).parents("td").siblings(".price").html();
        // 截取￥ 字符串
        p = p.substr(1)
        // console.log(p);
        $(this).parents("td").siblings(".pricesum").html("￥" + (p * n).toFixed(2))
        
        getSum()
    })
    // 点击减数量
    $(".decrement").click(function(){
        // 得到当前文本框的值
        var n = $(this).siblings(".itxt").val()
        if(n == 1){
            return false;
        }
        n--;
        $(this).siblings(".itxt").val(n)

        // 计算小计 减
        var p = $(this).parents("td").siblings(".price").html();
        // 截取￥ 字符串
        p = p.substr(1)
        // console.log(p);
        $(this).parents("td").siblings(".pricesum").html("￥" + (p * n).toFixed(2)) //toFixed保留两位小数
        
        getSum()
    })  


    // 全选按钮模块
    $(".maxcheck").change(function(){    //change发生改变
        // console.log($(this).prop("checked"));
        $(".mincheck").prop("checked", $(this).prop("checked"))
    })                           //   ，等于赋值

    // 小的控制大的
    $(".mincheck").change(function(){
        // console.log($(".mincheck:checked"));   //:checked 获取被选中的mincheck
        if($(".mincheck:checked").length === $(".mincheck").length){
                                             //$(".mincheck").length 这个是所有mincheck
            $(".maxcheck").prop("checked", true)
        }else{
            $(".maxcheck").prop("checked", false)
        }
       
    })
    // 数量框失焦
    $(".itxt").change(function(){
        var n = $(this).val()
        var p = $(this).parents("td").siblings(".price").html();
        p = p.substr(1)

        $(this).parents("td").siblings(".pricesum").html("￥" + (p * n).toFixed(2)) //toFixed保留两位小数
        getSum()
    })

    // 计算菜总计 和总额
    // 先调用
    getSum()
    function getSum(){
        var count = 0  //计算总件数
        var money = 0  //计算总额
        $(".itxt").each(function(i,ele){
            count += parseInt($(ele).val())
        }) 
        $(".caisum em").text(count)
        
        $(".pricesum").each(function(i,ele){
            money += parseFloat($(ele).text().substr(1))   //parseFloat类型转换
        })
        $(".consume").text(money.toFixed(2)) //toFixed(2)保留两位小数

        // 判断没有菜就禁止下单按钮 和隐藏清除按钮 全选
        if(count == 0){
            $('.pay').attr('disabled',"true");//添加disabled属性
            $('.empty').hide();
            $('.maxcheck').attr('disabled',"true");//添加disabled属性
        } else{
            $('.pay').removeAttr("disabled"); //移除disabled属性
            $('.empty').show()
            $('.maxcheck').removeAttr("disabled"); //移除disabled属性
        }
    }

    // 删除模块  点击删除item
    $(".item .remove").click(function(){
         $(this).parents(".item").remove();
         getSum()
    })
    // 清空模块 
    $(".foot .empty").click(function(){
        $(".item").remove();
        getSum()
    })
 })
 