package howAbout.dao.stylefeed;

import java.util.List;

import howAbout.model.Stylefeed;

public interface StylefeedDao {

	List<Stylefeed> feedlist();

	int feedWrite(Stylefeed sf);

}
