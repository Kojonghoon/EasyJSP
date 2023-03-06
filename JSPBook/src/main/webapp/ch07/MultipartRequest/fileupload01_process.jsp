<%@page contentType="text/html; charset=utf-8"%>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%
	MultipartRequest multi = new MultipartRequest(request,"C:\\upload", 5*1024*1024,"utf-8", new DefaultFileRenamePolicy());

	Enumeration params = multi.getParameterNames();
	
	while(params.hasMoreElements()){	//요청 파라미터가 없을때까지 반독하도록 hasMoreElements()메소드 작성
		String name = (String)params.nextElement();	//폼페이지에서 전송된 요청 파라미터의 이름을 가져오도록 nextElement()) 작성
		String value = multi.getParameter(name);	//12행에서 얻어오도록 12행에서 얻어온 요청 파라미터의 이름으로 MultipartRequest의 객체 타입의 getParameter()메소드 작성
		out.println(name+" = "+value+"<br>");
	}
	out.println("------------------------------------<br>");
	
	Enumeration files = multi.getFileNames();
	
	while(files.hasMoreElements()){
	  String name=(String)files.nextElement();	//요청 파라미터의 파일을 가져오도록 nextElement()) 작성
	  String filename = multi.getFilesystemName(name);
	  String original = multi.getOriginalFileName(name);
	  String type = multi.getContentType(name);
	  File file = multi.getFile(name);
	  
	  out.println("요청 파라미터 이름 : "+name+"<br>");
	  out.println("실제 파일 이름 : "+original+"<br>");
	  out.println("저장 파일 이름 : "+filename+"<br>");
	  out.println("파일 콘텐츠 유형 : "+type+"<br>");
	  
	  if(file !=null){
	    out.println("파일 크기 : "+file.length());
	    out.println("<br>");
	  }
	}
%>