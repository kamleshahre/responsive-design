package de.noltarium.page.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import de.noltarium.page.model.ExampleObject;

@Controller
@RequestMapping("/intern/table")
public class TableViewController {

	private static final Logger LOGGER = LoggerFactory
			.getLogger(TableViewController.class);

	@RequestMapping(method = RequestMethod.GET)
	public String printWelcome(ModelMap model,
			Principal principal) {
		 final String currentUser = principal.getName();
		model.addAttribute("message", "Tabelle ");
//		exampleObjects
		List<ExampleObject> exampleObjects = new ArrayList<ExampleObject>();
		
		for (int i = 0; i < 200; i++) {
			ExampleObject obj = new ExampleObject("a"+i,"b"+i,"c"+i);
			exampleObjects.add(obj);
		}
		model.addAttribute("exampleObjects", exampleObjects);
		return "table";

	}

}