<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="com.enterprise.entity.entity"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://cdn.staticfile.org/echarts/4.3.0/echarts.min.js"></script>
<script src="js/jquery-1.5.1.js"></script>

</head>
<body>
	<div id="main" style="width: 1000px; height: 400px;"></div>
	<script type="text/javascript">
        // based on prepared DOM, initialize echarts instance
        
        
        
        var myChart = echarts.init(document.getElementById('main'));
       
        // specify chart configuration item and data
 	myChart.setOption({
               title : {
                    text: '股权分析',
                    //subtext: '纯属虚构',
                    x:'center'
                },
                tooltip : {
                    trigger: 'item',
                    formatter: "{a} <br/>{b} : {c} ({d}%)"
                },
                legend: {
                    orient : 'vertical',
                    x : 'left',
                    data:[]
                },
                toolbox: {
                    show : true,
                    feature : {
                        mark : {show: true},
                        dataView : {show: true, readOnly: false},
                        magicType : {
                            show: true, 
                            type: ['pie', 'funnel'],
                            option: {
                                funnel: {
                                    x: '25%',
                                    width: '50%',
                                    funnelAlign: 'left',
                                    max: 1548
                                }
                            }
                        },
                        restore : {show: true},
                        saveAsImage : {show: true}
                    }
                },
                calculable : true,
                series : [
                    {
                        name:'股权分析',
                        type:'pie',
                        radius : '65%',
                        center: ['50%', '60%'],
                        data:[]
                    }
                ]
        });

        //4.设置加载动画(非必须)
        myChart.showLoading(); //数据加载完之前先显示一段简单的loading动画

        //5.定义数据存放数组(动态变)
        var statisticsData = [];   //这是我自己建的空数组，为了把异步拿到的数据push进去
        var statisticsName = [];
        //6.ajax发起数据请求
        $.ajax({
            type : "post",
            async : true, //异步请求（同步请求将会锁住浏览器，其他操作须等请求完成才可执行）
            url : "servlet?method=find&CORP_NAME=<%=session.getAttribute("CORP_NAME")%>", //请求发送到Servlet
            data : {},
            dataType : "json", //返回数据形式为json

            //7.请求成功后接收数据name+num两组数据
            success : function(result) {
                //result为服务器返回的json对象
                if (result) {
                    //8.取出数据存入数组
                    for (var i = 0; i < result.length; i++) {
                        var statisticsObj = {name:'',value:''};   //因为ECharts里边需要的的数据格式是这样的
                        statisticsObj.name = result[i].STOCK_NAME;
                        statisticsName.push(result[i].STOCK_NAME);
                        statisticsObj.value = result[i].STOCK_CAPI;
                        statisticsData.push(statisticsObj);   //把拿到的异步数据push进我自己建的数组里
                    }

                    myChart.hideLoading(); //隐藏加载动画

                    //9.覆盖操作-根据数据加载数据图表
                    myChart.setOption({
                        legend: {
                            show: true,
                            x: '10%',
                            data: statisticsName //这里是图表上的数据                 
                        },
                        series: [{
                            name: '股权分析',
                            type: 'pie',
                            radius : '70%',
                            center: ['50%', '60%'],
                            data: statisticsData,    //这里是异步加载系列列表
                            
                            itemStyle: {
                                normal: {
                                    color: function(params) {
                                        // build a color map as your need.
                                        var colorList = [
                                          '#FF0000','#FF7D00','#FFFF00','#00FF00','#00FFFF',
                                           '#0000FF','#FF00FF','#FAD860','#F3A43B','#60C0DD',
                                           '#D7504B','#C6E579','#F4E001','#F0805A','#26C0C0'
                                        ];
                                        return colorList[params.dataIndex];
                                    },
                                }
                            },
                            
                            
                        }]
                    });
                }
            },
            error : function(errorMsg) {
                //请求失败时执行该函数
                alert("图表请求数据失败!");
                myChart.hideLoading();
            }
        })
    </script>
</body>
</html>