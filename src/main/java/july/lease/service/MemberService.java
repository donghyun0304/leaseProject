package july.lease.service;

import org.springframework.stereotype.Service;

import july.lease.domain.Member;

@Service
public interface MemberService {
	
	public Member login(Member member);
	public Member selectOne(long memberId);
	public int insert(Member member);
	public int idCheck(Member member);
	public int phoneCheck(Member member);
	public Member findbyEmail(Member member);
	public int searchPw(Member member);
	public int nickNameCheck(Member member);
}
