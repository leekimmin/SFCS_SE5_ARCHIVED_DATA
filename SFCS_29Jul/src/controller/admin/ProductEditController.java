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
import org.apache.taglibs.standard.tag.common.fmt.RequestEncodingSupport;

import model.Category;
import model.Product;
import model.Stall;
import model.User;
import service.CategoryService;
import service.ProductService;
import service.StallService;
import service.UserService;
import service.impl.CategoryServiceImpl;
import service.impl.ProductServiceImpl;
import service.impl.StallServiceImpl;
import service.impl.UserServiceImpl;

@WebServlet(urlPatterns = { "/admin/product/edit" })
public class ProductEditController extends HttpServlet {
	ProductService productService = new ProductServiceImpl();
	CategoryService categoryService = new CategoryServiceImpl();
	StallService stallService = new StallServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html; charset=UTF-8");
		req.setCharacterEncoding("UTF-8");
		
		String id = req.getParameter("id");
		Product product = productService.get(Integer.parseInt(id));
		List<Category> categories = categoryService.getAll();
		List<Stall> stalls = stallService.getAll();

		req.setAttribute("categories", categories);
		req.setAttribute("stalls", stalls); 
		req.setAttribute("product", product);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/admin/view/edit-product.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html; charset=UTF-8");
		req.setCharacterEncoding("UTF-8");
		
		Product product = new Product();
		DiskFileItemFactory diskFileItemFactory = new DiskFileItemFactory();
		ServletFileUpload servletFileUpload = new ServletFileUpload(diskFileItemFactory);

		try {
			List<FileItem> items = servletFileUpload.parseRequest(req);

			for (FileItem item : items) {
				if (item.getFieldName().equals("id")) {
					product.setId(Integer.parseInt(item.getString()));
				} else if (item.getFieldName().equals("name")) {
					product.setName(item.getString("UTF-8"));
				} else if (item.getFieldName().equals("category")) {
					product.setCategory(categoryService.get(Integer.parseInt(item.getString())));
				} else if (item.getFieldName().equals("stall")) {
					product.setStall(stallService.get(Integer.parseInt(item.getString())));
				} else if (item.getFieldName().equals("price")) {
					product.setPrice(Integer.parseInt(item.getString()));
				} else if (item.getFieldName().equals("quantity")) {
					product.setQuantity(Integer.parseInt(item.getString()));
				} else if (item.getFieldName().equals("discount")) {
					product.setDiscount(Integer.parseInt(item.getString()));
				} else if (item.getFieldName().equals("des")) {
					product.setDes(item.getString("UTF-8"));				
				} else if (item.getFieldName().equals("image")) {
					if (item.getSize() > 0) {
						String root = System.getProperty("user.home");
						File path = new File(root + "/uploads");
						if (!path.exists()) {
							path.mkdirs();
						}
						String originalFileName = item.getName();
						int index = originalFileName.lastIndexOf(".");
						String ext = originalFileName.substring(index + 1);
						String fileName = System.currentTimeMillis() + "." + ext;
						File file = new File(path + "/" + fileName);
						item.write(file);

						product.setImage(fileName);

					} else {
						product.setImage(null);
					}
				}
			}

			productService.edit(product);

			resp.sendRedirect(req.getContextPath() + "/admin/product/list");
		} catch (FileUploadException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}
