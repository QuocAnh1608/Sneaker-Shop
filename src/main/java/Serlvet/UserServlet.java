package Serlvet;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import Units.User;

import Dao.UserDao;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet({ "/User","/insert","/update","/reset","/delete","/edit" })
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		UserDao dao = new UserDao();
		List<User> us = dao.findall();
		request.setAttribute("users", us);
		String uri = request.getRequestURI();
		if (uri.contains("edit")) {
			String id = request.getParameter("id");
			request.setAttribute("fill", dao.findbyId(id));
		}
		request.getRequestDispatcher("/views/table.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		User user = new User();
		String uri = request.getRequestURI();
		UserDao userD = new UserDao();
		try {
			BeanUtils.populate(user, request.getParameterMap());
			if (uri.contains("insert")) {
				insert(request, response);
			} else if(uri.contains("update")) {
				update(request, response);
			}
			else if(uri.contains("delete")) {
				delete(request, response);
			}
			else if(uri.contains("reset")) {
				request.setAttribute("fill",null);
			}
			request.setAttribute("user",userD.findall());
			request.getRequestDispatcher("/views/table.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		User user = new User();
		UserDao userD = new UserDao();
		try {
			BeanUtils.populate(user, request.getParameterMap());
			userD.create(user);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		User user = new User();
		UserDao userD = new UserDao();
		try {
			BeanUtils.populate(user, request.getParameterMap());
			userD.update(user);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
			UserDao userD = new UserDao();
			String id = request.getParameter("id");
			userD.delete(id);
	}

}
