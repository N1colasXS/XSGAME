package control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Users;
import services.IUserService;
import services.impl.IUserServiceImpl;

@WebServlet("/login")
public class LoginControl extends HttpServlet{
	
	private IUserService iuserService = new IUserServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		  doPost(req,resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 * ① 获取用户登录信息(参数)
		 * ② 调用services层要他去判断当前登录信息是否能够登录
		 *       true:  能登录
		 *       false:   不能登录
		 * ③ 根据boolean结果进行页面跳转
		 */
		request.setCharacterEncoding("UTF-8");
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		Users user = new Users();
		user.setUserName(userName);
		user.setPassword(password);
		
		boolean result = iuserService.login(user);
		if(result) {
			// 首页
			// 把用户名存入到session会话对象中
			HttpSession session = request.getSession(); // 获取session对象
			session.setAttribute("userName", userName);
			response.sendRedirect("XSGAME.jsp");
		}else {
			// 登录页面进行提示
			request.setAttribute("info", "用户名或密码错误!");
			request.getRequestDispatcher("register.jsp").forward(request, response);
		}
		
	}
	
}
