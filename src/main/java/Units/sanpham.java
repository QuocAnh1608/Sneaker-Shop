package Units;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "sanpham")
public class sanpham {
	@Id
	@Column(name = "masp")
	String masp;
	@Column(name = "tensp")
	String tensp;
	@Column(name = "giasp")
	String giasp;
	@Column(name = "mota")
	String mota;
	@Column(name = "hinh")
	String hinh;
	@Column(name = "soluong")
	String soluong;
	@Column(name = "madm")
	String madm;
	public String getMasp() {
		return masp;
	}
	public void setMasp(String masp) {
		this.masp = masp;
	}
	public String getTensp() {
		return tensp;
	}
	public void setTensp(String tensp) {
		this.tensp = tensp;
	}
	public String getGiasp() {
		return giasp;
	}
	public void setGiasp(String giasp) {
		this.giasp = giasp;
	}
	public String getMota() {
		return mota;
	}
	public void setMota(String mota) {
		this.mota = mota;
	}
	
	public String getHinh() {
		return hinh;
	}
	public void setHinh(String hinh) {
		this.hinh = hinh;
	}
	public String getSoluong() {
		return soluong;
	}
	public void setSoluong(String soluong) {
		this.soluong = soluong;
	}
	public String getMadm() {
		return madm;
	}
	public void setMadm(String madm) {
		this.madm = madm;
	}
	
}
