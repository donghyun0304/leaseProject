package july.lease.service;

import org.springframework.stereotype.Service;

import july.lease.domain.Member;

@Service
public interface MemberService {
	
	public Member login(Member member);
	public Member selectOne(long memberId);
}
