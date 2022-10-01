package frontController;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.controller.Controller;
import com.smhrd.controller.gojoinCon;
import com.smhrd.controller.joinCon;

@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	Map<String, Controller> mappings;
	
	public void init(ServletConfig config) throws ServletException {
		
		
		System.out.println("frontcontroll 되니?");
		
		
		mappings = new HashMap<>();
		mappings.put("/join.do",new joinCon());
		mappings.put("/gojoinCon.do",new gojoinCon());
	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("EUC-KR");
		
		String url = request.getRequestURI();
		String cpath = request.getContextPath();
		String command = url.substring(cpath.length());
		
		Controller con = null;
		String nextView = null;
		
		con = mappings.get(command);
		nextView = con.execute(request, response);
		
		if(nextView.contains("redirect:/")) {
			// redirect
			// redirect:/SelectAll.do
			// split()은 배열을 리턴 --> ["redirect", "SelectAll.do"] 
			response.sendRedirect(nextView.split(":/")[1]);
			System.out.println("리다이렉트");
		}else {
			// forward (request scope를 그대로 가져갈 수 있음)
			RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/views/" + nextView + ".jsp");
			rd.forward(request, response);
			System.out.println("포워드 실행");
		}
		
		
		
	}

}
