<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<link rel="stylesheet" href="css/common.css" type="text/css" />
<title>��֯����</title>
<SCRIPT language=JavaScript>
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
	  alert("����ѡ��û�п�ִ�еĲ�����");
	  }else {
	   location.href="multimod.html";
	  }
}

</SCRIPT>

<style type="text/css">
<!--
.STYLE2 {
	color: #0000FF
}
-->
</style>
</head>

<body>
	<div id="man_zone">
		<form name="fom" id="fom" method="post" action="">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td height="30"><table width="100%" border="0" cellspacing="0"
							cellpadding="0">
							<tr>
								<td height="62" background="../images/nav04.gif"><table
										width="98%" border="0" align="center" cellpadding="0"
										cellspacing="0">
										<tr>
											<td width="21"><img src="images/ico07.gif" /></td>
											<td width="538">�鿴��λ��Ϣ</td>
											<td width="144" align="left"></td>
										</tr>
									</table></td>
							</tr>
						</table></td>
				</tr>
				<tr>
					<td><table id="subtree1" style="DISPLAY:" width="100%"
							border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td><table width="95%" border="0" align="center"
										cellpadding="0" cellspacing="0">
										<tr>
											<td height="20"><span class="newfont07">������<a
													href="#" class="right-font08 STYLE2" onclick="selectAll();">ȫѡ</a>-<a
													href="#" class="right-font08 STYLE2"
													onclick="unselectAll();">��ѡ </a><a href="multidel.html"
													class="right-font08 STYLE2"> ɾ��</a></span></td>
											<td align="right"></td>
										</tr>
										<tr>
											<td height="40" colspan="2" class="font42"><table
													width="100%" border="0" cellpadding="4" cellspacing="1"
													class="newfont03">
													<tr class="CTitle">
														<td height="22" colspan="10" align="center"
															style="font-size: 16px">�� λ �� ϸ �� ��</td>
													</tr>
													<tr bgcolor="#EEEEEE">
														<td width="4%" align="center"><div align="center">ѡ��</div></td>
														<td width="5%" align="center" height="30"><div
																align="center">���</div></td>
														<td width="11%"><div align="center">��λ���</div></td>
														<td width="11%"><div align="center">��λ����</div></td>
														<td width="7%"><div align="center">����</div></td>
														<td width="11%"><div align="center">��������</div></td>
														<td width="14%"><div align="center">���ű��</div></td>
														<td width="8%"><div align="center">��λ����</div></td>
														<td width="8%"><div align="center">�����޶�</div></td>
														<td width="25%"><div align="center">����</div></td>
													</tr>
											<c:forEach var="job" items="${sessionScope.jobinfo }" varStatus="state">	
													<tr bgcolor="#FFFFFF">
														<td><div align="center">
																<input type="checkbox" name="delid" />
															</div></td>
														<td height="20"><div align="center">${state.index+1 }</div></td>
														<td><div align="center">${job.job_number }</div></td>
														<td><div align="center">
																<a href="listmokuaimingxi.htm" onclick=""></a>${job.job_name }
															</div></td>
														<td><div align="center">${job.job_type }</div></td>
														<td><div align="center">������</div></td>
														<td><div align="center">1</div></td>
														<td><div align="center">${job.job_count }</div></td>
														<td><div align="center">${job.job_limit }</div></td>
														<td><div align="center">
																<a href="FindJobByIdServlet?number=${job.job_number }">�༭ </a>| <a href="deljob.html">ɾ��</a>
																| <a href="jobemplist.html">��ѯ��λ��Ա��</a>
															</div></td>
													</tr>
											</c:forEach>			
												</table></td>
										</tr>
									</table>
									<table width="95%" border="0" align="center" cellpadding="0"
										cellspacing="0">
										<tr>
											<td height="6"><img src="../images/spacer.gif" width="1"
												height="1" /></td>
										</tr>
										<tr>
											<td height="33"><table width="100%" border="0"
													align="center" cellpadding="0" cellspacing="0"
													class="right-font08">
													<tr>
														<td width="50%">�� <span class="right-text09">2</span>
															ҳ | �� <span class="right-text09">1</span> ҳ
														</td>
														<td width="49%" align="right">[<a href="#"
															class="right-font08">��ҳ</a> | <a href="#"
															class="right-font08">��һҳ</a> | <a href="#"
															class="right-font08">��һҳ</a> | <a href="#"
															class="right-font08">ĩҳ</a>] ת����
														</td>
														<td width="1%"><table width="20" border="0"
																cellspacing="0" cellpadding="0">
																<tr>
																	<td width="1%"><input name="textfield3"
																		type="text" class="right-textfield03" size="3" /></td>
																	<td width="87%"><input name="Submit"
																		type="submit" value="GO" /></td>
																</tr>
															</table></td>
													</tr>
												</table></td>
										</tr>
									</table></td>
							</tr>
						</table></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>
