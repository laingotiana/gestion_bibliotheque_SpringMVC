package com.springjpa.service;

import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import com.springjpa.entity.Admin;
import com.springjpa.entity.Pret;
import com.springjpa.repository.AdminRepository;
import com.springjpa.repository.*;

@Service
public class AdminService {

    @Autowired
    private AdminRepository adminRepository;

    @Autowired
    private PretRepository pretRepo;

    @Autowired
    private ReservationRepository reservationRepo;

    @Autowired
    private ExemplaireRepository exemplaireRepo;

    
    public Admin findById(Integer id){
        return adminRepository.findById(id).get();
    }

    public List<Admin> findAll(){
        return adminRepository.findAll();
    }

    public void save(Admin admin){
        adminRepository.save(admin);
    }
     public List<Pret> getLivresEmpruntes() {
        return pretRepo.findAll();
    }
    public Map<String, Long> getStatistiques() {
    Map<String, Long> stats = new HashMap<>();
    stats.put("totalPrets", pretRepo.count());
    stats.put("totalResa", reservationRepo.count());
    stats.put("dispo", exemplaireRepo.countByDispoTrue());
    stats.put("indispo", exemplaireRepo.countByDispoFalse());
    return stats;
    }
}
