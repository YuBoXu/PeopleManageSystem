<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<link rel="stylesheet" href="css/common.css" type="text/css" />
<title>部门岗位调动</title>
<style type="text/css">
<!--
.STYLE1 {color: #FF0000}
.STYLE3 {color: #000000}
-->
</style>
<script language="javascript">
function link1(){
	if(document.fom.deptname.value==""){
		alert("请选择部门名称");
		return false;
	}
		if(document.fom.jobname.value==""){
		alert("岗位名称不能为空");
		return false;
	}
		if(document.fom.empid.value==""){
		alert("员工编号不能为空");
		return false;
	}
		
	return true;
}
</script>

</head>

<body>
<div id="man_zone">
  <form action="FindEmpToMoveServlet" onsubmit="return link1();" method="post"  name="fom" id="fom" target="manFrame" >
    <div class="MainDiv">
      <table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
        <tr>
          <th class="tablestyle_title" ><div align="left">部门岗位调动</div></th>
        </tr>
        <tr>
          <td class="CPanel"><table width="100%" border="0" cellpadding="4" cellspacing="1" >
              <tr class="CTitle" >
                <td height="22" align="center" style="font-size:16px"><div align="center">部门岗位调动</div></td>
              </tr>
              <tr bgcolor="#EEEEEE">
                <td align="center"><br/>
                  <table width="45%" border="0" align="center">
                    <tr>
                      <td colspan="4"><div align="left"><span class="STYLE3">请输入查询条件：</span></div></td>
                    </tr>
                    <tr>
                     
                     
                    </tr>
                    <tr>
                      
                    </tr>
                    
                    <tr>
                      <td><div align="left"><span class="STYLE3">员工编号：</span></div></td>
                      <td colspan="3"><div align="left">
                        <input name="empid" type="text" size="15" />
                      </div></td>
                    </tr>
                    
                    <tr>
                      <td height="53"><div align="left"></div></td>
                      <td colspan="3"><div align="left">  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="submit" name="Submit" value="查询" />


                      </div></td>
                    </tr>
                  </table>
                <p>&nbsp;</p>                <div align="center">
                  <label></label>
                </div></td>
              </tr>
              
          </table></td>
        </tr>
      </table>
    </div>
  </form>
</div>
</body>
</html>