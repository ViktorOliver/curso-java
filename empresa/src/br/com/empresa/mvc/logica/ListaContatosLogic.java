package br.com.empresa.mvc.logica;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.empresa.dao.ContatoDao;
import br.com.empresa.modelo.Contato;

public class ListaContatosLogic implements Logica {

    public String executa(HttpServletRequest req, HttpServletResponse res)
            throws Exception {

        List<Contato> contatos = new ContatoDao().getLista();

        req.setAttribute("contatos", contatos);

        return "lista-contatos.jsp";
    }
}
