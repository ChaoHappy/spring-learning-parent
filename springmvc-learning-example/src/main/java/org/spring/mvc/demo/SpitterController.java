package org.spring.mvc.demo;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/spitter")
public class SpitterController {
	
	@RequestMapping(value="/spittles",method=RequestMethod.GET)
	public String listSpittlesForSpitter(@RequestParam("spitter") String username,Model model) {
		System.out.println("username£º"+username);
		model.addAttribute("spitter", username);
		List<String> list = new ArrayList<String>();
		list.add("spittle1");
		list.add("spittle2");
		model.addAttribute("spittles", list);
		return "list";
		
	}
	
	@RequestMapping(method=RequestMethod.GET,params="new")
	public String createSpitterProfile(Model model) {
		model.addAttribute("spitter", new Spitter());
		return "edit";
	}
	
	@RequestMapping(method=RequestMethod.POST)
	public String addSpitterFromForm(@Validated Spitter spitter,BindingResult bindingResult) {
		return "redirect:/spitter/"+spitter.getUsername();
	}
	
	@RequestMapping(value="/{username}",method=RequestMethod.GET)
	public String showSpitterProfile(@PathVariable String username,Model model) {
		System.out.println("username£º"+username);
		model.addAttribute("spitter", username);
		List<String> list = new ArrayList<String>();
		list.add("spittle1");
		list.add("spittle2");
		model.addAttribute("spittles", list);
		return "list";
		
	}
}
