<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<link rel="stylesheet" href="css/common.css" type="text/css" />
<title>部门岗位调动页面</title>
<style type="text/css">
<!--
.STYLE3 {font-size: 10; }
.STYLE4 {color: #FF0000}
-->
</style>
<script language="javascript" type="text/javascript">
 
  function changeJob( ){  
        
     var dept=document.form.newdept_name.value;   
     var newOption1,newOption2,newOption3;  
     switch(dept){  
         //根据用户选择的省份动态创建城市下拉列表  
       case  "行政部" :  
            newOption1= new Option("经理","1");  
            newOption2= new Option("副经理","2");  
            newOption3= new Option("职员","3"); 
            break;  
       case "技术部" :   
            newOption1= new Option("技术总监","5");  
            newOption2= new Option("CTO","6");
            newOption3= new Option("工程师","4");  
            break;  
       case "生产部" :   
           newOption1= new Option("部长","7");  
           newOption2= new Option("职员","8");  
           newOption3= new Option("副部长","9");  
            break;
           
      }  
      //清除原有选项  
     document.form.newjob_id.options.length=0;  
     //将选项添加到选项数组  
     document.form.newjob_id.options.add(newOption1);  
     document.form.newjob_id.options.add(newOption2);  
     document.form.newjob_id.options.add(newOption2); 
  }  

</script>
</head>

<body>
<div id="man_zone">
  <form action="MoveEmpServlet" onsubmit="return link();" method="post" name="form" id="form" target="manFrame" >
    <div class="MainDiv">
      <table width="97%" border="0" cellpadding="0" cellspacing="0" class="CContent">
        <tr>
          <th class="tablestyle_title" ><div align="left">部门岗位调动页面</div></th>
        </tr>
        <tr>
          <td class="CPanel"><table width="102%" border="0" align="center" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
            <tr class="CTitle" >
              <td height="22" colspan="15" align="center" style="font-size:16px"><p>部门岗位调动报表</p>
                <p>&nbsp;</p></td>
            </tr>
            <tr>
              <td rowspan="4" align="center"><div align="center">
                  <p>调动员工基本信息</p>
                </div></td>
              <td height="30" ><div align="center" class="STYLE3">员工编号</div></td>
              <td><div align="center" class="STYLE3">员工姓名</div></td>
              <td><div align="center" class="STYLE3">性别</div></td>
              <td><div align="center" class="STYLE3">出生日期</div></td>
              <td width="71"><div align="center" class="STYLE3">政治面貌</div></td>
              <td width="71"><div align="center" class="STYLE3">民族</div></td>
              <td width="71"><div align="center" class="STYLE3">籍贯</div></td>
              <td><div align="center" class="STYLE3">身份证号</div>
                  <div align="center" class="STYLE3"></div></td>
              <td colspan="3"><div align="center" class="STYLE3">婚姻状况</div></td>
              <td width="44" ><div align="center" class="STYLE3">身高</div></td>
              <td width="43"><div align="center" class="STYLE3">血型</div></td>
              <td><div align="center" class="STYLE3">联系电话</div></td>
            </tr>
            <c:forEach var="info" items="${sessionScope.info }">
            <tr>
           <input type="hidden"  name="empid" value=" ${info. emp_number}"/>
              <td ><div align="center" class="STYLE3" >${info. emp_number}</div></td>
              <td><div align="center" class="STYLE3">${info.emp_name}</div></td>
              <td><div align="center" class="STYLE3">${info.emp_sex}</div></td>
              <td><div align="center" class="STYLE3">${info.birthday}</div></td>
              <td><div align="center" class="STYLE3">${info.politic}</div></td>
              <td><div align="center" class="STYLE3">${info.emp_nationa}</div></td>
              <td><div align="center" class="STYLE3">${info.nativehoml}</div></td>
                <td>  <div align="center" class="STYLE3"></div>${info.idcard}</td>
              <td colspan="3"><div align="center" class="STYLE3">${info.marita}</div>
                  <div align="center" class="STYLE3"></div></td>
              <td><div align="center" class="STYLE3">${info.height}</div></td>
              <td><div align="center" class="STYLE3">${info.blood}</div></td>
              <td width="85"><div align="center" class="STYLE3">${info.phone}</div></td>
            </tr>
            <tr >
              <td><div align="center" class="STYLE3">出生地</div></td>
              <td><div align="center" class="STYLE3">户口所在地</div></td>
              <td><div align="center" class="STYLE3">最高学历</div></td>
              <td><div align="center" class="STYLE3">最高学位</div></td>
              <td colspan="2"><div align="center" class="STYLE3">毕业院校</div></td>
              <td><span class="STYLE3">毕业专业</span></td>
              <td><span class="STYLE3">所学专业</span></td>
              <td colspan="4"><div align="center" class="STYLE3">毕业日期</div></td>
              <td colspan="2"><div align="center" class="STYLE3">电子邮件</div></td>
              </tr>
            <tr >
              <td height="37"><div align="center" class="STYLE3">${info.birthplace}</div></td>
              <td><div align="center" class="STYLE3">${info.home}</div></td>
              <td><div align="center" class="STYLE3">${info.education}</div></td>
              <td><div align="center" class="STYLE3">${info.heightdegree}</div></td>
              <td colspan="2"><div align="center" class="STYLE3">${info.school}</div></td>
              <td><span class="STYLE3">${info.major}</span></td>
              <td><span class="STYLE3">${info.major}</span></td>
              <td colspan="4"><div align="center" class="STYLE3">
                <div align="center" class="STYLE3">${info.graduatedata}</div>
              </div></td>
              <td colspan="2" ><div align="center" class="STYLE3">${info.email}</div></td>
              </tr>
              </c:forEach>
            <tr >
              <td width="55" rowspan="2" align="center"><div align="center" class="STYLE3">调转信息</div></td>
              <td width="70" height="30"><div align="center" class="STYLE3">原部门编号<span class="STYLE4">*</span></div></td>
              <td width="70"><div align="center" class="STYLE3">原部门名称<span class="STYLE4">*</span></div></td>
              <td width="71"><div align="center" class="STYLE3">原岗位编号<span class="STYLE4">*</span></div></td>
              <td width="71"><div align="center" class="STYLE3">原岗位名称<span class="STYLE4">*</span></div></td>
              <td  colspan="4"><div align="center" class="STYLE3">新部门及岗位<span class="STYLE4">*</span></div></td>
              
              <td colspan="4"><div align="center" class="STYLE3">调转类型</div>
                  <div align="center" class="STYLE3"></div></td>
              <td colspan="2"><div align="center" class="STYLE3">调转日期<span class="STYLE4">*</span></div></td>
              </tr>
    
            <tr >
              <td width="70" height="32" >
                <label></label>
                <label> </label>
                <div align="center">
                  ${sessionScope.moveInfo.dept_number}
 
                </div>
              </td>
              <td ><div align="center" class="STYLE3">
              	<input type="hidden"  name="dept_name" value="${sessionScope.moveInfo.dept_name}">
                  <label>
                   ${sessionScope.moveInfo.dept_name}
                  </label>
              </div></td>
              <td ><span class="STYLE3">
                <label></label>
                <label>
                 ${sessionScope.moveInfo.job_number}
                </label>
              </span></td>
              <input type="hidden"  name="job_name" value="${sessionScope.moveInfo.job_name}">
              <td  name="job_name"><span class="STYLE3">
                <label></label>
                <label>
                 ${sessionScope.moveInfo.job_name}
                </label>
              </span></td>
              <td colspan="4"><span class="STYLE3">
                <label></label>
                <label>
					<select name="newdept_name" onChange="changeJob()">
					    <option value="无">请选择部门</option>
						<option value="行政部">行政部</option>
						<option value="技术部">技术部</option>
						<option value="销售部">销售部</option>
						<option value="生产部">生产部</option>
				  </select>
				    </div>
                  
				  <select name="newjob_id" >
				  
				  </select>
				  
                </label>
              </span></td>
              <td colspan="2"><div align="center" class="STYLE3">
                  <label>
                  <select name="type">
                    <option value="主动">主动</option>
                    <option value="被动">被动</option>
                  </select>
                  </label>
                </div>
                  <div align="center" class="STYLE3">
                    <label></label>
                  </div>
                <div align="center" class="STYLE3"></div></td>
              <td colspan="2" ><span class="STYLE3">
                <select name="reason">
                  <option value="升职">升职</option>
                  <option value="降职">降职</option>
                </select>
              </span></td>
              <td colspan="2" ><div align="center" class="STYLE3">
                  <label></label>
                  <label>
                  <input name="movetime" type="text" size="12" />
                  </label>
              </div></td>
              </tr>
          </table></td>
        </tr>
      </table>
	  <br>
      <div align="center">
        <input type="submit" name="Submit" value="调转" />
       &nbsp;&nbsp;
&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     
<input type="button" name="ca" value="取消" onclick="window.history.back()"/>
  
      </div>
    </div>
  
  </form>
</div>
</body>
</html>