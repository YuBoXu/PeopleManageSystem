<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
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

</SCRIPT>
</head>

<body>
<div id="man_zone">
<form name="fom" id="fom" method="post" action="EditDeptServlet">
<table width="100%" border="0" cellspacing="0" cellpadding="0" >
  
  <tr>
    <td height="30">      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="62" background="../images/nav04.gif">
            
		   <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
		    <tr>
			  <td width="21">&nbsp;</td>
			  <td width="538"><strong>修改部门信息</strong></td>
			   
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
                    	<td height="22" colspan="9" align="center" style="font-size:16px"> 部 门 修 改
                    	 <input name="number" value="${sessionScope.onedept.dept_number }" size="5" style="visibility: hidden;" />
                    	</td>
                    	
                  </tr>
                  <tr bgcolor="#EEEEEE">
                    <td width="11%"><div align="center">部门名称*</div></td>
					<td width="7%"><div align="center">类型</div></td>
                    <td width="11%"><div align="center">电话</div></td>
					<td width="9%"><div align="center">传真</div></td>
					<td width="9%"><div align="center">描述</div></td>
					<td width="10%"><div align="center">上级部门</div></td>
					<td width="13%"><div align="center">成立日期</div></td>
					<td width="19%"><div align="center">操作</div></td>
                  </tr>
                  <tr bgcolor="#FFFFFF">
                    <td ><div align="center"><a href="listmokuaimingxi.htm" onclick=""></a>
                 
                    
                      <label>
                      <input name="name" type="text" value="${sessionScope.onedept.dept_name }" size="10" />
                      </label>
                    </div></td>
					<td>
					  <div align="center">
					    <label>
					    <select name="select">
					      <option value="公司">${sessionScope.onedept.dept_type }</option>
					      <option value="部门">部门</option>
					      </select>
					    </label>
</div>			</td>
                    <td><div align="center">
                      <label>
                      <input name="phone" type="text" value="${sessionScope.onedept.dept_phone }" size="10" />
                      </label>
                    </div></td>
                    <td><div align="center">
                      <label>
                      <input name="fax" type="text" value="${sessionScope.onedept.dept_fax }" size="10" />
                      </label>
                    </div></td>
                    <td><div align="center">
                      <label>
                      <input name="describle" type="text" value="${sessionScope.onedept.dept_describe }" size="12" />
                      </label>
                    </div></td>
                    <td><div align="center">
                      <label>
                      <select name="super">
							<option value="行政部">${sessionScope.onedept.dept_top }</option>
							<option value="生产部">生产部</option>
							<option value="技术部">技术部</option>
							<option value="销售部">销售部</option>
							<option value="财务部">财务部</option>
					  </select>
                      </label>
                    </div></td>
                    <td><div align="center">
                      <label>
                      <input name="date" type="text" value="${sessionScope.onedept.dept_date }" size="16" />
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
