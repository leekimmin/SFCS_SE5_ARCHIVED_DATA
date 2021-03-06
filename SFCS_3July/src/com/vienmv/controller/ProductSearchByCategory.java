package com.vienmv.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.vienmv.model.Product;
import com.vienmv.service.ProductService;
import com.vienmv.service.impl.ProductServiceImpl;
@WebServlet(urlPatterns="/product/category")
public class ProductSearchByCategory extends HttpServlet {
	ProductService productService=new ProductServiceImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String cate_id=req.getParameter("cate_id");
		List<Product> productSearchByCategory =productService.searchByCategory(Integer.parseInt(cate_id));
		req.setAttribute("productSearchByCategory", productSearchByCategory);
		req.getRequestDispatcher("/view/client/view/productSearchByCategory.jsp").forward(req, resp);
	}
}
