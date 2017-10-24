package howAbout.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import howAbout.model.Cart;
import howAbout.model.Couponlist;
import howAbout.model.Goods;
import howAbout.model.Member;
import howAbout.model.Payment;
import howAbout.model.Review;
import howAbout.model.Stock;
import howAbout.service.cart.CartService;
import howAbout.service.couponlist.CouponlistService;
import howAbout.service.member.MemberService;
import howAbout.service.payment.PaymentService;
import howAbout.service.review.ReviewService;
import howAbout.service.stock.StockService;

@Controller
public class PaymentController {
	@Autowired
	private PaymentService ps;
	@Autowired
	private CartService cs;
	@Autowired
	private StockService ss;
	@Autowired
	private CouponlistService cls;
	@Autowired
	private MemberService ms;
	@Autowired
	private ReviewService rs;

	@RequestMapping("payInsert")
	public String payInsert(Member member,Payment payment, Model model, HttpSession session,HttpServletRequest request ) {
		payment.setMem_id((String)session.getAttribute("mem_id"));
		String memberName = payment.getMem_id();

		/*결제 했을때 장바구니 상태 = 'done'으로 변경*/
		String cart_id[] = request.getParameterValues("cart_id");
		int result1 = 0;
		if (cart_id.length > 0) {
			for (int i = 0; i < cart_id.length; i++) {
				cs.payment(cart_id[i]);
			}
			result1 = 1;
		}
		/*마일리지 구매금액의 10%*/
		Member mem = ms.select((String)session.getAttribute("mem_id"));
		int usePoint = payment.getMem_usepoint();
		int point = (int)(payment.getPay_total() * 0.1+(int)mem.getMem_point() - usePoint);
		int addpoint = ms.addpoint(point, memberName);

		/*포인트 사용시 보유 포인트에서 차감*/
		/*Member member = new Member();
		int mem_point = (int)session.getAttribute("mem_point")-(int)request.getAttribute("mem_usepoint");
		member.setMem_point(mem_point);
		member.setMem_id((String)session.getAttribute("mem_id"));
		ms.pointUse(member);
		System.out.println(mem_point);*/

		int cplistId= cls.update(payment.getCplist_id());
		int result = ps.insert(payment);
		int result3 = ss.update(payment);
		model.addAttribute("result", result);
		model.addAttribute("result1", result1);
		model.addAttribute("result3", result3);
		model.addAttribute("cplistId", cplistId);
		model.addAttribute("addpoint", addpoint);
		return "pay/payment";
	}
	@RequestMapping("payList")
	public String payList(Model model, HttpSession session) {
		List<Cart> cartList = cs.payList((String) session.getAttribute("mem_id"));
		List<Payment> paymentList = ps.paymentList((String) session.getAttribute("mem_id"));
		
		model.addAttribute("cartList",cartList);
		model.addAttribute("paymentList",paymentList);
		
		return "pay/payList";
	}
	@RequestMapping("reviewForm")
	public String reviewForm(Model model, int pay_id) {
		model.addAttribute("pay_id",pay_id);
		return "pay/reviewForm";
	}
	@RequestMapping("review")
	public String review(Review review , Model model) {
		int result = rs.insert(review);
		model.addAttribute("result",result);
		return "pay/review";
	}
}
