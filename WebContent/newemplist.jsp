<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<link rel="stylesheet" href="css/common.css" type="text/css" />
<title>新聘员工报表</title>
<SCRIPT language="javascript">

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
.STYLE3 {color: #0000FF}
-->
</style>
</head>

<body>

<form name="fom" id="fom" method="post" action="">
<table id="subtree1" style="DISPLAY: " width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td height="20"><p class="newfont07">选择：<a href="#" class="right-font08 STYLE3" onclick="selectAll();">全选</a>-<a href="#" class="right-font08 STYLE3" onclick="unselectAll();">反选</a></p></td>
      </tr>
      <tr>
        <td height="40" class="font42"><table width="100%" border="0" cellpadding="4" cellspacing="1" class="newfont03">
          <tr class="CTitle" >
            <td height="22" colspan="7" align="right" style="font-size:16px"><div align="center"><span class="STYLE4">新聘员工列表</span></div></td>
            <td height="22" align="right" style="font-size:16px"></td>
          </tr>
          <tr bgcolor="#EEEEEE">
            <td width="4%" align="center" height="30">选择</td>
            <td width="10%">员工编号</td>
            <td width="10%">部门名称</td>
            <td width="10%">岗位名称</td>
            <td width="10%">姓名 </td>
            <td width="5%">性别</td>
            <td width="12%">入职日期</td>
            <td width="12%">学历</td>
          </tr>
           <c:forEach var="info" items="${sessionScope.info }">
          <tr bgcolor="#FFFFFF">
            <td height="20"><input type="checkbox" name="delid"/></td>
            <td>${info.emp_number}
            </td>
            <td>${info.dept_name}
            </td>
            <td>${info.job_name}
            </td>
            <td>${info.emp_name }
            </td>
            <td>${info.emp_sex}
            </td>
            <td>${info.toworktime}
            </td>
            <td>${info.education }
            </td>
          </tr>
         </c:forEach>

         
          <tr bgcolor="#FFFFFF">
            <td height="20" colspan="7">共 <span class="right-text09">${sessionScope.pagenumber }</span> 页 |
            					 第 <span class="right-text09">${sessionScope.pageindex }</span> 页
              <div align="right"></div></td>
            <td>[
           <c:if test="${sessionScope.pageindex==1 }">  
                <a  class="right-font08">首页</a> |
                <a  class="right-font08">上一页</a> | 
             </c:if> 
             
             <c:if test="${sessionScope.pageindex>1 }">    
                [<a href="PageFindNewServlet?index=1" class="right-font08">首页</a> |                 
                  <a href="PageFindNewServlet?index=${sessionScope.pageindex-1 }" class="right-font08">上一页</a> |
             </c:if> 
                 
              <c:if test="${sessionScope.pageindex < sessionScope.pagenumber }">      
                 <a href="PageFindNewServlet?index=${sessionScope.pageindex+1 }" class="right-font08">下一页</a> |                 
                  <a href="PageFindNewServlet?index=${sessionScope.pagenumber }" class="right-font08">末页</a>
               </c:if>  
               
               <c:if test="${sessionScope.pageindex==sessionScope.pagenumber }">   
                   <a  class="right-font08">下一页</a> |
                   <a  class="right-font08">末页</a>
               </c:if>  
            ]</td>
          </tr>
        </table></td>
      </tr>
    </table>
        <p>&nbsp;</p></td>
  </tr>
</table>
</form>

</body>
</html>