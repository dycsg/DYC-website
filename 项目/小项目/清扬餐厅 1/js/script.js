$('#login-button').click(function (event) {
	var userName=document.getElementById("userName").value;  
    var pwd=document.getElementById("pwd").value;
    if(userName=="123" &&  pwd=="123"){ 
		event.preventDefault();
		$('form').fadeOut(500);
		$('.wrapper').addClass('form-success');
		setTimeout(function(){location.href="hotai.html";},2000);  //这里改链接
	}
	else{
		alert("Wrong Password");
	}
});
