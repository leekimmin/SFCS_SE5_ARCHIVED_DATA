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
@WebServlet(urlPatterns="/product/search")
public class ProductSearchByName extends HttpServlet {
	ProductService productService=new ProductServiceImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name=req.getParameter("name");
		List<Product> productSearchByName =productService.searchByName(name);
		req.setAttribute("productSearchByName", productSearchByName);
		req.getRequestDispatcher("/view/client/view/productSearchByName.jsp").forward(req, resp);
	}
}
