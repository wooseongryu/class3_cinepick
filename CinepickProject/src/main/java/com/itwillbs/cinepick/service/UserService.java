package com.itwillbs.cinepick.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.cinepick.mapper.UserMapper;
import com.itwillbs.cinepick.vo.AuthInfoVO;
import com.itwillbs.cinepick.vo.BookVO;
import com.itwillbs.cinepick.vo.MyQuestionVO;
import com.itwillbs.cinepick.vo.ReviewVO;
import com.itwillbs.cinepick.vo.UserVO;

// 스프링에서 서비스 역할을 수행할 클래스 정의 시 @Service 어노테이션 지정(@Component 가능)
// => @Service 어노테이션이 붙은 클래스는 스프링 빈으로 등록되어
//    컨트롤러 클래스에서 DI 를 통해 자동으로 주입받을 수 있다!
@Service
public class UserService {
	// UserMapper 객체 자동 주입
	@Autowired
	private UserMapper mapper;
	

	// 회원가입 요청 작업을 위한 joinUser() 메서드 정의
	public int joinUser(UserVO user) {
		// UserMapper - insertUser() 메서드를 호출하여 학생정보 등록 요청
		// => 파라미터 : UserVO 객체   리턴타입 : int
		// => 메서드 호출 완료 후 별도의 작업이 없으므로 return 문 뒤에 바로 메서드 호출 코드 기술
		return mapper.insertUser(user); 
	}

	// 인증 정보 저장 요청
	public void registAuthInfo(String id, String authCode) {
		// 기존 인증정보가 존재하는지 여부 확인
		// MemberMapper - selectAuthInfo() 메서드 호출하여 기존 인증정보 조회
		// => 파라미터 : 아이디   리턴타입 : AuthInfoVO(authInfo)
		AuthInfoVO authInfo = mapper.selectAuthInfo(id);
		
		// 기존 인증정보 존재 여부 판별
		if(authInfo == null) { // 기존 인증정보 존재하지 않을 경우(새 인증정보 추가)
			System.out.println("기존 인증정보 없음!");
			
			// MemberMapper - insertAuthInfo() 메서드 호출하여 새 인증정보 추가
			mapper.insertAuthInfo(id, authCode);
		} else { // 기존 인증정보 존재(기존 인증정보 갱신)
			System.out.println("기존 인증정보 있음!");
			
			// MemberMapper - updateAuthInfo() 메서드 호출하여 기존 인증정보 갱신
			mapper.updateAuthInfo(id, authCode);
		}
	}
	
	
	// 이메일 인증 요청
	public boolean emailAuth(AuthInfoVO authInfo) {
		boolean isAuthSuccess = false;
		
		// MemberMapper - selectAuthInfo() 메서드를 호출하여 아이디가 일치하는 인증정보 조회(재사용)
		AuthInfoVO currentAuthInfo = mapper.selectAuthInfo(authInfo.getAuth_id());
		System.out.println("전달받은 인증정보 : " + authInfo);
		System.out.println("조회된 기존 인증정보 : " + currentAuthInfo);
		
		// 조회된 인증정보 존재할 경우
		if(currentAuthInfo != null) {
			// 하이퍼링크 통해 전달받은 인증코드와 조회된 인증정보의 인증코드 문자열 비교
			if(authInfo.getAuth_code().equals(currentAuthInfo.getAuth_code())) { // 인증코드 일치
				// 1. Mapper - updateMailAuthStatus() 메서드를 호출하여
				//    member 테이블의 인증상태(mail_auth_status)를 "Y" 로 변경
				// => 파라미터 : 아이디
				mapper.updateMailAuthStatus(authInfo.getAuth_id());
				
				// 2. Mapper - deleteAuthInfo() 메서드를 호출하여
				//    auth_info 테이블의 인증정보 삭제
				// => 파라미터 : 아이디
				mapper.deleteAuthInfo(authInfo.getAuth_id());
				
				// 3. isAuthSuccess 를 true 로 변경
				isAuthSuccess = true;
			}
		}
		
		return isAuthSuccess;
	}
	// 암호화 된 패스워드 조회 요청
	public String getPasswd(UserVO user) {
		return mapper.selectPasswd(user);
	}
	
	// 멤버 상세정보 조회 요청
	public UserVO getUserInfo(String email) {
		// UserMapper - selectUser()
		return mapper.selectUser(email);
	}

	// 멤버 목록 조회 요청
	public List<UserVO> getUserList() {
		// UserMapper - selectUserList()
		return mapper.selectUserList();
	}
	
	// 회원 상세정보 조회 요청
	public UserVO getUser(UserVO user) {
		return mapper.selectUser(user);
	}
	
	// 회원 정보 변경 요청
	public int updateUser(UserVO user) {
		return mapper.updateUser(user);
	}
	
	
	// 탈퇴 회원 조회 요청
	public UserVO getdeleteUser(UserVO user) {
		return mapper.selectUser(user);
	}

	// 회원 탈퇴 요청
	public int deleteUser(UserVO user) {
		return mapper.deleteUser(user);
		
	}

	
	// 회원 1:1 문의 목록
	// noticeIdx를 널스트링으로 전달 시 전체 공지 조회
	public List<MyQuestionVO> getMyQuestion(Map<String, String> param) {
		System.out.println("service - getMyQuestion()");
		return mapper.selectMyQuestion(param);
	}

	// 회원 1:1 문의 작성
	public int insertMyQuestion(MyQuestionVO myQuestion) {
		System.out.println("UserService - insertMyQuestion()");
//		System.out.println("service: ---" + myQuestion);
		return mapper.insertMyQuestion(myQuestion);
	}

	
	// 내가 쓴 리뷰 조회
	public List<ReviewVO> getReviewList(Map<String, String> param) {
		return mapper.selectReviewList(param);
	}

	// 내가 쓴 리뷰 삭제
	public int myReviewDelete(int review_num) {
		return mapper.deleteMyReview(review_num);
	}

	// 아이디 찾기 
	public UserVO userIdSearch(UserVO user) {
		return mapper.selectIdSearch(user);
	}

	// 유저 예매내역 조회
	public List<BookVO> getBookList(Map<String, String> param) {
		return mapper.selectBookList(param);
	}

	// 비밀번호 찾기
	public int userPasswdSearch(UserVO user) {
		System.out.println("UserService - userPasswdSearch()");
		return mapper.selectPasswdSearch(user);
	}

	public int userPasswdChange(UserVO user) {
		System.out.println("UserService - userPasswdChange()");
		return mapper.updatePasswdChange(user);
	}

	// 카카오 등록된 회원 찾기
	public UserVO getMemberKakaoLogin(String kakao_id) {
		System.out.println("UserService - getMemberKakaoLogin()");
		return mapper.getMemberKakaoLogin(kakao_id);
	}

	public int updateKakaoId(UserVO user) {
		System.out.println("UserService - updateKakao");
		return mapper.updateKakaoId(user);
	}
	
	
}














