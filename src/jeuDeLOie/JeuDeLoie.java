package jeuDeLOie;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class JeuDeLoie
 */
@WebServlet("/JeuDeLoie")
public class JeuDeLoie extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JeuDeLoie() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		if(request.getAttribute("position") == null) {
			request.setAttribute("position", 0);
		}

		if(request.getAttribute("diceRoll") == null) {
			request.setAttribute("diceRoll", Dice.roll());
		}
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int position = Integer.parseInt(request.getParameter("position"));
		int diceRoll = Dice.roll();
		
		position += diceRoll;
		
		request.setAttribute("position", position);
		request.setAttribute("diceRoll", diceRoll);
		
		doGet(request, response);
	}
}
