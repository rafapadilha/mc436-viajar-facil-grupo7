package view;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashSet;
import java.util.*;

import controle.ControleCadastro;

/**
 * Servlet implementation class CadastroServlet
 */
@WebServlet("/CadastroServlet")
public class CadastroServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CadastroServlet() 
    {
        super();
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String nome = request.getParameter("nome");
		String senha = request.getParameter("senha");
		String rg = request.getParameter("rg");
		String cpf = request.getParameter("cpf");
		String email = request.getParameter("email");
		int numero_cartao = Integer.parseInt(request.getParameter("numero_cartao"));
		HashSet<String> telefones = new HashSet<String>();
		telefones.add(request.getParameter("tel_residencial"));
		telefones.add(request.getParameter("celular"));
		
		boolean sucesso = ControleCadastro.getInstance().cadastrarCliente(numero_cartao, nome, senha, rg, cpf, email, telefones);
		
		if (sucesso)
			response.sendRedirect("CadastroOK.html");
		else
			response.sendRedirect("CadastroFail.html");
	
	}

}
