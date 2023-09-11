package checkcode;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
//换一张验证码（只更新验证码  不更新整个页面）
@WebServlet("/checkCode/changeCheckCode")
public class ChangeCheckCode extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");
        // 设置请求域属性，则login.jsp中可以使用${requestScope.userid}获取请求参数
        // 如果只有request中有属性，也可以使用${userid}来获取请求参数
        String userid = request.getParameter("userid");
        String userpwd = request.getParameter("userpwd");
        //将原先所填的账号 密码重新传给文本框
        request.setAttribute("userid",userid);
        request.setAttribute("userpwd",userpwd);

        // 如果不设置属性，而直接转发，则login.jsp中需要使用${param.userid} 来获取参数
        request.getRequestDispatcher("login.jsp").forward(request,response);  //请求转发回到登录界面

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
