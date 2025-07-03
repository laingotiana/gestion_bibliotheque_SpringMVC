package com.springjpa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
// import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
// import org.springframework.web.servlet.ModelAndView;
import com.springjpa.service.*;
import com.springjpa.entity.*;
// import jakarta.servlet.http.HttpSession;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


// import javax.servlet.http.HttpSession;
@Controller
public class LoginController {

    @Autowired
    private LoginService loginService;

    @GetMapping("/loginAdmin")
    public String loginAdminPage() {
        return "login_admin"; // login_admin.jsp
    }

    @PostMapping("/traiterLoginAdmin")
    public String traiterLoginAdmin(@RequestParam String nom,
                                    @RequestParam String password,
                                    Model model) {
        if (loginService.verifierAdmin(nom, password)) {

            return "admin_home";
        } else {
            model.addAttribute("erreur", "Nom ou mot de passe incorrect !");
            return "login_admin";
        }
    }

    @GetMapping("/loginAdherant")
    public String loginAdherantPage() {
        return "login_adherant"; // login_adherant.jsp
    }

    @GetMapping("/adherent_home")
    public String adherentHome(@RequestParam("idAdherant") Integer idAdherant, Model model) {
        model.addAttribute("idAdherant", idAdherant);
        return "adherent_home";
    }
    @PostMapping("/traiterLoginAdherant")
    public String traiterLoginAdherant(@RequestParam String nom,
                                       @RequestParam String password,
                                       Model model) {
        if (loginService.verifierAdherant(nom, password)) {
            Adherant adherant = loginService.getAdherantByNomAndPassword(nom, password);
            // Rediriger vers la page d'accueil adhérent avec l'id en paramètre
            return "redirect:/adherent_home?idAdherant=" + adherant.getIdAdherant();
        } else {
            model.addAttribute("erreur", "Nom ou mot de passe incorrect !");
            return "login_adherant";
        }
    }
}
