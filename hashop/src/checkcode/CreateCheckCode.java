package checkcode;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

//生成验证码
@WebServlet("/checkCode/createCheckCode")
public class CreateCheckCode extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        doGet(request, response);
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        // 产生4个随机验证码
        String chars = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";  // 36个验证码字符表
        char[] rands = new char[4];
        for (int i = 0; i < 4; i++) {
            int rand = (int) (Math.random() * 36);  //随机产生0~35之间的整数
            rands[i] = chars.charAt(rand);
        }

        // 创建内存图像
        int width = 70;
        int height = 20;
        BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
        Graphics g = image.getGraphics();
        g.setColor(new Color(0xCDCDCD));  //设置颜色, 0xffffff是白色
        g.fillRect(0, 0, width, height); //绘制矩形
        // 随机产生120个干扰点
        for (int i = 0; i < 120; i++) {
            int x = (int) (Math.random() * width);
            int y = (int) (Math.random() * height);
            int red = (int) (Math.random() * 255);
            int green = (int) (Math.random() * 255);
            int blue = (int) (Math.random() * 255);
            g.setColor(new Color(red, green, blue));
            g.drawOval(x, y, 1, 1);
        }

        // 在图片不同的位置输出4个验证码字符
        g.setColor(Color.BLACK);
        g.setFont(new Font(null, Font.ITALIC | Font.BOLD, 18));
        g.drawString("" + rands[0], 5, 17);
        g.drawString("" + rands[1], 20, 15);
        g.drawString("" + rands[2], 35, 18);
        g.drawString("" + rands[3], 48, 16);
        g.dispose();

        // 将图像数据转成字节数组： 图像 -> 字节数组输出流 -> 字节数组
        ByteArrayOutputStream baos = new ByteArrayOutputStream(); //字节数组输出流
        ImageIO.write(image, "JPEG", baos);
        byte[] buffer = baos.toByteArray();

        // 将图像数据输出到客户端
        // 设置响应头：浏览器不要缓存此图片
        response.setHeader("Pragma", "No-cache");
        response.setHeader("Cache-Control", "no-cache");
        response.setDateHeader("Expires", 0);
        // 设置响应体
        response.setContentType("image/jpeg");
        response.setContentLength(buffer.length);
        ServletOutputStream sos = response.getOutputStream();  //输出字节流
        sos.write(buffer);  //将图像数据写入response的输出流中
        baos.close();
        sos.close();

        // 将验证码放到 session 中
        HttpSession session = request.getSession();
        String code = new String(rands);
        session.setAttribute("checkCode", code);
    }
}
