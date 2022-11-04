package Dao;

import java.util.List;

import javax.persistence.EntityManager;

import javax.persistence.EntityTransaction;

import javax.persistence.TypedQuery;

import Units.User;
import sh.Jpautils;

public class UserDao {
	EntityManager em = Jpautils.getEnitManager();
	EntityTransaction tran = em.getTransaction();

	protected void finalize() throws Throwable {
		em.close();
	}

	public List<User> findall() {
		String usa = "Select o from User o";
		TypedQuery<User> query = em.createQuery(usa, User.class);
//			List<User> list = query.getResultList();
		return query.getResultList();

	}

	public void create(User users) {
		try {
			tran.begin();
			em.persist(users);
			tran.commit();

		} catch (Exception e) {
			// TODO: handle exception
			tran.rollback();
		}
		em.close();
	}

	public User findbyId(String username) {
		return em.find(User.class, username);
	}

	public void update(User users) {
		try {
			em.getTransaction().begin();
			em.merge(users);
			em.getTransaction().commit();

		} catch (Exception e) {
			// TODO: handle exception
			em.getTransaction().rollback();
		}
		em.close();
	}

	public void delete(String id) {
		User users = em.find(User.class, id);
		try {
			tran.begin();
			em.remove(users);
			tran.commit();
		} catch (Exception e) {
			tran.rollback();
			e.printStackTrace();
		}
		em.close();

	}
	

}
