package com.fssa.spartansmt.product;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.spartansmt.exception.DAOException;
import com.fssa.spartansmt.exception.InvalidStoreDetailsException;
import com.fssa.spartansmt.model.Store;
import com.fssa.spartansmt.service.StoreService;

/**
 * Servlet implementation class AddProductDetailsServlet
 */
@WebServlet("/AddProductDetailsServlet")
public class AddProductDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddProductDetailsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// doGet(request, response);
		
		String productTitle = request.getParameter("productTitle");
		String productCategory = request.getParameter("productCategory");
		String productLogo = request.getParameter("productLogo");
		
		PrintWriter out = response.getWriter();
		
		StoreService storeService = new StoreService();
		try {
			// TODO: Change store to product
			Store store = new Store(productTitle, productCategory, productLogo);
			boolean isadded = storeService.addStore(store);
			
			if(isadded) {
				out.println("<h1>Successfully added store details</h1>");
			}
			
		}catch (DAOException | InvalidStoreDetailsException e) {
			e.getMessage();
		}
		
		RequestDispatcher dis = request.getServletContext().getRequestDispatcher("/GetStoreDetailsServlet");
		dis.include(request, response);
		
	}

}
