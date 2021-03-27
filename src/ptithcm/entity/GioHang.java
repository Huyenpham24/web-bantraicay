package ptithcm.entity;


import java.util.Date;

import javax.persistence.Entity;

import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "GioHang")
public class GioHang {
	@Id
	private int Id;
//	private String IdSanPham;
	private float Soluong;
	private int SoDienThoai;
	private String DiaChi;
	private String TenNguoiNhan;
	private String Email;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "MM/dd/yyyy")
	private Date TimeDatHang;
	@ManyToOne
	@JoinColumn(name = "IdSanPham")
	private SanPham sanpham;
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
//	public String getIdSanPham() {
//		return IdSanPham;
//	}
//	public void setIdSanPham(String idSanPham) {
//		IdSanPham = idSanPham;
//	}
	public float getSoluong() {
		return Soluong;
	}
	public void setSoluong(float soluong) {
		Soluong = soluong;
	}
	public int getSoDienThoai() {
		return SoDienThoai;
	}
	public void setSoDienThoai(int soDienThoai) {
		SoDienThoai = soDienThoai;
	}
	public String getDiaChi() {
		return DiaChi;
	}
	public void setDiaChi(String diaChi) {
		DiaChi = diaChi;
	}
	public String getTenNguoiNhan() {
		return TenNguoiNhan;
	}
	public void setTenNguoiNhan(String tenNguoiNhan) {
		TenNguoiNhan = tenNguoiNhan;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public Date getTimeDatHang() {
		return TimeDatHang;
	}
	public void setTimeDatHang(Date timeDatHang) {
		TimeDatHang = timeDatHang;
	}
	public SanPham getSanpham() {
		return sanpham;
	}
	public void setSanpham(SanPham sanpham) {
		this.sanpham = sanpham;
	}
	public GioHang(int id, String idSanPham, float soluong, int soDienThoai, String diaChi, String tenNguoiNhan,String email,
			Date timeDatHang, SanPham sanpham) {
		Id = id;
//		IdSanPham = idSanPham;
		Soluong = soluong;
		SoDienThoai = soDienThoai;
		DiaChi = diaChi;
		TenNguoiNhan = tenNguoiNhan;
		Email = email;
		TimeDatHang = timeDatHang;
		this.sanpham = sanpham;
	}
	public GioHang() {
		
	}
	
}
	