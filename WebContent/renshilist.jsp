<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<link rel="stylesheet" href="css/common.css" type="text/css" />
<title>人事月报</title>
<style type="text/css">
<!--
.STYLE1 {font-size: 16px}
-->
</style>
</head>

<body>
<div id="man_zone">
  <p>&nbsp;</p>
  <table width="95%" border="0.5" align="center" bordercolor="#0C057E" bgcolor="#FFFFFF">
    <tr bgcolor="#FFFFFF">
      <td colspan="10"><div align="center"><span class="STYLE1">人事月表 </span></div></td>
      <td width="75"><span class="STYLE1">
        <input type="button" name="Submit" value="下载" />
      </span></td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td width="90" rowspan="2">部门名称</td>
      <td colspan="6">人数统计 </td>
      <td colspan="4">学历统计 </td>
    </tr>
    <tr>
      <td width="86">月初人数</td>
      <td width="89">月末人数</td>
      <td width="89">本月新入职 </td>
      <td width="86">本月离职</td>
      <td width="86">本月调入</td>
      <td width="86">本月调出</td>
      <td width="86">研究生 </td>
      <td width="86">本科</td>
      <td width="86">大专 </td>
      <td width="86">高中及以下 </td>
    </tr>
 <c:forEach var="info" items="${sessionScope.monthlist }"> 
    <tr>
      <td width="86">${info.dept_name }</td>
      <td width="86" align="center" nowrap="nowrap"><p align="center">${info.beginmonth }</p></td>
      <td width="89" nowrap="nowrap"><p align="center">${info.endmonth }</p></td>
      <td width="89" nowrap="nowrap"><p align="center">${info.enternumber }</p></td>
      <td width="86" nowrap="nowrap"><p align="center">${info.outputnumber }</p></td>
      <td width="86" nowrap="nowrap"><p align="center">${info.turnin }</p></td>
      <td width="86" nowrap="nowrap"><p align="center">${info.turnout }</p></td>
      <td width="86" nowrap="nowrap"><p align="center">${info.postgraduatenumber }</p></td>
      <td width="86" nowrap="nowrap"><p align="center">${info.undergraduatenumber }</p></td>
      <td width="86" nowrap="nowrap"><p align="center">${info.juniorcollegenumber }</p></td>
      <td width="86" nowrap="nowrap"><p align="center">${info.hightscoolnumber }</p></td>
    </tr>
 </c:forEach>     
   <!--  <tr>
      <td width="86">IA</td>
      <td width="86" align="center" nowrap="nowrap"><p align="center">10</p></td>
      <td width="89" nowrap="nowrap"><p align="center">　20 </p></td>
      <td width="89" nowrap="nowrap"><p align="center">　15 </p></td>
      <td width="86" nowrap="nowrap"><p align="center">5　 </p></td>
      <td width="86" nowrap="nowrap"><p align="center">　1 </p></td>
      <td width="86" nowrap="nowrap"><p align="center">　1 </p></td>
      <td width="86" nowrap="nowrap"><p align="center">1　 </p></td>
      <td width="86" nowrap="nowrap"><p align="center">　1 </p></td>
      <td width="86" nowrap="nowrap"><p align="center">0　 </p></td>
      <td width="86" nowrap="nowrap"><p align="center">　0 </p></td>
    </tr>
    <tr>
      <td width="86">商用</td>
      <td width="86" align="center" nowrap="nowrap"><p align="center">10</p></td>
      <td width="86" nowrap="nowrap"><p align="center">　20 </p></td>
      <td width="89" nowrap="nowrap"><p align="center">　15 </p></td>
      <td width="86" nowrap="nowrap"><p align="center">　 5</p></td>
      <td width="86" nowrap="nowrap"><p align="center">　1 </p></td>
      <td width="86" nowrap="nowrap"><p align="center">　1 </p></td>
      <td width="86" nowrap="nowrap"><p align="center">　1 </p></td>
      <td width="86" nowrap="nowrap"><p align="center"> 1　 </p></td>
      <td width="86" nowrap="nowrap"><p align="center">　0 </p></td>
      <td width="86" nowrap="nowrap"><p align="center"> 0　 </p></td>
    </tr>
    <tr>
      <td width="86">软开</td>
      <td width="86" align="center" nowrap="nowrap"><p align="center">10</p></td>
      <td width="89" nowrap="nowrap"><p align="center">　20 </p></td>
      <td width="89" nowrap="nowrap"><p align="center">　15 </p></td>
      <td width="86" nowrap="nowrap"><p align="center">　5 </p></td>
      <td width="86" nowrap="nowrap"><p align="center"> 1　 </p></td>
      <td width="86" nowrap="nowrap"><p align="center">　1 </p></td>
      <td width="86" nowrap="nowrap"><p align="center"> 1　 </p></td>
      <td width="86" nowrap="nowrap"><p align="center">　1 </p></td>
      <td width="86" nowrap="nowrap"><p align="center">0　 </p></td>
      <td width="86" nowrap="nowrap"><p align="center">　0 </p></td>
    </tr>
    <tr>
      <td width="86">合计 </td>
      <td width="86" align="center" nowrap="nowrap"><p align="center">40</p></td>
      <td width="89" ><p align="center">　80 </p></td>
      <td width="89" ><p align="center">60　 </p></td>
      <td width="86" nowrap="nowrap"><p align="center">　5 </p></td>
      <td width="86" nowrap="nowrap"><p align="center">　3 </p></td>
      <td width="86" nowrap="nowrap"><p align="center">　3 </p></td>
      <td width="86" nowrap="nowrap"><p align="center"> 8　 </p></td>
      <td width="86" nowrap="nowrap"><p align="center">　8 </p></td>
      <td width="86" nowrap="nowrap"><p align="center">　0 </p></td>
      <td width="86" nowrap="nowrap"><p align="center">　0 </p></td>
    </tr> -->
    <tr>
      <td colspan="9">共 <span class="right-text09">1</span> 页 | 第 <span class="right-text09">1</span> 页</td>
      <td colspan="2" nowrap="nowrap">[<a href="#" class="right-font08">首页</a> |
       <a href="#" class="right-font08">上一页</a> | <a href="#" class="right-font08">下一页</a> |
        <a href="#" class="right-font08">末页</a>] </td>
    </tr>
</table>
</div>
</body>
</html>

