package formControllermvc;
import org.springframework.ui.Model;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.sprimg.entities.User;
import com.sprimg.entities.Userlogin;
import com.sprimg.entities.Userlogin;
import com.sprimg.entities.RowMapperimpl;

import java.sql.ResultSet;  
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.RowMapper;
;
@Controller
public class AbController {
	@Autowired
	JdbcTemplate jdbctemplate;
	public JdbcTemplate getJdbctemplate() {
		return jdbctemplate;
	}
	public void setJdbctemplate(JdbcTemplate jdbctemplate) {
		this.jdbctemplate = jdbctemplate;
	}

//	@ModelAttribute
//	public void common(Model mm)
//	{
//		//mm.addAttribute("header","learn by youtube");
//	}
	@RequestMapping("/home")
	public String Show() {
		return "home";
	}
	@RequestMapping("/form")
	public String sw() {
		return "form";
	}
	@RequestMapping("/login")
	public String Showlogin() {
		return "login";
	}
	
	
	@RequestMapping(path="/insert",method=RequestMethod.POST)
	public String formhandel(@ModelAttribute User user) {
			
			

		String query="insert into tablefortry(name,email)values(?,?) ";
		int result =this.jdbctemplate.update(query,user.getName(),user.getEmail());
		
	
		System.out.println(result);
		
//		
//		model.addAttribute("user",u1);
		
		return "redirect:/viewdata";
	}

	@RequestMapping(path="/check",method=RequestMethod.POST)
	public String checkdata(@ModelAttribute Userlogin u1,Model model)
	{	
		String ul1=u1.getEmail();
		String ul2=u1.getName();

		String q="select * from tablefortry where name=? and email=? ";
		RowMapperimpl rowMapper=new RowMapperimpl();
		Userlogin stud=this.jdbctemplate.queryForObject(q,rowMapper,u1.getName(),u1.getEmail());
		String sq1=stud.getEmail();
		String sq2=stud.getName();
		System.out.println(sq1+"   "+sq2);
		if(ul2.equals(sq2)&& ul1.equals(sq1) )
		{
			model.addAttribute("user",u1);
			return "success";
		}
		else
		{
			return "error";
		}

		
	
	}
	
	
	
	@RequestMapping(path="/viewdata")
	public String viewalldata(@ModelAttribute Userlogin u2,Model m) {
		
		String str="select * from tablefortry";
		List<Userlogin> all=jdbctemplate.query(str,new RowMapperimpl());
		System.out.println(all);
		
		m.addAttribute("data",all);
		
		
		return "viewdata";
		
	}
	@RequestMapping(path="/empdelete/{st}",method=RequestMethod.GET)
	public String Dlt(@PathVariable String st ) {
		String Str="delete from tablefortry where name=?";
		int res=jdbctemplate.update(Str,st);
		
		System.out.println(res);
		
		
		
		
		return"redirect:/viewdata";
	}
	
	@RequestMapping(path="/empupdate/{st}",method=RequestMethod.GET)
	public String update(@PathVariable String st,Model m){
		String Str="select * from tablefortry where name=?";
		Userlogin u1=jdbctemplate.queryForObject(Str,new RowMapperimpl(),st);
		m.addAttribute("data",u1);
		
		return "editiform";
	}
	
	@RequestMapping(path="/editi",method=RequestMethod.POST)
	public String formediti(@ModelAttribute Userlogin user) {
			
			

		String query="update tablefortry set email=? where name=?";
		int result =this.jdbctemplate.update(query,user.getEmail(),user.getName());
		
	
		System.out.println(result);
		
//		
//		model.addAttribute("user",u1);
		
		return "redirect:/viewdata";
	}
	
//	
}




