<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*,
                  br.com.empresa.dao.*,
                  br.com.empresa.modelo.*" %>
                  <%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
                  <table>
                      <%
                      ContatoDao dao = new ContatoDao();
                      List<Contato> contatos = dao.getLista();
                      SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");

                      for (Contato contato : contatos ) {
                      %>
                          <tr>
                              <td><%=contato.getNome() %></td> 
                              <td><%=contato.getEmail() %></td>
                              <td><%=contato.getEndereco() %></td>
                              <td><%=format.format(contato.getDataNascimento().getTime()) %></td>
                          </tr>
                      <%
                      }
                      %>
                  </table>
              </body>
</html>