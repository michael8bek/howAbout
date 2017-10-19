package howAbout.service.stylefeed;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import howAbout.dao.stylefeed.StylefeedDao;
import howAbout.model.Member;
import howAbout.model.Stylefeed;
import howAbout.model.Tsreply;


@Service
public class StylefeedServiceImpl implements StylefeedService {
	@Autowired
	private StylefeedDao sd;

	@Override
	public List<Stylefeed> feedlist() {
		return sd.feedlist();
	}

	@Override
	public int feedWrite(Stylefeed sf) {
		return sd.feedWrite(sf);
	}

	@Override
	public List<Stylefeed> feedDetail(int ts_id) {
		return sd.feedDetail(ts_id);
	}

	@Override
	public List<Stylefeed> myfeedlist(String mem_id) {
		return sd.myfeedlist(mem_id);
	}

	@Override
	public List<Stylefeed> feedlist_orderLike() {
		return sd.feedlist_orderLike();
	}

	@Override
	public int feedReplyWrite(Tsreply tr) {
		return sd.feedReplyWrite(tr);
	}

	@Override
	public List<Stylefeed> feedlist_orderRecent() {
		return sd.feedlist_orderRecent();
	}

	@Override
	public List tsReplyList() {
		return sd.tsReplyList();
	}

	@Override
	public List<Stylefeed> feedReplyList(int ts_id) {
		return sd.feedReplyList(ts_id);
	}

	@Override
	public List feedReply(Stylefeed sf) {
		return sd.feedReply(sf);
	}

}
