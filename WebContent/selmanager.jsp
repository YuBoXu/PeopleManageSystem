<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="gb2312"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="css/common.css" type="text/css" />
<title>管理区域</title>
</head>
<body>
<div id="man_zone">
<form method="post" action="hySelectManagerServlet">
<table width="100%" border="0" cellspacing="0" cellpadding="0" >
  
  <tr>
    <td height="30">      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="62" background="../images/nav04.gif">
            
		   <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
		    <tr>
			  <td width="21">&nbsp;</td>
			  <td width="538">查看系统管理员信息</td>
			  <td width="144" align="left"><a href="#" onclick="sousuo()"></a></td>	
		    </tr>
          </table></td>
        </tr>
    </table></td></tr>
  <tr>
    <td><table id="subtree1" style="DISPLAY: " width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
          	 <tr>
               <td height="20">
                 </td>
          	   <td align="right">&nbsp;</td>
          	 </tr>
              <tr>
                <td height="40" colspan="2" class="font42">
				<table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
				 <tr class="CTitle" >
                    	<td height="22" colspan="10" align="center" style="font-size:16px">管理员详细列表</td>
                  </tr>
				 <tr bgcolor="#EEEEEE">
                   <td width="6%" align="center">编号</td>
				   <td width="9%" height="30"><div align="center">管理员姓名</div></td>
				   <td width="11%"><div align="center">密码</div></td>
				   <td width="9%"><div align="center">职务</div></td>
				   <td width="9%"><div align="center">联系电话</div></td>

				   <td width="13%"><div align="center">入职日期</div></td>
				   <td width="17%"><div align="center">操作</div></td>
				   </tr>
				   <c:forEach var="sign" items="${sessionScope.signs }">
                  <tr bgcolor="#FFFFFF">
				    <td height="20"><div align="center">${sign.manager_id }</div></td>
                    <td><div align="center">${sign.manager_name }</div></td>
					<td><div align="center">${sign.manager_pwd } </div></td>
                    <td><div align="center">${sign.manager_dept }</div></td>
                    <td><div align="center">${sign.manager_tel }</div></td>
                    <td><div align="center">${sign.manager_date }</div></td>
                    <td><div align="center"><a href="hyUpdateManagerServlet?userId=${sign.manager_id }">编辑 | </a>
                    <a href="javascript:mySubmit('${sign.manager_id }')">删除</a></div></td>
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
          <td height="33"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="right-font08">
              <tr>
                <td width="50%">共 <span class="right-text09">${sessionScope.pageCount }</span> 页 | 
                                                第 <span class="right-text09">${sessionScope.pageIndex }</span> 页</td>
                 
      <c:if test="${ not empty sessionScope.signs }">
		<tr align = "right">
		<td>
		<c:if test="${sessionScope.pageIndex==1 }">
		[首页 |上一页
		</c:if>
		<c:if test="${sessionScope.pageIndex>1 }">
		<a href="hyPageServlet?index=1">[首页</a>
		<a href="hyPageServlet?index=${sessionScope.pageIndex-1 }">|上一页</a>
		</c:if>
		<c:if test="${sessionScope.pageIndex==sessionScope.pageCount }">
		|下一页 |尾页]
	    </c:if>
		<c:if test="${sessionScope.pageIndex<sessionScope.pageCount  }">
		    <a href="hyPageServlet?index=${sessionScope.pageIndex+1 }">|下一页</a>
			<a href="hyPageServlet?index=${sessionScope.pageCount }">|尾页]</a>
		</c:if> 
		</td>
		</tr>
        </c:if>  
          </table>
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
	function mySubmit(id)
	{
		var f=window.confirm("你确定要删除吗?");
		if(f)
		{
			window.location.href="hyDeleteManagerServlet?manager_id="+id;
			
		}
		
	}
</script>
</html>