<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<link rel="stylesheet" href="css/common.css" type="text/css" />
<title>��֯����</title>

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
											<td width="538">ɾ����λ</td>
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
											<td height="40" colspan="2" class="font42"><table
													width="100%" border="1" cellpadding="4" cellspacing="1"
													class="newfont03">
													<tr class="CTitle">
														<td height="22" colspan="10" align="center"
															style="font-size: 16px">�� λ �� ϸ �� ��</td>
													</tr>
													<tr bgcolor="#EEEEEE">
													
														<td width="5%" align="center" height="30"><div
																align="center">���</div></td>
														<td width="11%"><div align="center">��λ���</div></td>
														<td width="11%"><div align="center">��λ����</div></td>
														<td width="7%"><div align="center">����</div></td>
														<!-- <td width="11%"><div align="center">��������</div></td>
														<td width="14%"><div align="center">���ű��</div></td> -->
														<td width="8%"><div align="center">��λ����</div></td>
														<td width="8%"><div align="center">�����޶�</div></td>
														<td width="25%"><div align="center">����</div></td>
													</tr>
													<c:forEach var="job" items="${sessionScope.dropinfo }"
														varStatus="state">
														<tr bgcolor="#FFFFFF">
															
															<td height="20"><div align="center">${state.index+1 }</div></td>
															<td><div align="center">${job.job_number }</div></td>
															<td><div align="center">
																	<a href="listmokuaimingxi.htm" onclick=""></a>${job.job_name }
																</div></td>
															<td><div align="center">${job.job_type }</div></td>
															<%-- <td><div align="center">${job.dept_name }</div></td>
															<td><div align="center">${job.dept_number }</div></td> --%>
															<td><div align="center">${job.job_count }</div></td>
															<td><div align="center">${job.job_limit }</div></td>
															<td><div align="center">
																	 <a href="UpdateDropJobServlet?jobnumber=${job.job_number }">ɾ��</a> 
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



														<td width="49%">�� <span class="right-text09">1</span>
															ҳ | �� <span class="right-text09">1</span>
															ҳ
														</td>
													
														<td width="1%"><table width="20" border="0"
																cellspacing="0" cellpadding="0">
																
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
