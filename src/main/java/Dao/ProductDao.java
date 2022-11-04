package Dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

import Units.sanpham;
import sh.Jpautils;


public class ProductDao {
	EntityManager em = Jpautils.getEnitManager();
	EntityTransaction tran = em.getTransaction();
	public List<sanpham> findAll()
	{
		String al = "Select o from sanpham o ";
		TypedQuery<sanpham> query = em.createQuery(al,sanpham.class);
		
		return query.getResultList();
	}
	public sanpham findbyid(String masp)
	{
		sanpham sp = em.find(sanpham.class, masp);
		return sp;
	}
	public List<sanpham> findByMasp(String tensp)
	{
		String sql = "Select o from sanpham o where o.masp =? 0";
		TypedQuery<sanpham> query = em.createQuery(sql,sanpham.class);
		query.setParameter(0, tensp);
		return query.getResultList();
	}
	public void create(sanpham sp)
	{
		try {
			tran.begin();
			em.persist(sp);
			tran.commit();
		} catch (Exception e) {
			// TODO: handle exception
			tran.rollback();
		}
		em.close();
	}
	public void update(sanpham sp)
	{
		try {
			tran.begin();
			
			em.merge(sp);
			tran.commit();
		} catch (Exception e) {
			// TODO: handle exception
			tran.rollback();
		}em.close();
	}
	public void delete(String id)
	{
		sanpham sp = em.find(sanpham.class, id);
		
		try {
			tran.begin();
			em.remove(sp);
			tran.commit();
		} catch (Exception e) {
			// TODO: handle exception
			tran.rollback();
		}em.close();
		
	}

}
