<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<link rel="stylesheet" href="css/common.css" type="text/css" />
<title>岗位管理</title>
<style type="text/css">
<!--
.STYLE1 {color: #FF0000}
.STYLE3 {
	font-size: 12px;
	font-weight: bold;
}
-->
</style>
<script type="text/javascript" language="javascript">
function link1(){
 
    if(document.fom.jobname.value==""){
   	alert("岗位名称不能为空！");
	return false;
   }
    if(document.fom.size.value==""){
   	alert("岗位编制不能为空！");
	return false;
   }
   if(document.fom.limt.value==""){
   	alert("编制限定不能为空！");
	return false;
   }
   return true;
   }
</script>
</head>

<body>
<div id="man_zone">
<form action="EditJobServlet" onsubmit="return link1(); " target="manFrame" name="fom"  id="fom">
<table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
  <tr class="CTitle" >岗位信息修改
    <td height="22" colspan="9" align="center" style="font-size:16px"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="21">&nbsp;</td>
        <td width="538"><span class="STYLE3">修改岗位信息</span></td>
        <td width="144" align="left"><a href="#" onclick="sousuo()"></a></td>
      </tr>
    </table></td>
  </tr>
  <tr bgcolor="#EEEEEE">
    <td width="5%" align="center" height="30"><div align="center">序号</div></td>
    <td width="11%"><div align="center">岗位名称<span class="STYLE1">*</span></div></td>
    <td width="7%"><div align="center">类型</div></td>
    <td width="11%"><div align="center">所属部门</div></td>
    <td width="11%"><div align="center">岗位编制<span class="STYLE1">*</span></div></td>
    <td width="11%"><div align="center">编制限定<span class="STYLE1">*</span></div></td>
    <td width="20%"><div align="center">操作</div></td>
  </tr>
  <tr bgcolor="#FFFFFF">
    <td height="20"><div align="center"> 1 </div></td>
    
      <input name="jobid" type="hidden" value="${sessionScope.job.job_number }" size="15"/>
    
    <td ><div align="center">
      <label>
      <input name="jobname" type="text" value="${sessionScope.job.job_name }" size="10" />
      </label>
    </div></td>
     <td><div align="center">
                    <select name="select" >
                      <option value="管理">管理</option>
                      <option value="技术">技术</option>
                      <option value="营销">营销</option>
                      <option value="市场">市场</option>
                    </select>
                </div></td>
                <td><div align="center"><label>
						<select name="deptId">
							<option value="行政部">行政部</option>
							<option value="生产部">生产部</option>
							<option value="技术部">技术部</option>
							<option value="销售部">销售部</option>
							<option value="财务部">财务部</option>
					  </select>
                </label></div></td>
    <td><div align="center">
      <label>
      <input name="size" type="text" value="${sessionScope.job.job_count }" size="5" />
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
      <input name="Submit" type="submit" value="保存" />
      </label>
      <label>
      <input name="reset" type="reset" value="取消" />
      </label>
    </div></td>
  </tr>
</table>
</form>
</div>
</body>
</html>
