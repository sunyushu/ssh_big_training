<%@page import="com.opensymphony.xwork2.ActionContext"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%String path = request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
<link rel="stylesheet"
	href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
 <link rel="stylesheet" href="<%=path %>/css/style1.css"> 
</head>
<body>
	<div class="container">
		<div class="head">
			<a class="btn btn-primary"
				href="<%= request.getContextPath() %>/Logout_Logout!Logout.do">退出</a>
		</div>
		<div class="body">
			<div class="menu">
				<ul id="mytab" class="nav nav-tabs nav-stacked" role="tablist">
					<li role="presentation" class=""><a href="#">normalDiscount管理<span
							class="glyphicon glyphicon-chevron-right"></span></a></li>
					<li role="presentation"><a href="#">设置<span
							class="glyphicon glyphicon-chevron-right"></span></a></li>
				</ul>
			</div>
			<div class="kehuguanli">
				<div class="cust">
					<h3>Price_list</h3>
				</div>

				<div class="panel panel-info">
					<div class="panel-heading">
						<div>新增价格配置</div>
					</div>
					<div class="panel-body">
						<div class="table-responsive">
							<form class="form-horizontal" role="form" action="<%=request.getContextPath() %>/doPriceList_add!add.do" Method="post" name="loginForm">
                    <div class="form-group">
                        <label class="col-md-4 control-label">PL_YH_ITEM：</label>
                        <div class="col-md-4">
                            <input type="text" name="PL_YH_ITEM" class="form-control" placeholder="PL_YH_ITEM">
                        </div>
                    </div>
                         
                    <div class="form-group">
                        <label class="col-md-4 control-label">effective_date_from:</label>
                        <div class="col-md-4">
                            <input type="date" name="effective_date_from" class="form-control" placeholder="effective_date_from">
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label class="col-md-4 control-label">effective_date_to:</label>
                        <div class="col-md-4">
                            <input type="date" name="effective_date_to" class="form-control" placeholder="Frist Name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label">user_def1:</label>
                        <div class="col-md-4">
                            <input type="text" name="user_def1" class="form-control" placeholder="Frist Name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label">user_def2:</label>
                        <div class="col-md-4">
                            <input type="text" name="user_def2" class="form-control" placeholder="Frist Name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label">user_def3</label>
                        <div class="col-md-4">
                            <input type="text" name="user_def3" class="form-control" placeholder="Frist Name">
                        </div>
                    </div>
                 
                    <div class="form-group">
                        <label class="col-md-4 control-label">user_def4</label>
                        <div class="col-md-4">
                            <input type="text" name="user_def4" class="form-control" placeholder="Frist Name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label">user_def5</label>
                        <div class="col-md-4">
                            <input type="text" name="user_def5" class="form-control" placeholder="Frist Name">
                        </div>
                    </div>
                    
                     <div class="form-group">
                        <label class="col-md-4 control-label">user_def6:</label>
                        <div class="col-md-4">
                            <input type="text" name="user_def6" class="form-control" placeholder="Frist Name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label">user_def7:</label>
                        <div class="col-md-4">
                            <input type="text" name="user_def7" class="form-control" placeholder="Frist Name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label">user_def8</label>
                        <div class="col-md-4">
                            <input type="text" name="user_def8" class="form-control" placeholder="Frist Name">
                        </div>
                    </div>
                 
                    <div class="form-group">
                        <label class="col-md-4 control-label">user_def9</label>
                        <div class="col-md-4">
                            <input type="text" name="user_def9" class="form-control" placeholder="Frist Name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label">user_def10</label>
                        <div class="col-md-4">
                            <input type="text" name="user_def10" class="form-control" placeholder="Frist Name">
                        </div>
                    </div>
                    
                     <div class="form-group">
                        <label class="col-md-4 control-label">user_def11:</label>
                        <div class="col-md-4">
                            <input type="text" name="user_def11" class="form-control" placeholder="Frist Name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label">user_def12:</label>
                        <div class="col-md-4">
                            <input type="text" name="user_def12" class="form-control" placeholder="Frist Name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label">user_def13</label>
                        <div class="col-md-4">
                            <input type="text" name="user_def13" class="form-control" placeholder="Frist Name">
                        </div>
                    </div>
                 
                    <div class="form-group">
                        <label class="col-md-4 control-label">user_def14</label>
                        <div class="col-md-4">
                            <input type="text" name="user_def14" class="form-control" placeholder="Frist Name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label">user_def15</label>
                        <div class="col-md-4">
                            <input type="text" name="user_def15" class="form-control" placeholder="Frist Name">
                        </div>
                    </div>
                    
                     <div class="form-group">
                        <label class="col-md-4 control-label">user_def16:</label>
                        <div class="col-md-4">
                            <input type="text" name="user_def16" class="form-control" placeholder="Frist Name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label">user_def17:</label>
                        <div class="col-md-4">
                            <input type="text" name="user_def17" class="form-control" placeholder="Frist Name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label">user_def18</label>
                        <div class="col-md-4">
                            <input type="text" name="user_def18" class="form-control" placeholder="Frist Name">
                        </div>
                    </div>
                 
                    <div class="form-group">
                        <label class="col-md-4 control-label">user_def19</label>
                        <div class="col-md-4">
                            <input type="text" name="user_def19" class="form-control" placeholder="Frist Name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label">user_def20</label>
                        <div class="col-md-4">
                            <input type="text" name="user_def20" class="form-control" placeholder="Frist Name">
                        </div>
                    </div>
                    
                     <div class="form-group">
                        <label class="col-md-4 control-label">user_def21:</label>
                        <div class="col-md-4">
                            <input type="text" name="user_def21" class="form-control" placeholder="Frist Name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label">user_def22:</label>
                        <div class="col-md-4">
                            <input type="text" name="user_def22" class="form-control" placeholder="Frist Name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label">user_def23</label>
                        <div class="col-md-4">
                            <input type="text" name="user_def23" class="form-control" placeholder="Frist Name">
                        </div>
                    </div>
                 
                    <div class="form-group">
                        <label class="col-md-4 control-label">user_def24</label>
                        <div class="col-md-4">
                            <input type="text" name="user_def24" class="form-control" placeholder="Frist Name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label">user_def25</label>
                        <div class="col-md-4">
                            <input type="text" name="user_def25" class="form-control" placeholder="Frist Name">
                        </div>
                    </div>
                    
                     <div class="form-group">
                        <label class="col-md-4 control-label">user_def26:</label>
                        <div class="col-md-4">
                            <input type="text" name="user_def26" class="form-control" placeholder="Frist Name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label">user_def27:</label>
                        <div class="col-md-4">
                            <input type="text" name="user_def27" class="form-control" placeholder="Frist Name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label">user_def28</label>
                        <div class="col-md-4">
                            <input type="text" name="user_def28" class="form-control" placeholder="Frist Name">
                        </div>
                    </div>
                 
                    <div class="form-group">
                        <label class="col-md-4 control-label">user_def29</label>
                        <div class="col-md-4">
                            <input type="text" name="user_def29" class="form-control" placeholder="Frist Name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label">user_def30</label>
                        <div class="col-md-4">
                            <input type="text" name="user_def30" class="form-control" placeholder="Frist Name">
                        </div>
                    </div>
                 
                    <div class="form-group">
                        <div class="col-sm-offset-4 col-md-4">
                            <button type="submit" class="btn btn-default">新建</button>
                            <button type="submit" class="btn btn-default">取消</button>
                        </div>
                    </div>
                </form>

						</div>
					</div>
				</div>

			
			
			
		</div>
	</div>
	</div>
	<script src="../js/jquery-2.1.4.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="AJAX.js"></script>
</body>
</html>