<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<link rel="stylesheet" href="css/common.css" type="text/css" />
<title>部门管理</title>
<SCRIPT language=JavaScript>

function link1(){
     alert("该部门下有员工，不能删除！");
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

</SCRIPT>

<style type="text/css">
<!--
.STYLE1 {color: #0000FF}
-->
</style>
</head>

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
			  <td width="21"><img src="images/ico07.gif" width="20" height="18" /></td>
			  <td width="538">查看部门信息</td>
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
               <td height="20"><span class="newfont07">批处理：<a href="#" class="right-font08 STYLE1" onclick="selectAll();">全选</a>-<a href="#" class="right-font08 STYLE1 " onclick="unselectAll();">反选 </a><a href="multidel.html" class="STYLE1" > 删除</a>             </td>
          	   <td align="right"></td>
          	 </tr>
              <tr>
                <td height="40" colspan="2" class="font42">
				<table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
				 <tr class="CTitle" >
                    	<td height="22" colspan="10" align="center" style="font-size:16px">部门详细列表</td>
                  </tr>
                  <tr bgcolor="#EEEEEE">
				    <td width="4%" align="center" height="30"><div align="center">选择</div></td>
                    <td width="8%"><div align="center">部门编号</div></td>
                    <td width="10%"><div align="center">部门名称</div></td>
					<td width="7%"><div align="center">类型</div></td>
                    <td width="11%"><div align="center">电话</div></td>
					<td width="9%"><div align="center">传真</div></td>
					<td width="9%"><div align="center">描述</div></td>
					<td width="10%"><div align="center">上级部门</div></td>
					<td width="13%"><div align="center">成立日期</div></td>
					<td width="19%"><div align="center">操作</div></td>
                  </tr>
                  <tr bgcolor="#FFFFFF">
				    <td height="20"><div align="center">
				      <input type="checkbox" name="delid"/>
				      </div></td>
                    <td ><div align="center">1</div></td>
                    <td ><div align="center"><a href="listmokuaimingxi.htm" onclick=""></a>行政部</div></td>
					<td>
					  <div align="center">
					  公司
					      </div>
			</td>
                    <td><div align="center">64275088</div></td>
                    <td><div align="center">64275080</div></td>
                    <td><div align="center">行政管理</div></td>
                    <td><div align="center">总经办</div></td>
                    <td><div align="center">1997-08-06</div></td>
                    <td><div align="center"> <a href="deptmod.html">编辑 </a>|<a href="#" onclick="link1();"> 删除 </a>|<a href="depemplist.html"> 查询部门下员工</a></div></td>
                  </tr>
				  <tr bgcolor="#FFFFFF">
				    <td height="20"><div align="center">
				      <input type="checkbox" name="delid"/>
				      </div></td>
                    <td ><div align="center">2</div></td>
                    <td ><div align="center">生产部</div></td>
					<td><div align="center">
					公司
					  </div></td>
                    <td><div align="center">64275087</div></td>
                    <td><div align="center">64275089</div></td>
                    <td><div align="center">产品生产</div></td>
                    <td><div align="center">总公司</div></td>
                    <td><div align="center">1997-08-06</div></td>
                    <td><div align="center"><a href="editrenwu.htm">编辑 | </a><a href="deldept.html">删除</a> |<a href="depemplist1.html">查询部门下员工</a></div></td>
                  </tr>
				  <tr bgcolor="#FFFFFF">
				    <td height="20"><div align="center">
				      <input type="checkbox" name="delid"/>
				      </div></td>
                    <td ><div align="center">3</div></td>
                    <td ><div align="center">技术部</div></td>
					<td><div align="center">
					部门
					  </div></td>
                    <td><div align="center">64275086</div></td>
                    <td><div align="center">64275084</div></td>
                    <td><div align="center">技术设计</div></td>
                    <td><div align="center">生产部</div></td>
                    <td><div align="center">1997-08-06</div></td>
                    <td><div align="center"><a href="editrenwu.htm">编辑 | </a><a href="listrenwumingxi.htm">删除 | 查询部门下员工</a></div></td>
                  </tr>
				  <tr bgcolor="#FFFFFF">
				    <td height="20"><div align="center">
				      <input type="checkbox" name="delid"/>
				      </div></td>
                    <td ><div align="center">4</div></td>
                    <td ><div align="center"><a href="listmokuaimingxi.htm" onclick=""></a>销售部</div></td>
					<td><div align="center">
					部门
					  </div></td>
                    <td><div align="center">64275085</div></td>
                    <td><div align="center">64275083</div></td>
                    <td><div align="center">市场销售</div></td>
                    <td><div align="center">生产部</div></td>
                    <td><div align="center">1997-12-06</div></td>
                    <td><div align="center"><a href="editrenwu.htm">编辑 | </a><a href="listrenwumingxi.htm">删除 | 查询部门下员工</a></div></td>
                  </tr>
				  <tr bgcolor="#FFFFFF">
				    <td height="20"><div align="center">
				      <input type="checkbox" name="delid"/>
				      </div></td>
                    <td ><div align="center">5</div></td>
                    <td ><div align="center">财务部</div></td>
					<td><div align="center">
					  公司
					  </div></td>
                    <td><div align="center">64275082</div></td>
                    <td><div align="center">64275081</div></td>
                    <td><div align="center">财务</div></td>
                    <td><div align="center">行政部</div></td>
                    <td><div align="center">1997-08-06</div></td>
                    <td><div align="center"><a href="editrenwu.htm">编辑 | </a><a href="listrenwumingxi.htm">删除 | 查询部门下员工</a></div></td>
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
                <td width="49%">共 <span class="right-text09">5</span> 页 | 第 <span class="right-text09">1</span> 页</td>
                <td width="48%" align="right">[<a href="#" class="right-font08">首页</a> | <a href="#" class="right-font08">上一页</a> | <a href="#" class="right-font08">下一页</a> | <a href="#" class="right-font08">末页</a>] 转至：</td>
                <td width="5%"><table width="20" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="1%"><input name="textfield3" type="text" class="right-textfield03" size="3" /></td>
                      <td width="87%"><input name="Submit23222" type="button" class="button08" value="GO" />
                      </td>
                    </tr>
                </table></td>
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
