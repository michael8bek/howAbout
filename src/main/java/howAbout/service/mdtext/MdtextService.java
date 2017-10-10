package howAbout.service.mdtext;

import java.util.List;

import howAbout.model.mdtext.Mdtext;

public interface MdtextService {

	List<Mdtext> list();
	List<Mdtext> best();
}
