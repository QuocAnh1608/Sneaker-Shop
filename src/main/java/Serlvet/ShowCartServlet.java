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


@WebServlet("/ShowCart")
public class ShowCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		ProductDao pdao = new ProductDao();
		
		// TODO Auto-generated method stub
		List<sanpham> listsp = new ArrayList<sanpham>();
		List<sanpham> listSanp = pdao.findAll();
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (int j = 0 ; j < cookies.length ; j ++) {	
				for (int i = 0; i < listSanp.size(); i++) {
					if(cookies[j].getValue().equalsIgnoreCase(listSanp.get(i).getMasp()))
					listsp.add(pdao.findbyid(cookies[j].getValue()));
				}
					
				
			}
		}
		
		request.setAttribute("lo", listsp);
		request.getRequestDispatcher("/views/cart.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

	}

}
