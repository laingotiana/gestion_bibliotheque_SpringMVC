package com.springjpa.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.springjpa.entity.Pret;
import java.util.List;

@Repository
public interface PretRepository extends JpaRepository<Pret, Integer> {
    // Prêts en cours pour un adhérent (dateRetour null)
    // List<Pret> findByAdherantIdAdherantAndDateRetourIsNull(Integer idAdherant);
}
