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

import model.User;
import service.UserService;
import service.impl.UserServiceImpl;

@WebServlet(urlPatterns = { "/admin/user/add" })
public class UserAddController extends HttpServlet {
	UserService userService = new UserServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html; charset=UTF-8");
		req.setCharacterEncoding("UTF-8");
		
		String eString = req.getParameter("e");
		if (eString != null) {
			if (eString.equals("1")) {
				req.setAttribute("errMsg", "Username da ton tai!!!");
			}
		}
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/admin/view/add-user.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html; charset=UTF-8");
		req.setCharacterEncoding("UTF-8");

		User user = new User();
		DiskFileItemFactory diskFileItemFactory = new DiskFileItemFactory();
		ServletFileUpload servletFileUpload = new ServletFileUpload(diskFileItemFactory);

		try {
			List<FileItem> items = servletFileUpload.parseRequest(req);
			for (FileItem item : items) {
				if (item.getFieldName().equals("email")) {
					user.setEmail(item.getString());
				} else if (item.getFieldName().equals("username")) {
					user.setUsername(item.getString());
				} else if (item.getFieldName().equals("firstname")) {
					user.setFirstname(item.getString("UTF-8"));
				} else if (item.getFieldName().equals("lastname")) {
					user.setLastname(item.getString("UTF-8"));
				} else if (item.getFieldName().equals("password")) {
					user.setPassword(item.getString());
				} else if (item.getFieldName().equals("gender")) {
					user.setGender(item.getString());
				} else if (item.getFieldName().equals("birthday")) {
					user.setBirthday(item.getString());
				} else if (item.getFieldName().equals("phone")) {
					user.setPhone(item.getString());
				} else if (item.getFieldName().equals("address")) {
					user.setAddress(item.getString("UTF-8"));
				} else if (item.getFieldName().equals("role")) {
					user.setRoleId(Integer.parseInt(item.getString()));
				} else if (item.getFieldName().equals("avatar")) {
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

					user.setAvatar(fileName);
				}
			}

			userService.insert(user);

			resp.sendRedirect(req.getContextPath() + "/admin/user/list");
		} catch (FileUploadException e) {
			e.printStackTrace();
		} catch (Exception e) {
			resp.sendRedirect(req.getContextPath() + "/admin/user/add?e=1");
		}

	}
}

