<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="DS.main.dao.IndexDao,com.alibaba.fastjson.JSONArray,com.alibaba.fastjson.JSONObject"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" dir="ltr">
  <head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta http-equiv="Content-Language" content="en" />
    <meta name="msapplication-TileColor" content="#2d89ef">
    <meta name="theme-color" content="#4188c9">
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent"/>
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="mobile-web-app-capable" content="yes">
    <meta name="HandheldFriendly" content="True">
    <meta name="MobileOptimized" content="320">
    <link rel="icon" href="../favicon.ico" type="image/x-icon"/>
    <link rel="shortcut icon" type="image/x-icon" href="../favicon.ico" />
    <!-- Generated: 2018-04-06 16:27:42 +0200 -->
    <title>皇帝事件列表</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,300i,400,400i,500,500i,600,600i,700,700i&amp;subset=latin-ext">
    <style type="text/css">
        #cont{
            background: url("./assets/images/evs_img2.png") no-repeat center top;
            background-size: cover;
            float:left;
            background-color: white;
            width:100% ;
        }
        .cont2{
            padding: 0px 400px;
            width: 100%;
            margin-top: 80px;
        }
        .cont3{
            width: 100%;
            padding: 10px 25px;
            overflow : hidden;
            text-overflow: ellipsis;
            display: -webkit-box;
            -webkit-line-clamp: 3;
            -webkit-box-orient: vertical;
            height: 60%;
        }
        .title{
            color: black;
            font-size: 20px;
        }
        .title:hover{
            color: #e89655;
        }
        .mm{
            margin-top: 40px;
            padding-bottom:600px;
        }
        .card2{
            border-left: 5px solid #e89655;
            border-right: 2px solid #feca5d;
            border-bottom: 1px solid #fab872;
            border-top: 1px solid #fab872;
            margin-top: 20px;
            border-radius: 2px 6px 6px 2px;
        }
        .card-header{
        }
        #cate2{
            font-size: 20px;
            background-color: #e8af63;
            padding: 6px ;
            width: 15%;
            border-radius: 3px;
            text-decoration: none;
            color: white;
        }
        #cate2:hover{
            font-size: 20px;
            background-color: #e8820a;
            padding: 6px ;
            width: 15%;
            border-radius: 3px;
            text-decoration: none;
            color: white;
        }
        .page-normal{
                color:#41B883;
                text-align:center;
            }
        /*所有分页页码的共同样式*/
        .page-normal a, .page-normal .page-current{
                border:1px solid orange;
                padding:5px 7px;
                text-decoration:none;
            }
            /*未选中的分页页码样式*/
        .page-normal a{
                color:#41B883;
            }
            /* 1. 选中的分页页码样式，即当前所在页面的页码
             * 2. 未选中的分页页码样式的鼠标滑过样式
             */
        .page-normal .page-current, .page-normal a:hover{
                color:#FFF;
                background-color:orange;}
    </style>
      <script>
      requirejs.config({
          baseUrl: '..'
      });
    </script>
    <!-- Dashboard Core -->
    <link href="./assets/css/dashboard.css" rel="stylesheet" />
    <script src="./assets/css/dashboard.js"></script>
      <link rel="stylesheet" href="style.css">
    <!-- Google Maps Plugin -->
    <!-- Input Mask Plugin -->
    <script src="../assets/plugins/input-mask/plugin.js"></script>
  </head>
  <body class="">
    <div class="page">
      <div class="page-main">
       <div class="header collapse d-lg-flex p-0" style="background-color:#eb642c;">
          <div class="container">
              <div class="col-lg order-lg-first">
              	<ul class="nav nav-tabs border-0 flex-column flex-lg-row">
                  <li class="nav-item">
						      <a href='PeriodServlet?period=秦朝' class="nav-link" style="color:white"
						      ><i class="fe fe-home"></i> 秦朝</a>
					        </li>
						    <li class="nav-item">
								<a href="javascript:void(0)" class="nav-link active" style="color:white"
								 data-toggle="dropdown"><i class="fe fe-box"></i> 汉朝</a>
								<div class="dropdown-menu dropdown-menu-arrow">
								  <a href='PeriodServlet?period=西汉' class="dropdown-item active">西汉</a>
								  <a href='PeriodServlet?period=新朝' class="dropdown-item ">新朝</a>
								  <a href='PeriodServlet?period=玄汉' class="dropdown-item ">玄汉</a>
								  <a href='PeriodServlet?period=东汉' class="dropdown-item ">东汉</a>
							    </div>
						    </li>
						    <li class="nav-item dropdown">
								<a href="javascript:void(0)" class="nav-link" style="color:white"
								 data-toggle="dropdown"><i class="fe fe-calendar"></i> 三国</a>
								<div class="dropdown-menu dropdown-menu-arrow">
								  <a href='PeriodServlet?period=蜀' class="dropdown-item ">蜀</a>
								  <a href='PeriodServlet?period=吴' class="dropdown-item ">吴</a>
								  <a href='PeriodServlet?period=魏' class="dropdown-item ">魏</a>
								</div>
						    </li>
						    <li class="nav-item dropdown">
								<a href="javascript:void(0)" class="nav-link" data-toggle="dropdown" style="color:white"
								><i class="fe fe-file"></i> 晋朝</a>
								<div class="dropdown-menu dropdown-menu-arrow">
								  <a href='PeriodServlet?period=东晋' class="dropdown-item ">东晋</a>
								  <a href='PeriodServlet?period=西晋' class="dropdown-item ">西晋</a>
								</div>
						    </li>
						    <li class="nav-item dropdown">
								<a href="javascript:void(0)" class="nav-link" data-toggle="dropdown" style="color:white"
								><i class="fe fe-file"></i>十六国</a>
								<div class="dropdown-menu dropdown-menu-arrow">
								  <a href='PeriodServlet?period=大夏' class="dropdown-item ">大夏</a>
								  <a href='PeriodServlet?period=成汉' class="dropdown-item ">成汉</a>
								  <a href='PeriodServlet?period=前赵' class="dropdown-item ">前赵</a>
								  <a href='PeriodServlet?period=后赵' class="dropdown-item ">后赵</a>
								  <a href='PeriodServlet?period=前秦' class="dropdown-item ">前秦</a>
								  <a href='PeriodServlet?period=后秦' class="dropdown-item ">后秦</a>
								  <a href='PeriodServlet?period=西秦' class="dropdown-item ">西秦</a>
								  <a href='PeriodServlet?period=前燕' class="dropdown-item ">前燕</a>
								  <a href='PeriodServlet?period=后燕' class="dropdown-item ">后燕</a>
								  <a href='PeriodServlet?period=南燕' class="dropdown-item ">南燕</a>
								  <a href='PeriodServlet?period=北燕' class="dropdown-item ">北燕</a>
								  <a href='PeriodServlet?period=前凉' class="dropdown-item ">前凉</a>	
								  <a href='PeriodServlet?period=后凉' class="dropdown-item ">后凉</a>	
								  <a href='PeriodServlet?period=南凉' class="dropdown-item ">南凉</a>	
								  <a href='PeriodServlet?period=北凉' class="dropdown-item ">北凉</a>	
								  <a href='PeriodServlet?period=西凉' class="dropdown-item ">西凉</a>								  
								</div>
							</li>
							<li class="nav-item dropdown">
								<a href="javascript:void(0)" class="nav-link" style="color:white"
								 data-toggle="dropdown"><i class="fe fe-file"></i>南北朝</a>
								<div class="dropdown-menu dropdown-menu-arrow">
								  <a href='PeriodServlet?period=南朝宋' class="dropdown-item ">宋</a>
								  <a href='PeriodServlet?period=南朝齐' class="dropdown-item ">齐</a>
								  <a href='PeriodServlet?period=南朝梁' class="dropdown-item ">梁</a>
								  <a href='PeriodServlet?period=南朝陈' class="dropdown-item ">陈</a>
								  <a href='PeriodServlet?period=北魏' class="dropdown-item ">北魏</a>
								  <a href='PeriodServlet?period=东魏' class="dropdown-item ">东魏</a>
								  <a href='PeriodServlet?period=细微' class="dropdown-item ">西魏</a>
								  <a href='PeriodServlet?period=北齐' class="dropdown-item ">北齐</a>
								  <a href='PeriodServlet?period=北周' class="dropdown-item ">北周</a>	
								</div>
							</li>
							<li class="nav-item">
								<a href='PeriodServlet?period=隋朝' class="nav-link" style="color:white"
								><i class="fe fe-file-text"></i> 隋朝</a>
							</li>
							<li class="nav-item">
								<a href='PeriodServlet?period=唐朝' class="nav-link" style="color:white"
								><i class="fe fe-file-text"></i> 唐朝</a>
							</li>
							<li class="nav-item dropdown">
								<a href="javascript:void(0)" class="nav-link" style="color:white"
								 data-toggle="dropdown"><i class="fe fe-file"></i>五代十国</a>
								<div class="dropdown-menu dropdown-menu-arrow">
								  <a href='PeriodServlet?period=后梁' class="dropdown-item ">后梁</a>
								  <a href='PeriodServlet?period=后唐' class="dropdown-item ">后唐</a>
								  <a href='PeriodServlet?period=后晋' class="dropdown-item ">后晋</a>
								  <a href='PeriodServlet?period=后汉' class="dropdown-item ">后汉</a>
								  <a href='PeriodServlet?period=后周' class="dropdown-item ">后周</a>
								  <a href='PeriodServlet?period=吴越' class="dropdown-item ">吴越</a>
								  <a href='PeriodServlet?period=闵国' class="dropdown-item ">闵国</a>
								  <a href='PeriodServlet?period=南平' class="dropdown-item ">南平</a>
								  <a href='PeriodServlet?period=楚国' class="dropdown-item ">楚国</a>
									<a href='PeriodServlet?period=南吴' class="dropdown-item ">南吴</a>
								  <a href='PeriodServlet?period=南唐' class="dropdown-item ">南唐</a>
								  <a href='PeriodServlet?period=南汉' class="dropdown-item ">南汉</a>
								  <a href='PeriodServlet?period=北汉' class="dropdown-item ">北汉</a>
								  <a href='PeriodServlet?period=前蜀' class="dropdown-item ">前蜀</a>
								  <a href='PeriodServlet?period=后蜀' class="dropdown-item ">后蜀</a>								  							  
								</div>
							</li>
							<li class="nav-item dropdown">
								<a href="javascript:void(0)" style="color:white"
								 class="nav-link" data-toggle="dropdown"><i class="fe fe-calendar"></i> 宋朝</a>
								<div class="dropdown-menu dropdown-menu-arrow">
								  <a href='PeriodServlet?period=辽' class="dropdown-item ">辽</a>
								  <a href='PeriodServlet?period=金' class="dropdown-item ">金</a>
								  <a href='PeriodServlet?period=西夏' class="dropdown-item ">西夏</a>
								  <a href='PeriodServlet?period=北宋' class="dropdown-item ">北宋</a>
								  <a href='PeriodServlet?period=南宋' class="dropdown-item ">南宋</a>
								</div>
							</li>
							<li class="nav-item">
								<a href='PeriodServlet?period=元朝' class="nav-link" style="color:white"
								><i class="fe fe-home"></i> 元朝</a>
						    </li>
							<li class="nav-item">
								<a href='PeriodServlet?period=明朝' class="nav-link" style="color:white"
								><i class="fe fe-home"></i> 明朝</a>
							</li>
							<li class="nav-item">
								<a href='PeriodServlet?period=清朝' class="nav-link" style="color:white"
								><i class="fe fe-home"></i> 清朝</a>
							</li>                </ul>
              </div>
          </div>
        </div>
        </div>
        <!--/.event-list-->
        <div class="example example-bg" id="cont">
        <%JSONArray jArray = new JSONArray ();
		int t=0;
		jArray = (JSONArray)request.getAttribute("inquire_data");
		String id = (String)request.getAttribute("id");%>
            <div class="cont2">
            <a href='DetailServlet?id=<%= id %>'  id="cate2">&nbsp;<<&nbsp;返&nbsp;回&nbsp;&nbsp;&nbsp;</a>
            <div class="mm">
		<%if(jArray.size()==0){ %>
		<div>暂无相关事件！</div>
		<% }                    
		for (int i = 0; i < jArray.size(); i++) {
			JSONObject jsonObject =jArray.getJSONObject(i);
		%>
                <div class="card2">
                            <div class="card-header" style="border-bottom: 1px solid #e8bec0;">
                                <a class="title" href='DetailServlet?id=<%=jsonObject.getString("id") %>'><h3 class="card-title"><%= jsonObject.getString("title") %></h3></a>
                            </div>
                                
                        </div>
		<%} %>
		</div>
		</div>
		
        </div>
        <!--event-list end -->
		
      </div>
      <div class="footer">
        <div class="container">
          <div class="row">
            <div class="col-lg-8">
              <div class="row">
                <div class="col-6 col-md-3">
                  <ul class="list-unstyled mb-0">
                    <li><a href="#">First link</a></li>
                    <li><a href="#">Second link</a></li>
                  </ul>
                </div>
                <div class="col-6 col-md-3">
                  <ul class="list-unstyled mb-0">
                    <li><a href="#">Third link</a></li>
                    <li><a href="#">Fourth link</a></li>
                  </ul>
                </div>
                <div class="col-6 col-md-3">
                  <ul class="list-unstyled mb-0">
                    <li><a href="#">Fifth link</a></li>
                    <li><a href="#">Sixth link</a></li>
                  </ul>
                </div>
                <div class="col-6 col-md-3">
                  <ul class="list-unstyled mb-0">
                    <li><a href="#">Other link</a></li>
                    <li><a href="#">Last link</a></li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="col-lg-4 mt-4 mt-lg-0">
              Premium and Open Source dashboard template with responsive and high quality UI. For Free!
            </div>
          </div>
        </div>
      </div>
      <footer class="footer">
        <div class="container">
          <div class="row align-items-center flex-row-reverse">
            <div class="col-auto ml-lg-auto">
              <div class="row align-items-center">
                <div class="col-auto">
                  <ul class="list-inline list-inline-dots mb-0">
                    <li class="list-inline-item"><a href="/index.html">Documentation</a></li>
                    <li class="list-inline-item"><a href="../faq.html">FAQ</a></li>
                  </ul>
                </div>
                <div class="col-auto">
                  <a href="https://github.com/tabler/tabler" class="btn btn-outline-primary btn-sm">Source code</a>
                </div>
              </div>
            </div>
            <div class="col-12 col-lg-auto mt-3 mt-lg-0 text-center">
              Copyright © 2018 <a href="../../DS">Tabler</a>. Theme by codecalm.net -  More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a> All rights reserved.
            </div>
          </div>
        </div>
      </footer>
    </div>
  </body>
</html>