import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "viewColorServlet", urlPatterns = "/viewColor")

public class viewColorServlet extends HttpServlet{

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        String color = request.getParameter("color");
        request.setAttribute("color", color);
        request.getRequestDispatcher("viewColor.jsp").forward(request, response);
    }

}
