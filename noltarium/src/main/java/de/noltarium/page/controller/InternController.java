package de.noltarium.page.controller;

import java.security.Principal;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/intern/welcome")
public class InternController {

	private static final Logger LOGGER = LoggerFactory
			.getLogger(InternController.class);

	@RequestMapping(method = RequestMethod.GET)
	public String printWelcome(ModelMap model,
			Principal principal) {
		 final String currentUser = principal.getName();
		model.addAttribute("message", "bin drinne"+currentUser);
		return "intern";

	}

}