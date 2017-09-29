package howAbout.dao.member;

import howAbout.model.Member;

public interface MemberDao {

	int insert(Member member);

	Member select(String mem_id);

}
