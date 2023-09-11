package servlet;

import service.OrderService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "orderitem_query", urlPatterns = "/orderitem_query")
public class OrderquerymaxServlet extends HttpServlet {
    private OrderService oService = new OrderService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int max=oService.selectorderitem();
        System.out.println("step 2 is true:"+max);
        if(oService.select(max)==true){
                request.getRequestDispatcher("/goods_recommend_user?id="+max).forward(request, response);
        }
        else
            request.getRequestDispatcher("order_success.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
