<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="DS.main.dao.IndexDao,com.alibaba.fastjson.JSONArray,com.alibaba.fastjson.JSONObject"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
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
    <title>检索一级结果页</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,300i,400,400i,500,500i,600,600i,700,700i&amp;subset=latin-ext">
	<style type="text/css">
        #cont{
            height:800px;
            background: url("home_img2.jpg") no-repeat center top;
            background-size: cover;
            float:left;
			background-color:;
        }
        .cont2{
			float:left;
			height:750px;
            margin-left:90px;
            width: 70%;
			background-color:;
        }
        .cont3{
            width: 100%;
            padding: 10px 25px;
            overflow : hidden;
            height: 80px;
            text-overflow: ellipsis;
 
        }
		.cont4{
		background-color:;
            width: 100%;
            
            overflow : hidden;
            height: 90px;
            text-overflow: ellipsis;
           
        }
		.cont5{
		background-color:green;
            width: 100%;
           
            overflow : hidden;
            height: 30px;
            text-overflow: ellipsis;
           
        }
        .card2{
			background-color:yellow;
            border-right: 1px solid #dee2e6;
            border-bottom: 1px solid #dee2e6;
            border-top: 1px solid #dee2e6;
            border-left: 4px solid #a79784;
            margin-top: 25px;
			width:800px;
			height:100px;
        }
		.card3{
            border-right: 1px solid #dee2e6;
            border-bottom: 1px solid #dee2e6;
            border-top: 1px solid #dee2e6;
            border-left: 4px solid #a79784;
            margin-top: 25px;
			height:200px;
        }
		
