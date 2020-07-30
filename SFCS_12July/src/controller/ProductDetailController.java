package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Category;
import model.Product;
import model.Stall;
import service.CategoryService;
import service.ProductService;
import service.StallService;
import service.impl.CategoryServiceImpl;
import service.impl.ProductServiceImpl;
import service.impl.StallServiceImpl;
@WebServlet(urlPatterns="/product/detail")
public class ProductDetailController extends HttpServlet {
	ProductService productService = new ProductServiceImpl();
	CategoryService categoryService = new CategoryServiceImpl();
	StallService stallService = new StallServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		Product product = productService.get(Integer.parseInt(id));
		List<Category> categories = categoryService.getAll();
		List<Stall> stalls = stallService.getAll();
		
		req.setAttribute("categories", categories);
		req.setAttribute("product", product);
		req.setAttribute("stalls", stalls); 
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/client/view/product-detail.jsp");
		dispatcher.forward(req, resp);
	}

}
