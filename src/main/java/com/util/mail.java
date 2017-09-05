package com.util;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;
import java.util.Random;

/**
 * Created by 晶 on 2017/4/10.
 */
public class mail {
    public static String send(String email) {
        Properties p = new Properties();
        p.put("mail.smtp.host", "smtp.163.com");  //smtp服务器地址
        p.put("mail.smtp.auth", "true");
        Authenticator authenticator = new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("qujing1996@163.com","qj13789924774ing");
            }
        };
        //获得一个带有authenticator的session实例
        Session sendMailSession = Session.getDefaultInstance(p,authenticator);
        Message mailMessage = new MimeMessage(sendMailSession);

        //产生4位验证码
        Random r = new Random();
        StringBuffer captcha1 = new StringBuffer();
        for (int i = 0; i < 4; i++) {
            captcha1.append(r.nextInt(9)+"");
        }
        String captcha = new String(captcha1);

        try {
            System.out.println("I'm sending...");
            Address from = new InternetAddress("qujing1996@163.com");
            //设置发出方
            mailMessage.setFrom(from);
            Address to = new InternetAddress(email);//设置接收人员
            mailMessage.setRecipient(Message.RecipientType.TO, to);
            mailMessage.setSubject("来自管理系统的邮件");//设置邮件标题
            mailMessage.setText("您正在修改密码，您的验证码： "+captcha+"。打死也不要告诉别人。如果不是本人请不要理会。 "); //设置邮件内容
            // 发送邮件
            Transport.send(mailMessage);
            return captcha;
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return null;
    }


}
