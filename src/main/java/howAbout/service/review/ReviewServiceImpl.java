package howAbout.service.review;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import howAbout.dao.review.ReviewDao;
import howAbout.model.Review;
@Service
public class ReviewServiceImpl implements ReviewService {
	@Autowired
	private ReviewDao rd;
	@Override
	public int insert(Review review) {
		return rd.insert(review);
	}
	@Override
	public List<Review> reviewList(String mem_id) {
		return rd.reviewList(mem_id);
	}

}
