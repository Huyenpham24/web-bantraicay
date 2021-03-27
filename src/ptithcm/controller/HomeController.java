package ptithcm.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ptithcm.entity.SanPham;
import ptithcm.entity.Users;

@Transactional
@Controller
//@RequestMapping("index")
public class HomeController {
//	@RequestMapping("index")
//	public String welcome(){
//		return "index";
//		}
//	@RequestMapping("index")
//	public class sanphamController {
	@Autowired
	SessionFactory factory;
	List<Users> list;

	@RequestMapping("trangchu")
	public String index(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "FROM Users";
		Query query = session.createQuery(hql);
		list = query.list();
		model.addAttribute("user", list);
		return "trangchu";
	}

	@RequestMapping("login")
	public String login(ModelMap model) {
		return "login";
	}

	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String apply(ModelMap model) {
		model.addAttribute("user", new Users());
		return "login";
	}

	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String apply(ModelMap model, @ModelAttribute("user") Users user) {
//		if(user.getUsername().trim().equals("admin")&& user.getPassword().trim().equals("")) {
//			return "redirect:/trangchu.htm";
//		}
		try {
			
			Session session = factory.getCurrentSession();
			String hql = "FROM Users acc WHERE acc.Username='" + user.getUsername()+ "' AND acc.Password='"
					+ user.getPassword() + "'";
			Query query = session.createQuery(hql);
			Users acc = (Users) query.uniqueResult();
			if(acc == null) {
				model.addAttribute("message", "Sai Tên đăng nhập hoặc Mật khẩu");
				return "login";
			}
//			model.addAttribute("listUser",list);
			//return "product/danhsach";
			return "redirect:/users/index.htm";
		} catch (Exception ex) {
			ex.printStackTrace();
			model.addAttribute("message", "Sai Tên đăng nhập hoặc Mật khẩu");
			return "login";
		}
	}
}
