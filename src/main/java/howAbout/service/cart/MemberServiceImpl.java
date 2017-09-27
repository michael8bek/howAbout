package howAbout.service.cart;

import org.springframework.beans.factory.annotation.Autowired;

import howAbout.dao.cart.MemberDao;
import howAbout.models.Member;

public class MemberServiceImpl implements MemberService{
	@Autowired
	private MemberDao md;
	
	@Override
	public int insert(Member member) {
		return md.insert(member);
	}

}
