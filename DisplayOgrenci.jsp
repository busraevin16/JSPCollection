<%@page import="java.util.Collections"%>
<%@page import="java.util.Comparator"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.ostim.web.Ornek11.Ogrenci" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.StringTokenizer" %>

<%
    String ad = request.getParameter("ad");
    int numara = Integer.parseInt(request.getParameter("numara"));
    String telefon = request.getParameter("telefon");
    String notlarStr = request.getParameter("notlar");

    // Notları bir diziye ayır
   
    List<String> notlarList = new ArrayList<String>();
 

    // Ogrenci nesnesi oluştur
    Ogrenci ogrenci = new Ogrenci(ad, numara, telefon, (ArrayList<String>) notlarList);

    // Var olan ogrenciList'ı session'dan al veya yeni bir tane oluştur
    List<Ogrenci> ogrenciList = (List<Ogrenci>) session.getAttribute("ogrenciList");
    if (ogrenciList == null) {
        ogrenciList = new ArrayList<Ogrenci>();
    }

    // Şu anki ogrenci'yi listeye ekle
    ogrenciList.add(ogrenci);

    // Öğrenci listesini numaraya göre sırala (büyükten küçüğe)
   Collections.sort(ogrenciList, new Ogrenci.OgrenciComparator());
    // Session özelliğini güncelle
    session.setAttribute("ogrenciList", ogrenciList);
%>

<!DOCTYPE html>
<html>
    <head>
    <title>Ogrenci Bilgileri</title>
</head>
<body>
    <h2>Ogrenci Bilgileri</h2>
    <table border="1">
        <tr>
            <th>Ad</th>
            <th>Numara</th>
            <th>Telefon</th>
            <th>Notlar</th>
        </tr>
        <% for (Ogrenci o : ogrenciList) {%>
        <tr>
            <td><%= o.getad()%></td>
            <td><%= o.getnumara()%></td>
            <td><%= o.gettelefon()%></td>
            <td>
                <% for (String not : o.getnotlar()) {%>
                <%= not%><br>
                <% } %>
            </td>
        </tr>
        <% }%>
    </table>
</body>
</html>
