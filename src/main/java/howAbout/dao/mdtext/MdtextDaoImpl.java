package howAbout.dao.mdtext;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import howAbout.model.Mdtext;

@Repository
public class MdtextDaoImpl implements MdtextDao {
	@Autowired
	private SqlSessionTemplate sst;
	@Override
	public List<Mdtext> list() {
		return sst.selectList("mdtextns.list");
	}
	@Override
	public List<Mdtext> best() {
		return sst.selectList("mdtextns.best");
	}
	@Override
	public int register(Mdtext mdtext) {
		
		return sst.insert("mdtextns.register", mdtext);
	}

}
