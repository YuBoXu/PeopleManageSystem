<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<link rel="stylesheet" href="css/common.css" type="text/css" />
<title>组织管理</title>
<script type="text/javascript">
	function selectAll() {
		var obj = document.fom.elements;
		for (var i = 0; i < obj.length; i++) {
			if (obj[i].name == "delid") {
				obj[i].checked = true;
			}
		}
	}

	function unselectAll() {
		var obj = document.fom.elements;
		for (var i = 0; i < obj.length; i++) {
			if (obj[i].name == "delid") {
				if (obj[i].checked == true)
					obj[i].checked = false;
				else
					obj[i].checked = true;
			}
		}
	}

	function link() {
		document.getElementById("fom").action = "addrenwu.htm";
		document.getElementById("fom").submit();
	}
	function link1() {
		location.href = "adddept.html";
	}
	function link2() {
		if (document.fom.delid.onchick == true) {
			alert("您的选择没有可执行的操作！");
		} else {
			location.href = "multimod.html";
		}
	}
</script>
<script type="text/javascript">
function mySubmit(url){
	var f=document.forms[0];
	f.action=url;
	f.submit();
	
}

function deletejob(id){
	var info =window.confirm("你确定要删除吗？");
	if (info) {
		window.location.href="UpdateDeleteJobServlet?jobnumber="+id;
		
			alert("删除失败该岗位下有员工！");
		
	}
}
</script>
<style type="text/css">
<!--
.STYLE2 {
	color: #0000FF
}
-->
</style>
</head>

