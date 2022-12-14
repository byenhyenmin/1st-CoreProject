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
import com.smhrd.controller.DeleteCon;
import com.smhrd.controller.GoInsertCon;
import com.smhrd.controller.GoJoinCon;
import com.smhrd.controller.GoMainCon;
import com.smhrd.controller.GoSurveyCon;
import com.smhrd.controller.InsertCon;
import com.smhrd.controller.JjimCon;
import com.smhrd.controller.MYpageDeleteCon;
//import com.smhrd.controller.JjimCon;
import com.smhrd.controller.MypageCon;
import com.smhrd.controller.RecommendCon;
import com.smhrd.controller.b_UpdateCon;
import com.smhrd.controller.joinCon;
import com.smhrd.controller.logoutCon;
import com.smhrd.controller.selectAllCon;
import com.smhrd.controller.selectOneCon;
import com.smhrd.controller.loginCon;
import com.smhrd.controller.updateCon;



@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	Map<String, Controller> mappings;
	
	public void init(ServletConfig config) throws ServletException {
			
		mappings = new HashMap<>();
		mappings.put("/join.do",new joinCon());
		mappings.put("/GoMainCon.do",new GoMainCon());
		mappings.put("/login.do", new loginCon());
		mappings.put("/update.do", new updateCon());
		mappings.put("/logout.do", new logoutCon());
		mappings.put("/GoJoinCon.do",new GoJoinCon());
		mappings.put("/selectAll.do", new selectAllCon());
		mappings.put("/GoSurveyCon.do", new GoSurveyCon());
		mappings.put("/SelectOne.do", new selectOneCon());
		mappings.put("/GoInsert.do", new GoInsertCon());
		mappings.put("/Insert.do", new InsertCon());
		mappings.put("/b_update.do", new b_UpdateCon());
		mappings.put("/DeleteCon.do", new DeleteCon());
		mappings.put("/MypageCon.do",new MypageCon());
		mappings.put("/recommend.do",new RecommendCon());
		mappings.put("/jjim.do",new JjimCon());
		mappings.put("/MYpageDeleteCon.do",new MYpageDeleteCon());
		
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
			// split()??? ????????? ?????? --> ["redirect", "SelectAll.do"] 
			response.sendRedirect(nextView.split(":/")[1]);
			System.out.println("???????????????");
		}else {
			// forward (request scope??? ????????? ????????? ??? ??????)
			RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/views/" + nextView + ".jsp");
			rd.forward(request, response);
			System.out.println("????????? ??????");
		}
		
		
		
	}

}
