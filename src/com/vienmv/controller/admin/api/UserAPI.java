package com.vienmv.controller.admin.api;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.vienmv.model.User;
import com.vienmv.service.UserService;
import com.vienmv.util.HttpUtil;

@WebServlet(urlPatterns = {"/api-admin-new"})
public class UserAPI extends HttpServlet {
	
	@Inject
	UserService userService;

	private static final long serialVersionUID = -915988021506484384L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		DiskFileItemFactory diskFileItemFactory = new DiskFileItemFactory();
		ServletFileUpload servletFileUpload = new ServletFileUpload(diskFileItemFactory);
		ObjectMapper mapper = new ObjectMapper();
		request.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		User userModel =  HttpUtil.of(request.getReader()).toModel(User.class);
		userService.insert(userModel);
//		mapper.writeValue(response.getOutputStream(), useModel);
		String reWringURL = response.encodeRedirectURL(request.getContextPath() + "/admin/user/list");
		response.sendRedirect(reWringURL);
	}
	
//	protected void doPut(HttpServletRequest request, HttpServletResponse response)
//			throws ServletException, IOException {
//		ObjectMapper mapper = new ObjectMapper();
//		request.setCharacterEncoding("UTF-8");
//		response.setContentType("application/json");
//		NewModel updateNew =  HttpUtil.of(request.getReader()).toModel(NewModel.class);
//		updateNew.setModifiedBy(((UserModel) SessionUtil.getInstance().getValue(request, "USERMODEL")).getUserName());
//		updateNew = newService.update(updateNew);
//		mapper.writeValue(response.getOutputStream(), updateNew);
//	}
//	
//	protected void doDelete(HttpServletRequest request, HttpServletResponse response)
//			throws ServletException, IOException {
//		ObjectMapper mapper = new ObjectMapper();
//		request.setCharacterEncoding("UTF-8");
//		response.setContentType("application/json");
//		NewModel newModel =  HttpUtil.of(request.getReader()).toModel(NewModel.class);
//		newService.delete(newModel.getIds());
//		mapper.writeValue(response.getOutputStream(), "{}");
//	}
}
