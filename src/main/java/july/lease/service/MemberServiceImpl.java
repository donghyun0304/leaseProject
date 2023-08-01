package july.lease.service;

import org.springframework.stereotype.Service;

import july.lease.dao.member.MemberDao;
import july.lease.domain.Member;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Service
@RequiredArgsConstructor
@Slf4j
public class MemberServiceImpl implements MemberService {

	private final MemberDao memberDao;

	@Override
	public Member login(Member member) {
		return memberDao.login(member);
	}

	@Override
	public Member selectOne(long memberId) {
		return memberDao.selectOne(memberId);
	}
	
}
