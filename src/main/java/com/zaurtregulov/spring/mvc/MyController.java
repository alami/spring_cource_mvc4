package com.zaurtregulov.spring.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MyController {

    @RequestMapping("/")
    public String showFirstView () {
        return "first-view";
    }
    @RequestMapping("/askDetails")
    public String askEmployeeDetails (Model model) {
//        Employee emp =  new Employee();
//        emp.setName("Test");
//        emp.setSurname("Testerov");
//        emp.setSalary(200);
//        emp.setDepartment("IT");
        model.addAttribute("employee", new Employee());
        return "ask-emp-details-view";
    }
    @RequestMapping("/showDetails")
    public String showEmployeeDetails (@ModelAttribute("employee") Employee emp) {
//        String name = emp.getName();
//        emp.setName("Mr."+name);

        return "show-emp-details-view";
    }
}
