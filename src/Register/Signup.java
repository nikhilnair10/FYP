package Register;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
public class Signup 
{
	   @Id
	   @GeneratedValue
	   @Column(name="userid")
	   private int id;
	   @Column(name="uname")
	   private String uname;
	   @Column(name="pwd")
	   private String pwd;
	   @Column(name="eid")
	   private String eid;
	   
	   
	   
	   public Signup(String uname,String pwd,String eid)
	   {
		   this.uname = uname;
		   this.pwd = pwd;
		   this.eid = eid;
	   }
	   
	   public int getuserid() 
	   {
	    return id;
	   }
	   
	   public void setuserid(int id) 
	   {
	    this.id = id;
	   }
	   
	   public String getuname() 
	   {
	      return uname;
	   }
	   public void setuname(String uname) 
	   {
	      this.uname = uname;
	   }
	   public String getpwd() 
	   {
	      return pwd;
	   }
	   public void setpwd(String pwd) 
	   {
	      this.pwd = pwd;
	   }
	   public String geteid() 
	   {
	      return eid;
	   }
	   public void seteid(String eid )
	   {
	      this.eid = eid;
	   }
	
}
