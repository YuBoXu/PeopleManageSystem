<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/common.css" type="text/css" />
<title>管理区域</title>
<style type="text/css">
<!--
.STYLE3 {font-size: 10; }
-->
</style>
<script language="javascript" type="text/javascript">

function link1(){                                                                                                  
	location.href="ygxx.html"
	 
		}    

</script>
</head>

<body>
<div id="man_zone">
  <form action="tianjia.html" onsubmit="return link();" method="post" name="fom" id="fom" target="manFrame" >
    <div class="MainDiv">
      <table width="97%" border="0" cellpadding="0" cellspacing="0" class="CContent">
        <tr>
          <th class="tablestyle_title" ><div align="left">在职人员信息页面</div></th>
        </tr>
        <tr>
          <td class="CPanel"><table width="95%" border="0" align="center" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
            <tr class="CTitle" >
              <td height="22" colspan="11" align="center" style="font-size:16px"><p>在职人员信息表</p>                </td>
            </tr>
            <tr bgcolor="#EEEEEE">
              <td rowspan="5" align="center"><div align="center">
                <p>员工基本信息</p>
                </div></td>
              <td width="84">员工编号</td>
              <td width="107"><label>
               ${sessionScope.empinfo.emp_number }
              </label></td>
              <td width="84">姓名</td>
              <td width="87"><label>
               ${sessionScope.empinfo.emp_name }
              </label></td>
              <td width="84">性别</td>
              <td width="89"><label>
               ${sessionScope.empinfo.emp_sex }
              </label></td>
              <td width="84">出生日期*</td>
              <td width="88"><label>
               ${sessionScope.empinfo.birthday }
              </label></td>
              <td width="84">身份证号*</td>
              <td width="179"><label>
			  ${sessionScope.empinfo.idcard }
              </label></td>
            </tr>
            <tr bgcolor="#EEEEEE">
              <td>部门*</td>
              <td><label>
                ${sessionScope.dept.emp_name }
              </label></td>
              <td>岗位*</td>
              <td><label>
                ${sessionScope.job.job_name }
              </label></td>
              <td>民族*</td>
              <td><label>
               ${sessionScope.empinfo.national}
              </label></td>
              <td>入职日期*</td>
              <td><label>
                ${sessionScope.occupationcareer.begintime }
              </label></td>
              <td>参加工作日期*</td>
              <td><label>
                 ${sessionScope.occupationcareer.begintime }
              </label></td>
            </tr>
            <tr bgcolor="#EEEEEE">
              <td>用工形式*</td>
              <td><label>
                 ${sessionScope.empinfo.emptype }
              </label></td>
              <td>人员来源*</td>
              <td><label>
                 ${sessionScope.empinfo.empfrom }
              </label></td>
              <td>政治面貌</td>
              <td><label>
                 ${sessionScope.empinfo.politic }
              </label></td>
              <td>出生地</td>
              <td><label>
                  ${sessionScope.empinfo.birthplace }
              </label></td>
              <td>籍贯</td>
              <td><label>
                  ${sessionScope.empinfo.native }
              </label></td>
            </tr>
            <tr bgcolor="#EEEEEE">
              <td>联系电话</td>
              <td>  ${sessionScope.empinfo.phone }</td>
              <td>电子邮件</td>
              <td>  ${sessionScope.empinfo.email}</td>
              <td>身高</td>
              <td>  ${sessionScope.empinfo.height }</td>
              <td>血型</td>
              <td><label>
                 ${sessionScope.empinfo.blood }
              </label></td>
              <td>婚姻状况</td>
              <td><label>
                  ${sessionScope.empinfo.marital }
              </label></td>
            </tr>
            
            <tr bgcolor="#EEEEEE">
              <td>户口所在地</td>
              <td>  ${sessionScope.empinfo.home }</td>
              <td>最高学历</td>
              <td><label>
              ${sessionScope.empinfo.education }
              </label></td>
              <td>最高学位</td>
              <td><label>
               ${sessionScope.empinfo.degree }
              </label></td>
              <td>毕业院校</td>
              <td>  
              ${sessionScope.empinfo.school}
              </td>
              <td>所学专业</td>
			   <td>  
			   ${sessionScope.empinfo.major }
			   </td>
              
            </tr>
            <tr bgcolor="#EEEEEE">
              <td width="55" rowspan="8" align="center">其他信息</td>
              <td colspan="10"><strong>职业生涯</strong></td>
              </tr>
            <tr bgcolor="#EEEEEE">
              <td> ${sessionScope.occupationinfo.begintime }</td>
              <td> ${sessionScope.occupationinfo.endtime }</td>
              <td>${sessionScope.occupationinfo.company }</td>
              <td>${sessionScope.occupationinfo.jobdescribe }</td>
              <td>${sessionScope.occupationinfo.position }</td>
              <td>${sessionScope.occupationinfo.salary }</td>
              <td>${sessionScope.occupationinfo.referencepeople }</td>
              <td>${sessionScope.occupationinfo.referenceposition }</td>
              <td>${sessionScope.occupationinfo.referencephone }</td>
              <td colspan="3">${sessionScope.occupationinfo.explanation }</td>
            </tr>
             
            <tr bgcolor="#EEEEEE">
              <td colspan="2"><strong>外国语种*</strong></td>
              <td colspan="3"><label>
               ${sessionScope.empinfo.language}
              </label></td>
              <td colspan="2">外国语种熟练程度</td>
              <td colspan="5"><label>
               ${sessionScope.empinfo.languageskill}
        	</label></td>
              </tr>
            <tr bgcolor="#EEEEEE">
              <td colspan="12"><strong>家庭成员及社会关系</strong></td>
              </tr>
            <tr bgcolor="#EEEEEE">
              <td colspan="2">与本人关系*</td>
              <td colspan="2">姓名*</td>
              <td colspan="3">所在单位</td>
              <td>职位</td>
              <td colspan="4">联系电话</td>
              </tr>
            <tr bgcolor="#EEEEEE">
              <td colspan="2"><label>
               ${sessionScope.ralationinfo.ralation }
              </label></td>
              <td colspan="2">${sessionScope.ralationinfo.sname }</td>
              <td colspan="3">${sessionScope.ralationinfo.job }</td>
              <td>${sessionScope.ralationinfo.position }</td>
              <td colspan="4">${sessionScope.ralationinfo.phone }</td>
            
          </table></td>
        </tr>
      </table>
	  <br>
      
    </div>
  </form>
</div>
</body>
</html>
