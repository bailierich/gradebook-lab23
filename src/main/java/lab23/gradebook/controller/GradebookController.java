package lab23.gradebook.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lab23.gradebook.Grade;
import lab23.gradebook.Gradedao;

@Controller
public class GradebookController {
	
	@Autowired
		private Gradedao gradeDao;
	
	@RequestMapping("/")
	public String index() {
		return "redirect:/grades";
		
	}
	
	@RequestMapping("/grades")
	public String gradelist(Model model) {
		
		List<Grade> grades = gradeDao.findAll();
		model.addAttribute("grades",grades);
		return "gradeslist";
	}
	@RequestMapping("/grades/add")
	public String addGrade() {
	
	return "add";
	}

	
	@PostMapping("/grades/add")
	public String submitGrade(Grade grade,Model model) {
	gradeDao.create(grade);
	
	model.addAttribute("name", grade.getName());
	model.addAttribute("type", grade.getType());
	model.addAttribute("score", grade.getScore());
	model.addAttribute("total", grade.getTotal());
	
	return "addconfirmation";
	}
	
	@RequestMapping("/grades/delete")
	public String remove(@RequestParam("id") Long id) {
			gradeDao.delete(id);
			
			return "redirect:/grades";
		}
	}


