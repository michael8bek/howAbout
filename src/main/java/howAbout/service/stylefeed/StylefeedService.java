package howAbout.service.stylefeed;

import java.util.List;

import howAbout.model.Member;
import howAbout.model.Stylefeed;
import howAbout.model.Tsreply;

public interface StylefeedService {

	List<Stylefeed> feedlist();
	List<Stylefeed> myfeedlist(String mem_id);

	int feedWrite(Stylefeed sf);

	List<Stylefeed> feedDetail(int ts_id);
	List<Stylefeed> feedlist_orderLike();
	int feedReplyWrite(Tsreply tr);
	List<Stylefeed> feedlist_orderRecent();
	List tsReplyList();
	List<Stylefeed> feedReplyList(int ts_id);
	List feedReply(Stylefeed sf);

}
