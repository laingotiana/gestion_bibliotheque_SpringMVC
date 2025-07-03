-- Table: auteur
INSERT INTO auteur VALUES (1, 'Hugo', 'Victor');
INSERT INTO auteur VALUES (2, 'Zola', 'Emile');

-- Table: editeur
INSERT INTO editeur VALUES (1, 'Gallimard', 'Paris');
INSERT INTO editeur VALUES (2, 'Flammarion', 'Paris');

-- Table: categorie
INSERT INTO categorie VALUES (1, 101);
INSERT INTO categorie VALUES (2, 102);

INSERT INTO profil VALUES (1, 'etudiant', 5, 2);
INSERT INTO profil VALUES (2, 'professeur', 10, 5);
INSERT INTO profil VALUES (3, 'anonyme', 1, 0);
INSERT INTO profil VALUES (4, 'professionnel', 7, 3);

-- Table: adherant
INSERT INTO adherant VALUES (1, 'Dupont', 'Jean', 'pass123', 1);         -- etudiant
INSERT INTO adherant VALUES (2, 'Lefevre', 'Marie', 'pass456', 2);       -- professeur
INSERT INTO adherant VALUES (3, 'Martin', 'Paul', 'pass789', 3);         -- anonyme
INSERT INTO adherant VALUES (4, 'Durand', 'Sophie', 'pass101', 4);       -- professionnel

-- -- Table: profil
-- INSERT INTO profil VALUES (1, 201, 5, 2);
-- INSERT INTO profil VALUES (2, 202, 10, 5);

-- Table: admin
INSERT INTO admin VALUES (1, 'Martin', 'admin123', 'Paul');
INSERT INTO admin VALUES (2, 'Durand', 'admin456', 'Sophie');

-- Table: type_pret
INSERT INTO type_pret VALUES (1, 'Normal');
INSERT INTO type_pret VALUES (2, 'Longue durée');

-- Table: duree_pret
INSERT INTO duree_pret VALUES (1, 15, 1);
INSERT INTO duree_pret VALUES (2, 30, 2);

-- Table: inscription_profil
INSERT INTO inscription_profil VALUES (1, 365, 1);
INSERT INTO inscription_profil VALUES (2, 180, 2);

-- Table: statut_reservation
INSERT INTO statut_reservation VALUES (1, 'En attente');
INSERT INTO statut_reservation VALUES (2, 'Validée');

-- Table: livre
INSERT INTO livre VALUES (1, 'Les Misérables', '9782070409189', 'Français', 1862, 'Roman historique', 1232, 1, 1);
INSERT INTO livre VALUES (2, 'Germinal', '9782070413117', 'Français', 1885, 'Roman social', 592, 2, 2);

-- -- Table: adherant
-- INSERT INTO adherant VALUES (1, 'Dupont', 'Jean', 'pass123', 1);
-- INSERT INTO adherant VALUES (2, 'Lefevre', 'Marie', 'pass456', 2);

-- Table: inscription
INSERT INTO inscription VALUES (1, '2024-01-10 10:00:00', 1, 1);
INSERT INTO inscription VALUES (2, '2024-02-15 11:00:00', 1, 2);

-- Table: penalite
INSERT INTO penalite VALUES (1, 7, '2024-03-01 09:00:00', 1);
INSERT INTO penalite VALUES (2, 3, '2024-03-05 14:00:00', 2);

-- Table: exemplaire
INSERT INTO exemplaire VALUES (1, 1, 1);
INSERT INTO exemplaire VALUES (2, 0, 2);

-- Table: pret
INSERT INTO pret VALUES (1, '2024-04-01 10:00:00', 1, 1, 1, 1);
INSERT INTO pret VALUES (2, '2024-04-02 11:00:00', 2, 2, 2, 2);

-- Table: reservation
INSERT INTO reservation VALUES (1, '2024-05-01 12:00:00', 1, 1, 1, 1);
INSERT INTO reservation VALUES (2, '2024-05-02 13:00:00', 2, 2, 2, 2);

-- Table: fin_pret
INSERT INTO fin_pret VALUES (1, '2024-04-15 10:00:00', 1);
INSERT INTO fin_pret VALUES (2, '2024-04-16 11:00:00', 2);

-- Table: categorie_livre
INSERT INTO categorie_livre VALUES (1, 1);
INSERT INTO categorie_livre VALUES (2, 2);

-- Table: quota_type_pret
INSERT INTO quota_type_pret VALUES (1, 1, 3);
INSERT INTO quota_type_pret VALUES (2, 2, 5);