<body>
	<div id="man_zone">
		<form name="fom" id="fom" method="post" action="">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td height="30"><table width="100%" border="0" cellspacing="0"
							cellpadding="0">
							<tr>
								<td height="62" background="../images/nav04.gif"><table
										width="98%" border="0" align="center" cellpadding="0"
										cellspacing="0">
										<tr>
											<td width="21"><img src="images/ico07.gif" /></td>
											<td width="538">查看岗位信息</td>
											<td width="144" align="left"></td>
										</tr>
									</table></td>
							</tr>
						</table></td>
				</tr>
				<tr>
					<td><table id="subtree1" style="DISPLAY:" width="100%"
							border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td><table width="95%" border="0" align="center"
										cellpadding="0" cellspacing="0">
										<tr>
											<td height="20"><span class="newfont07">批处理：<a
													href="#" class="right-font08 STYLE2" onclick="selectAll();">全选</a>-<a
													href="#" class="right-font08 STYLE2"
													onclick="unselectAll();">反选 </a>
													<a href="javascript:mySubmit('JobSelectAllUnSelectAllServlet');" class="right-font08 STYLE2"> 删除</a></span></td>
											<td align="right"></td>
										</tr>
										<tr>
											<td height="40" colspan="2" class="font42"><table
													width="100%" border="1" cellpadding="4" cellspacing="1"
													class="newfont03">
													<tr class="CTitle">
														<td height="22" colspan="10" align="center"
															style="font-size: 16px">岗 位 详 细 列 表</td>
													</tr>
													<tr bgcolor="#EEEEEE">
														<td width="4%" align="center"><div align="center">选择</div></td>
														<td width="5%" align="center" height="30"><div
																align="center">序号</div></td>
														<td width="11%"><div align="center">岗位编号</div></td>
														<td width="11%"><div align="center">岗位名称</div></td>
														<td width="7%"><div align="center">类型</div></td>
														<td width="11%"><div align="center">所属部门</div></td>
														<td width="14%"><div align="center">部门编号</div></td>
														<td width="8%"><div align="center">岗位编制</div></td>
														<td width="8%"><div align="center">编制限定</div></td>
														<td width="25%"><div align="center">操作</div></td>
													</tr>
													<c:forEach var="job" items="${sessionScope.jobinfo }"
														varStatus="state">
														<tr bgcolor="#FFFFFF">
															<td><div align="center">
																	<input type="checkbox" name="delid" value="${job.job_number }"/>
																</div></td>
															<td height="20"><div align="center">${state.index+1 }</div></td>
															<td><div align="center">${job.job_number }</div></td>
															<td><div align="center">
																	<a href="listmokuaimingxi.htm" onclick=""></a>${job.job_name }
																</div></td>
															<td><div align="center">${job.job_type }</div></td>
															<td><div align="center">${job.dept_name }</div></td>
															<td><div align="center">${job.dept_number }</div></td>
															<td><div align="center">${job.job_count }</div></td>
															<td><div align="center">${job.job_limit }</div></td>
															<td><div align="center">
																	<a href="FindJobByIdServlet?number=${job.job_number }">编辑
																	</a>| <a href="javascript:deletejob('${job.job_number }')">删除</a> | <a
																		href="FindJobEmpInfoServlet?jobnumber=${job.job_number }">查询岗位下员工</a>
																</div></td>
														</tr>
													</c:forEach>
												</table></td>
										</tr>
									</table>
									<table width="95%" border="0" align="center" cellpadding="0"
										cellspacing="0">
										<tr>
											<td height="6"><img src="../images/spacer.gif" width="1"
												height="1" /></td>
										</tr>
										<tr>
											<td height="33"><table width="100%" border="0"
													align="center" cellpadding="0" cellspacing="0"
													class="right-font08">
													<tr>



														<td width="49%">共 <span class="right-text09">${sessionScope.pagenumber }</span>
															页 | 第 <span class="right-text09">${sessionScope.pageindex }</span>
															页
														</td>
														<td width="48%" align="right">[
																									 <c:if test="${sessionScope.pageindex==1 }">  
											                <a  class="right-font08">首页</a> |
											                <a  class="right-font08">上一页</a> | 
											             </c:if> 
											             
											             <c:if test="${sessionScope.pageindex>1 }">    
											                [<a href="PageJobServlet?index=1" class="right-font08">首页</a> |                 
											                  <a href="PageJobServlet?index=${sessionScope.pageindex-1 }" class="right-font08">上一页</a> |
											             </c:if> 
											                 
											              <c:if test="${sessionScope.pageindex < sessionScope.pagenumber }">      
											                 <a href="PageJobServlet?index=${sessionScope.pageindex+1 }" class="right-font08">下一页</a> |                 
											                  <a href="PageJobServlet?index=${sessionScope.pagenumber }" class="right-font08">末页</a>
											               </c:if>  
											               
											               <c:if test="${sessionScope.pageindex==sessionScope.pagenumber }">   
											                   <a  class="right-font08">下一页</a> |
											                   <a  class="right-font08">末页</a>
											               </c:if>  
               
					<%-- 									 <c:if
																test="${sessionScope.pageindex==1 }">
																<a class="right-font08">首页</a> |
                <a class="right-font08">上一页</a> | 
             </c:if> <c:if test="${sessionScope.pageindex>1 }">    
                [<a href="PageJobServlet?index=1" class="right-font08">首页</a> |                 
                  <a
																	href="PageJobServlet?index=${sessionScope.pageindex-1 }"
																	class="right-font08">上一页</a> |
             </c:if> <c:if
																test="${sessionScope.pageindex < sessionScope.pagenumber }">
																<a
																	href="PageJobServlet?index=${sessionScope.pageindex+1 }"
																	class="right-font08">下一页</a> |                 
                  <a
																	href="PageJobServlet?index=${sessionScope.pagenumber }"
																	class="right-font08">末页</a>]
               </c:if> <c:if
																test="${sessionScope.pageindex==sessionScope.pagenumber }">
																<a class="right-font08">下一页</a> |
                   <a class="right-font08">末页</a>
                   ]
               </c:if> --%>
               ] 转至：
														</td>
														<td width="1%"><table width="20" border="0"
																cellspacing="0" cellpadding="0">
																<tr>
																	<td width="1%">
																	<input name="jobpage" type="text" class="right-textfield03" size="3" /></td>
																	<td width="87%">
																	<input name="Submit" type="submit"	value="GO" onclick="mySubmit('PageJobGoToServlet')" /></td>
																</tr>
															</table></td>
													</tr>
												</table></td>
										</tr>
									</table></td>
							</tr>
						</table></td>
				</tr>
			</table>
		</form>
	</div>
</body>

</html>
