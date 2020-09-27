<%-- <%@ include file="left.jsp"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
		
			<h3>欢迎使用企业图谱系统</h3>
		
	<form action="servlet?method=search" method="post">
	    
		<div style="position: absolute; left: 350px; top: 20px;">
		
			<input type="text" name="CORP_NAME" style="width: 280px; height: 38px; border-radius: 3px" placeholder="输入公司名">
		</div>
		<div style="position: absolute; left: 640px; top: 24px;">
			<!-- <button type="submit"
				style="width: 32px; height: 32px; background-image: url(images/search.png);"></button> -->
			<input type="submit" style="width:50px;height:30px" value="查询" />
		</div>
	</form>
</body>
</html>