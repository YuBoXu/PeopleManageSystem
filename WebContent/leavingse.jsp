<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<link rel="stylesheet" href="css/common.css" type="text/css" />
<title>离职管理</title>
<style type="text/css">
<!--
.STYLE1 {color: #FF0000}
.STYLE3 {color: #000000}
-->
</style>
<script language="javascripe" type="text/javascript">

function link1(){
var bh=document.fom.bianhao.value;
var xm=document.fom.xingming.value;


var xz=document.fom.r.value;                                                                                                     
if(bh==''&&xm==''&&xz==''){
alert("请填写查询条件");
return false;  }      
 return true;                                                                                                                  
}
function yanzheng(){                                                                                                  
                                                                                
	                                                                                         
	  
	 for(var i=0;i< form1.ygnum.value.length;i++){
			var ch = form1.ygnum.value.charAt(i);
			if(ch<"0" || ch>"9"){
				alert("员工编号为数字");
				return false;
			}
		} 
	 if(document.form1.ygnum.value ==''&&document.form1.ygname.value ==''&&document.form1.bmname.value ==''&&document.form1.gwname.value==''&&document.form1.lztype.value =='0' )           { alert("查询条件不能都为空");   
	        return false;} 
			return true;                         
	}                                                                                                                    
	                               
</script>
</head>

<body>
<div id="man_zone">

<form  method="post" name="form1" onsubmit="return yanzheng();"action="findLeavedEmpInfoServlet">
    <div class="MainDiv">
      <table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
        <tr>
          <th class="tablestyle_title" ><div align="left">已离职员工查询</div></th>
        </tr>
        <tr>
          <td class="CPanel"><table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
              <tr class="CTitle" >
                <td height="22" align="center" style="font-size:16px"><div align="center">已离职员工查询</div></td>
              </tr>
              <tr bgcolor="#EEEEEE">
                <td align="center"><br/>
                  <table width="60%" border="0" align="center">
                    <tr>
                      <td colspan="4"><div align="left"><span class="STYLE3">请输入查询条件：（至少填写一项）</span></div></td>
                    </tr>
                    <tr>
                      <td width="15%">
                      <div align="left"><span class="STYLE3">员工编号：</span></div>
                     </td>
                      <td colspan="3"><div align="left">
                        <input name="ygnum" type="text" size="15" />
                      </div></td>
                    </tr>
                    <tr>
                      <td><div align="left"><span class="STYLE3">员工姓名：</span></div></td>
                      <td colspan="3"><div align="left">
                        <input name="ygname" type="text" size="15" />
                      </div></td>
                    </tr> <tr>
                      <td width="14%">
                      <div align="left"><span class="STYLE3">部门名称：</span></div>
                     </td>
                      <td colspan="3"><div align="left">
                        <input name="bmname" type="text" size="15" />
                      </div></td>
                    </tr>
                    <tr>
                      <td><div align="left"><span class="STYLE3">岗位名称：</span></div></td>
                      <td colspan="3"><div align="left">
                        <input name="gwname" type="text" size="15" />
                      </div></td>
                    </tr>
					 <tr>
                      <td width="14%">
                      <div align="left"><span class="STYLE3">离职类型：</span></div>
                     </td>
                      <td colspan="3"><div align="left">
                        <select name="lztype">
                          <option value="">请输入离职类型</option>
                          <option value="主动辞职">主动辞职</option>
                          <option value="辞退">辞退</option>
                          <option value="退休">退休</option>
                          <option value="开除">开除</option>
                          <option value="试用期未通过">试用期未通过</option>
                        </select>
                      </div></td>
                    </tr>
                  
                    
                    
                    <tr>
                      <td height="53"><div align="left"></div></td>
                      <td colspan="3"><div align="left">
 <input type="submit" name="Submit32" value="查询" />
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="reset" name="Submit222" value="取消" />
                    
  </form>
</div>
</body>
</html>