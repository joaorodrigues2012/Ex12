package service;

import java.util.ArrayList;
import dao.PaisDao;
import pacote.Pais;

public class VendedorService {
	PaisDao dao;
	
	public VendedorService(){
		dao = new PaisDao();
	}
	public ArrayList<Pais> listarPais(){
		return dao.listarPais();
	}
	public ArrayList<Pais> listarPais(String chave){
		return dao.listarPais(chave);
	}
}
