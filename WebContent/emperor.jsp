<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="DS.main.dao.IndexDao,DS.main.dao.DetailDao,com.alibaba.fastjson.JSONArray,com.alibaba.fastjson.JSONObject"%>
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

	<title>皇帝信息详情页</title>
</head>
<body>
<% 
			IndexDao indexdao=new IndexDao();
			JSONObject emperordata = new JSONObject ();
			emperordata = (JSONObject)request.getAttribute("detail_data");
			%>
	<div class="page">
	  <div class="page-main">
		<div class="header py-4">
		  <div class="container">
			<div class="d-flex">
			  <a class="header-brand" href="./index.html">
				<img src="./demo/brand/tabler.svg" class="header-brand-img" alt="tabler logo">
			  </a>              
			  <div class="col-lg order-lg-first">
				<button type="submit" class="btn btn-primary"><a href='EventsServlet?pid=<%=emperordata.getString("pid").replace("[", "").replace("]", "") %>&id=<%=emperordata.getString("id")%>'>皇帝事件</a></button>
			  </div>
			</div>
			</div>
		  </div>
		</div>
		<div class="my-3 my-md-5">
		  <div class="container">
			<div class="page-header">
			</div>
			<div class="row">
			
			<% if(emperordata.size()==0){ %>
			<ul>暂无消息</ul>
				
			<%}
				
			%>
			<div class="col-lg-2">
			  <div class="card">
				<a href="#"><img class="card-img" src='/DS<%= emperordata.getString("img")%>' alt="And this isn&#39;t my nose. This is a false one."></a>
			  </div>
			</div>

			<div class="col-lg-8">
			  <div class="card">
				<div class="table-responsive">
				  <table class="table card-table table-striped table-vcenter">
					<tbody>
						<img ></img>
					  <tr>
						<td>姓名</td>
						<td><%= emperordata.getString("name") %></td>
					  </tr>
					  <tr>
						<td>别名</td>
						<td><%= emperordata.getString("additionalName") %></td>
					  </tr>
					  <tr>
						<td>朝代</td>
						<td><%= emperordata.getString("period") %></td>
					  </tr>
					  <tr>
						<td>民族</td>
						<td><%= emperordata.getString("nationality") %></td>
					  </tr>
					  <tr>
						<td>庙号</td>
						<td><%= emperordata.getString("templeName") %></td>
					  </tr>
					  <tr>
						<td>谥号</td>
						<td><%= emperordata.getString("posthumousName") %></td>
					  </tr>
					  <tr>
						<td>年号</td>
						<td><%= emperordata.getString("reignYear") %></td>
					  </tr>
					  <tr>
						<td>父母</td>
						<td><%= emperordata.getString("parent") %></td>
					  </tr>
					  <tr>
						<td>配偶</td>
						<td><%= emperordata.getString("spouse") %></td>
					  </tr>
					  <tr>
						<td>兄弟姐妹</td>
						<td><%= emperordata.getString("sibling") %></td>
					  </tr>
					  <tr>
						<td>子嗣</td>
						<td><%= emperordata.getString("children") %></td>
					  </tr>
					  <tr>
						<td>生卒年</td>
						<td><%= emperordata.getString("birthToDeath") %></td>
					  </tr>
					  <tr>
						<td>任期</td>
						<td><%= emperordata.getString("tenure") %></td>
					  </tr>
					  <tr>
						<td>在位时长</td>
						<td><%= emperordata.getString("duration").replace("[", "").replace("]", "") %></td>
					  </tr>
					  <tr>
						<td></td>
						<td></td>
					  </tr>
					</tbody>
				  </table>
				</div>
				<div class="card-body d-flex flex-column">
				  <h4><a href="#">生平简介</a></h4>
				  <div class="text-muted">
				  <%= emperordata.getString("description") %>
				  </div>
				</div>
			  </div>
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
				  <ul class="list-inline list-inline-dots mb-0">
					<li class="list-inline-item"><a href="../docs/index.html">秦始皇为什么要修万里长城呢 何要下此血本</a></li>
					<li class="list-inline-item"><a href="../faq.html">FAQ</a></li>
				  </ul>
				</div>
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
	</div>
</body>
</html>