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

import model.Stall;
import model.User;
import service.StallService;
import service.UserService;
import service.impl.StallServiceImpl;
import service.impl.UserServiceImpl;

@WebServlet(urlPatterns = { "/admin/stall/edit" })
public class StallEditController extends HttpServlet {
	StallService stallService = new StallServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html; charset=UTF-8");
		req.setCharacterEncoding("UTF-8");
		
		String id = req.getParameter("id");
		Stall stall = stallService.get(Integer.parseInt(id));
		
		req.setAttribute("stall", stall);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/admin/view/edit-stall.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html; charset=UTF-8");
		req.setCharacterEncoding("UTF-8");
		
		Stall stall = new Stall();
		DiskFileItemFactory diskFileItemFactory = new DiskFileItemFactory();
		ServletFileUpload servletFileUpload = new ServletFileUpload(diskFileItemFactory);

		try {
			List<FileItem> items = servletFileUpload.parseRequest(req);

			for (FileItem item : items) {
				if (item.getFieldName().equals("id")) {
					stall.setId(Integer.parseInt(item.getString()));
				} else if (item.getFieldName().equals("name")) {
					stall.setName(item.getString("UTF-8"));
				} else if (item.getFieldName().equals("item")) {
						stall.setId(Integer.parseInt(item.getString()));
				} else if (item.getFieldName().equals("des")) {
					stall.setDes(item.getString("UTF-8"));				
				} else if (item.getFieldName().equals("image")) {
					if (item.getSize() > 0) {// neu co file d
						String root = System.getProperty("user.home");
						File path = new File(root + "/uploads");
						if (!path.exists()) {
							boolean status = path.mkdirs();
						}
						String originalFileName = item.getName();
						int index = originalFileName.lastIndexOf(".");
						String ext = originalFileName.substring(index + 1);
						String fileName = System.currentTimeMillis() + "." + ext;
						File file = new File(path + "/" + fileName);
						item.write(file);

						stall.setImage(fileName);

					} else {
						stall.setImage(null);
					}
				}
			}

			stallService.edit(stall);

			resp.sendRedirect(req.getContextPath() + "/admin/stall/list");
		} catch (FileUploadException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}
