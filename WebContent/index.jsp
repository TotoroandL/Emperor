<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en" dir="ltr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>帝搜</title>
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
    <link rel="stylesheet" href="./assets/css/style.css"/>
    <style type="text/css">
        .logo{
            position: relative;
            background:url(assets/images/logo2.png)no-repeat;
            background-position: center;
            background-size:cover;
            text-align: center;
            width: 100px;
            padding-right: 18px;
        }
        .welcome-hero {
    position: relative;
    background:url(./assets/images/home_img3.jpg)no-repeat;
    background-position: bottom;
    background-size:cover;
    text-align: center;
    height: calc(100vh);}

    </style>
</head>
<body>
    <div class="page" id="lll">
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
            <section id="home" class="welcome-hero" >
                <div class="container">
                    <div class="welcome-hero-txt">
                        <h2><a class="logo">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>帝&nbsp;&nbsp;搜<br> </h2>
                        <p></p>
                    </div>
                    <div class="welcome-hero-serch-box">
                        
                            <div class="single-welcome-hero-form">
                                <form action="IndexServlet" method="post"><input type="text" class="form-control" id="query" name="query" placeholder="请输入人名, 事件，年号......">
								<input type="hidden"  name="start" value="0" >
                            </div>
                        
                        <div class="welcome-hero-serch" >
                            <button class="welcome-hero-btn" type="submit" window.location.href='#'">search  <i data-feather="search"></i></button>
                        </div>
                        </form>
                    </div>
                </div>
            </section>
    </div>
  </body>
</html>