package Serlvet;

import java.io.IOException;
import java.util.List;

import javax.persistence.Embeddable;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.engine.jdbc.dialect.spi.DatabaseMetaDataDialectResolutionInfoAdapter;

import Dao.UserDao;
import Units.User;

/**
 * Servlet implementation class HomeSerlvet
 */
@WebServlet({ "/login", "/sign-up", "/sign-out"})
public class HomeSerlvet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("/views/login.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		String tk = request.getParameter("username");
		String pass = request.getParameter("passwords");
		try {
			UserDao dao = new UserDao();			
			List<User> users = dao.findall();
			User user = dao.findbyId(tk);
			if (!user.getPasswords().equals(pass)) {
				request.setAttribute("mess", "Sai thông tin");
			} else {
				request.setAttribute("mess", "Đăng nhập thành công");
				request.setAttribute("users", users);
				request.setAttribute("user", user);
				request.getRequestDispatcher("/views/table.jsp").forward(request, response);
			}

		} catch (Exception e) {
			// TODO: handle exception
			request.setAttribute("mess", "Sai tên đăng nhập");
		}
		request.getRequestDispatcher("/views/login.jsp").include(request, response);
	}

}
