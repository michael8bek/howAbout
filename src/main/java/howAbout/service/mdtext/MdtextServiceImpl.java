package howAbout.service.mdtext;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import howAbout.dao.mdtext.MdtextDao;
import howAbout.model.Mdtext;

@Service
public class MdtextServiceImpl implements MdtextService{
	@Autowired
	private MdtextDao md;

	@Override
	public List<Mdtext> list() {
		return md.list();
	}

	@Override
	public List<Mdtext> best() {
		return md.best();
	}

	@Override
	public int register(Mdtext mdtext) {
		return md.register(mdtext);
	}
	
}
