// 导航栏配置文件
var outlookbar=new outlook();
var t;
t=outlookbar.addtitle('部门管理','组织管理',1)
outlookbar.additem('部门添加',t,'FindDeptNameServlet')
outlookbar.additem('部门查询',t,'SelectDeptServlet')
t=outlookbar.addtitle('岗位管理','组织管理',1)
outlookbar.additem('岗位添加',t,'addjob.jsp')
outlookbar.additem('岗位查询',t,'SelectAllJobServlet')


t=outlookbar.addtitle('入职管理','人员管理',1)
outlookbar.additem('输入员工',t,'WriteInfoServlet')
outlookbar.additem('查询人才库',t,'newempinsert.jsp')





t=outlookbar.addtitle('试用期管理','人员管理',1)
outlookbar.additem('试用期审查',t,'showselect.jsp')
outlookbar.additem('已转正员工查询',t,'showselectzs.jsp')

t=outlookbar.addtitle('离职管理','人员管理',1)
outlookbar.additem('员工离职办理',t,'leavingselect.jsp')
outlookbar.additem('已离职员工查询',t,'leavingse.jsp')


t=outlookbar.addtitle('调动管理','调动管理',1)
outlookbar.additem('部门岗位调动',t,'movecheck.jsp')
outlookbar.additem('已调动员工查询',t,'sourchmeth.jsp')

t=outlookbar.addtitle('员工信息中心','信息管理',1)
outlookbar.additem('人才库查询',t,'DBselect.jsp')
outlookbar.additem('入职员工查询',t,'EMPDselect.jsp')



t=outlookbar.addtitle('报表管理','报表管理',1)
outlookbar.additem('新聘员工报表',t,'selnewemp.jsp')
outlookbar.additem('离职员工报表',t,'selretireemp.jsp')
outlookbar.additem('部门调动员工报表',t,'selmodeptemp.jsp')
outlookbar.additem('岗位调动员工报表',t,'selmobmemp.jsp')
outlookbar.additem('人事月报',t,'selmothlist.jsp')

t=outlookbar.addtitle('系统管理','系统管理',1)
outlookbar.additem('添加管理员',t,'addmanager.jsp')
outlookbar.additem('查询管理员',t,'selectmanager.jsp')

outlookbar.additem('退出登录',t,'out.jsp')


t=outlookbar.addtitle('内部邮件','发送邮件',1)
outlookbar.additem('发送邮件',t,'sendemail.jsp')
outlookbar.additem('群发邮件',t,'sendallemail.jsp')
