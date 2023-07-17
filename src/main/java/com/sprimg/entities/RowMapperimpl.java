
package com.sprimg.entities;
import java.sql.ResultSet;  
import java.sql.SQLException;  

import org.springframework.jdbc.core.RowMapper;



public class RowMapperimpl  implements RowMapper<Userlogin> {

	public Userlogin mapRow(ResultSet rs, int rowNum) throws SQLException {
		Userlogin s1=new Userlogin();
		s1.setName(rs.getString(1));
		s1.setEmail(rs.getString(2));
	
		return s1;
	}

	

		  
	

}


