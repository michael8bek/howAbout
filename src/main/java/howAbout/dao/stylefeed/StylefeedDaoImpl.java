package howAbout.dao.stylefeed;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import howAbout.model.Stylefeed;

@Repository
public class StylefeedDaoImpl implements StylefeedDao{
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public List<Stylefeed> feedlist() {
		return sst.selectList("feedlist");
	}

	@Override
	public int feedWrite(Stylefeed sf) {
		return sst.insert("feedWrite",sf);
	}
}
