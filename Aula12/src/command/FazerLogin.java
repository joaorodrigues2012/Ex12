package command;

import java.io.File;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Criptografia.CryptoAES;
import pacote.Usuario;
import service.UsuarioService;

public class FazerLogin implements Command {
	
	
	@Override
	public void executar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String sMsgCifrada = null;
		String sMsgDecifrada = null;
		
		byte[] bMsgCifrada = null;
		byte[] bMsgDecifrada = null;
		
		String nome = request.getParameter("username");
		String senha = request.getParameter("password");
		byte[] bsenha = null;
		bsenha = senha.getBytes("ISO-8859-1");
		//System.out.println(senha);
		CryptoAES caes = new CryptoAES();
		try {
		caes.geraChave(new File("chave.simetrica"));
		caes.geraCifra(bsenha, new File("chave.simetrica"));
		bMsgCifrada = caes.getTextoCifrado();
		sMsgCifrada = (new String(bMsgCifrada, "ISO-8859-1"));
		System.out.println(sMsgCifrada);}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println("ERRRRRRRRRRRRRRRRO");
		}
		Usuario usuario = new Usuario();
		usuario.setUsuario(nome);
		usuario.setPassword(sMsgCifrada);
		UsuarioService service = new UsuarioService();
		try {
		caes.geraDecifra(bMsgCifrada, new File("chave.simetrica")); 
		bMsgDecifrada = caes.getTextoDecifrado();
		sMsgDecifrada = (new String(bMsgDecifrada, "ISO-8859-1"));
		}catch (Exception e1) {
			System.out.println("ERRRRRRRRRRRRRRRRO 2");
			// TODO: handle exception
		}

		if(senha.equals(sMsgDecifrada)) {
			usuario.setPassword(sMsgDecifrada);
		if(service.validar(usuario)){
			usuario.setPassword(sMsgCifrada);
			HttpSession session = request.getSession();
			session.setAttribute("logado", usuario);
			System.out.println("Logou "+usuario);
			
		} else {
			usuario.setPassword(sMsgCifrada);
			System.out.println("NÃ£o Logou "+usuario);
			System.out.println("Usuario ou senha incorreto");
			
			request.setAttribute("mensagem", "Login/Senha está errada!");
			HttpSession session = request.getSession();
			session.setAttribute("lista", null);
			
			RequestDispatcher dispatcher = request
					.getRequestDispatcher("Login.jsp");
			dispatcher.forward(request, response);
			
			
		}
		}
		response.sendRedirect("index.jsp");
	}
}
