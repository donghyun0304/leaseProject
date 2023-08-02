package july.lease.dao.member;

import org.apache.ibatis.annotations.Mapper;

import july.lease.domain.Member;

@Mapper
public interface MemberMapper {
	
	public Member login(Member member);
	public Member selectOne(long memberId);
}

