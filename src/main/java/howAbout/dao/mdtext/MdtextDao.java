package howAbout.dao.mdtext;

import java.util.List;

import howAbout.model.Mdtext;

public interface MdtextDao {

	List<Mdtext> list();

	List<Mdtext> best();

	int register(Mdtext mdtext);

}
