// �����������ļ�
var outlookbar=new outlook();
var t;
t=outlookbar.addtitle('���Ź���','��֯����',1)
outlookbar.additem('�������',t,'adddept.jsp')
outlookbar.additem('���Ų�ѯ',t,'SelectDeptServlet')
t=outlookbar.addtitle('��λ����','��֯����',1)
outlookbar.additem('��λ���',t,'addjob.jsp')
outlookbar.additem('��λ��ѯ',t,'SelectAllJobServlet')


t=outlookbar.addtitle('��ְ����','��Ա����',1)
outlookbar.additem('����Ա��',t,'writeinfo.jsp')
outlookbar.additem('��ѯ�˲ſ�',t,'newempinsert.jsp')





t=outlookbar.addtitle('�����ڹ���','��Ա����',1)
outlookbar.additem('���������',t,'showselect.jsp')
outlookbar.additem('��ת��Ա����ѯ',t,'showselectzs.jsp')

t=outlookbar.addtitle('��ְ����','��Ա����',1)
outlookbar.additem('Ա����ְ����',t,'leavingselect.jsp')
outlookbar.additem('����ְԱ����ѯ',t,'leavingse.jsp')


t=outlookbar.addtitle('��������','��������',1)
outlookbar.additem('���Ÿ�λ����',t,'movecheck.html')
outlookbar.additem('�ѵ���Ա����ѯ',t,'sourchmeth.html')

t=outlookbar.addtitle('Ա����Ϣ����','��Ϣ����',1)
outlookbar.additem('�˲ſ��ѯ',t,'DBselect.html')
outlookbar.additem('��ְԱ����ѯ',t,'EMPDselect.html')



t=outlookbar.addtitle('�������','�������',1)
outlookbar.additem('��ƸԱ������',t,'selnewemp.html')
outlookbar.additem('��ְԱ������',t,'selretireemp.html')
outlookbar.additem('���ŵ���Ա������',t,'selmodeptemp.html')
outlookbar.additem('��λ����Ա������',t,'selmobmemp.html')
outlookbar.additem('�����±�',t,'selmothlist.html')

t=outlookbar.addtitle('ϵͳ����','ϵͳ����',1)
outlookbar.additem('��ӹ���Ա',t,'addmanager.jsp')
outlookbar.additem('��ѯ����Ա',t,'selectmanager.jsp')

outlookbar.additem('�˳���¼',t,'out.jsp')
