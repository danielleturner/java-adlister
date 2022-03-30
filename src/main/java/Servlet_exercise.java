import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class Servlet_exercise {


//@WebServlet(name = "HelloWorldServlet", urlPatterns = "/hello")
//public class HelloWorldServlet extends HttpServlet {

//    public int counter = 0;
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        counter++;
//        response.setContentType("text/html");
//        String outputResp = "<h1>Hello, World!</h1>";
//        if(request.getParameter("name") != null){
//            outputResp = "Hello, " + request.getParameter("name") + "!";
//        }
//        PrintWriter out = response.getWriter();
//        out.println(outputResp);
//
//    }


    @WebServlet(name = "HelloWorldServlet", urlPatterns = "/hello")
    public class HelloWorldServlet extends HttpServlet {

        public int counter = 0;
        @Override
        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
            if(request.getParameter("reset") != null && request.getParameter("reset").equalsIgnoreCase("reset")){
                counter = 0;
            }

            counter++;
            response.getWriter().println("<h1>The count currently is </h1>" + counter + " on this page");

        }

    }
}
