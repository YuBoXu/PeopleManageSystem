<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/common.css" type="text/css" />
<title>管理区域</title>
<style type="text/css">
<!--
.STYLE1 {color: #FF0000}
-->
</style>
</head>
<body>
<div id="man_zone">
  <form action="hyEditManagerInfoServlet"  onsubmit="return checkForm()" method="post">
    <div class="MainDiv">
      <table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
        <tr>
          <th class="tablestyle_title" ><div align="left">添加管理员页面</div></th>
        </tr>
        <tr>
          <td class="CPanel"><table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
              <tr class="CTitle" >
                <td height="22" colspan="8" align="center" style="font-size:16px">修改管理员</td>
              </tr>
              <tr bgcolor="#EEEEEE">
                <td height="30" align="center"><div align="center">管理员姓名<span class="STYLE1">*</span></div></td>
                <td width="160"><div align="center">登录密码<span class="STYLE1">*</span></div></td>
                <td width="123"><div align="center">确认密码<span class="STYLE1">*</span></div></td>
                <td width="99"><div align="center">部门</div></td>
                <td width="99"><div align="center">联系电话</div></td>
                <td width="147"><div align="center">入职日期</div></td>
                <td width="219"><div align="center">操作</div></td>
              </tr>
              <tr bgcolor="#FFFFFF">
              	
                <td height="40" align="center"><div align="center">
                <input type="hidden" name="manager_id" value="${sessionScope.manager_info.manager_id }">
                    <label>
                    <input id="manager_name" name="manager_name" type="text" size="12"  value="${sessionScope.manager_info.manager_name }"/>
                    </label>
                </div></td>
                <td><div align="center">
                  <label>
                  <input id="manager_pwd" name="manager_pwd" type="password" size="10"  value="${sessionScope.manager_info.manager_pwd }"/>
                  </label>
                </div>             </td>
                <td><div align="center">
                    <label>
                    <input id="manager_pwd1" name="manager_pwd1" type="password"  value="${sessionScope.manager_info.manager_pwd }" size="10" />
                    </label>
                </div></td>
                <td><div align="center">
                    <label>
                    <input id="manager_dept" name="manager_dept" type="text"  value="${sessionScope.manager_info.manager_dept }" size="10" />
                    </label>
                </div></td>
                <td><div align="center">
                    <label>
                    <input id="manager_tel" name="manager_tel" type="text"  value="${sessionScope.manager_info.manager_tel }" size="10" />
                    </label>
                </div></td>
                <td><div align="center">
                    <label>
                    <input id="manager_date" name="manager_date" type="text"  onClick="WdatePicker()" readonly="readonly"  
                    value="${sessionScope.manager_info.manager_date }" size="16" />
                    </label>
                </div></td>
                <td><div align="center"><a href="#"></a>
                    <label>
                  <input id="submit" type="submit" name="submit" value="修改" />
                  </label>
                    <label>
                    <input id="reset" type="reset" name="reset" value="重置" />
                    </label>
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
<script language="javascript" type="text/javascript" src="js/My97DatePicker/WdatePicker.js"></script>
<script language="javascript">
function checkForm(){
	var name=document.getElementById("manager_name");
	if(name.value==''){
	   window.alert("请输入管理员姓名");
	return false;
	}
	//-----
	var pwd=document.getElementById("manager_pwd");
	var pwd1=document.getElementById("manager_pwd1");
	if(pwd.value==''){
	   window.alert("请输入密码");
	return false;
	}
	if(pwd1.value==''){
	   window.alert("请确认密码");
	return false;
	}
	if(pwd.value!=pwd1.value){
	   window.alert("两次密码输入不一致");
	return false;
	}

	}
</script>
</html>