<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="DS.main.dao.IndexDao,com.alibaba.fastjson.JSONArray,com.alibaba.fastjson.JSONObject"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
	<link rel="icon" href="./favicon.ico" type="image/x-icon"/>
	<link rel="shortcut icon" type="image/x-icon" href="./favicon.ico" />
	<!-- Generated: 2018-04-06 16:27:42 +0200 -->
	<title>Cards design - tabler.github.io - a responsive, flat and full featured admin template</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,300i,400,400i,500,500i,600,600i,700,700i&amp;subset=latin-ext">
	<script src="./assets/js/require.min.js"></script>
	<script>
	  requirejs.config({
		  baseUrl: '.'
	  });
	</script>
	<!-- Dashboard Core -->
	<link href="./assets/css/dashboard.css" rel="stylesheet" />
	<script src="./assets/js/dashboard.js"></script>
	<!-- c3.js Charts Plugin -->
	<link href="./assets/plugins/charts-c3/plugin.css" rel="stylesheet" />
	<script src="./assets/plugins/charts-c3/plugin.js"></script>
	<!-- Google Maps Plugin -->
	<link href="./assets/plugins/maps-google/plugin.css" rel="stylesheet" />
	<script src="./assets/plugins/maps-google/plugin.js"></script>
	<!-- Input Mask Plugin -->
	<script src="./assets/plugins/input-mask/plugin.js"></script>
	<title>皇帝列表</title>
</head>
<body>
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
		<div class="my-3 my-md-5">
		  <div class="container">
			<div class="page-header">
			
			  <h1 class="page-title">
				皇帝列表
			  </h1>
			</div>

			<div class="row">
			<% 	
				JSONArray jArray = new JSONArray ();
				int t=0;

				IndexDao indexdao = new IndexDao();
				jArray = (JSONArray)request.getAttribute("inquire_data");
				if(jArray.size()==0){ %>
				<ul>查询结果错误！</ul>
			
				<% }                    
				for (int i = 0; i < jArray.size(); i++) {
					JSONObject jsonObject =jArray.getJSONObject(i);
			%>
			  <div class="col-lg-10">
				<div class="card card-aside">
				  <a href="#" class="card-aside-column" style='background-image: url(/DS<%= jsonObject.getString("img")%>)'></a>
				  <div class="card-body d-flex flex-column">
					<h4><a href='DetailServlet?id=<%=jsonObject.getString("id") %>'><%= jsonObject.getString("name") %></a></h4>
					<div class="text-muted">
						<%= indexdao.def_replace(jsonObject.getString("description")) %>
					</div>
				  </div>
				</div>
			  </div>
			  <%} %>
			</div>
			
		  </div>
		</div>
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
				  <a href="https://github.com/tabler/tabler" class="btn btn-outline-primary btn-sm">Source code</a>
				</div>
			  </div>
			</div>
			<div class="col-12 col-lg-auto mt-3 mt-lg-0 text-center">
			  Copyright © 2018 <a href="..">Tabler</a>. Theme by codecalm.net -  More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a> All rights reserved.
			</div>
		  </div>
		</div>
	  </footer>
</body>
</html>