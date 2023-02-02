// 原生js
function _error() {
    zeroModal.error('对不起，该桌位在用餐中!');
    /*zeroModal.error({
        content: '请选择数据进行操作!',
        width: '800px'
    });*/
}
function _alert1() {
    zeroModal.alert('对不起，该桌位在点餐中!');
}

window.onload = function(){

    var seatMax = document.querySelector('.seatMax');
    seatMax.addEventListener('click', function(){
        prompt('请输入用餐人数')
    })
}

// jQuery
$(function(){

})