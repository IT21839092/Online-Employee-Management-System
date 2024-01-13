package job1;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class jobservletupdate
 */
@WebServlet("/jobservletupdate")
public class jobservletupdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//private String title;
	//private String Description;
	//private String StartDate;
	//private String endDate;
    /**
     * @see HttpServlet#HttpServlet()
     */
    //public jobservletupdate() {
        //super();
        // TODO Auto-generated constructor stub
   // }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String jid=request.getParameter("jid");
		String title=request.getParameter("title");
		String Description=request.getParameter("description");
		
		
		String Start_date=request.getParameter("Start_date");
		//SimpleDateFormat sdf=new SimpleDtaeFormat("dd/,,/yyyy");
		
		String end_date=request.getParameter("end_date");
	
	boolean isTrue;
    isTrue = jobinsertutil.updatejob(jid,title,Description,Start_date,end_date);
	if(isTrue == true)
		request.getRequestDispatcher("success.jsp").forward(request, response);
	
	else
		request.getRequestDispatcher("unsuccess.jsp").forward(request, response);
}
	
	}



