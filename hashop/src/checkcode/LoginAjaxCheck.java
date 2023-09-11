package checkcode;

import model.User;
import service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
//验证所输入的账号、密码、验证码是否正确
@WebServlet(name = "user_login",urlPatterns = "/user_login")
public class LoginAjaxCheck extends HttpServlet {
    private UserService uService = new UserService();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //获取用户所填写的账号、密码、验证码
        String ue = request.getParameter("ue");
        String password = request.getParameter("password");
        String userCheckcode = request.getParameter("checkcode");
        HttpSession session = request.getSession();
        //获取生成验证码时，保存的验证码（即正确答案）
        String serverCheckcode = (String) session.getAttribute("checkCode");
        //调用service
        User user = uService.login(ue, password);
        if(user==null) {
            request.setAttribute("failMsg", "用户名、邮箱或者密码错误，请重新登录！");
            request.getRequestDispatcher("/user_login.jsp").forward(request, response);
        }else {
            //equalsIgnoreCase 方法用于将字符串与指定的对象比较，不考虑大小写
            if(!serverCheckcode.equalsIgnoreCase(userCheckcode)) {
                request.setAttribute("failMsg", "验证码错误，请重新登录！");
                request.getRequestDispatcher("/user_login.jsp").forward(request, response);
            }
            else {
                request.getSession().setAttribute("user", user);
                //登录成功后进入个人中心  可对自己信息进行二次修改
                request.getRequestDispatcher("/user_center.jsp").forward(request, response);
            }
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
