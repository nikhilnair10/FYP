package Register;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
public class Signup 
{
	   @Id
	   @GeneratedValue
	   @Column(name="id")
	   public int id;
	   @Column(name="uname")
	   public String uname;
	   @Column(name="pwd")
	   public String pwd;
	   @Column(name="eid")
	   public String eid;
	   
	   public Signup()
	   {
		   
	   }
	   public Signup(String uname,String pwd,String eid)
	   {
		   this.uname = uname;
		   this.pwd = pwd;
		   this.eid = eid;
	   }

	 
	   public int getid() 
	   {
	    return id;
	   }
	   
	   public void setid(int id) 
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
	   
	   /*public String execute()
	   {
		   Signupmain suser = new Signupmain();
		   int re = suser.saveUser(user);
		   System.out.println(re);
		  
		   return "success";
	   }*/
	   public String execute()
	   {
		   
		   System.out.println(this.uname);
		   System.out.println(this.pwd);
		   System.out.println(this.eid);
		   int i=Signupmain.saveUser(this);
		   
		   if(i>0)
			   return "success";
		   else
			   return "failure";
	   }

	
}
