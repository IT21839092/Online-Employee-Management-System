package job1;

import java.io.IOException;
import java.lang.ProcessHandle.Info;
import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class jobservletin
 * @param <SimpleDateFormat>
 */
@WebServlet("/jobservletin")
public class jobservletin<SimpleDateFormat> extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//private static final String isTrue = null;

    /**
     * Default constructor. 
     */
    public jobservletin() {
        // TODO Auto-generated constructor stub
    }
    public void doGet(HttpServletRequest request, HttpServletResponse response)
    		throws IOException{
    				
    		}

	
	 //@see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	  // String Jid=request.getParameter("Jid");
		String title=request.getParameter("title");
		String description=request.getParameter("description");
		
		
		String start_date=request.getParameter("start_date");
		//SimpleDateFormat sdf=new SimpleDtaeFormat("dd/,,/yyyy");
		
		String end_date=request.getParameter("end_date");
		
		// TODO Auto-generated method stub
		boolean isTrue;
		isTrue=jobinsertutil.insertjob(title,description,start_date,end_date);
		
		
		if(isTrue == true) {
			RequestDispatcher dis= request.getRequestDispatcher("success.jsp");
			dis.forward(request,response);
		}else {
		RequestDispatcher dis2=request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request,response);
		}
			
		}
		
	}



