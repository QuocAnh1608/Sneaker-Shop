package Serlvet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import Dao.ProductDao;
import Units.sanpham;
import sh.CookieUtils;


/**
 * Servlet implementation class CartServlet
 */
@WebServlet("/Cart")
public class AddTocCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ProductDao pdao = new ProductDao();
		
		
		String id = request.getParameter("id");
		String masp = pdao.findbyid(id).getMasp();
		
		CookieUtils.add(id, masp, 60*60*24, response);
		
		response.sendRedirect("Product");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

}
