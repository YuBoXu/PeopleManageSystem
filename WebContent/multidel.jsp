<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<link rel="stylesheet" href="css/common.css" type="text/css" />
<title>部门管理</title>
<SCRIPT language=JavaScript>
function sousuo(){
	window.open("gaojisousuo.htm","","depended=0,alwaysRaised=1,width=800,height=510,location=0,menubar=0,resizable=0,scrollbars=0,status=0,toolbar=0");
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

function link(){
    document.getElementById("fom").action="addrenwu.htm";
   document.getElementById("fom").submit();
}
function link1(){
     location.href="adddept.html";
}
function link2(){
      if (document.fom.delid.onchick==true){
	  alert("您的选择没有可执行的操作！");
	  }else {
	   location.href="multimod.html";
	  }
}

</SCRIPT></head>

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
			  <td width="21">&nbsp;</td>
			  <td width="538"><strong>删除部门信息</strong></td>
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
                <td height="40" class="font42">
				<table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
				 <tr class="CTitle" >
                    	<td height="22" colspan="10" align="center" style="font-size:16px"> 部 门 修 改</td>
                  </tr>
                  <tr bgcolor="#EEEEEE">
				    <td width="4%" align="center" height="30"><div align="center">序号</div></td>
                    <td width="7%"><div align="center">部门编号</div></td>
                    <td width="11%"><div align="center">部门名称</div></td>
					<td width="7%"><div align="center">类型</div></td>
                    <td width="11%"><div align="center">电话</div></td>
					<td width="9%"><div align="center">传真</div></td>
					<td width="9%"><div align="center">描述</div></td>
					<td width="10%"><div align="center">上级部门</div></td>
					<td width="13%"><div align="center">成立日期</div></td>
					<td width="19%"><div align="center">确认删除</div></td>
                  </tr>
           <c:forEach var="dept" items="${sessionScope.dropinfo }" varStatus="state">   
                  <tr bgcolor="#FFFFFF">
                    <td height="20"><div align="center"> ${state.index+1 }</div></td>
                    <td ><div align="center"> ${dept.dept_number }</div></td>
                    <td ><div align="center">${dept.dept_name } </div></td>
                    <td><div align="center"> ${dept.dept_type } </div></td>
                    <td><div align="center"> ${dept.dept_phone } </div></td>
                    <td><div align="center"> ${dept.dept_fax }</div></td>
                    <td><div align="center"> ${dept.dept_describe } </div></td>
                    <td><div align="center"> ${dept.dept_top } </div></td>
                    <td><div align="center">${dept.dept_date } </div></td>
                    <td><div align="center">
                        <label></label>
                      <label></label>
                        <label>
                       <!--  <input name="Submit" type="submit" class="logo" value="删除" /> -->
                        <a href="UpdateDropDeptServlet?deptnumber= ${dept.dept_number }" name="Submit" class="logo">删除</a>
                 
                        </label>
                    </div></td>
                  </tr>
             </c:forEach>
                 <!--  <tr bgcolor="#FFFFFF">
				    <td height="20"><div align="center">2</div></td>
                    <td ><div align="center">
                    2010002
                    </div></td>
                    <td ><div align="center">财务部
                    </div></td>
					<td>
					  <div align="center">
					    公司</div>			</td>
                    <td><div align="center">
                      64275088
                    </div></td>
                    <td><div align="center">
                      64275080
                    </div></td>
                    <td><div align="center">
                     行政管理
                    </div></td>
                    <td><div align="center">

                      总经办
                    </div></td>
                    <td><div align="center">
                     
                      1997-08-06
                    </div></td>
                    <td><div align="center">
                      <label></label><label></label>
                      <label>
                      <input name="Submit" type="submit" class="logo" value="删除" />
                      </label>
                    </div></td>
                  </tr> -->
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
                <td width="49%">共 1 页 | 第 <span class="right-text09">1</span> 页</td>
                <td width="48%" align="right">&nbsp;</td>
                <td width="5%">&nbsp;</td>
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