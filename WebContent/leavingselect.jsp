<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<link rel="stylesheet" href="css/common.css" type="text/css" />
<title>管理区域</title>
<style type="text/css">
<!--
.STYLE1 {color: #FF0000}
.STYLE3 {color: #000000}
-->
</style>
<script type="text/javascript" language="s"></script>

<script type="text/javascript">                                                                                           
	function yanzheng(){                                                                                                  
	
	 for(var i=0;i< form1.bmnum.value.length;i++){
			var ch = form1.bmnum.value.charAt(i);
			if(ch<"0" || ch>"9"){
				alert("部门编号为数字");
				return false;
			}
		}                                                                                    
	                                                                                         
	  
	 for(var i=0;i< form1.ygnum.value.length;i++){
			var ch = form1.ygnum.value.charAt(i);
			if(ch<"0" || ch>"9"){
				alert("员工编号为数字");
				return false;
			}
		} 
	 if(document.form1.bmnum.value ==''&&document.form1.bmname.value ==''&&document.form1.ygnum.value ==''&&document.form1.ygname.value=='' )           { alert("查询条件不能都为空");   
	        return false;} 
			return true;                                                                   
	                                                                                         
	}                                                                                                                    
	                                                                                                                      
                                                                                                                    
</script>

</head>

<body>
<div id="man_zone">
<form  method="post" name="form1" onsubmit="return yanzheng();"action="FindLeavingOperateServlet">    
<div class="MainDiv">
      <table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
        <tr>
          <th class="tablestyle_title" ><div align="left">离职员工查询</div></th>
        </tr>
        <tr>
          <td class="CPanel"><table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
              <tr class="CTitle" >
                <td height="22" align="center" style="font-size:16px"><div align="center">离职员工查询</div></td>
              </tr>
              <tr bgcolor="#EEEEEE">
                <td align="center"><br/>
                  <table width="30%" border="0" align="center">
                    <tr>
                      <td colspan="2"><div align="left"><span class="STYLE3">请输入查询条件：（至少填写一项）</span></div></td>
                    </tr>
                    <tr>
                      <td width="29%">
                      <div align="left"><span class="STYLE3">部门编号：</span></div>
                    </td>
                      <td width="71%"><div align="left">
                        <input name="bmnum" type="text" size="15" />
                      </div></td>
                    </tr>
                    <tr>
                      <td><div align="left"><span class="STYLE3">部门名称：</span></div></td>
                      <td><div align="left">
                        <input name="bmname" type="text" size="15" />
                      </div></td>
                    </tr>
                    <tr>
                      <td><div align="left"><span class="STYLE3">员工编号：</span></div></td>
                      <td><div align="left">
                        <input name="ygnum" type="text" size="15" />
                      </div>                        <div align="left"></div>                      <div align="left"></div></td>
                    </tr>
                    
                    <tr>
                      <td height="28"><div align="left"><span class="STYLE3">员工姓名：</span></div></td>
                      <td><div align="left">
                          <input name="ygname" type="text" size="15" />
                        </div>
                          <div align="left"></div>
                        <div align="left"></div></td>
                    </tr>
                    <tr>
                      <td height="38"><div align="left"></div></td>
                      <td><div align="left">
  <input type="submit" name="Submit32" value="查询" />
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="reset" name="Submit222" value="取消" />
                      </div></td>
                    </tr>
                  </table>
                <p>&nbsp;</p>              
                

  </form>
</div>
</body>
</html>