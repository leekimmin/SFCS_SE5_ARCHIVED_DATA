package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Product;
import service.ProductService;
import service.impl.ProductServiceImpl;

@WebServlet(urlPatterns="/product/stall")
public class ProductSearchByStall extends HttpServlet {
	ProductService productService=new ProductServiceImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String stall_id = req.getParameter("stall_id");
		List<Product> productSearchByStall = productService.searchByStall(Integer.parseInt(stall_id));
		req.setAttribute("productSearchByStall", productSearchByStall);
		req.getRequestDispatcher("/view/client/view/productSearchByStall.jsp").forward(req, resp);
	}
}
