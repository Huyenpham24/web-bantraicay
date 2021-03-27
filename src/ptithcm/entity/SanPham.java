package ptithcm.entity;

import java.util.Collection;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "SanPham")
public class SanPham {
	@Id
	private String IdSP;
	private String TenSP;
	private float Gia;
	private float SoLuong;
	private String HinhSP;
	private String MoTa;
	@OneToMany(mappedBy = "sanpham", fetch = FetchType.EAGER)
	private Collection<GioHang> giohang;
	public String getIdSP() {
		return IdSP;
	}
	public void setIdSP(String idSP) {
		IdSP = idSP;
	}
	public String getTenSP() {
		return TenSP;
	}
	public void setTenSP(String tenSP) {
		TenSP = tenSP;
	}
	public float getGia() {
		return Gia;
	}
	public void setGia(float gia) {
		Gia = gia;
	}
	public float getSoLuong() {
		return SoLuong;
	}
	public void setSoLuong(float soLuong) {
		SoLuong = soLuong;
	}
	public String getHinhSP() {
		return HinhSP;
	}
	public void setHinhSP(String hinhSP) {
		HinhSP = hinhSP;
	}
	public String getMoTa() {
		return MoTa;
	}
	public void setMoTa(String moTa) {
		MoTa = moTa;
	}
	public Collection<GioHang> getGiohang() {
		return giohang;
	}
	public void setGiohang(Collection<GioHang> giohang) {
		this.giohang = giohang;
	}
	public SanPham(String idSP, String tenSP, float gia,float soLuong, String hinhSP, String moTa, Collection<GioHang> giohang) {
		IdSP = idSP;
		TenSP = tenSP;
		Gia = gia;
		SoLuong = soLuong;
		HinhSP = hinhSP;
		MoTa = moTa;
		this.giohang = giohang;
	}
	public SanPham() {
		
	}
	
}
