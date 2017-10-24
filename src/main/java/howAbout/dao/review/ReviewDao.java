package howAbout.dao.review;

import java.util.List;

import howAbout.model.Review;

public interface ReviewDao {

	int insert(Review review);

	List<Review> reviewList(String mem_id);

}
