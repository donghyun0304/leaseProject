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
}
