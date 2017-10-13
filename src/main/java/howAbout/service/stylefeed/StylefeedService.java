package howAbout.service.stylefeed;

import java.util.List;

import howAbout.model.Stylefeed;

public interface StylefeedService {

	List<Stylefeed> feedlist();

	int feedWrite(Stylefeed sf);

}
