package com.itwillbs.cinepick.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.cinepick.mapper.UserMapper;
import com.itwillbs.cinepick.vo.UserVO;

// 스프링에서 서비스 역할을 수행할 클래스 정의 시 @Service 어노테이션 지정(@Component 가능)
// => @Service 어노테이션이 붙은 클래스는 스프링 빈으로 등록되어
//    컨트롤러 클래스에서 DI 를 통해 자동으로 주입받을 수 있다!
@Service
public class UserService {
	// MyBatis 를 통해 SQL 구문 처리를 담당할 XXXMapper.xml 파일과 연동되는
	// XXXMapper 객체를 자동 주입받기 위해 @Autowired 어노테이션으로 멤버변수 선언
	// 단, @Mapper 어노테이션이 적용된 Mapper 인터페이스 정의 필수! (클래스 아님!)
	@Autowired
	private UserMapper mapper;
	

	// 멤버정보 등록 요청 작업을 위한 joinMember() 메서드 정의
	public int joinUser(UserVO user) {
		/*
		 * DB 작업을 수행할 Mapper 객체의 메서드를 호출하여 SQL 구문 실행 요청
		 * => DAO 클래스 없이 마이바티스 활용을 위한 Mapper 객체의 메서드 호출 후
		 *    리턴되는 결과값을 전달받아 Controller 클래스로 다시 리턴해주는 역할 수행
		 * => 단, 별도의 추가적인 작업이 없으므로 return 문 뒤에 메서드 호출 코드를 직접 기술하고
		 *    만약, 메서드 호출 전후 추가적인 작업이 필요할 경우 호출 코드와 리턴문을 분리
		 * ---------------------------------------------------------------------------------------
		 * Mapper 역할을 수행하는 XXXMapper 인터페이스는 인스턴스 생성이 불가능하며
		 * 스프링(마이바티스)에서 자동 주입으로 객체를 전달받아 사용
		 * => 업캐스팅을 통해 실제 구현체 객체를 알지 못하더라도 메서드 호출 가능하다!
		 */
		
		// UserMapper - insertUser() 메서드를 호출하여 학생정보 등록 요청
		// => 파라미터 : UserVO 객체   리턴타입 : int
		// => 메서드 호출 완료 후 별도의 작업이 없으므로 return 문 뒤에 바로 메서드 호출 코드 기술
		return mapper.insertUser(user); 
	}

	// 멤버 상세정보 조회 요청
	public UserVO getUserInfo(String email) {
		// MemberMapper - selectMember()
		return mapper.selectUser(email);
	}

	// 멤버 목록 조회 요청
	public List<UserVO> getUserList() {
		// UserMapper - selectUserList()
		return mapper.selectUserList();
	}
	
	public UserVO checkUser(UserVO user) {
		return mapper.checkUser(user);
	}
	
	
}














