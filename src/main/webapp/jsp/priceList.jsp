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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>客户价格配置列表</title>
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
					<li role="presentation" class=""><a href="#"><span
							class="glyphicon glyphicon-chevron-right"></span></a></li>
					<li role="presentation"><a href="#"><span
							class="glyphicon glyphicon-chevron-right"></span></a></li>
				</ul>
			</div>
			<div class="kehuguanli">
				<div class="cust">
					<h3>normalDiscount管理</h3>
				</div>

				<div class="panel panel-info">
					<div class="panel-heading">
						<div>客户列表</div>
						<a class="btn btn-primary btn-md" name="add"
												href="<%= request.getContextPath() %>/doPriceList_toadd!toadd.do">新增配置</a>

					</div>
					<div class="panel-body">
						<div class="table-responsive">
							<table
								class="table table-striped table-bordered table-hover table-condensed">
								<thead>
									<tr class="active">
										<th>PL_YH_ITEM</th>
										<th>有效日期从</th>
										<th>有效日期至</th>
										<th>user_def1</th>
										<th>user_def2</th>
										<th>user_def3</th>
										<th>user_def4</th>
										<th>user_def5</th>
									</tr>
								</thead>
								<tbody>

									<s:iterator  value="om_cust_price_list">
										<tr class="success">
											<td>
											<a class="btn btn-primary btn-sm" name="delet_id"
											href="<%= request.getContextPath() %>/doPriceList_toupdate!toupdate.do?delet_id=${discount_id}">编辑</a>
											<td align="center" name="id">${id}</td>
											<td align="center" name="PL_YH_ITEM">${PL_YH_ITEM}</td>
											<td align="center" name="effective_date_from">${effective_date_from}</td>
											<td align="center" name="effective_date_to">${effective_date_to}</td>
											<td align="center" name="user_def1">${user_def1}</td>
											<td align="center" name="user_def2">${user_def2}</td>
											<td align="center" name="user_def3">${user_def3}</td>
											<td align="center" name="user_def4">${user_def4}</td>
											<td align="center" name="user_def5">${user_def5}</td>
										</tr>
									</s:iterator>
								</tbody>
							</table>
						</div>
					</div>
					<div class="panel-footer">
						<div class="fenpage">
							<nav class="bottom_nav">
							
							</nav>
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