package sh;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;



public class Jpautils {
	private static EntityManagerFactory factory;
	public static EntityManager getEnitManager() {
		if(factory==null || !factory.isOpen() ) {
			factory = Persistence.createEntityManagerFactory("Sneaker");
		}
		return factory.createEntityManager();
	}
	
	public static void shutdown() {
		if(factory!=null && factory.isOpen()) {
			factory.close();
		}
		factory = null;
	}
	
}
