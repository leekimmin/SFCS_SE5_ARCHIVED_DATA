package controller.admin;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import model.Category;
import model.Product;
import model.User;
import service.CategoryService;
import service.ProductService;
import service.UserService;
import service.impl.CategoryServiceImpl;
import service.impl.ProductServiceImpl;
import service.impl.UserServiceImpl;

@WebServlet(urlPatterns = { "/admin/product/list" })
public class ProductListController extends HttpServlet {
	ProductService productService = new ProductServiceImpl();
	CategoryService cateService = new CategoryServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Product> proList = productService.getAll();
		req.setAttribute("proList", proList);
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/admin/view/list-product.jsp");
		dispatcher.forward(req, resp);
	}

}
