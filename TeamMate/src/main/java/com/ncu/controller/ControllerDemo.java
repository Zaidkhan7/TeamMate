package com.ncu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ncu.jdbc.JdbcClass;
import com.ncu.jdbc.JdbcInterface;
import com.ncu.model.CreateTeamModel;
import com.ncu.model.TeamModel;
import com.ncu.model.UserModel;



@Controller
public class ControllerDemo {
	public String emailg;
	@Autowired
	private JdbcClass jdbci;
	
	@RequestMapping("/letsgo")
	public String Initialize(Model model , @ModelAttribute("usermodel") UserModel usermodel)
	{
		model.addAttribute("usermodel",new UserModel());
		
		return "index";
		
	}
	
	@RequestMapping("/register")
	public String Register(Model model , @ModelAttribute("usermodel") UserModel usermodel , @RequestParam("email") String email)
	{
		jdbci.Adduser(usermodel);
		emailg=email;
		return "Choice";
	}
	
	@RequestMapping("/createteam")
	public String CreateTeam(Model model , @ModelAttribute("createteammodel") CreateTeamModel createteammodel)
	{
		model.addAttribute("msg" , new CreateTeamModel());
		return "CreateTeam";
	}
	@RequestMapping("/create")
	public String Create(Model model , @ModelAttribute("createteammodel") CreateTeamModel createteammodel ,@RequestParam("required_position") String p1, @RequestParam("required_position2") String p2 ,@RequestParam("required_position3") String p3 ,@RequestParam("required_position4") String p4,@RequestParam("required_position5") String p5 , @RequestParam("number") int number1 , @RequestParam("number2") int number2 , @RequestParam("number3") int number3 , @RequestParam("number4") int number4 , @RequestParam("number5") int number5)
	{
		UserModel um = jdbci.GetUserFromEmail(emailg);
		jdbci.AddinteamCreator(um, createteammodel);
		jdbci.AddCreateTeam(createteammodel, um , p1,number1);
		jdbci.AddCreateTeam(createteammodel, um , p2,number2);
		jdbci.AddCreateTeam(createteammodel, um , p3,number3);
		jdbci.AddCreateTeam(createteammodel, um , p4,number4);
		jdbci.AddCreateTeam(createteammodel, um , p5,number5);
		return "Success";
	}
	
	@RequestMapping("/existing")
	public String Existing(Model model , @ModelAttribute("createteammodel") CreateTeamModel createteammodel)
	{
		UserModel um = jdbci.GetUserFromEmail(emailg);
		List<CreateTeamModel> list = jdbci.showall(um.getUser_position());
		model.addAttribute("list",list);
		return "showjobs";
	}
	
	@RequestMapping(value= "/jointeam/{project_team_name}")
	public String JoinTeam(@PathVariable("project_team_name") String project_team_name , Model model)
	{
		UserModel um = jdbci.GetUserFromEmail(emailg);
		jdbci.AddInTeamApplier(um, project_team_name);
		CreateTeamModel n = jdbci.Vacancy(um.getUser_position(), project_team_name);
		jdbci.RemoveVacancy(um.getUser_position(), project_team_name,n.getNumber());
		List<TeamModel> list = jdbci.showteam(project_team_name);
		model.addAttribute("list",list);	
		return "added";
	}
	
	
	
	
	
}
