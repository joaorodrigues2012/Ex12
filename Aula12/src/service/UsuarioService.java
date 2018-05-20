package service;

import dao.UsuarioDao;
import pacote.Usuario;

public class UsuarioService {
	
	public boolean validar(Usuario usuario){
		UsuarioDao dao = new UsuarioDao();
		return dao.validar(usuario);
	}
}
