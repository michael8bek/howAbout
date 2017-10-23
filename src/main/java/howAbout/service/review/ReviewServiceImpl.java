package howAbout.service.review;

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

}
