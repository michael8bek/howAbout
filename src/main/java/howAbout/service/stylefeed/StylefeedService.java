package howAbout.service.stylefeed;

import java.util.List;

import howAbout.model.Member;
import howAbout.model.Stylefeed;

public interface StylefeedService {

	List<Stylefeed> feedlist();
	List<Stylefeed> myfeedlist(String mem_id);

	int feedWrite(Stylefeed sf);

	List<Stylefeed> feedDetail(int ts_id);

}
