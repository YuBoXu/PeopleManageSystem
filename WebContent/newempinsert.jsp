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
.STYLE3 {font-size: 10; }
-->
</style>
<script language="javascript" type="text/javascript">

function link1(){
var bh=document.fom.bianhao.value;
var xm=document.fom.xingming.value;
var ks=document.fom.stime.value;
var js=document.fom.etime.value; 
var xz=document.fom.r.value;                                                                                                     
if(bh==''&&xm==''&&ks==''&&js==''){
alert("请填写查询条件");
return false;  }      
 return true;                                                                                                                  
}
  function link(){
if(document.fom.id.value.length=='15'||document.fom.id.value.length=='18'){
		
		}else{
		alert("您输入的身份证不正确！");
		return false;
		}
		return true;
}
</script>
</head>

<body>

<div id="man_zone">
<!--   <form action="FindEmpByIdcardServlet" onsubmit="return link();" method="post" enctype="multipart/form-data" name="fom" id="fom" target="manFrame" >
 -->  
   <form action="FindEmpByIdcardServlet" onsubmit="return link();" method="post"  name="fom" id="fom" target="manFrame" >
 
   <div class="MainDiv">
      <table width="97%" border="0" cellpadding="0" cellspacing="0" class="CContent">
        <tr>
          <th class="tablestyle_title" ><div align="left">人才库查询页面</div></th>
        </tr>
        <tr>
          <td class="CPanel"><table width="99%" border="0" align="center" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
            <tr class="CTitle" >
              <td height="22" colspan="16" align="center" style="font-size:16px">人才库查询人员信息</td>
            </tr>
            <tr bgcolor="#EEEEEE">
              <td colspan="16" align="center"><div align="center">
                <p>请输入您要查询的身份证号
                  <label>
                  <input type="text" name="id" />
                  </label>
                </p>
                </div>
                    <div align="center" class="STYLE3">
                      <label></label>
                    </div>
                <div align="center" class="STYLE3">
                      <label></label>
                  </div></td>
            </tr>
          </table></td>
        </tr>
      </table>
      <br />
      <div align="center">
        <input type="submit" name="Submit" value="查询" />
        &nbsp;&nbsp;
        &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="submit" name="Submit2" value="取消" />
      </div>
    </div>
  </form>
</div>

</body>
</html>
