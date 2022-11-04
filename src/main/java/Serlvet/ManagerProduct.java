package Serlvet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import Dao.ProductDao;
import Dao.UserDao;
import Units.User;
import Units.sanpham;

/**
 * Servlet implementation class ManagerProduct
 */
@WebServlet( {"/Manager","/editt","/add","/up","/remove","/rexet"} )
public class ManagerProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		ProductDao dao = new ProductDao();
		List<sanpham> sp = dao.findAll();
		request.setAttribute("product",sp);
		String uri = request.getRequestURI();
		if (uri.contains("edit")) {
			String id = request.getParameter("masp");
			request.setAttribute("fill", dao.findbyid(id));
		}
		request.getRequestDispatcher("/views/Item.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		sanpham sp = new sanpham();
		String uri = request.getRequestURI();
		ProductDao dao = new ProductDao();
		try {
			BeanUtils.populate(sp, request.getParameterMap());
			{
				if(uri.contains("add"))
				{
					insert(request, response);
				}else if(uri.contains("up")) {
					update(request, response);
				}else if(uri.contains("remove")) {
					delete(request, response);
				}else if(uri.contains("rexet")) {
					request.setAttribute("fill",null);
				}
				request.setAttribute("product",dao.findAll());
				request.getRequestDispatcher("/views/Item.jsp").forward(request, response);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

//	@Override
//	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		String urf = req.getRequestURI();
//		if(urf.contains("user"))
//		{
//			req.setAttribute("view","views/table.jsp");
//		}
//		req.getRequestDispatcher("/views/Item.jsp").forward(req, resp);
//	}
	public void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		ProductDao dao = new ProductDao();
		sanpham sp = new sanpham();
		try {
			BeanUtils.populate(sp, request.getParameterMap());
			dao.create(sp);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	public void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		ProductDao dao = new ProductDao();
		sanpham sp = new sanpham();
		try {
			BeanUtils.populate(sp, request.getParameterMap());
			dao.update(sp);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	public void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String masp = request.getParameter("masp");
		ProductDao dao = new ProductDao();
		dao.delete(masp);
	}
}
