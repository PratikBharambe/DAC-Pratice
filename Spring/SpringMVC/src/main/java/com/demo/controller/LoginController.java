package com.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.demo.beans.MyUser;
import com.demo.service.LoginService;

@Controller
@RequestMapping("/security")
public class LoginController {

	@Autowired
	LoginService loginService;

	@GetMapping("/login")
	public String showlogin() {
		return "loginpage";
	}

	@PostMapping("/validate")
	public ModelAndView authecateuser(@RequestParam("username") String username, @RequestParam String password) {

		MyUser user = loginService.validateUser(username, password);

		if (user != null && username.equals(user.getUsername()) && password.equals(user.getPassword())) {
			String msg = "Valid user";
			return new ModelAndView("redirect:/product/getproducts");
		} else {
			return new ModelAndView("loginpage", "msg", "Wrong Credentials");
		}

	}

}
