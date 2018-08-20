package en.just.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import en.just.entity.User;
import en.just.repository.UserRepository;

@Controller
public class HomeController {
	
    	@Autowired
    	UserRepository userRepository;

    	@RequestMapping("")
    	public String home() {
    		return "index";
    	}
    	
    	@GetMapping("/login")
    	public String login(Model model) {
    		model.addAttribute("user", new User());
    		return "loginForm";
    	}
	
    	@PostMapping("/login")
    	public String login(@RequestParam String email,@RequestParam String password,HttpSession session, Model model) {
    		User user = userRepository.findFirstByEmail(email);
    		if(user != null && BCrypt.checkpw(password, user.getPassword()))
    		{
    			session.setAttribute("logged", user);
    		}else {
    				model.addAttribute("info","Wrong login or password");
    				session.setAttribute("logged", null);
    				return "loginForm";
    		}
    		return "redirect:/logged";
    	}

    	
    	@GetMapping("/logout")
    	@ResponseBody
    	public String logout(HttpSession session) {
    		session.setAttribute("loggedUser",null);
    		return "You are logged out";
    	}
    	
    	@GetMapping("/register")
    	public String showRegistrationForm(Model model) {
    		model.addAttribute("user", new User());
    		return "userForm";

    	}

    	@PostMapping("/register")
    	public String registerUser(@Valid @ModelAttribute User user, BindingResult result, Model model) {
    		if (result.hasErrors()) {
    			return "userForm";
    		} else {
    			user.setPassword(BCrypt.hashpw(user.getPassword(), BCrypt.gensalt()));
    			userRepository.save(user);
    			model.addAttribute("user", user);

    			return "redirect:/";
    		}
    	}
    	
    	@GetMapping("/logged")
    	public String showAddBookForm( Model model, HttpSession session){
    		if(session.getAttribute("loggedUser") != null) {
    			model.addAttribute("info", "You are logged in");	
    		}
    		return "indexLogged";
   
    			
    	}
    }