.parent {
    position: relative;
}
.search {
    width: 80%;
    height: 40px;
    border-radius: 18px;
    outline: none;
    border: 1px solid #ccc;
    padding-left: 20px;
    position: absolute;
}
.btn {
background: no-repeat center/cover;
background-image: url(./assets/images/search_con.png);
    height: 35px;
    width: 35px;
    position: absolute;
    top: 2px;
    left: 470px;
    border: none;
    outline: none;
    cursor: pointer;
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
                background-color:orange;
    </style>
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
		
		
  </head>
  
  
  <body class="">
    <div class="page">
      <div class="page-main">
      
        <div class="header collapse d-lg-flex p-0" style="background-color:#eb642c;">
        <div style="height:50px;width:10%;margin:5px 0 0 8%">
				<a href="index.jsp" class="nav-link"  style="color:white;font-size:23px;padding:5% 0 0 15%"><i class="fe fe-home"></i> 首页</a>
			</div>
          <div class="container" style="margin-left:3%">
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
								  <a href='PeriodServlet?period=西汉' class="dropdown-item ">西汉</a>
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
        <%
        String query = (String)request.getAttribute("query"); 
        int totalCount = (int)request.getAttribute("totalCount");
    	int totalPage = totalCount/10;
        %>
		<div style="height:50px;width:100%">
			<div style="height:50px;width:50%;margin:5px 0 0 400px;background-color:">
				<form action="IndexServlet" class="parent" method="post">
					<input type="text" id="query" name="query" class="search" placeholder='<%=query%>'>
					<input type="hidden"  name="start" value="0" >
					<input type="hidden"  name="query" value="<%= query %>" >
					<button type="submit" onclick="window.location.href='#'" class="btn"></button>
				</form>
			</div>
		</div>
        <div class="example example-bg" id="cont">
			<div style="margin-left:20px;width:17%;height:750px;float:left;background-color:white">
			    <div style="border-right: 2px solid #dee2e6;width:50%;height:100%;float:left;background-color:">
					<table>
						<tr>
						<td style="border-bottom: 2px solid #dee2e6;width:108px;height:50px;background-color:#eb642c;padding-left:20px">朝代</td>
						</tr>
						<% 
							JSONObject jo = new JSONObject ();
							jo = (JSONObject)request.getAttribute("inquire_data");
							JSONObject facet_counts = jo.getJSONObject("facet_counts");
							JSONObject facet_fileds = facet_counts.getJSONObject("facet_fields");
							JSONArray period_facet = facet_fileds.getJSONArray("period_facet");
							JSONArray nationality_facet = facet_fileds.getJSONArray("nationality_facet");                   
                   			for (int i = 0; i < period_facet.size(); i=i+2) {
                   				String period =period_facet.getString(i);
                   				String count =period_facet.getString(i+1);	
                   			%>
						<tr>
						<td style="height:35px;padding-left:20px"><a  href='FacetServlet?q=<%=query %>&fq=<%=period%>&a=period'><%= period%>(<%= count %>)</a></td>
						</tr>
						<%} %>
					</table>
				</div>
				<div style="border-left: 2px solid #dee2e6;margin-left:5px;width:47%;height:100%;float:left;background-color:">
				共查询到<%= totalCount %>条结果。
					<table>
						<tr>
						<td style="border-bottom: 2px solid #dee2e6;width:108px;height:50px;background-color:#eb642c;padding-left:20px">民族</td>
						</tr>
						<% for (int i = 0; i < nationality_facet.size(); i=i+2) {
                   				String period =nationality_facet.getString(i);
                   				String count =nationality_facet.getString(i+1);	
                   			%>
						<tr>
						<td style="height:35px;width:108px;background-color:;padding-left:20px"><a  href='FacetServlet?q=<%=query %>&fq=<%=period%>&a=nationality'><%= period%>(<%= count %>)</a></td>
						</tr>
						<%} %>
					</table>
				</div>
			</div>
            <div class="cont2">
						<% 
                                    
									int t=0;
									String id=null;
									String name=null;
									String description=null;
									String title=null;
									String content=null;
									String img=null;
									IndexDao indexdao = new IndexDao();
                                    JSONObject jo1 = jo.getJSONObject("response");
								    JSONArray jArray = jo1.getJSONArray("docs");
								    JSONObject highlight = jo.getJSONObject("highlighting");
                                    if(jo.size()==0){ %>
                                    <div>暂无消息</div>
                                    	
                                    <% }                  
                        
                           			for (int i = 0; i < jArray.size(); i++) {
                           				JSONObject jsonObject =jArray.getJSONObject(i);
                           			%>
									  <div style="margin:15px 0 0 5px;width:95%;height:130px;background-color:white"> 
									<%
                        	         if (jsonObject.containsKey("pid")){
                        	        	id = jsonObject.getString("id");
                     	            	JSONObject high = highlight.getJSONObject(id);
                     	            	img = jsonObject.getString("img");
                     	            	if(high.containsKey("name")){
                     	            		name = indexdao.def_replace(high.getString("name"));
                     	            	}
                     	            	else{
                     	            		 name = jsonObject.getString("name");
                     	            	}
                     	            	if (high.containsKey("description")){
                     	            		description = indexdao.def_replace(high.getString("description"));
                     	            	}
                     	            	else{
                     	            		 description = indexdao.def_replace(jsonObject.getString("description"));
                     	            	}
                        	         %>
									 
						
							<div style="width:15%;height:100%;float:left;">
							 <img style="width:100%;height:100%;float:left;"src='/DS<%= img%>'></img> 						
							</div>
							<div style="padding-left:3%;width:85%;height:100%;float:left;background-color:">
								<p><a href='DetailServlet?id=<%= id %>' target='_blank'><%= name%></a></p>
								<p class="cont4" ><%= description %></p>
							</div>
							<%}
                        	         else{
                        	        	 id = jsonObject.getString("id");
                     	            	JSONObject high = highlight.getJSONObject(id);
                     	            	if(high.containsKey("title")){
                     	            		title = indexdao.def_replace(high.getString("title"));
                     	            	}
                     	            	else{
                     	            		title = jsonObject.getString("title");
                     	            	}
                     	            	if (high.containsKey("content")){
                     	            		content = indexdao.def_replace(high.getString("content"));
                     	            	}
                     	            	else{
                     	            		content = indexdao.def_replace(jsonObject.getString("content"));
                     	            	}
                        	         %>
						
						
							<div style="width:100%;height:50px;background-color:;border-right: 1px solid #dee2e6;border-bottom: 1px solid #dee2e6;border-top: 1px solid #dee2e6;border-left: 4px solid #eb642c;">
								<a href='DetailServlet?id=<%= id %>' target='_blank' style="text-decoration:none"><h3 style="height:30px;font-size:15px;margin:15px 0 0 20px;"><%= title%></h3></a>
							</div>
							<div style="width:100%;height:80px;background-color:white;border-right: 1px solid #dee2e6;border-bottom: 1px solid #dee2e6;border-top: 1px solid #dee2e6;border-left: 4px solid #eb642c;">
								<p class="cont3"><%= content %></p>
							</div>
						<%} %>
						</div>
                        						
						<%} %>
		
			</div>
			<div class="page-normal" style="margin-top:760px;width:1005;height:50px;background-color:">
				<div class="row">
				<a href="#">&nbsp;&lt;&nbsp;</a>
				<%
				 for(int j=0; (j<totalPage)&&(j<10); j++){							
				%>
				<form action="IndexServlet" method="post">
                <input type="hidden"  name="query" value="<%= query %>" >           
                <input type="hidden"  name="start" value="<%= j*10 %>" >
                                                        
                <button type="submit" href="#"><%= j+1 %></button>
                </form>
				<%} %>
				<a href="#">&nbsp;&gt;&nbsp;</a>
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
                </div>
              </div>
            </div>
            <div class="col-12 col-lg-auto mt-3 mt-lg-0 text-center" style="margin-left:30%">
              Copyright © 四川大学公共管理学院信息管理与信息系统专业[信息检索]项目" All rights reserved.
            </div>
          </div>
        </div>
      </footer>
    </div>
  </body>
</html>