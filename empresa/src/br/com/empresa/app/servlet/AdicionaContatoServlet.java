package br.com.empresa.app.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.empresa.dao.ContatoDao;
import br.com.empresa.modelo.Contato;

@WebServlet("/contato-adicionado")
public class AdicionaContatoServlet extends HttpServlet {
    protected void service(HttpServletRequest request,
                        HttpServletResponse response)
                        throws IOException, ServletException {

        PrintWriter out = response.getWriter();
        
        String nome = request.getParameter("nome");
        String endereco = request.getParameter("endereco");
        String email = request.getParameter("email");
        String dataEmTexto = request.getParameter("dataNascimento");

        Calendar dataNascimento = null;
 
        try {
            Date date = new SimpleDateFormat("dd/MM/yyyy").parse(dataEmTexto);
            dataNascimento = Calendar.getInstance();
            dataNascimento.setTime(date);
        } catch (ParseException e) {
            out.println("Erro de conversão da data");
            return;
        }

        Contato contato = new Contato();
        contato.setNome(nome);
        contato.setEndereco(endereco);
        contato.setEmail(email);
        contato.setDataNascimento(dataNascimento);

        ContatoDao dao;
		try {
			dao = new ContatoDao();
			dao.adiciona(contato);
		} catch (ClassNotFoundException | InstantiationException | IllegalAccessException | SQLException e) {
			e.printStackTrace();
}
        

		RequestDispatcher rd = request.getRequestDispatcher("/mvc?logica=ListaContatosLogic");
        rd.forward(request,response);
    }
}