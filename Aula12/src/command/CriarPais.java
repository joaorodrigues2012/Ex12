package command;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pacote.Pais;
import service.PaisService;

public class CriarPais implements Command {

	@Override
	public void executar(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

	String pId = request.getParameter("id");
	String pNome = request.getParameter("nome");
	String pPopulacao = request.getParameter("populacao");
	String pArea = request.getParameter("area");
	
	long populacao = -1;
	double area = -1;
	int id = -1;
	long populacaoA = Long.valueOf(pPopulacao); 
	double areaA =Double.valueOf(pArea); 
	try {
		id = Integer.parseInt(pId);
		
		
	} catch (NumberFormatException e) {

	}
	//instanciar o javabean
	
	
	Pais pais = new Pais();
	pais.setId(id);
	pais.setNome(pNome);
	pais.setPopulacao(populacaoA);
	pais.setArea(areaA);
		
	
	//instanciar o service
	PaisService pa = new PaisService();
	RequestDispatcher view = null;
	HttpSession session = request.getSession();
	
		pa.criar(pais);
		ArrayList<Pais> lista = new ArrayList<>();
		lista.add(pais);
		session.setAttribute("lista", lista);
		view = request.getRequestDispatcher("index.jsp");
		
		view.forward(request, response);
	}
		public int busca(Pais pais, ArrayList<Pais> lista) {
			Pais to;
			for(int i = 0; i < lista.size(); i++){
				to = lista.get(i);
				if(to.getId() == pais.getId()){
					return i;
				}
			}
			return -1;
		}

}
