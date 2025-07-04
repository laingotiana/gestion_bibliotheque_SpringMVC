package com.springjpa.service;
import com.springjpa.repository.*;
import com.springjpa.entity.Adherant;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
// import org.springframework.ui.Model;
// import org.springframework.web.bind.annotation.GetMapping;

@Service
public class LoginService {

    @Autowired
    private AdminRepository adminRepo;

    @Autowired
    private AdherantRepository adherantRepo;

    public boolean verifierAdmin(String nom, String password) {
        return adminRepo.findByNomAdminAndPassword(nom, password) != null;
    }

    public boolean verifierAdherant(String nom, String password) {
        return adherantRepo.findByNomAdherantAndPassword(nom, password) != null;
    }

    public Adherant getAdherantByNomAndPassword(String nom, String password) {
        return adherantRepo.findByNomAdherantAndPassword(nom, password);
    }
}


