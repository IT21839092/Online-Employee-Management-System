package job1;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class deletejobservlet
 */
@WebServlet("/deletejobservlet")
public class deletejobservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deletejobservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String jid = request.getParameter("jid");
		boolean isTrue;
		
		isTrue =jobinsertutil.deletejob(jid);
		
		if (isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("jobinsert.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			List<job> jobDetails = jobinsertutil.getjobDetails(jid);
			request.setAttribute("jobDetails", jobDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("account.jsp");
			dispatcher.forward(request, response);
		}
		
		
		
		
	}
	}


