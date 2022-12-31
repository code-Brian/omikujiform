package com.briandenmark;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class OmikujiController {
	@RequestMapping("/")
	public String index() {
		return "index.jsp";
	}
	
	@RequestMapping("/show")
	public String show(Model model) {
		model.getAttribute("number");
		model.getAttribute("city");
		model.getAttribute("person");
		model.getAttribute("profession");
		model.getAttribute("animal");
		model.getAttribute("niceness");
		return "show.jsp";
	}
	
	@PostMapping("/omikuji")
	public String omikuji(HttpSession session,Model model,
			@RequestParam(value="number") Integer number,
			@RequestParam(value="city") String city,
			@RequestParam(value="person") String person,
			@RequestParam(value="profession") String profession,
			@RequestParam(value="animal") String animal,
			@RequestParam(value="niceness") String niceness) {
		// store the form data in session
		session.setAttribute("number", number);
		session.setAttribute("city", city);
		session.setAttribute("person", person);
		session.setAttribute("profession", profession);
		session.setAttribute("animal", animal);
		session.setAttribute("niceness", niceness);
		// transfer the form data from session into a model
		model.addAttribute("number", session.getAttribute("number"));
		model.addAttribute("city", session.getAttribute("city"));
		model.addAttribute("person", session.getAttribute("person"));
		model.addAttribute("profession", session.getAttribute("profession"));
		model.addAttribute("animal", session.getAttribute("animal"));
		model.addAttribute("niceness", session.getAttribute("niceness"));
		// redirect to show page and populate the form data from the model.
		return "redirect:/show";
	}
	

}
