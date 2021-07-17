package com.itwillbs.service;

import java.io.UnsupportedEncodingException;

import javax.inject.Inject;
import javax.mail.MessageRemovedException;
import javax.mail.MessagingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.itwillbs.dao.MemberDAO;
import com.itwillbs.domain.MemberVO;
import com.itwillbs.util.MailUtils;
import com.itwillbs.util.TempKey;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	private MemberDAO dao;
	
	@Autowired
	private JavaMailSender mailSender;
	
	@Override
	@Transactional
	public void memberJoinProcess(MemberVO vo){
		System.out.println("member service");
			dao.memberJoin(vo);
			
		String authkey = new TempKey().getKey(15,false);
		
		vo.setMember_authKey(authkey);
		dao.updateAuthkey(vo);
		
		try {
			MailUtils sendMail = new MailUtils(mailSender);
			
			sendMail.setSubject("[SYSO MARKET] 회원가입 이메일 인증");
			sendMail.setText(new StringBuffer().append("<!DOCTYPE html>")
					.append("<html>")
					.append("<head>")
					.append("</head>")
					.append("<body>")
					.append(				" <div" 																																																	+ 
							"	style=\"font-family: 'Apple SD Gothic Neo', 'sans-serif' !important; width: 400px; height: 600px; border-top: 4px solid #396afc; margin: 100px auto; padding: 30px 0; box-sizing: border-box;\">"		+ 
							"	<h1 style=\"margin: 0; padding: 0 5px; font-size: 28px; font-weight: 400;\">"																															+ 
							"		<span style=\"font-size: 15px; margin: 0 0 10px 3px;\">Team SYSO</span><br />"																													+ 
							"		<span style=\"color: #396afc \">메일인증</span> 안내입니다."																																				+ 
							"	</h1>\n"																																																+ 
							"	<p style=\"font-size: 16px; line-height: 26px; margin-top: 50px; padding: 0 5px;\">"																													+ 
							vo.getMember_name()																																																+
							"		님 안녕하세요.<br />"																																													+ 
							"		SYSO MARKET 에 가입해 주셔서 진심으로 감사드립니다.<br />"																																						+ 
							"		아래 <b style=\"color: #396afc \">'메일 인증'</b> 버튼을 클릭하여 회원가입을 완료해 주세요.<br />"																													+ 
							"		감사합니다."																																															+ 
							"	</p>"																																																	+ 
							"	<a style=\"color: #FFF; text-decoration: none; text-align: center;\""																																	+
							"	href=\"http://localhost:8080/syso/joinconfirm?member_id="+ vo.getMember_id() +"&member_email="+vo.getMember_email()+"&member_authKey="+vo.getMember_authKey()+ "\" target=\"_blank\">"														+ 
							"		<p"																																																	+
							"			style=\"display: inline-block; width: 210px; height: 45px; margin: 30px 5px 40px; background: #396afc; line-height: 45px; vertical-align: middle; font-size: 16px;\">"							+ 
							"			메일 인증</p>"																																														+ 
							"	</a>"																																																	+
							"	<div style=\"border-top: 1px solid #DDD; padding: 5px;\"></div>"																																		+
							" </div>"
					)
					.append("</body>")
					.append("</html>")
					.toString());
			sendMail.setFrom("kysclient@gmail.com", "관리자");
			sendMail.setTo(vo.getMember_email());
			sendMail.send();
			
			
			
		} catch (MessageRemovedException e) {
			e.printStackTrace();
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}

	@Override
	public void updateAuthstatus(MemberVO vo) {
		
		dao.updateAuthstatus(vo);
		
	}

}
