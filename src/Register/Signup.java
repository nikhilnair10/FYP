package Register;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
public class Signup 
{
	   @Id
	   @GeneratedValue
	   @Column(name="id")
	   private int id;
	   @Column(name="uname")
	   private String uname;
	   @Column(name="pwd")
	   private String pwd;
	   @Column(name="eid")
	   private String eid;
	   
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
	   
	   public String getUname() 
	   {
		
	      return uname;
	   }
	   public void setUname(String uname) 
	   {
	      this.uname = uname;
	   }
	   public String getPwd() 
	   {
	      return pwd;
	   }
	   public void setPwd(String pwd) 
	   {
	      this.pwd = pwd;
	   }
	   public String getEid() 
	   {
	      return eid;
	   }
	   public void setEid(String eid )
	   {
	      this.eid = eid;
	   }
	   
	   /*public String execute()
	   {
		   Signupmain suser = new Signupmain();
		   int re = suser.saveUser(user);
		   System.out.println(re);
		  
		   return "success";
	   }
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
	   }*/

	
}
