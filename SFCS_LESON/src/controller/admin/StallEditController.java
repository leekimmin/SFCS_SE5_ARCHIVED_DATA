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
		stall.setId(Integer.parseInt(req.getParameter("id")));
		stall.setName(req.getParameter("name"));
		stallService.edit(stall);
		
		resp.sendRedirect(req.getContextPath()+"/admin/stall/list");

	}
}
