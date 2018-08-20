package en.just.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import en.just.entity.User;
import en.just.repository.ExperienceRepository;
import en.just.repository.UserRepository;

import javax.servlet.http.HttpServletRequest;


@Controller
public class UserController {

  
    @Autowired
	UserRepository userRepository;
	
	@Autowired
	ExperienceRepository experienceRepository;

	
	@GetMapping("/show")
	public String showDetails(Model model, HttpServletRequest request) {
		User user = (User) request.getSession().getAttribute("logged");
		model.addAttribute("user", user);
		model.addAttribute("experiences", experienceRepository.findByUserId(user.getId()));
		return "accountForm";
	}

	@GetMapping("/showUser/{id}")
	public String showDetailsId(Model model,@PathVariable long id) {
		model.addAttribute("u", userRepository.findOne(id));
		model.addAttribute("experiences", experienceRepository.findByUserId(id));
		return "showDetails";
	}
	
}