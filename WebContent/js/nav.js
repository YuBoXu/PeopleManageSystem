// �����������ļ�
var outlookbar=new outlook();
var t;
t=outlookbar.addtitle('���Ź���','��֯����',1)
outlookbar.additem('�������',t,'adddept.jsp')
outlookbar.additem('���Ų�ѯ',t,'SelectDeptServlet')
t=outlookbar.addtitle('��λ����','��֯����',1)
outlookbar.additem('��λ���',t,'addjob.jsp')
outlookbar.additem('��λ��ѯ',t,'jobselec.html')


t=outlookbar.addtitle('��ְ����','��Ա����',1)
outlookbar.additem('����Ա��',t,'writeinfo.html')
outlookbar.additem('��ѯ�˲ſ�',t,'newempinsert.html')





t=outlookbar.addtitle('�����ڹ���','��Ա����',1)
outlookbar.additem('���������',t,'showselect.html')
outlookbar.additem('��ת��Ա����ѯ',t,'showselectzs.html')

t=outlookbar.addtitle('��ְ����','��Ա����',1)
outlookbar.additem('Ա����ְ����',t,'leavingselect.html')
outlookbar.additem('����ְԱ����ѯ',t,'leavingse.html')


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
outlookbar.additem('��ӹ���Ա',t,'addmanager.html')
outlookbar.additem('��ѯ����Ա',t,'selectmanager.html')

outlookbar.additem('�˳���¼',t,'out.html')