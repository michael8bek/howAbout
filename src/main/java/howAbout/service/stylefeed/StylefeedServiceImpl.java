package howAbout.service.stylefeed;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import howAbout.dao.stylefeed.StylefeedDao;
import howAbout.model.Member;
import howAbout.model.Stylefeed;


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
}
