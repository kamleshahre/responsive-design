package de.noltarium.page.controller;

import java.security.Principal;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import de.noltarium.page.model.PageUser;

@Controller
@RequestMapping("/welcome")
public class WelcomController {

	PageUser user;

	private static final Logger LOGGER = LoggerFactory
			.getLogger(WelcomController.class);

	@RequestMapping(method = RequestMethod.GET)
	public String printWelcome(ModelMap model) {

		model.addAttribute("message", "Spring 3 MVC Hello World");

		return "hello";

	}

}