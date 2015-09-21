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
	location.href="ygxx.html"	 
		}    
</script>
</head>

<body>
<div id="man_zone">
  <form action="YgxxServlet" onsubmit="return link();" method="post" name="fom" id="fom" target="manFrame" >
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
               ${sessionScope.ygxx.emp_number }
              </label></td>
              <td width="84">姓名</td>
              <td width="87"><label>
               ${sessionScope.ygxx.emp_name }
              </label></td>
              <td width="84">性别</td>
              <td width="89"><label>
               ${sessionScope.ygxx.emp_sex }
              </label></td>
              <td width="84">出生日期*</td>
              <td width="88"><label>
               ${sessionScope.ygxx.birthday }
              </label></td>
              <td width="84">身份证号*</td>
              <td width="179"><label>
			  ${sessionScope.ygxx.idcard }
              </label></td>
            </tr>
            <tr bgcolor="#EEEEEE">
              <td>部门*</td>
              <td><label>
                ${sessionScope.ygxx.dept_name }
              </label></td>
              <td>岗位*</td>
              <td><label>
                ${sessionScope.ygxx.job_name }
              </label></td>
              <td>民族*</td>
              <td><label>
               ${sessionScope.ygxx.emp_national}
              </label></td>
              <td>入职日期*</td>
              <td><label>
                ${sessionScope.ygxx.toworktime }
              </label></td>
              <td>参加工作日期*</td>
              <td><label>
                 ${sessionScope.ygxx.begintime }
              </label></td>
            </tr>
            <tr bgcolor="#EEEEEE">
              <td>用工形式*</td>
              <td><label>
                 ${sessionScope.ygxx.emptype }
              </label></td>
              <td>人员来源*</td>
              <td><label>
                 ${sessionScope.ygxx.empfrom }
              </label></td>
              <td>政治面貌</td>
              <td><label>
                 ${sessionScope.ygxx.politic }
              </label></td>
              <td>出生地</td>
              <td><label>
                  ${sessionScope.ygxx.birthplace }
              </label></td>
              <td>籍贯</td>
              <td><label>
                  ${sessionScope.ygxx.nativehome }
              </label></td>
            </tr>
            <tr bgcolor="#EEEEEE">
              <td>联系电话</td>
              <td>  ${sessionScope.ygxx.phone }</td>
              <td>电子邮件</td>
              <td>  ${sessionScope.ygxx.email}</td>
              <td>身高</td>
              <td>  ${sessionScope.ygxx.height }</td>
              <td>血型</td>
              <td><label>
                 ${sessionScope.ygxx.blood }
              </label></td>
              <td>婚姻状况</td>
              <td><label>
                  ${sessionScope.ygxx.marital }
              </label></td>
            </tr>
            
            <tr bgcolor="#EEEEEE">
              <td>户口所在地</td>
              <td>  ${sessionScope.ygxx.home }</td>
              <td>最高学历</td>
              <td><label>
              ${sessionScope.ygxx.education }
              </label></td>
              <td>最高学位</td>
              <td><label>
               ${sessionScope.ygxx.heightdegree }
              </label></td>
              <td>毕业院校</td>
              <td>  
              ${sessionScope.ygxx.school}
              </td>
              <td>所学专业</td>
			   <td>  
			   ${sessionScope.ygxx.major }
			   </td>
              
            </tr>
            <tr bgcolor="#EEEEEE">
              <td width="55" rowspan="8" align="center">其他信息</td>
              <td colspan="10"><strong>职业生涯</strong></td>
              </tr>
               <tr bgcolor="#EEEEEE">
              <td>起始年月*</td>
              <td>截至年月*</td>
              <td>所在单位</td>
              <td>工作内容</td>
              <td>担任职务</td>
              <td>月薪/年薪</td>
              <td>证明人</td>
              <td>证明人职务</td>
              <td>证明人电话</td>
              <td><p>备注</p>                </td>
             </tr>
             <tr bgcolor="#EEEEEE">
              <td>${sessionScope.ygxx.begintime }</td>
              <td>${sessionScope.ygxx.endtime }</td>
              <td>${sessionScope.ygxx.company }</td>
              <td>${sessionScope.ygxx.jobdescribe }</td>
              <td>${sessionScope.ygxx.position }</td>
              <td>${sessionScope.ygxx.salary }</td>
              <td>${sessionScope.ygxx.referencepeople }</td>
              <td>${sessionScope.ygxx.referenceposition }</td>
              <td>${sessionScope.ygxx.referencephone }</td>
              <td colspan="3">${sessionScope.ygxx.explanation }</td>
            </tr>
             
            <tr bgcolor="#EEEEEE">
              <td colspan="2"><strong>外国语种*</strong></td>
              <td colspan="3"><label>
               ${sessionScope.ygxx.language}
              </label></td>
              <td colspan="2">外国语种熟练程度</td>
              <td colspan="5"><label>
               ${sessionScope.ygxx.languageskill}
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
               ${sessionScope.ygxx.ralation }
              </label></td>
              <td colspan="2">${sessionScope.ygxx.sname }</td>
              <td colspan="3">${sessionScope.ygxx.job }</td>
              <td>${sessionScope.ygxx.position }</td>
              <td colspan="4">${sessionScope.ygxx.phone }</td>
          </table></td>
        </tr>
      </table>
	  <br>
      
    </div>
  </form>
</div>
</body>
</html>
