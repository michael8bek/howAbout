package howAbout.dao.stylefeed;

import java.util.HashMap;
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
	public List feedReplyWrite(Stylefeed sf) {
		sst.insert("stylefeedns.feedreplyWrite",sf);
		sst.insert("stylefeedns.tsreply_write",sf);
		return sst.selectList("stylefeedns.replycount", sf);
	}

	@Override
	public List<Stylefeed> feedlist_orderRecent() {
		return sst.selectList("stylefeedns.feedlist_orderRecent");
	}

	@Override
	public List tsReplyList() {
		return sst.selectList("stylefeedns.tsReplyList");
	}

	@Override
	public List<Stylefeed> feedReplyList(int ts_id) {
		return sst.selectList("stylefeedns.feedReplyList", ts_id);
	}

	@Override
	public List feedReply(Stylefeed sf) {
		System.out.println(sf.getReply_id());
		System.out.println(sf.getTs_id());
		return sst.selectList("stylefeedns.feedReply",sf);
	}

	@Override
	public List feedmore_recent(int startRow, int endRow) {
		HashMap<String, Integer> map = new HashMap<>();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		return sst.selectList("stylefeedns.feedmore_recent",map);
	}

	@Override
	public int feedcount() {
		return sst.selectOne("stylefeedns.feedcount");
	}

	@Override
	public int feedlike(int ts_id) {
		sst.update("stylefeedns.feedlike", ts_id);
		return sst.selectOne("stylefeedns.feedlike_result", ts_id);
	}

	@Override
	public List feedsearch(String search) {
		return sst.selectList("stylefeedns.feedsearch",search);
	}

	@Override
	public List feedDetailDft(int ts_id) {
		return sst.selectList("stylefeedns.feedDetail_default",ts_id);
	}

	@Override
	public void feedRead(int ts_id) {
		sst.update("stylefeedns.feedRead",ts_id);
	}

	@Override
	public List allreplycount() {
		return sst.selectList("stylefeedns.allreplycount");
	}

	@Override
	public List memberInfo(String mem_id) {
		return sst.selectList("stylefeedns.memberInfo", mem_id);
	}

	@Override
	public List reviewList() {
		return sst.selectList("stylefeedns.reviewList");
	}

	@Override
	public List goodsList() {
		return sst.selectList("stylefeedns.goodsList");
	}

	@Override
	public List reviewDetail(int goods_id) {
		return sst.selectList("stylefeedns.reviewDetail", goods_id);
	}
}
