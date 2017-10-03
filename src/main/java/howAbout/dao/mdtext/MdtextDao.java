package howAbout.dao.mdtext;

import java.util.List;

import howAbout.model.mdtext.Mdtext;

public interface MdtextDao {

	List<Mdtext> list();

	List<Mdtext> best();

}
