package view;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.*;
import java.util.HashSet;
import java.util.Iterator;
import java.util.*;

import entidades.Pacote;

import controle.ControlePesquisa;

/**
 * Servlet implementation class PesquisaServlet
 */
@WebServlet("/PesquisaServlet")
public class PesquisaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PesquisaServlet() 
    {
        super();
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		Pacote pacote = new Pacote();
		Pacote pac;
	
		String destino = request.getParameter("destino");
		Date data_ida = new Date(Integer.parseInt(request.getParameter("diaIda")),
					Integer.parseInt(request.getParameter("mesIda")),Integer.parseInt(request.getParameter("anoIda")));

		Date data_volta = new Date(Integer.parseInt(request.getParameter("diaVolta")),
					Integer.parseInt(request.getParameter("mesVolta")),Integer.parseInt(request.getParameter("anoVolta")));
		
		pacote = ControlePesquisa.getInstance().pesquisarPacote(destino, data_ida, data_volta).get(0);
		
		request.getSession().setAttribute("lista_pacotes", pacote);
		
		
		RequestDispatcher rdIndex = request.getRequestDispatcher("ResultadoPesquisa.jsp");
		rdIndex.forward(request, response);
	}

}
