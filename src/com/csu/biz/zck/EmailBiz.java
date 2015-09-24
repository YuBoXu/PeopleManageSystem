package com.csu.biz.zck;

import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.mail.MessagingException;
import javax.mail.Session;

import com.csu.dao.zck.EmailDao;

import cn.itcast.mail.Mail;
import cn.itcast.mail.MailUtils;

public class EmailBiz {
	
	/**
	 * 
	 * @param map
	 * 发送个人邮件
	 */
	public void sendEmail(Map<String, String[]> map) {
		EmailDao dao = new EmailDao();
		String number = map.get("id")[0];
		String name = map.get("id2")[0];
		String title = map.get("title")[0];
		String email = map.get("email")[0];
		String emailnumber= dao.sendEmail(number,name);
		
		/*
		 * 1. 得到session
		 */
		Session session = MailUtils.createSession("smtp.163.com", "chenshenuhen188",
				"zck986069");
		/*
		 * 2. 创建邮件对象
		 */
		Mail mail = new Mail("chenshenuhen188@163.com",
				emailnumber, title,
				email);

		/*
		 * 创建两个附件对象
		 */
//		AttachBean ab1 = new AttachBean(new File("F:/白冰1.jpg"), "小美女.jpg");
//		AttachBean ab2 = new AttachBean(new File("F:/big.jpg"), "我的羽绒服.jpg");
//
//		// 添加到mail中
//		mail.addAttach(ab1);
//		mail.addAttach(ab2);

		/*
		 * 3. 发送
		 */
		try {
			MailUtils.send(session, mail);
		} catch (Exception e) {
			System.out.println("发送邮件失败");
			e.printStackTrace();
		} 
	}

	/**
	 * 
	 * @param map
	 * 群发邮件
	 */
	public void sendAllEmail(Map<String, String[]> map) {
		EmailDao dao = new EmailDao();
		String title = map.get("title")[0];
		String email = map.get("email")[0];
		List<HashMap<String, String>> emialmap = dao.sendAllEmail();
		if(!emialmap.isEmpty()){
		//	Iterator<HashMap<String, String>> it = emialmap.iterator();
			for (HashMap<String, String> emailnumber : emialmap){
				String number = emailnumber.get("email");
				Session session = MailUtils.createSession("smtp.163.com", "chenshenuhen188",
						"zck986069");
				Mail mail = new Mail("chenshenuhen188@163.com",
						number, title,
						email);
				try {
					MailUtils.send(session, mail);
				} catch (Exception e) {
					System.out.println("邮箱号为"+number+"的邮件发送失败");
					e.printStackTrace();
					continue;
				} 

			}
		}
		
	}

}
