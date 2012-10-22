package de.noltarium.page.controller;

import java.security.Principal;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import de.noltarium.page.model.ExampleObject;

@Controller
@RequestMapping("/intern/create")
public class InternCreateController {

	private static final Logger LOGGER = LoggerFactory
			.getLogger(InternCreateController.class);

	@RequestMapping(method = RequestMethod.GET)
	public String printWelcome(ModelMap model,
			Principal principal) {
		 final String currentUser = principal.getName();
		model.addAttribute("message", "bin drinne"+currentUser);
		
		ExampleObject exampleObject = new ExampleObject();
		model.addAttribute("exampleObject", exampleObject);
		return "internCreate";

	}

}