<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.ostim.web.Ornek11.Ogrenci" %>

<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.StringTokenizer" %>
<!DOCTYPE html>
<html>
<head>
    <title>Ogrenci Bilgileri</title>
</head>
<body>
<form action="DisplayOgrenci.jsp" method="post">
        Ad: <input type="text" name="ad"><br>
        Numara: <input type="number" name="numara"><br>
        Telefon: <input type="text" name="telefon"><br>
        Notlar: <input type="text" name="notlar"><br>
        <input type="submit" value="Kaydet">
    </form>
</body>
</html>