package howAbout.dao.stylefeed;

import java.util.List;

import howAbout.model.Member;
import howAbout.model.Stylefeed;
import howAbout.model.Tsreply;

public interface StylefeedDao {

	List<Stylefeed> feedlist();

	int feedWrite(Stylefeed sf);

	List<Stylefeed> feedDetail(int ts_id);

	List<Stylefeed> myfeedlist(String mem_id);

	List<Stylefeed> feedlist_orderLike();

	List feedReplyWrite(Stylefeed sf);

	List<Stylefeed> feedlist_orderRecent();

	List tsReplyList();

	List<Stylefeed> feedReplyList(int ts_id);

	List feedReply(Stylefeed sf);

	List feedmore_recent(int startRow, int endRow);

	int feedcount();

	int feedlike(int ts_id);

	List feedsearch(String search);

	List feedDetailDft(int ts_id);

	void feedRead(int ts_id);

	List allreplycount();

	List memberInfo(String mem_id);

	List reviewList();

	List goodsList();

	List reviewDetail(int goods_id);

}
