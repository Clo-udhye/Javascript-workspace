<%@ page language="java" contentType="text/xml; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="javax.naming.Context" %>
<%@ page import="javax.naming.InitialContext" %>
<%@ page import="javax.naming.NamingException" %>
<%@ page import="javax.sql.DataSource" %>

<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>

<%
	//String strDong = "명동";
	String strDong = request.getParameter("strDong");

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	StringBuffer result = new StringBuffer();
	
	try {
		Context initCtx = new InitialContext();
		Context envCtx = (Context)initCtx.lookup("java:comp/env");
		DataSource dataSource = (DataSource)envCtx.lookup("jdbc/mariadb1");
		
		conn = dataSource.getConnection();
		
		String sql = "select seq, zipcode, sido, gugun, dong, ri, bunji from zipcode where dong like ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, strDong+"%");
		
		rs = pstmt.executeQuery();
		
		result.append("<result>");
		while(rs.next()){
			//String ri = rs.getString("ri").equals("")? "." : rs.getString("ri");
			//String bunji = rs.getString("bunji").equals("")? "." : rs.getString("bunji");
			
			result.append("<address>");
			result.append("<seq>"+ rs.getString("seq") +"</seq>");
			result.append("<zipcode>"+ rs.getString("zipcode") +"</zipcode>");
			result.append("<sido>"+ rs.getString("sido")+"</sido>");
			result.append("<gugun>"+ rs.getString("gugun") +"</gugun>");
			result.append("<dong>"+ rs.getString("dong") +"</dong>");
			//result.append("<ri>"+ ri +"</ri>");
			//result.append("<bunji>"+ bunji +"</bunji>");
			result.append("<ri>"+ rs.getString("ri") +"</ri>");
			result.append("<bunji>"+ rs.getString("bunji") +"</bunji>");
			
			result.append("</address>");
		}
		result.append("</result>");		
	} catch(NamingException e){
		System.out.println("[에러] : " + e.getMessage());
	} catch(SQLException e){
		System.out.println("[에러] : " + e.getMessage());
	} finally{
		if(rs!=null) rs.close();
		if(pstmt!=null) pstmt.close();
		if(conn!=null) conn.close();
	}
	
	out.println(result);
%>