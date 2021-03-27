package ptithcm.controller;

import java.io.File;
import java.util.List;

import javax.servlet.ServletContext;
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

@Transactional
@Controller
@RequestMapping("/sanpham/")
public class sanphamController {
	@Autowired
	SessionFactory factory;
	List<SanPham> list;

	@RequestMapping("index")
	public String index(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "FROM SanPham";
		Query query = session.createQuery(hql);
		List<SanPham> list = query.list();
		model.addAttribute("sanpham", list);
		return "sanpham/index";
	}

	@RequestMapping(value = "insert", method = RequestMethod.GET)
	public String insert(ModelMap model) {
		model.addAttribute("sanpham", new SanPham());
		return "sanpham/insert";
	}

	@Autowired
	ServletContext context;

	@RequestMapping(value = "insert", method = RequestMethod.POST)
	public String insert(ModelMap model, @Validated @ModelAttribute("sanpham") SanPham sp, BindingResult errors,
			@RequestParam("photo") MultipartFile photo) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		if (sp.getIdSP().trim().length() == 0) {
			errors.rejectValue("idSP", "sanpham", "Vui lòng nhập id sản phẩm!");
		}
		if (sp.getTenSP().trim().length() == 0) {
			errors.rejectValue("tenSP", "sanpham", "Vui lòng nhập tên sản phẩm!");
		}
		if (sp.getGia() == 0) {
			errors.rejectValue("gia", "sanpham", "Vui lòng nhập giá!");
		}
		if (sp.getSoLuong() == 0) {
			errors.rejectValue("soLuong", "sanpham", "Vui lòng nhập số lượng!");
		}
		if (sp.getMoTa().trim().length() == 0) {
			errors.rejectValue("moTa", "sanpham", "Vui lòng nhập mô tả!");
		}
		if (photo.isEmpty()) {
			errors.rejectValue("hinhSP", "sanpham", "Vui lòng chọn file !");
		}
		if (errors.hasErrors()) {
			model.addAttribute("message", "Vui lòng sửa các lỗi sau đây !");
			return "sanpham/insert";
		}
		try {
			sp.setHinhSP(photo.getOriginalFilename());
			session.save(sp);
			t.commit();
			String photoPath = context.getRealPath("/img/" + photo.getOriginalFilename());
			// photo.transferTo(new File(photoPath));
			model.addAttribute("message", "Thêm mới thành công !");
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Thêm mới thất bại !");
		} finally {
			session.close();
		}
		return "sanpham/insert";
	}

	@RequestMapping(value = "delete/{idSP}", method = RequestMethod.GET)
	public String delete(ModelMap model, @PathVariable("idSP") String idSP) {
		Session session = factory.openSession();
		SanPham sanpham = (SanPham) session.get(SanPham.class, idSP);
		Transaction t = session.beginTransaction();
		try {
			session.delete(sanpham);
			t.commit();
			model.addAttribute("message", "Xóa thành công ");
		} catch (Exception e) {
			t.rollback();
			e.printStackTrace();
			model.addAttribute("message", "Xóa thất bại");
		}
		return "redirect:/sanpham/index.htm";
	}

//	@ModelAttribute("GioHang")
//	public List<LoaiSach> getLoaiSachs() {
//		Session session = factory.getCurrentSession();
//		String hql = "FROM LoaiSach";
//		Query query = session.createQuery(hql);
//		List<LoaiSach> list = query.list();
//		return list;
//	}
	@RequestMapping(value = "edit/{idSP}", method = RequestMethod.GET)
	public String edit(@PathVariable("idSP") String idSP, ModelMap model) {
		Session session = factory.getCurrentSession();
		SanPham sp = (SanPham) session.get(SanPham.class, idSP);
		model.addAttribute("sanpham", sp);

		return "sanpham/edit";
	}
	@RequestMapping(value = "edit/{idSP}", method = RequestMethod.POST)
	public String edit(ModelMap model, @ModelAttribute("sanpham") SanPham sp,BindingResult errors, @RequestParam("photo") MultipartFile photo
			) {

		if (sp.getTenSP().trim().length() == 0) {
			errors.rejectValue("tenSP", "sanpham", "Vui lòng nhập tên sản phẩm!");
		}
		if (sp.getGia() == 0) {
			errors.rejectValue("gia", "sanpham", "Vui lòng nhập giá!");
		}
		if (sp.getSoLuong() == 0) {
			errors.rejectValue("soLuong", "sanpham", "Vui lòng nhập số lượng!");
		}
		if (sp.getMoTa().trim().length() == 0) {
			errors.rejectValue("moTa", "sanpham", "Vui lòng nhập mô tả!");
		}
		if (photo.isEmpty()) {
			errors.rejectValue("hinhSP", "sanpham", "Vui lòng chọn file !");
		}
		if (errors.hasErrors()) {
			model.addAttribute("message", "Vui lòng sửa các lỗi sau đây !");
			return "sanpham/edit";
		}
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			sp.setHinhSP(photo.getOriginalFilename());
			session.update(sp);
			t.commit();
			String photoPath = context.getRealPath("/img/" + photo.getOriginalFilename());
			photo.transferTo(new File(photoPath));
			model.addAttribute("message", "Sửa thành công!");
		} catch (Exception e) {
			t.rollback();
			e.printStackTrace();
			model.addAttribute("message", "Sửa thất bại !\n" + e.toString());
		} finally {
			session.close();
		}
		return "sanpham/edit";
	}

}
