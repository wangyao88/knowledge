$("#submitBtn").click(login);

function login(){
	$.ajax({
		url : basePath + "login/getPublicKey",
		type : "post",
		success : function(publicKey){
			var password = encrypt(publicKey);
			doLogin(password);
        }
	});
}

function encrypt(publicKey){
	var password = $("#password").val();
	var encrypt = new JSEncrypt();
	encrypt.setPublicKey(publicKey);
	password = encrypt.encrypt(password);
	return password;
}

function doLogin(password){
	$.ajax({
		url : basePath + "login",
		type : "post",
		data : {
			userName : $("#userName").val(),
			password : password
		},
		success : function(path){
			window.location.href = basePath + path;
        }
	});
}

$(document).keydown(function(e) {
	var keyCode = e.keyCode || e.which || e.charCode;
	if (keyCode == 13) {
		login();
	}
});