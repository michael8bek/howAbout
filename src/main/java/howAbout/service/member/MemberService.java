package howAbout.service.member;

import howAbout.model.Member;

public interface MemberService {

	int insert(Member member);

	Member select(String mem_id);

	

}
