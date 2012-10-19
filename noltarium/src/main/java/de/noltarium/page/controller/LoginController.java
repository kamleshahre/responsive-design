package de.noltarium.page.controller;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import de.noltarium.page.model.PageUser;

@Controller
@RequestMapping("/login.do")
public class LoginController {

	private static final Logger LOGGER = LoggerFactory
			.getLogger(LoginController.class);

	@RequestMapping(method = RequestMethod.GET)
	public String printWelcome(ModelMap model) {

		return "hello";

	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String signIn(@ModelAttribute("user") @Valid PageUser contact,
			BindingResult result) {
		LOGGER.debug("Try Sign in User {}",contact.getLoginName());
		if(result.hasErrors())
		{
			LOGGER.debug("Has Errors");
		}

		return "hello";
	}

}