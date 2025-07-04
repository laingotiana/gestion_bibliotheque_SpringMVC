package com.springjpa.controller;

import org.springframework.stereotype.Controller;
// import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
// import org.springframework.web.bind.annotation.RequestParam;
// import org.springframework.web.servlet.ModelAndView;
import com.springjpa.service.*;
import com.springjpa.entity.*;
import com.springjpa.repository.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import java.util.*;


@Controller
@RequestMapping("/adherant")
public class AdherantController {

    @Autowired
    private AdminService adherantService;

    @Autowired
    private ReservationRepository reservationRepo;

    @Autowired
    private ExemplaireService exemplaireService;

    @Autowired
    private PretService pretService;
    // Afficher les prêts en cours de l'adhérent via paramètre URL
    // @GetMapping("/prets")
    // public String afficherPretsEnCours(@RequestParam("idAdherant") Integer idAdherant, Model model) {
    //     model.addAttribute("prets", pretService.getPretsEnCoursParAdherant(idAdherant));
    //     return "prets";
    // }

   
    // @GetMapping("/livresEmpruntes")
    // public String livresEmpruntes(Model model) {
    //     model.addAttribute("prets", adminService.getLivresEmpruntes());
    //     return "livres_empruntes";
        
    // }

    // @GetMapping("/reservations")
    // public String reservations(Model model) {
    //     model.addAttribute("reservations", reservationRepo.findAll());
    //     return "reservations";
    // }

    // @GetMapping("/exemplairesDisponibles")
    // public String exemplairesDisponibles(Model model) {
    //     model.addAttribute("exemplaires", exemplaireRepo.findByDispoTrue());
    //     return "admin/exemplaires_disponibles";
    
    // @GetMapping("/exemplairesDisponibles")
    // public String exemplairesDisponibles(Model model) {
    //     List<Exemplaire> exemplaires = exemplaireService.getExemplairesDisponibles();
    //     model.addAttribute("exemplaires", exemplaires);
    //     return "exemplaires_disponibles";
    // }

    // @GetMapping("/statistiques")
    // public String statistiques(Model model) {
    //     long totalPrets = pretRepo.count();
    //     long totalResa = reservationRepo.count();
    //     long dispo = exemplaireRepo.countByDispoTrue();
    //     long indispo = exemplaireRepo.countByDispoFalse();

    //     model.addAttribute("totalPrets", totalPrets);
    //     model.addAttribute("totalResa", totalResa);
    //     model.addAttribute("dispo", dispo);
    //     model.addAttribute("indispo", indispo);
    //     return "statistiques";
    // }
    // @GetMapping("/statistiques")
    // public String statistiques(Model model) {
    //     Map<String, Long> stats = adminService.getStatistiques();
    //     model.addAttribute("totalPrets", stats.get("totalPrets"));
    //     model.addAttribute("totalResa", stats.get("totalResa"));
    //     model.addAttribute("dispo", stats.get("dispo"));
    //     model.addAttribute("indispo", stats.get("indispo"));
    //     return "statistiques";
    // }
}
