package howAbout.service.member;

import howAbout.model.Member;

public interface MemberService {

	int insert(Member member);

	Member select(String mem_id);

	int addpoint(int point, String memberName);

	void pointUse(Member member);

	

}
