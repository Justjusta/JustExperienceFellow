package en.just.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import en.just.entity.Client;
import en.just.entity.Experience;
import en.just.repository.ClientRepository;
import en.just.repository.ExperienceRepository;
import en.just.repository.UserRepository;

import javax.validation.Valid;

import java.time.LocalDateTime;
import java.util.Collection;

@Controller
public class ExperienceController {

	@Autowired
	ExperienceRepository experienceRepository;
	
	@Autowired
	UserRepository userRepository;
	
	@Autowired
	ClientRepository clientRepository;
	/*
	@GetMapping("/experience/add")
	public String experience(Model model) {
		model.addAttribute("experience",new Experience());
		return "addExperienceForm";
	}
	*/
	@GetMapping("/experience/add/{id}")
	public String add(@PathVariable long id, Model model) {
		model.addAttribute("experience",new Experience());
		model.addAttribute("user",userRepository.findOne(id));
		return "addExperienceForm";
	}
	
	@PostMapping("/experience/add/{id}")
	public String add(@PathVariable long id,@Valid Experience experience, BindingResult result, Model model) {
		if(result.hasErrors()) {
			return "addExperienceForm";
		}
		experience.setUser(userRepository.findOne(id));
		experience.setCreated(LocalDateTime.now());
		experienceRepository.save(experience);
		return "redirect:/show";
	}
	
	@GetMapping("/experience/delete/{id}")
	public String deleteExperience(@PathVariable long id,@Valid Experience experience, BindingResult result, Model model) {
		
		experienceRepository.delete(experienceRepository.findOne(id));
		return "redirect:/show";
	}

	@ModelAttribute("clients")
	Collection<Client> getClients(){
		return clientRepository.findAll();
	}
	
}
