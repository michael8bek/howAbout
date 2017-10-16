package howAbout.dao.stylefeed;

import java.util.List;

import howAbout.model.Member;
import howAbout.model.Stylefeed;

public interface StylefeedDao {

	List<Stylefeed> feedlist();

	int feedWrite(Stylefeed sf);

	List<Stylefeed> feedDetail(int ts_id);

	List<Stylefeed> myfeedlist(String mem_id);

}
