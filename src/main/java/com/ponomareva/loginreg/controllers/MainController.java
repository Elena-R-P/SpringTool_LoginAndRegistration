package com.ponomareva.loginreg.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ponomareva.loginreg.models.User;
import com.ponomareva.loginreg.services.UserService;
import com.ponomareva.loginreg.validator.UserValidator;

@Controller
public class MainController {
	private final UserService userService;
	private final UserValidator userValidator;
	
	public MainController(
			UserService userService,
			UserValidator userValidator) {
		this.userService = userService;
		this.userValidator = userValidator;
	}
		
	@RequestMapping("/")
	public String main(Model model) {
		model.addAttribute("user", new User());
		return "index.jsp";
	}
	
	@RequestMapping(value="/registration", method=RequestMethod.POST)
	public String register(
			@Valid @ModelAttribute ("user") User user,
			BindingResult result,
			HttpSession session) {
		userValidator.validate(user,  result);
		if(result.hasErrors()) {
			return "index.jsp";
		} else {
			User u = userService.registerUser(user);
			session.setAttribute("userId", u.getId());
			return "redirect:/dashboard";
		}
		
	}
}
