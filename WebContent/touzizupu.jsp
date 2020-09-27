<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://cdn.staticfile.org/echarts/4.3.0/echarts.min.js"></script>
<script src="js/jquery-1.5.1.js"></script>
<script src="data/flare.json"></script>
</head>
<body>
	<div id="main" style="width: 1000px; height: 400px;"></div>
	<script type="text/javascript">
var dom = document.getElementById("main");
var myChart = echarts.init(dom);
var app = {};
var tempOption={};
option = null;
myChart.showLoading();
$.get('servlet?method=find2&CORP_NAME=<%=session.getAttribute("CORP_NAME")%>', function (data) {
	$.each(data,function(name,chilren){
			tempOption = chilren;
	});
    myChart.hideLoading();

    myChart.setOption(option = {
        tooltip: {
            trigger: 'item',
            triggerOn: 'mousemove'
        },
        series: [
            {
                type: 'tree',

                data: [tempOption],

                top: '18%',
                bottom: '14%',

                layout: 'radial',

                symbol: 'emptyCircle',

                symbolSize: 7,

                initialTreeDepth: 3,

                animationDurationUpdate: 750

            }
        ]
    });
});;
if (option && typeof option === "object") {
    myChart.setOption(option, true);
}
       </script>
</body>
</html>