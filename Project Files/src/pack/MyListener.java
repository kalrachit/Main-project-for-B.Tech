package pack;

import java.sql.*;
import javax.servlet.*;
import javax.servlet.annotation.WebListener;

public class MyListener implements ServletContextListener
{

	Connection conn=null;
    public void contextInitialized(ServletContextEvent event) {

    	ServletContext context;
    	try
    	{
    		
    		
    	    
    		Class.forName("oracle.jdbc.driver.OracleDriver");
    		String url,user,password;
    		url=user=password=null;
    		url=new String("jdbc:oracle:thin:@localhost:1521:oracle");
    		user=new String("erp");
    		password=new String("erp");
    		conn=DriverManager.getConnection(url, user, password);
    		System.out.println("Connected Successfully");
    		context=event.getServletContext();
    		context.setAttribute("DatabaseConnection", conn);
    	}
    	catch (Exception e)
    	{
    		System.out.println(e);
    	}

    }

	
    public void contextDestroyed(ServletContextEvent arg0) 
    {
    	try
    	{
    		conn.close();
    	}
    	catch (Exception e)
    	{
    		System.out.println(e);
    	}

    }
	
}
