package howAbout.service.review;

import java.util.List;

import howAbout.model.Review;

public interface ReviewService {

	int insert(Review review);

	List<Review> reviewList(String mem_id);

}
