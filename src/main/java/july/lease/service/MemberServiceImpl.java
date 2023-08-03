package july.lease.service;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
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

	private final BCryptPasswordEncoder encoder;
	
	@Override
	public Member login(Member paramMember) {
		
		Member member = memberDao.login(paramMember);
		
		if(member != null) {
			
			boolean res = encoder.matches(paramMember.getMemberPassword(), member.getMemberPassword());
			
			if(res) {
				
				return member;
			}
			
		}
		
		return null;
	}

	@Override
	public Member selectOne(long memberId) {
		
		return memberDao.selectOne(memberId);
	}

	@Override
	public int insert(Member member) {
		
		member.setMemberPassword(encoder.encode(member.getMemberPassword()));
		
		String getMemberPhone = member.getMemberPhone().replace("-", "");
		
		member.setMemberPhone(getMemberPhone);
		
		return memberDao.insert(member);
	}

	@Override
	public int idCheck(Member member) {
		
		return memberDao.idCheck(member);
	}

	@Override
	public int phoneCheck(Member member) {
		
		String getMemberPhone = member.getMemberPhone().replace("-", "");
		
		member.setMemberPhone(getMemberPhone);
		
		return memberDao.phoneCheck(member);
	}

	@Override
	public Member findbyEmail(Member member) {
	
		String getMemberPhone = member.getMemberPhone().replace("-", "");
		
		member.setMemberPhone(getMemberPhone);
		
		return memberDao.findbyEmail(member);
	}

	@Override
	public int searchPw(Member member) {
		
		member.setMemberPassword(encoder.encode(member.getMemberPassword()));
		
		String getMemberPhone = member.getMemberPhone().replace("-", "");
		
		member.setMemberPhone(getMemberPhone);
		
		return memberDao.searchPw(member);
	}

	@Override
	public int nickNameCheck(Member member) {
		
		return memberDao.nickNameCheck(member);
	}
	
}
