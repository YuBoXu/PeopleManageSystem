<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<link rel="stylesheet" href="css/common.css" type="text/css" />
<title>���Ź���</title>
<SCRIPT language=JavaScript>

function link1(){
     alert("�ò�������Ա��������ɾ����");
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
			  <td width="538">�鿴������Ϣ</td>
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
               <td height="20"><span class="newfont07">������<a href="#" class="right-font08 STYLE1" onclick="selectAll();">ȫѡ</a>-<a href="#" class="right-font08 STYLE1 " onclick="unselectAll();">��ѡ </a><a href="multidel.html" class="STYLE1" > ɾ��</a>             </td>
          	   <td align="right"></td>
          	 </tr>
              <tr>
                <td height="40" colspan="2" class="font42">
				<table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
				 <tr class="CTitle" >
                    	<td height="22" colspan="10" align="center" style="font-size:16px">������ϸ�б�</td>
                  </tr>
                  <tr bgcolor="#EEEEEE">
				    <td width="4%" align="center" height="30"><div align="center">ѡ��</div></td>
                    <td width="8%"><div align="center">���ű��</div></td>
                    <td width="10%"><div align="center">��������</div></td>
					<td width="7%"><div align="center">����</div></td>
                    <td width="11%"><div align="center">�绰</div></td>
					<td width="9%"><div align="center">����</div></td>
					<td width="9%"><div align="center">����</div></td>
					<td width="10%"><div align="center">�ϼ�����</div></td>
					<td width="13%"><div align="center">��������</div></td>
					<td width="19%"><div align="center">����</div></td>
                  </tr>
                  <tr bgcolor="#FFFFFF">
				    <td height="20"><div align="center">
				      <input type="checkbox" name="delid"/>
				      </div></td>
                    <td ><div align="center">1</div></td>
                    <td ><div align="center"><a href="listmokuaimingxi.htm" onclick=""></a>������</div></td>
					<td>
					  <div align="center">
					  ��˾
					      </div>
			</td>
                    <td><div align="center">64275088</div></td>
                    <td><div align="center">64275080</div></td>
                    <td><div align="center">��������</div></td>
                    <td><div align="center">�ܾ���</div></td>
                    <td><div align="center">1997-08-06</div></td>
                    <td><div align="center"> <a href="deptmod.html">�༭ </a>|<a href="#" onclick="link1();"> ɾ�� </a>|<a href="depemplist.html"> ��ѯ������Ա��</a></div></td>
                  </tr>
				  <tr bgcolor="#FFFFFF">
				    <td height="20"><div align="center">
				      <input type="checkbox" name="delid"/>
				      </div></td>
                    <td ><div align="center">2</div></td>
                    <td ><div align="center">������</div></td>
					<td><div align="center">
					��˾
					  </div></td>
                    <td><div align="center">64275087</div></td>
                    <td><div align="center">64275089</div></td>
                    <td><div align="center">��Ʒ����</div></td>
                    <td><div align="center">�ܹ�˾</div></td>
                    <td><div align="center">1997-08-06</div></td>
                    <td><div align="center"><a href="editrenwu.htm">�༭ | </a><a href="deldept.html">ɾ��</a> |<a href="depemplist1.html">��ѯ������Ա��</a></div></td>
                  </tr>
				  <tr bgcolor="#FFFFFF">
				    <td height="20"><div align="center">
				      <input type="checkbox" name="delid"/>
				      </div></td>
                    <td ><div align="center">3</div></td>
                    <td ><div align="center">������</div></td>
					<td><div align="center">
					����
					  </div></td>
                    <td><div align="center">64275086</div></td>
                    <td><div align="center">64275084</div></td>
                    <td><div align="center">�������</div></td>
                    <td><div align="center">������</div></td>
                    <td><div align="center">1997-08-06</div></td>
                    <td><div align="center"><a href="editrenwu.htm">�༭ | </a><a href="listrenwumingxi.htm">ɾ�� | ��ѯ������Ա��</a></div></td>
                  </tr>
				  <tr bgcolor="#FFFFFF">
				    <td height="20"><div align="center">
				      <input type="checkbox" name="delid"/>
				      </div></td>
                    <td ><div align="center">4</div></td>
                    <td ><div align="center"><a href="listmokuaimingxi.htm" onclick=""></a>���۲�</div></td>
					<td><div align="center">
					����
					  </div></td>
                    <td><div align="center">64275085</div></td>
                    <td><div align="center">64275083</div></td>
                    <td><div align="center">�г�����</div></td>
                    <td><div align="center">������</div></td>
                    <td><div align="center">1997-12-06</div></td>
                    <td><div align="center"><a href="editrenwu.htm">�༭ | </a><a href="listrenwumingxi.htm">ɾ�� | ��ѯ������Ա��</a></div></td>
                  </tr>
				  <tr bgcolor="#FFFFFF">
				    <td height="20"><div align="center">
				      <input type="checkbox" name="delid"/>
				      </div></td>
                    <td ><div align="center">5</div></td>
                    <td ><div align="center">����</div></td>
					<td><div align="center">
					  ��˾
					  </div></td>
                    <td><div align="center">64275082</div></td>
                    <td><div align="center">64275081</div></td>
                    <td><div align="center">����</div></td>
                    <td><div align="center">������</div></td>
                    <td><div align="center">1997-08-06</div></td>
                    <td><div align="center"><a href="editrenwu.htm">�༭ | </a><a href="listrenwumingxi.htm">ɾ�� | ��ѯ������Ա��</a></div></td>
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
                <td width="49%">�� <span class="right-text09">5</span> ҳ | �� <span class="right-text09">1</span> ҳ</td>
                <td width="48%" align="right">[<a href="#" class="right-font08">��ҳ</a> | <a href="#" class="right-font08">��һҳ</a> | <a href="#" class="right-font08">��һҳ</a> | <a href="#" class="right-font08">ĩҳ</a>] ת����</td>
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
