package howAbout.dao.member;

import java.util.List;

import howAbout.model.Member;

public interface MemberDao {

	int insert(Member member);

	Member select(String mem_id);

	int addpoint(Member member);

	void pointUse(Member member);

	List<Member> listAll();

}
