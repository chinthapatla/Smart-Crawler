<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
 <%

 String h1=null;
	   String saveFile="";
	 
String contentType = request.getContentType();

if((contentType != null)&&(contentType.indexOf("multipart/form-data") >= 0)){
DataInputStream in = new DataInputStream(request.getInputStream());
int formDataLength = request.getContentLength();
byte dataBytes[] = new byte[formDataLength];
int byteRead = 0;
int totalBytesRead = 0;
while(totalBytesRead < formDataLength){
byteRead = in.read(dataBytes, totalBytesRead,formDataLength);
totalBytesRead += byteRead;
}
 int ch;
StringBuffer strContent = new StringBuffer("");
FileInputStream fin = null;

String file = new String(dataBytes);

saveFile = file.substring(file.indexOf("filename=\"") + 10);
saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));

int lastIndex = contentType.lastIndexOf("=");
String boundary = contentType.substring(lastIndex + 1,contentType.length());
int pos;
pos = file.indexOf("filename=\"");
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
int boundaryLocation = file.indexOf(boundary, pos) - 4;
int startPos = ((file.substring(0, pos)).getBytes()).length;
int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
File ff = new File(saveFile);
FileOutputStream fileOut = new FileOutputStream(ff);

fileOut.write(dataBytes, startPos, (endPos - startPos));
fileOut.flush();
fileOut.close();

fin = new FileInputStream(ff);


while ((ch = fin.read()) != -1)
strContent.append((char) ch);

fin.close();
String ss=(strContent.toString());
//StringBuffer s=new StringBuffer(ss);

String date=(String)session.getAttribute("date");

String keypoints=(String)session.getAttribute("keypoints");
/*
	String[] strArray =null;
	strArray=keypoints.split(",");
 for (String str : strArray) {
// String a="<a href>"+str+" </a>";
//String b="(?i)"+str;
h=ss.replaceAll(str,"<a href>"+str+" </a>");


 }
*/
String text=ss;
String result[]=text.split("\\s");

String[] strArray =keypoints.split(",");
	for(int i=0;i<strArray.length;i++)
	{
		for(int p=0;p<result.length;p++)
		{
	
			if(strArray[i].equals(result[p])){
			StringBuffer sb1=new StringBuffer();
			sb1.append("<a href=\"search.jsp?search="+strArray[i]+"\">"+strArray[i]+"</a>");
			result[p]=sb1.toString(); 
            
			}
			
			
		}
		
			
	}
	StringBuffer sb=new StringBuffer();
	for(int i=0;i<result.length;i++){
	sb.append(result[i]);
	sb.append(" ");
	}
	String ans=new String(sb);
	session.setAttribute("ans",ans);
out.println(ans);
String id=(String)session.getAttribute("id");

String filename=(String)session.getAttribute("filename");

//int n;
//session.getAttribute("userid", n );




String filesize=null;
String jj="no";

FileInputStream fis;

PreparedStatement psmt1=null;
try
{


Connection con = databasecon.getconnection();
psmt1=con.prepareStatement("insert into file(id,filename,date,file,ff,keypoints) values(?,?,?,?,?,?)");

//File f = new File(h);

psmt1.setString(1,id);
psmt1.setString(2,filename);
psmt1.setString(3,date);
//fis = new FileInputStream(f);


psmt1.setString(4,ans);
//double bytes = file.length();
//filesize=Double.toString(bytes);
psmt1.setString(5,jj);
//sout.println(filesize);
psmt1.setString(6,keypoints);


psmt1.executeUpdate();


response.sendRedirect("view.jsp?success");


}
catch(Exception ex)
{

out.println("Error in connection : "+ex);

}


}

%>
