<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
	margin: 0;
	padding: 0;
	font-size: 12px;
	font-family: "Microsoft Yahei", Verdana, Arial, Helvetica, sans-serif
}
.leftMenu {
	min-width:220px;
    width:200px;
	margin:100px auto 0 0px;
}
.menu {
	border: #bdd7f2 1px solid;
	border-top: #0080c4 4px solid;
	border-bottom: #0080c4 4px solid;
	background: #f4f9ff url(images/leftdhbg.jpg) repeat-y right;
	margin-left: 10px;
}
.menu .ListTitle {
	border-bottom: 1px #98c9ee solid;
	display: block;
	text-align: center;
	/*position: relative;*/
	height: 38px;
	line-height: 38px;
	cursor: pointer;
	/*+min-width:220px;*/

	+width:100%;
}
.ListTitlePanel {
	position: relative;
}
.leftbgbt {
	position: absolute;
	background: url(images/leftbgbt.jpg) no-repeat;
	width: 11px;
	height: 52px;
	left: -11px;
	top: -4px;
}
/*.leftbgbt {
	float:left;
	background: url(images/leftbgbt.jpg) no-repeat;
	width: 11px;
	height: 52px;
	left: 0px;
	top: 0px;
	zoom:1;
	z-index:200px;
}
*/.leftbgbt2 {
	position: absolute;
	background: url(images/leftbgbt2.jpg) no-repeat;
	width: 11px;
	height: 48px;
	left: -11px;
	top: -1px;
}
.menuList {
	display: block;
	height: auto;
}
.menuList div {
	height: 28px;
	line-height: 24px;
	border-bottom: 1px #98c9ee dotted;
}
.menuList div a {
	display: block;
	background: #fff;
	line-height: 28px;
	height: 28px;
	text-align: center;
	color: #185697;
	text-decoration: none;
}
.menuList div a:hover {
	color: #f30;
	background: #0080c4;
	color: #fff;
}
</style>

<script type="text/javascript" src="js/jquery-1.5.1.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	var menuParent = $('.menu > .ListTitlePanel > div');//获取menu下的父层的DIV
	var menuList = $('.menuList');
	$('.menu > .menuParent > .ListTitlePanel > .ListTitle').each(function(i) {//获取列表的大标题并遍历
		$(this).click(function(){
			if($(menuList[i]).css('display') == 'none'){
				$(menuList[i]).slideDown(300);
			}
			else{
				$(menuList[i]).slideUp(300);
			}
		});
	});
});
</script>

</head>

<body>
<%
		String CORP_NAME=  String.valueOf(request.getAttribute("CORP_NAME"));
  		session.setAttribute("CORP_NAME", CORP_NAME);
			
		%>	
<div class="leftMenu">
	<div class="menu">
		<div class="menuParent">
			<div class="ListTitlePanel">
				<div class="ListTitle">
					<strong>信息族谱</strong>
					<div class="leftbgbt"> </div>
				</div>
			</div>
			<div class="menuList">
				<div> 
					<form action="servlet?method=view" method="post">
							<input type="hidden"  name="CORP_NAME" value="<%=session.getAttribute("CORP_NAME")%>">
							<input type="submit" style="width:209px;height:28px;display: block;background: #fff;line-height: 28px;height: 28px;text-align: center;color: #185697;text-decoration: none;" value="基本信息">
							<!-- <a href="stock_list.jsp">基本信息</a> 
							-->
					</form>
					<div class="menuList">
						<!-- <div> <a href="stock_list.jsp">基本信息</a></div> -->
						<div> <a href="guquanjiegou.jsp">股权结构 </a> </div>
						<div> <a href="touzizupu.jsp">投资族谱</a></div>
						<div> <a href="qiyezupu.jsp">企业图谱</a></div>
						<div> <a href="yisiguanxi.jsp">疑似关系</a></div>
			       </div>
				</div>
				<!--  
				<div> 
							<button type="button" style="width:209px;height:28px" onclick="location.href='guquanjiegou.jsp'">股权结构</button>
				</div>
				<div> 
							<button type="button" style="width:209px;height:28px" onclick="location.href='touzizupu.jsp'">投资族谱</button>
							
							
					 
				</div>
				<div> 
							<button type="button" style="width:209px;height:28px" onclick="location.href='qiyezupu.jsp'">企业图谱</button>
							
					
				</div>
				<div>
							<button type="button" style="width:209px;height:28px" onclick="location.href='yisiguanxi.jsp'">疑似关系</button>
				</div>
				-->
			</div>
		</div>
		
	</div>
</div>

</body>

</html>