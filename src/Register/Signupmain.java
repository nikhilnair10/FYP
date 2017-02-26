package Register;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import Register.Signup;
import com.googlecode.s2hibernate.struts2.plugin.annotations.SessionTarget;
import com.googlecode.s2hibernate.struts2.plugin.annotations.TransactionTarget;
import com.opensymphony.xwork2.ActionSupport;

public class Signupmain extends ActionSupport 
{
	private static final long serialVersionUID = 1L;
	private static SessionFactory factory; 
	 @SessionTarget
	 Session session;
	 @TransactionTarget
	 Transaction tx= null;
	 Signup user ;
	 public String adduser()
	 {
		 try
		 {
			 user = new Signup(user.getuname(),user.getpwd(),user.geteid());
	         factory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
	         Session session = factory.openSession();
	         String hql = "INSERT INTO details(username,password,emailid) value("+user.getuname()+","+user.getpwd()+","+user.geteid()+")";
	         Query query = session.createQuery(hql);
	         int result = query.executeUpdate();
	         if(result ==1)
	         {
	        	 session.save(user);
	        	 return SUCCESS;
	         }
	     }
		 catch (HibernateException e)
		 {
	         if (tx!=null) 
	        	 tx.rollback();
	         
	         e.printStackTrace(); 
	         return ERROR;
	     }
		 catch (Throwable ex) 
		 { 
	         System.err.println("Failed to create sessionFactory object." + ex);
	         throw new ExceptionInInitializerError(ex); 
	     }
		 finally
		 {
	         session.close(); 
	     }
		return null;
	 }
}