package ptithcm.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import ptithcm.entity.SanPham;
import ptithcm.entity.Users;

@Transactional
@Controller
@RequestMapping("/users/")
public class UserController {
	@Autowired
	SessionFactory factory;
	List<Users> list;

	@RequestMapping("index")
	public String index(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "FROM Users";
		Query query = session.createQuery(hql);
		List<Users> list = query.list();
		model.addAttribute("user", list);
		return "users/index";
	}

	@RequestMapping(value = "insert", method = RequestMethod.GET)
	public String insert(ModelMap model) {
		model.addAttribute("user", new Users());
		return "users/insert";
	}

	@RequestMapping(value = "insert", method = RequestMethod.POST)
	public String insert(ModelMap model, @ModelAttribute("user") Users user, BindingResult errors) {	
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		if (user.getId_User().trim().length() == 0) {
			errors.rejectValue("id_User", "user", "Vui lòng nhập id admin!");
		}
		if (user.getUsername().trim().length() == 0) {
			errors.rejectValue("username", "user", "Vui lòng nhập Email!");
		}
		if (user.getPassword().trim().length() == 0) {
			errors.rejectValue("password", "user", "Vui lòng mật khẩu!");
		}
		if (errors.hasErrors()) {
			model.addAttribute("message", "Vui lòng sửa các lỗi sau đây !");
			return "users/insert";
		}
		String a = user.getId_User();
		try {
			user.setId_User(a);
			session.save(user);
			t.commit();
			model.addAttribute("message", "Thêm mới thành công !");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("aaaa" + e);
			t.rollback();
			model.addAttribute("message", "Thêm mới thất bại !");
		} finally {
			session.close();
		}
		return "users/insert";
	}

	@RequestMapping(value = "edit/{id_User}", method = RequestMethod.GET)
	public String edit(@PathVariable("id_User") String idUser, ModelMap model) {
		Session session = factory.getCurrentSession();
		Users user = (Users) session.get(Users.class, idUser);
		model.addAttribute("user", user);

		return "users/edit";
	}

	@RequestMapping(value = "edit/{id_User}", method = RequestMethod.POST)
	public String edit(ModelMap model, @ModelAttribute("user") Users user, BindingResult errors) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		if (user.getId_User().trim().length() == 0) {
			errors.rejectValue("id_User", "user", "Vui lòng nhập id admin!");
		}
		if (user.getUsername().trim().length() == 0) {
			errors.rejectValue("username", "user", "Vui lòng nhập Email!");
		}
		if (user.getPassword().trim().length() == 0) {
			errors.rejectValue("password", "user", "Vui lòng mật khẩu!");
		}
		if (errors.hasErrors()) {
			model.addAttribute("message", "Vui lòng sửa các lỗi sau đây !");
			return "users/insert";
		}
		try {
			session.update(user);
			t.commit();
			model.addAttribute("message", "Sửa thành công !");
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Sửa thất bại !");
		} finally {
			session.close();
		}
		return "users/edit";
	}

//		@RequestMapping(value = "admin2", method = RequestMethod.GET)
//		public String apply1(ModelMap model, HttpServletRequest request) {
//			model.addAttribute("user", new Users());
//			return "user/admin2";
//		}
//
//		@RequestMapping(value = "admin2", method = RequestMethod.POST)
//		public String apply1(ModelMap model, @ModelAttribute("user") Users user, BindingResult errors) {
//			if (user.getUsername().trim().length() == 0) {
//				errors.rejectValue("email", "user", "Vui lòng nhập tên đăng nhập.");
//			}
//			if (user.getPassword().trim().length() == 0) {
//				errors.rejectValue("matKhau", "user", "Vui lòng nhập mật khẩu.");
//			}
//			if (errors.hasErrors()) {
//				model.addAttribute("message", "Vui lòng sửa các lỗi sau!");
//				return "user/admin2";
//			}
//			Session session = factory.getCurrentSession();
//			String hql = "FROM User";
//			Query query = session.createQuery(hql);
//			@SuppressWarnings("unchecked")
//			List<Users> list = query.list();
//			for (int i = 0; i < list.size(); i++) {
//				if (user.getUsername().equals(list.get(i).getUsername()) && user.getPassword().equals(list.get(i).getPassword())) {
//					if (list.get(i).getRole()) {
//						model.addAttribute("fullname", "Administrator");
//						return "redirect:/index.htm";
//					} else {
//						model.addAttribute("fullname", list.get(i).getTenUser());
//						return "redirect:/indexAdmin.htm";
//					}
//				}
//			}
//		model.addAttribute("message", "Sai thông tin đăng nhập.");
//		return "user/admin2";
//	}

	@RequestMapping(value = "delete/{id_User}", method = RequestMethod.GET)
	public String delete(ModelMap model, @PathVariable("id_User") String idUser) {
		Session session = factory.openSession();
		Users user = (Users) session.get(Users.class, idUser);
		Transaction t = session.beginTransaction();
		try {
			session.delete(user);
			t.commit();
		} catch (Exception e) {
			t.rollback();
		} finally {
			session.close();
		}
		return "redirect:/users/index.htm";
	}
}
