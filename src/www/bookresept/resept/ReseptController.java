package www.bookresept.resept;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ReseptController {
	@Autowired
	private ReseptService reseptService;
	
	@RequestMapping("/")
    public ModelAndView home() {
        List<Resept> listResept = reseptService.listAll();
        ModelAndView mav = new ModelAndView("index");
        mav.addObject("listResept", listResept);
        return mav;
    }
	
	@RequestMapping("/new")
    public String newCustomerForm(Map<String, Object> model) {
        Resept resept = new Resept();
        model.put("resept", resept);
        return "new_resept";
    }
    
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String saveResept(@ModelAttribute("resept") Resept resept) {
    	System.out.println(resept.toString());
        reseptService.save(resept);
        return "redirect:/";
    }
    
    @RequestMapping("/edit")
    public ModelAndView editCustomerForm(@RequestParam long id) {
        ModelAndView mav = new ModelAndView("edit_resept");
        Resept resept = reseptService.get(id);
        mav.addObject("resept", resept);
     
        return mav;
    }
    
    @RequestMapping("/delete")
    public String deleteCustomerForm(@RequestParam long id) {
        reseptService.delete(id);
        return "redirect:/";       
    }
    
    @RequestMapping("/search")
    public ModelAndView search(@RequestParam String keyword) {
        List<Resept> result = reseptService.search(keyword);
        ModelAndView mav = new ModelAndView("search");
        mav.addObject("result", result);
     
        return mav;    
    }
    @RequestMapping("/exit")
    public String exit() {
    	return "redirect:/";
    }
}
