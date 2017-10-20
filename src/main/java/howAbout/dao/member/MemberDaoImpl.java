package howAbout.dao.member;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import howAbout.model.Member;
@Repository
public class MemberDaoImpl implements MemberDao {
	@Autowired
	private SqlSessionTemplate sst;
	
	@Override
	public int insert(Member member) {
		int result = 0;
		try {
			sst.insert("memberns.insert", member);
			result = 1;
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return result;
	}

	@Override
	public Member select(String mem_id) {
		return sst.selectOne("memberns.select", mem_id);
	}

	@Override
	public int addpoint(Member member) {
		return sst.update("memberns.addpoint", member);
	}

}
