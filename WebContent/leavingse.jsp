<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<link rel="stylesheet" href="css/common.css" type="text/css" />
<title>��ְ����</title>
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
alert("����д��ѯ����");
return false;  }      
 return true;                                                                                                                  
}
function yanzheng(){                                                                                                  
                                                                                
	                                                                                         
	  
	 for(var i=0;i< form1.ygnum.value.length;i++){
			var ch = form1.ygnum.value.charAt(i);
			if(ch<"0" || ch>"9"){
				alert("Ա�����Ϊ����");
				return false;
			}
		} 
	 if(document.form1.ygnum.value ==''&&document.form1.ygname.value ==''&&document.form1.bmname.value ==''&&document.form1.gwname.value==''&&document.form1.lztype.value =='0' )           { alert("��ѯ�������ܶ�Ϊ��");   
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
          <th class="tablestyle_title" ><div align="left">����ְԱ����ѯ</div></th>
        </tr>
        <tr>
          <td class="CPanel"><table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
              <tr class="CTitle" >
                <td height="22" align="center" style="font-size:16px"><div align="center">����ְԱ����ѯ</div></td>
              </tr>
              <tr bgcolor="#EEEEEE">
                <td align="center"><br/>
                  <table width="60%" border="0" align="center">
                    <tr>
                      <td colspan="4"><div align="left"><span class="STYLE3">�������ѯ��������������дһ�</span></div></td>
                    </tr>
                    <tr>
                      <td width="15%">
                      <div align="left"><span class="STYLE3">Ա����ţ�</span></div>
                     </td>
                      <td colspan="3"><div align="left">
                        <input name="ygnum" type="text" size="15" />
                      </div></td>
                    </tr>
                    <tr>
                      <td><div align="left"><span class="STYLE3">Ա��������</span></div></td>
                      <td colspan="3"><div align="left">
                        <input name="ygname" type="text" size="15" />
                      </div></td>
                    </tr> <tr>
                      <td width="14%">
                      <div align="left"><span class="STYLE3">�������ƣ�</span></div>
                     </td>
                      <td colspan="3"><div align="left">
                        <input name="bmname" type="text" size="15" />
                      </div></td>
                    </tr>
                    <tr>
                      <td><div align="left"><span class="STYLE3">��λ���ƣ�</span></div></td>
                      <td colspan="3"><div align="left">
                        <input name="gwname" type="text" size="15" />
                      </div></td>
                    </tr>
					 <tr>
                      <td width="14%">
                      <div align="left"><span class="STYLE3">��ְ���ͣ�</span></div>
                     </td>
                      <td colspan="3"><div align="left">
                        <select name="lztype">
                          <option value="">��������ְ����</option>
                          <option value="������ְ">������ְ</option>
                          <option value="����">����</option>
                          <option value="����">����</option>
                          <option value="����">����</option>
                          <option value="������δͨ��">������δͨ��</option>
                        </select>
                      </div></td>
                    </tr>
                  
                    
                    
                    <tr>
                      <td height="53"><div align="left"></div></td>
                      <td colspan="3"><div align="left">
  <input type="submit" name="Submit32" value="��ѯ" />
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="reset" name="Submit222" value="ȡ��" />
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
      <span style="position:absolute; left:65px;  
   top:406px; width:910px; height:202px; z-index:1; ">
      <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0" width="910" height="200" align="middle">
        <param name="allowScriptAccess" value="sameDomain" />
        <param name="allowFullScreen" value="false" />
        <param name="movie" value="11.swf" />
        <param name="quality" value="high" />
        <param name="bgcolor" value="#FFFFFF" />
        <embed src="11.swf" quality="high" bgcolor="#FFFFFF" width="910" height="200" align="middle" allowscriptaccess="sameDomain" allowfullscreen="false" type="application/x-shockwave-flash" pluginspage="http://www.adobe.com/go/getflashplayer_cn" /></embed>
        </embed>
      </object>
    </span></div>
  </form>
</div>
</body>
</html>