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
-->
</style>
<script type="text/javascript" language="javascript">
function link1(){
   if(document.fom.jobname.value==""){
   	alert("您没有输入岗位名称");
	return false;
   }
    if(document.fom.size.value==""){
   	alert("岗位编制不能为空！");
	return false;
   }
   
  
   }
</script>
</head>

<body>
<div id="man_zone">
  <form action="AddJobServlet" method="post" name="fom" id="fom" target="manFrame" onsubmit="return link1();">
    <div class="MainDiv">
      <table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
        <tr>
          <th class="tablestyle_title" ><div align="left">岗位添加页面</div></th>
        </tr>
        <tr>
          <td class="CPanel"><table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
              <tr class="CTitle" >
                <td height="22" colspan="10" align="center" style="font-size:16px" >添 加 岗 位</td>
              </tr>
              <tr bgcolor="#EEEEEE">
                <td colspan="2" align="center"><div align="center">序号</div>
                <div align="center"></div></td>
                <td><div align="center">岗位名称<span class="STYLE1">*</span></div></td>
                <td><div align="center">类型</div></td>
                <td><div align="center">岗位编制<span class="STYLE1">*</span></div></td>
                <td><div align="center">编制限定<span class="STYLE1">*</span></div></td>
                <td><div align="center">操作</div></td>
              </tr>
              <tr bgcolor="#FFFFFF">
                <td colspan="2" align="center"><div align="center">1</div></td>
                <td ><div align="center">
                  <label>
                  <input name="jobname" type="text" size="16" />
                  </label>
                </div></td>
                <td><div align="center">
                    <select name="select">
                      <option value="管理">管理</option>
                      <option value="技术">技术</option>
                      <option value="营销">营销</option>
                      <option value="市场">市场</option>
                    </select>
                </div></td>
                <td><div align="center">
                    <label>
                    <input name="size" type="text" size="10" value="0" />
                    </label>
                </div></td>
                <td><div align="center">
                  <label>
                  <select name="select2">
                    <option value="是">是</option>
                    <option value="否">否</option>
                     </select>
                  </label>
                </div></td>
                <td><div align="center">
                  <label>
                  <input name="Submit" type="submit" value="保存">
                  </label>
                  <label>
                  <input name="reset" type="reset" value="取消" />
                  </label>
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
