package com.itwillbs.cinepick.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.itwillbs.cinepick.vo.AuthInfoVO;
import com.itwillbs.cinepick.vo.BookVO;
import com.itwillbs.cinepick.vo.LikeMovieVO;
import com.itwillbs.cinepick.vo.MyQuestionVO;
import com.itwillbs.cinepick.vo.ReviewVO;
import com.itwillbs.cinepick.vo.UserVO;

// MyBatis 연동 시 DAO 클래스 대신 활용할 Mapper 인터페이스 정의
// => 마이바티스를 통해 Mapper XML 파일과 연결되어 자동으로 XML 파일의 SQL 구문 실행
// => 주의! 인터페이스 내의 추상메서드의 이름은 XML 파일의 각 태그 ID 속성값과 동일하게 정의해야함
// => @Mapper 어노테이션을 적용하여 Mapper 역할 수행하는 빈으로 등록(DI 활용)
@Mapper
public interface UserMapper {

	// 멤버정보 등록 - 추상메서드 정의
	int insertUser(UserVO user); // public abstract 생략되어 있음
	// => 자동으로 MemberMapper.xml 파일의 <insert id="insertMember"> 태그와 연결되어 
	//    해당 태그 내의 SQL 구문을 자동으로 실행함
	// => 이 때, XML 에서 단일 파라미터일 경우 전달된 파라미터에 직접 접근 가능함

	// 멤버 상세정보 조회
	UserVO selectUser(String email);

	// 멤버 목록 조회
	List<UserVO> selectUserList();

//	// 멤버로그인 시 멤버 조회
//	UserVO checkUser(UserVO user);
	
	
	// 기존 인증정보 조회
	AuthInfoVO selectAuthInfo(String id);
	
	// 새 인증정보 등록
	// 주의! 메서드 파라미터 2개 이상을 XML 에서 접근하기 위해서는
	// 각 파라미터마다 @Param 어노테이션을 통해 각 파라미터명을 별도로 지정해줘야한다!
	// => @Param("파라미터명") 데이터타입 변수명
	void insertAuthInfo(@Param("id") String id, @Param("authCode") String authCode);
	// 또는 단일 VO 객체를 사용하면 해결
//	void insertAuthInfo(AuthInfoVO authInfo);

	// 기존 인증정보 갱신
	void updateAuthInfo(@Param("id") String id, @Param("authCode") String authCode);

	// 회원 인증상태 변경
	void updateMailAuthStatus(String id);

	// 인증정보 삭제
	void deleteAuthInfo(String id);

	// 암호화 된 패스워드 조회
	String selectPasswd(UserVO user);

	// 회원 상세정보 조회
	UserVO selectUser(UserVO user);
	
	// 회원 정보 변경
	int updateUser(UserVO user);

	
	// 회원 탈퇴 요청
	int deleteUser(UserVO user);

	
	// 1:1 문의 조회
	List<MyQuestionVO> selectMyQuestion(Map<String, String> param);

	// 회원 1:1 문의 글 작성
	int insertMyQuestion(MyQuestionVO myQuestion);

	// 내가 쓴 리뷰 조회
	List<ReviewVO> selectReviewList(Map<String, String> param);

	// 내가 쓴 리뷰 삭제
	int deleteMyReview(int review_num);

	// 아이디 찾기
	UserVO selectIdSearch(UserVO user);
	
	// 비밀번호 재발급용 아이디 확인
	UserVO selectCheckPasswd(UserVO user);

	// 유저 예매내역
	List<BookVO> selectBookList(Map<String, String> param);

	// 비밀번호 찾기
	int selectPasswdSearch(UserVO user);

	// 임시 비밀번호 변경
	int updatePasswdChange(UserVO user);

	// 유저 마이페이지 최신순 예매내역
	List<BookVO> selectUserBookList(Map<String, String> param);
	
	
	//유저페이지 찜목록
	List<LikeMovieVO> selectLikeMovieList(String sId);

	
	
}















