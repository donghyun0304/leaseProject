package july.lease.dao.member;

import org.springframework.stereotype.Repository;

import july.lease.domain.Member;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Repository
@Slf4j
@RequiredArgsConstructor
public class MemberDao {
	
	private final MemberMapper memberMapper;
	
	public Member login(Member member) {
		
		return memberMapper.login(member);
	}
	
	public Member selectOne(Long memberId) {
		
		return memberMapper.selectOne(memberId);
	}
	
	public int insert(Member member) {
		return memberMapper.insert(member);
	}
	
	public int idCheck(Member member) {
		return memberMapper.idCheck(member);
	}
	
	public int phoneCheck(Member member) {
		return memberMapper.phoneCheck(member);
	}
	
	public Member findbyEmail(Member member) {
		return memberMapper.findbyEmail(member);
	}
	
	public int searchPw(Member member) {
		return memberMapper.searchPw(member);
	}
	
	public int nickNameCheck(Member member) {
		return memberMapper.nickNameCheck(member);
	}
	
	public int ninsert(Member member) {
		return memberMapper.ninsert(member);
	}
	
<<<<<<< HEAD
	public Member findbyEmailCheck(Member member) {
		return memberMapper.findbyEmailCheck(member);
=======
	public Member phoneCheck2(Member member) {
		return memberMapper.phoneCheck2(member);
>>>>>>> b00a92506c040c063add12d9f9447c3be40dc8df
	}
	
	public int kinsert(Member member) {
		return memberMapper.kinsert(member);
	}
	
	public Member socialLogin(Member member) {
		return memberMapper.socialLogin(member);
	}
<<<<<<< HEAD
	
	public Member searchPwCheck(Member member) {
		return memberMapper.searchPwCheck(member);
	}
=======
>>>>>>> b00a92506c040c063add12d9f9447c3be40dc8df
}

