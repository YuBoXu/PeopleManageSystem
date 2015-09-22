<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<link rel="stylesheet" href="css/common.css" type="text/css" />
<title>部门管理</title>
<SCRIPT language=JavaScript>

function link1(id){
	
	var info =window.confirm("你确定要删除吗？");
	if (info) {
		window.location.href="UpdateDeleteDeptServlet?deptnumber="+id;
		
			alert("删除失败该部门下有员工！");
		
	}
     
     
}
function selectAll(){
	var obj = document.fom.elements;
	for (var i=0;i<obj.length;i++){
		if (obj[i].name == "delid"){
			obj[i].checked = true;
		}
	}
}

function unselectAll(){
	var obj = document.fom.elements;
	for (var i=0;i<obj.length;i++){
		if (obj[i].name == "delid"){
			if (obj[i].checked==true) obj[i].checked = false;
			else obj[i].checked = true;
		}
	}
}

</SCRIPT>

<style type="text/css">
<!--
.STYLE1 {color: #0000FF}
-->
</style>
</head>

<body>
<div id="man_zone">
<form name="fom" id="fom" method="post" action="">
<table width="100%" border="0" cellspacing="0" cellpadding="0" >
  
  <tr>
    <td height="30">      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="62" background="../images/nav04.gif">
            
		   <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
		    <tr>
			  <td width="21"><img src="images/ico07.gif" width="20" height="18" /></td>
			  <td width="538">查看部门信息</td>
			  <td width="144" align="left"><a href="#" onclick="sousuo()"></a></td>	
		    </tr>
          </table></td>
        </tr>
    </table></td></tr>
  <tr>
    <td><table id="subtree1" style="DISPLAY: " width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><table width="95%" border="1" align="center" cellpadding="4" cellspacing="1">
          	 <tr>
               <td height="20"><span class="newfont07">批处理：
               <a href="#" class="right-font08 STYLE1" onclick="selectAll();">全选</a>-
               <a href="#" class="right-font08 STYLE1 " onclick="unselectAll();">反选 </a>
               <a href="javascript:mySubmit('DeptSelectAllUnSelectAllServlet');" class="STYLE1" > 删除</a>             </td>
          	   <td align="right"></td>
          	 </tr>
              <tr>
                <td height="40" colspan="2" class="font42">
				<table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
				 <tr class="CTitle" >
                    	<td height="22" colspan="11" align="center" style="font-size:16px">部门详细列表</td>
                  </tr>
                  <tr bgcolor="#EEEEEE">
				    <td width="4%" align="center" height="30"><div align="center">选择</div></td>
				     <td width="4%"><div align="center">序号</div></td>
                    <td width="7%"><div align="center">部门编号</div></td>
                    <td width="10%"><div align="center">部门名称</div></td>
					<td width="7%"><div align="center">类型</div></td>
                    <td width="11%"><div align="center">电话</div></td>
					<td width="9%"><div align="center">传真</div></td>
					<td width="9%"><div align="center">描述</div></td>
					<td width="9%"><div align="center">上级部门</div></td>
					<td width="13%"><div align="center">成立日期</div></td>
					<td width="19%"><div align="center">操作</div></td>
                  </tr>
               <c:forEach var="dept" items="${sessionScope.deptinfo }" varStatus="state">   
                  <tr bgcolor="#FFFFFF">
				    <td height="20"><div align="center">
				      <input type="checkbox" name="delid" value="${dept.dept_number }"/>
				      </div></td>
                    <td ><div align="center">${state.index+1 }</div></td>
                    <td ><div align="center">${dept.dept_number }</div></td>
                    <td ><div align="center"><a href="listmokuaimingxi.htm" onclick=""></a>${dept.dept_name }</div>
                    </td>
					<td>
					  <div align="center">
					  ${dept.dept_type }
					      </div>
			</td>
                    <td><div align="center">${dept.dept_phone }</div></td>
                    <td><div align="center">${dept.dept_fax }</div></td>
                    <td><div align="center">${dept.dept_describe }</div></td>
                    <td><div align="center">${dept.dept_top }</div></td>
                    <td><div align="center">${dept.dept_date }</div></td>
                    <td><div align="center"> <a href="FindDeptByIDServlet?number=${dept.dept_number }">编辑 </a>|
                    <a href="javascript:link1('${dept.dept_number }')"> 删除 </a>|
                    <a href="FindDeptEmpInfoServlet?deptnumber=${dept.dept_number }"> 查询部门下员工</a></div></td>
                  </tr>
				</c:forEach>   
            </table></td>
        </tr>
      </table>
      <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="6"><img src="../images/spacer.gif" width="1" height="1" /></td>
        </tr>
        <tr>
          <td height="33">
          <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="right-font08">
              <tr>
                <td width="49%">共 <span class="right-text09">${sessionScope.pagenumber }</span> 页 | 第 
                <span class="right-text09">${sessionScope.pageindex }</span> 页</td>
                <td width="48%" align="right">[
                
            <c:if test="${sessionScope.pageindex==1 }">  
                <a  class="right-font08">首页</a> |
                <a  class="right-font08">上一页</a> | 
             </c:if> 
             
             <c:if test="${sessionScope.pageindex>1 }">    
                [<a href="PageDeptServlet?index=1" class="right-font08">首页</a> |                 
                  <a href="PageDeptServlet?index=${sessionScope.pageindex-1 }" class="right-font08">上一页</a> |
             </c:if> 
                 
              <c:if test="${sessionScope.pageindex < sessionScope.pagenumber }">      
                 <a href="PageDeptServlet?index=${sessionScope.pageindex+1 }" class="right-font08">下一页</a> |                 
                  <a href="PageDeptServlet?index=${sessionScope.pagenumber }" class="right-font08">末页</a>
               </c:if>  
               
               <c:if test="${sessionScope.pageindex==sessionScope.pagenumber }">   
                   <a  class="right-font08">下一页</a> |
                   <a  class="right-font08">末页</a>
               </c:if>  
               ]
                   转至：</td>
                   
                <td width="5%"><table width="20" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="1%">
                      <input name="gotopage" type="text" class="right-textfield03" size="3" /></td>
                      <td width="87%">
                      <input name="Submit23222" type="button" class="button08" value="GO" onclick="mySubmit('PageDeptGoTOServlet')" />
                      </td>
                    </tr>
                </table></td>
              </tr>
          </table></td>
        </tr>
      </table></td>
  </tr>
</table>
</td>
</tr>
</table>
</form>


 
 
</div>
</body>
<script type="text/javascript">
	function mySubmit(url)
	{
		var f=document.forms[0];
		f.action=url;
		f.submit();
		
	}
	
</script>
</html>
