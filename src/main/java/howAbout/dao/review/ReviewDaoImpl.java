package howAbout.dao.review;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import howAbout.model.Review;

@Repository
public class ReviewDaoImpl implements ReviewDao {
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public int insert(Review review) {
		return sst.insert("reviewns.insert", review);
	}

	@Override
	public List<Review> reviewList(String mem_id) {
		return sst.selectList("reviewns.reviewList", mem_id);
	}
}
