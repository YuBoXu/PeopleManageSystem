<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<link rel="stylesheet" href="css/common.css" type="text/css" />
<title>管理区域</title>
<style type="text/css">
<!--
.STYLE4 {color: #FF0000}
.STYLE7 {color: #666}
-->
</style>
<script language="javascript" type="text/javascript" src="js/My97DatePicker/WdatePicker.js"></script>
<script language="javascript" type="text/javascript">

//-----
function yanzheng(){
var bh=document.form1.bianhao.value;
var xm=document.form1.xingming.value;
var bm=document.form1.bumen.value;
var sj=document.form1.time.value;                                                                                                     
if(bh==''&&xm==''&&bm==''&&sj==''){                                                                                                                            
alert("请填写查询条件");
return false;  }  
                                                                                            
}

function link(){                                                                                                  
			if(document.fom.ename.value =='')  
	          { alert("员工姓名不能为空！");   
	           return false;
			} 
			if(document.fom.bthday.value =='')  
	          { 
			  alert("出生日期不能为空！");   
	          return false;} 
			if(document.fom.id.value =='')  
	          { alert("身份证号不能为空！"); 
		  
	        return false;} 
			if(document.fom.st.value =='')  
	          { alert("必须填写试用期开始时间！"); 
		  
	        return false;} 
			if(document.fom.et.value =='')  
	          { alert("必须填写试用期结束时间！"); 
		  
	        return false;} 
			return true;                                                                   
	                                                                                         
	}                                                                                                                    
	                      
</script>
</head>

<body>
<div id="man_zone">
  <form action="AddEmpInfoServlet" onsubmit="return link();" method="post" name="fom" id="fom" target="manFrame" >
    <div class="MainDiv">
   <table width="97%" border="0" cellpadding="0" cellspacing="0" class="CContent">
        <tr>
          <th class="tablestyle_title" ><div align="left">员工入职页面</div></th>
        </tr>
        <tr>
          <td class="CPanel"><table width="100%" border="1">
              <tr>
                <td colspan="13"><div align="center">员工入职信息表</div></td>
              </tr>
              <tr>
                <td width="7%" rowspan="4"><div align="center">
                    <p>员工基本信息</p>
                </div></td>
                <td width="6%" class="newfont03" colspan="2">姓名<span class="STYLE4">*</span></td>
                <td width="10%" class="newfont03" colspan="2"><label>
                  <input name="ename" type="text" size="10" />
                </label></td>
                <td width="6%" class="newfont03">性别</td>
                <td width="9%" class="newfont03"><label>
                  <select name="sex">
                    <option value="男">男</option>
                    <option value="女">女</option>
                  </select>
                </label></td>
                <td width="4%" class="newfont03">民族</td>
                <td width="6%" class="newfont03"><select name="nation">
                    <option value="汉 ">汉</option>
                    <option value="满">满</option>
                    <option value="回">回</option>
                    <option value="朝鲜">朝鲜</option>
                    <option value="苗">苗</option>
                </select></td>
                <td width="6%" class="newfont03">出生日期<span class="STYLE4">*</span></td>
                <td width="8%"><input name="bthday" type="text" size="10" onClick="WdatePicker()" readonly="readonly"  /></td>
                <td width="6%">身份证号<span class="STYLE4">*</span></td>
                <td width="12%"><input name="idcard" type="text" size="20" /></td>
              </tr>
              <tr>
                <td class="newfont03">用工形式</td>
                <td class="newfont03"><select name="emptype">
                    <option value="正式员工">正式员工</option>
                    <option value="临时员工">临时员工</option>
                </select></td>
                <td class="newfont03">人员来源</td>
                <td class="newfont03"><select name="empfrom">
                    <option value="社会招聘">社会招聘</option>
                    <option value="校园招聘">校园招聘</option>
                    <option value="其他">其他</option>
                </select></td>
                <td class="newfont03">政治面貌</td>
                <td class="newfont03"><select name="politic">
                    <option value="党员">党员</option>
                    <option value="预备党员">预备党员</option>
                    <option value="团员">团员</option>
                    <option value="其他">其他</option>
                </select></td>
                <td class="newfont03">出生地</td>
                <td class="newfont03"><input name="birthplace" type="text" size="6" /></td>
                <td class="newfont03">籍贯</td>
                <td><input name="nationalhome" type="text" value="抚顺" size="6" /></td>
                <td>户口</td>
                <td><input name="home" type="text" value="抚顺" size="6" /></td>
              </tr>
              <tr>
                <td class="newfont03">联系电话</td>
                <td class="newfont03"><input name="phone" type="text" size="10" /></td>
                <td class="newfont03">电子邮件</td>
                <td class="newfont03"><input name="email" type="text" size="10" /></td>
                <td>身高</td>
                <td colspan="3"><input name="height" type="text" size="10" /></td>
                <td>血型</td>
                <td><select name="blood">
                    <option value="A型">A型</option>
                    <option value="B型">B型</option>
                    <option value="AB型">AB型</option>
                    <option value="O型">O型</option>
                    <option value="其他型">其他型</option>
                </select></td>
                <td>婚姻状况</td>
                <td><select name="marital">
                    <option value="已婚">已婚</option>
                    <option value="未婚">未婚</option>
                    <option value="丧偶">丧偶</option>
                    <option value="离婚">离婚</option>
                    <option value="其他">其他</option>
                </select></td>
              </tr>
              <tr>
                <td class="newfont03">最高学历</td>
                <td class="newfont03"><label>
                  <select name="education">
                    <option value="高中以下">高中以下</option>
                    <option value="大专">大专</option>
                    <option value="本科">本科</option>
                    <option value="研究生">研究生</option>
                  </select>
                </label></td>
                <td class="newfont03">最高学位</td>
                <td class="newfont03"><label>
                  <select name="hightdegree">
                    <option value="无学位">无学位</option>
                  </select>
                </label></td>
                <td class="newfont03">毕业院校</td>
                <td colspan="3"><input name="school" type="text" size="10" /></td>
                <td>所学专业</td>
                <td><input name="major" type="text" size="10" /></td>
                <td>毕业日期</td>
                <td><input name="graduatedate" type="text" size="12" onClick="WdatePicker()" readonly="readonly"/></td>
              </tr>
              <tr>
                <td>部门岗位安排</td>
                <td class="newfont03" colspan="2">部门名称<span class="STYLE4">*</span></td>
                <td class="newfont03"  colspan="3"><label>
                  <select name="job_dept_r_id">
                  	<c:forEach var="dept" items="${sessionScope.deptlist }">
						<option value="${dept.dept_number }">${dept.dept_name }</option>
					</c:forEach>	
						<!-- <option value="2">技术部</option>
						<option value="4">财务部</option>
						<option value="5">销售部</option>
						<option value="6">生产部</option> -->
				  </select>
                </label></td>
				<td class="newfont03" colspan="2">岗位名称<span class="STYLE4">*</span></td>
                <td class="newfont03"  colspan="5"><label>
                  <select name="job_job_r_id">
                  	<c:forEach var="job" items="${sessionScope.joblist }">
                  		<option value="${job.job_number }">${job.job_name }</option>
                  	</c:forEach>	
						<!-- <option value="2">行政总监</option>
						<option value="3">行政主管</option>
						<option value="4">技术研发</option>
						<option value="5">销售总监</option>
						<option value="6">生产经理</option> -->
				  </select>
                </label></td>
              </tr>
              <tr>
                <td>试用期安排</td>
                <td class="newfont03">是否安排试用期</td>
                <td class="newfont03"><label>
                  <select name="tryuse">
                    <option value="是">是 </option>
                    <option value="否">否</option>
                  </select>
                </label></td>
                <td class="newfont03">开始时间<span class="STYLE4">*</span></td>
                <td class="newfont03"><input name="starttime" type="text" size="12" onClick="WdatePicker()" readonly="readonly"  /></td>
                <td class="newfont03">结束时间<span class="STYLE4">*</span></td>
                <td colspan="3"><input name="endtime" type="text" size="12" onClick="WdatePicker()" readonly="readonly"  /></td>
                <td colspan="2"><span class="newfont03"><span class="STYLE7">备注</span></span></td>
                <td colspan="2"><input name="other" type="text" size="18"  /></td>
              </tr>
              
            </table>
            <table border="1">
				<tr bgcolor="#EEEEEE">
              <td width="12" rowspan="7" align="center">其他信息</td>
              <td colspan="12"><strong>职业生涯</strong></td>
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
              <td colspan="3"><p>备注</p>                </td>
            </tr>
            <tr bgcolor="#EEEEEE">
              <td><input name="begintime" type="text" size="12" onClick="WdatePicker()" readonly="readonly"  /></td>
              <td><input name="lasttime" type="text" size="12" onClick="WdatePicker()" readonly="readonly"  /></td>
              <td><input name="company" type="text" size="12" /></td>
              <td><input name="jobdescribe" type="text" size="12" /></td>
              <td><input name="position" type="text" size="12" /></td>
              <td><input name="slary" type="text" size="12" /></td>
              <td><input name="referencepeople" type="text" size="12" /></td>
              <td><input name="referenceposition" type="text" size="12" /></td>
              <td><input name="referencephone" type="text" size="12" /></td>
              <td colspan="3"><input name="explannation" type="text" size="25" /></td>
            </tr>
            <tr bgcolor="#EEEEEE">
              <td colspan="2"><strong>外国语种*</strong></td>
              <td colspan="3"><label>
                <select name="otherlanguage">
                  <option value="英语">英语</option>
                  <option value="日语">日语</option>
                  <option value="法语">法语</option>
                  <option value="俄语">俄语</option>
                  <option value="其他">其他</option>
                </select>
              </label></td>
              <td colspan="2">外国语种熟练程度</td>
              <td colspan="5"><label>
          <select name="languageskill">
            <option>0 完全不懂</option>
            <option>1 少量，不能进行业务沟通</option>
            <option>2 有限的业务沟通</option>
            <option>3 一般，业务沟通仍受少量限制</option>
            <option>4 好， 无困难地进行谈判和讲演</option>
            <option>5 流利，在商务中自如地运用</option>
          </select>
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
                <select name="ralation">
                  <option value="父亲">父亲</option>
                  <option value="母亲">母亲</option>
                  <option value="配偶">配偶</option>
                </select>
              </label></td>
              <td colspan="2"><input name="ralationname" type="text" size="12" /></td>
              <td colspan="3"><input name="ralationjob" type="text" size="25" /></td>
              <td><input name="ralationposition" type="text" size="12" /></td>
              <td colspan="4"><input name="ralationphone" type="text" size="12" /></td>
              </tr>
            
          </table></td>
        </tr>
			</table>
          </td>
        </tr>

      </table>
	  <br>
      <div align="center">
        <input type="submit" name="Submit" value="保存" />
       &nbsp;&nbsp;
&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     
<input type="reset" name="reset" value="重置" />
      </div>
    </div>
  </form>
</div>
</body>
</html>