<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.enterprise.entity.Oname"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://cdn.staticfile.org/echarts/4.3.0/echarts.min.js"></script>
<script src="js/jquery-1.5.1.js"></script>

</head>
<body>


<div id="main" style="width: 1000px; height: 400px;"></div>
<script>
var myChart = echarts.init(document.getElementById('main'));

var nameData = [];
var cntData = [];
var roundData = [];

$.ajax({
    type : "post",
    async : true, //异步请求（同步请求将会锁住浏览器，其他操作须等请求完成才可执行）
    url : "servlet?method=xiaoshoue&Oname=O100", //请求发送到Servlet
    data : {},
    dataType : "json", //返回数据形式为json

    //7.请求成功后接收数据name+num两组数据
    success : function(result) {
        //result为服务器返回的json对象
        if (result) {
        	console.log(result);
            //8.取出数据存入数组
            nameData.push(result.name);
            cntData.push(result.cnt);
            roundData.push(result.round);
            
            
        }
         
        
        
        option = {
        		
        	    tooltip : {
        	        trigger: 'axis',
        	        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
        	            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
        	        }
        	    },
        	    legend: {
        	        data:['利润', '销量', '收入']
        	    },
        	    grid: {
        	        left: '3%',
        	        right: '4%',
        	        bottom: '3%',
        	        containLabel: true
        	    },
        	    xAxis : [
        	        {
        	            type : 'value'
        	        }
        	    ],
        	    yAxis : [
        	        {
        	            type : 'category',
        	            axisTick : {show: false},
        	            data : [nameData[0]]
        	        }
        	    ],
        	    series : [
        	        {
        	            name:'利润',
        	            type:'bar',
        	            label: {
        	                normal: {
        	                    show: true,
        	                    position: 'inside'
        	                }
        	            },
        	            data:[roundData[0]]
        	        },
        	        {
        	            name:'收入',
        	            type:'bar',
        	            stack: '总量',
        	            label: {
        	                normal: {
        	                    show: true
        	                }
        	            },
        	            data:[cntData[0]]
        	        },
        	        {
        	            name:'支出',
        	            type:'bar',
        	            stack: '总量',
        	            label: {
        	                normal: {
        	                    show: true,
        	                    position: 'left'
        	                }
        	            },
        	            data:[-120]
        	        }
        	    ]
        	};
        	          

        	            

        	myChart.setOption(option);
                    
    }
    
    
    

})


</script>
</body>
</html>