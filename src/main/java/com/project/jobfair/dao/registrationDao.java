package com.project.jobfair.dao;

import com.project.jobfair.db.DBFactory;
import com.project.jobfair.db.admin;
import com.project.jobfair.model.Admin;

import java.util.ArrayList;

import javax.naming.NamingException;
//import for email Validator
import java.io.*;
import java.net.*;
import java.util.*; 
import javax.naming.*; 
import javax.naming.directory.*;

import org.apache.commons.validator.routines.EmailValidator;
public class registrationDao {

	private DBFactory dbFactory;
	public registrationDao() {
			dbFactory = new DBFactory();
		}
		
	private final String[] columns1 = new String[] {admin.admEmail,admin.admPwd,admin.admFname,admin.admLname,admin.faculty,admin.position};
	public void adminRegister(Admin adm) {
		Object[] data=null;
		
		boolean isValidEmail=false;
		isValidEmail=isAddressValid(adm.getAdmEmail());
		
		boolean isInsertSuccess=false;
	    boolean isStrongPwd=false;
		if(isStrongPwd(adm.getAdmPwd()).equalsIgnoreCase("strong")) {
			isStrongPwd=true;
		}
		else {
			isStrongPwd=false;
		}
	    
		if(isValidEmail && isStrongPwd) {
			//System.out.println(isValidEmail);
			 data = new Object[] {adm.getAdmEmail(),adm.getAdmPwd(),adm.getAdmFname(),adm.getAdmLname(),adm.getFaculty(),adm.getPosition()};	
			 isInsertSuccess=dbFactory.insert(admin.table, columns1, data);
			 if(!isInsertSuccess ) {
				 System.out.println("Your Email is already registered!");
			 }
			 else {
				 
				 System.out.println("Registered Successfully!");
			 }
			 
		}
		
		
		else if((!isValidEmail) && isStrongPwd) {
				System.out.println("Your Email is invalid");
			}
			else if(!(isStrongPwd )&& isValidEmail) {
				System.out.println(isStrongPwd(adm.getAdmPwd()));
			}
			else {
				System.out.println("Your Email is invalid and Your password is"+isStrongPwd(adm.getAdmPwd()));
			}
				
		
		
	}
	//isValidEmailAddress
	  private static int hear( BufferedReader in ) throws IOException {
	      String line = null;
	      int res = 0;
	      while ( (line = in.readLine()) != null ) {
	          String pfx = line.substring( 0, 3 );
	          try {
	             res = Integer.parseInt( pfx );
	          } 
	          catch (Exception ex) {
	             res = -1;
	          }
	          if ( line.charAt( 3 ) != '-' ) break;
	      }
	      return res;
	      }
	    private static void say( BufferedWriter wr, String text ) 
	       throws IOException {
	      wr.write( text + "\r\n" );
	      wr.flush();
	      return;
	      }
	    private static ArrayList getMX( String hostName )
	          throws NamingException {
	      // Perform a DNS lookup for MX records in the domain
	      Hashtable env = new Hashtable();
	      env.put("java.naming.factory.initial",
	              "com.sun.jndi.dns.DnsContextFactory");
	      DirContext ictx = new InitialDirContext( env );
	      Attributes attrs = ictx.getAttributes
	                            ( hostName, new String[] { "MX" });
	      Attribute attr = attrs.get( "MX" );
	      // if we don't have an MX record, try the machine itself
	      if (( attr == null ) || ( attr.size() == 0 )) {
	        attrs = ictx.getAttributes( hostName, new String[] { "A" });
	        attr = attrs.get( "A" );
	        if( attr == null ) 
	             throw new NamingException
	                      ( "No match for name '" + hostName + "'" );
	      }
	      // Huzzah! we have machines to try. Return them as an array list
	      // NOTE: We SHOULD take the preference into account to be absolutely
	      //   correct. This is left as an exercise for anyone who cares.
	      ArrayList res = new ArrayList();
	      NamingEnumeration en = attr.getAll();
	      while ( en.hasMore() ) {
	         String x = (String) en.next();
	         String f[] = x.split( " " );
	         if ( f[1].endsWith( "." ) ) 
	             f[1] = f[1].substring( 0, (f[1].length() - 1));
	         res.add( f[1] );
	      }
	      return res;
	      }
	 public static boolean isAddressValid( String address ) {
	      // Find the separator for the domain name
	      int pos = address.indexOf( '@' );
	      // If the address does not contain an '@', it's not valid
	      if ( pos == -1 ) return false;
	      // Isolate the domain/machine name and get a list of mail exchangers
	      String domain = address.substring( ++pos );
	      ArrayList mxList = null;
	      try {
	         mxList = getMX( domain );
	      } 
	      catch (NamingException ex) {
	         return false;
	      }
	      // Just because we can send mail to the domain, doesn't mean that the
	      // address is valid, but if we can't, it's a sure sign that it isn't
	      if ( mxList.size() == 0 ) return false;
	      // Now, do the SMTP validation, try each mail exchanger until we get
	      // a positive acceptance. It *MAY* be possible for one MX to allow
	      // a message [store and forwarder for example] and another [like
	      // the actual mail server] to reject it. This is why we REALLY ought
	      // to take the preference into account.
	      for ( int mx = 0 ; mx < mxList.size() ; mx++ ) {
	          boolean valid = false;
	          try {
	              int res;
	              Socket skt = new Socket( (String) mxList.get( mx ), 25 );
	              BufferedReader rdr = new BufferedReader
	                 ( new InputStreamReader( skt.getInputStream() ) );
	              BufferedWriter wtr = new BufferedWriter
	                 ( new OutputStreamWriter( skt.getOutputStream() ) );
	              res = hear( rdr );
	              if ( res != 220 ) throw new Exception( "Invalid header" );
	              say( wtr, "EHLO orbaker.com" );
	              res = hear( rdr );
	              if ( res != 250 ) throw new Exception( "Not ESMTP" );
	              // validate the sender address  
	              say( wtr, "MAIL FROM: <tim@orbaker.com>" );
	              res = hear( rdr );
	              if ( res != 250 ) throw new Exception( "Sender rejected" );
	              say( wtr, "RCPT TO: <" + address + ">" );
	              res = hear( rdr );
	              // be polite
	              say( wtr, "RSET" ); hear( rdr );
	              say( wtr, "QUIT" ); hear( rdr );
	              if ( res != 250 ) 
	                 throw new Exception( "Address is not valid!" );
	              valid = true;
	              rdr.close();
	              wtr.close();
	              skt.close();
	          } 
	          catch (Exception ex) {
	            // Do nothing but try next host
	          } 
	          finally {
	            if ( valid ) return true;
	          }
	      }
	      return false;
	      }
	   
	 
	 
	 
	 
	
	//isStrongPwd
	public static String isStrongPwd(String password){
		String result=null;
		 boolean hasLetter = false;
	        boolean hasDigit = false;

	        if (password.length() >= 8) {
	            for (int i = 0; i < password.length(); i++) {
	                char x = password.charAt(i);
	                if (Character.isLetter(x)) {

	                    hasLetter = true;
	                }

	                else if (Character.isDigit(x)) {

	                    hasDigit = true;
	                }

	                // no need to check further, break the loop
	                if(hasLetter && hasDigit){

	                    break;
	                }

	            }
	            if (hasLetter && hasDigit) {
	               result="strong";
	            } else {
	            	result="notstrong"; 
	            }
	        } else {
	        	result="Have at least 8 characters!";
	        }
	    
		
		
		return result;
		
		
		
		
	}
	
	
}
