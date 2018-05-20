package Test;


import static org.junit.Assert.assertEquals;
import pacote.Pais;
import service.PaisService;
import org.junit.Before;
import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runners.MethodSorters;






@FixMethodOrder(MethodSorters.NAME_ASCENDING)
public class TestPais {
	Pais pais, copia;
	PaisService paisService;
	static int id = 0;

	

@Before
public void setUp() throws Exception {
		System.out.println("setup");
		pais = new Pais();
		pais.setId(id);
		pais.setNome("Belgica");
		pais.setPopulacao(27619025);
		pais.setArea(271127);
		copia = new Pais();
		copia.setId(id);
		copia.setNome("Belgica");
		copia.setPopulacao(27619025);
		copia.setArea(271127);
		paisService = new PaisService();
		System.out.println(pais);
		System.out.println(copia);
		System.out.println(id);
}
@Test
public void test00Carregar() {
	System.out.println("carregar");
	//para funcionar o pais 1 deve ter sido carregado no banco por fora
	Pais fixture = new Pais();
	fixture.setId(1);
	fixture.setNome("Uruguai");
	fixture.setPopulacao(987654321);
	fixture.setArea(1234567890);
	PaisService novoService = new PaisService();
	Pais novo = novoService.carregar(1);
	assertEquals("testa inclusao", novo, fixture);
}
@Test
public void test01Criar() {
	System.out.println("criar");
	id = paisService.criar(pais);
	System.out.println(id);
	copia.setId(id);
	assertEquals("testa criacao", pais, copia);
	
}

@Test
public void test02Atualizar() {
	System.out.println("atualizar");
	pais.setArea(271127);
	copia.setArea(271127);		
	paisService.atualizar(pais);
	pais = paisService.carregar(pais.getId());
	assertEquals("testa atualizacao", pais, copia);

}

@Test
public void test03Excluir() {
	System.out.println("excluir");
	copia.setId(-1);
	copia.setNome(null);
	copia.setPopulacao(-1);
	copia.setArea(-1);
	paisService.excluir(id);
	pais = paisService.carregar(id);
	assertEquals("testa exclusao", pais, copia);
}
@Test
public void test04MaiorPopulacao() {
	System.out.println("Maior população");
	Pais fixture = new Pais();
	fixture.setId(1);
	fixture.setNome("Uruguai");
	fixture.setPopulacao(987654321);
	fixture.setArea(1234567890);
	PaisService novoService = new PaisService();
	paisService.Maiorpais(id);
	Pais novoPais = novoService.carregar(1);
	assertEquals("Teste de maior população", novoPais, fixture);
}

@Test
public void test06menorArea() {
	System.out.println("menor área");
	Pais fixture = new Pais();
	fixture.setId(13);
	fixture.setNome("Dinamarca");
	fixture.setPopulacao(80619400);
	fixture.setArea(157022);
	PaisService novoService = new PaisService();
	novoService.MenorArea(id);
	Pais novoPais = novoService.carregar(13);
	assertEquals("Teste de menor área", novoPais, fixture);
}
@Test
public void test05vetorTresPaises() {
	System.out.println("vetorTresPaises");
	Pais fixture = new Pais();
	Pais fixture1 = new Pais();
	Pais fixture2 = new Pais();
	fixture.setId(3);
	fixture.setNome("Australia");
	fixture.setPopulacao(80419000);
	fixture.setArea(857022);
	fixture1.setId(4);
	fixture1.setNome("Brasil");
	fixture1.setPopulacao(80619400);
	fixture1.setArea(357822);
	fixture2.setId(5);
	fixture2.setNome("Bolivia");
	fixture2.setPopulacao(80614000);
	fixture2.setArea(358022);
	PaisService novoService = new PaisService();
	novoService.Vetor3Paise(id);
	Pais novoPais = novoService.carregar(3);
	Pais novoPais1 = novoService.carregar(4);
	Pais novoPais2 = novoService.carregar(5);
	assertEquals("Teste de Vetor de tres paises", novoPais, fixture);
	assertEquals("Teste de Vetor de tres paises1", novoPais1, fixture1);
	assertEquals("Teste de Vetor de tres paises2", novoPais2, fixture2);
  
}

}