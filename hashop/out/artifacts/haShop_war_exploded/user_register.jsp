<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
	<title>用户注册</title>
	<!--移动端大小适配-->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link type="text/css" rel="stylesheet" href="css/bootstrap.css">
	<link type="text/css" rel="stylesheet" href="css/style.css">
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/simpleCart.min.js"></script>
</head>
<body>

	<!--header 头部栏 显示顶端菜单栏-->

	<jsp:include page="/header.jsp">
		<jsp:param name="flag" value="10"></jsp:param>
	</jsp:include>
	<!--//header-->


	<!--account-->
	<div class="account">
		<div class="container">
			<div class="register">
				<!--msg不为空  说明有进行操作 输出显示-->
				<c:if test="${!empty msg }">
					<div class="alert alert-danger">${msg }</div>
				</c:if>
				<form action="/user_rigister" method="post">
					<div class="register-top-grid">
						<h3>注册新用户</h3>
						<div class="input">
							<span>用户名 <label style="color:red;">*</label></span>
							<!--
							placeholder属性值是在value属性值为空的时候显示的灰色文本
							required表示必填项-->
							<input type="text" name="username" placeholder="请输入用户名" required="required">
						</div>
						<div class="input">
							<span>邮箱 <label style="color:red;">*</label></span>
							<input type="text" name="email" placeholder="请输入邮箱" required="required">
						</div>
						<div class="input">
							<span>密码 <label style="color:red;">*</label></span>
							<input type="password" name="password" placeholder="请输入密码" required="required">
						</div>
						<div class="input">
							<span>收货人<label></label></span>
							<input type="text" name="name" placeholder="请输入收货">
						</div>
						<div class="input">
							<span>收货电话<label></label></span>
							<input type="text" name="phone" placeholder="请输入收货电话">
						</div>
						<div class="input">
							<span>收货地址<label></label></span>
							<input type="text" name="address" placeholder="请输入收货地址">
						</div>
						<!--clearfix 清除浮动元素造成的影响-->
						<div class="clearfix"> </div>
					</div>
					<div class="register-but text-center">
					   <input type="submit" value="提交">
					   <div class="clearfix"> </div>
					</div>
				</form>
				<div class="clearfix"> </div>
			</div>
	    </div>
	</div>
	<!--//account-->

	




	<!--footer尾部栏-->
	<jsp:include page="/footer.jsp"></jsp:include>
	<!--//footer-->

	
</body>
</html>