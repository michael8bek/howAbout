package howAbout.service.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import howAbout.dao.member.MemberDao;
import howAbout.model.Member;
@Service
public class MemberServiceImpl implements MemberService{
	@Autowired
	private MemberDao md;
	
	@Override
	public int insert(Member member) {
		return md.insert(member);
	}

	@Override
	public Member select(String mem_id) {
		return md.select(mem_id);
	}

	@Override
	public int addpoint(int point, String memberName) {
		Member member = new Member();
		member.setMem_point(point);
		member.setMem_id(memberName);
		return md.addpoint(member);
	}

	

	

}
