package howAbout.dao.stylefeed;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import howAbout.model.Member;
import howAbout.model.Stylefeed;
import howAbout.model.Tsreply;

@Repository
public class StylefeedDaoImpl implements StylefeedDao{
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public List<Stylefeed> feedlist() {
		return sst.selectList("stylefeedns.feedlist");
	}

	@Override
	public int feedWrite(Stylefeed sf) {
		return sst.insert("stylefeedns.feedWrite",sf);
	}

	@Override
	public List<Stylefeed> feedDetail(int ts_id) {
		return sst.selectList("stylefeedns.feedDetail", ts_id);
	}

	@Override
	public List<Stylefeed> myfeedlist(String mem_id) {
		return sst.selectList("stylefeedns.myfeedlist",mem_id);
	}

	@Override
	public List<Stylefeed> feedlist_orderLike() {
		return sst.selectList("stylefeedns.feedlist_orderLike");
	}

	@Override
	public int feedReplyWrite(Tsreply tr) {
		sst.insert("feedreplyWrite",tr);
		return sst.insert("tsreplyns.tsreply_write",tr);
	}

	@Override
	public List<Stylefeed> feedlist_orderRecent() {
		return sst.selectList("stylefeedns.feedlist_orderRecent");
	}

	@Override
	public List tsReplyList() {
		return sst.selectList("stylefeedns.tsReplyList");
	}
}
