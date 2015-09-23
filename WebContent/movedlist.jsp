<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<link rel="stylesheet" href="css/common.css" type="text/css" />
<title>员工调转的详细信息列表</title>
</head>

<body>
<div id="man_zone">
<form name="form" id="fom" method="post" action="">
<table width="100%" border="0" cellspacing="0" cellpadding="0" >
  
  <tr>
    <td height="30">      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="62" background="../images/nav04.gif">
            
		   <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
		    <tr>
			  <td width="21"></td>
			  <td width="538">查看员工调转信息</td>
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
               <td height="20">&nbsp;</td>
          	   <td align="right"><input name="Submit" type="button" class="right-button08" onclick="link();" value="下载"/></td>
          	 </tr>
              <tr>
                <td height="40" colspan="2" class="font42">
				<table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
				 <tr class="CTitle" >
                    	<td height="22" colspan="10" align="center" style="font-size:16px">员工调转的详细信息列表</td>
                  </tr>
                  <tr bgcolor="#EEEEEE">
				    <td width="7%" align="center" height="30"><div align="center">员工编号</div></td>
                    <td width="7%"><div align="center">员工姓名</div></td>
                    <td width="8%"><div align="center">原所在部门</div></td>
					<td width="10%"><div align="center">原所在岗位</div></td>
                    <td width="8%"><div align="center">现在部门</div></td>
					<td width="9%"><div align="center">现在岗位</div></td>
					<td width="9%"><div align="center">调转时间</div></td>
					<td width="10%"><div align="center">调转方式</div></td>
					<td width="13%"><div align="center">调动时间</div></td>
					<td width="19%"><div align="center">备注</div></td>
                  </tr>
                  <c:forEach var="info" items="${sessionScope.info }">
                  <tr bgcolor="#FFFFFF">
				    <td height="20"><div align="center">${info.emp_number}</div></td>
                    <td ><div align="center">${info.emp_name}</div></td>
                    <td ><div align="center"></a>${info.olddept}</div></td>
					<td> <div align="center"></a>${info.oldjob}</div></td>
                    <td><div align="center">${info.newdept}</div></td>
                    <td><div align="center">${info.newjob}</div></td>
                    <td><div align="center">${info.depttime}</div></td>
                    <td><div align="center">${info.deptreason}</div></td>
                    <td><div align="center">${info.depttime}</div></td>
                    <td><div align="center"></div></td>
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
                <td width="50%">共 <span class="right-text09">5</span> 页 | 第 <span class="right-text09">1</span> 页</td>
                <td width="49%" align="right">[<a href="#" class="right-font08">首页</a> | <a href="#" class="right-font08">上一页</a> | <a href="#" class="right-font08">下一页</a> | <a href="#" class="right-font08">末页</a>] 转至：</td>
                <td width="1%"><table width="20" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="1%"><input name="textfield3" type="text" class="right-textfield03" size="1" /></td>
                      <td width="87%"><input name="Submit23222" type="submit" class="right-button06" value=" " />
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
</html>