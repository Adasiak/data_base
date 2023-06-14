INSERT INTO hospital (hospital_id, hospital_name, adres, phone_number, email) VALUES (1, 'Szpital Wojewódzki', 'ul. Szpitalna 1, 00-001 Warszawa', '+48 22 123 45 67', 'szpitalwojewodzki@example.com');
INSERT INTO hospital (hospital_id, hospital_name, adres, phone_number, email) VALUES (2, 'Szpital Miejski', 'ul. Wojska Polskiego 1, 00-001 Warszawa', '+48 22 987 65 43', 'szpitalmiejski@example.com');

INSERT INTO ward (ward_id, ward_name, building, floor, phone_number, number_of_free_beds, maximum_capacity, hospital_hospital_id) VALUES (1, 'Oddział Chirurgiczny', 'Budynek A', 2, '+48 22 111 11 11', 10, 20, 1);
INSERT INTO ward (ward_id, ward_name, building, floor, phone_number, number_of_free_beds, maximum_capacity, hospital_hospital_id) VALUES (2, 'Oddział Pediatryczny', 'Budynek B', 3, '+48 22 222 22 22', 15, 25, 2);

INSERT INTO patient (patient_id, name, sure_name, email, residence_hall, ward_ward_id) VALUES (1, 'Anna', 'Nowak', 'annanowak@example.com', 123, 1);
INSERT INTO patient (patient_id, name, sure_name, email, residence_hall, ward_ward_id) VALUES (2, 'Jan', 'Kowalski', 'jankowalski@example.com', 456, 2);

INSERT INTO personel (personel_id, position, name, sure_name, phone_number, email, adres, ward_ward_id) VALUES (1, 'Lekarz', 'Michał', 'Kowalski', '+48 22 555 55 55', 'michalkowalski@example.com', 'ul. Medyczna 1, 00-001 Warszawa', 1);
INSERT INTO personel (personel_id, position, name, sure_name, phone_number, email, adres, ward_ward_id) VALUES (2, 'Pielęgniarka', 'Alicja', 'Nowak', '+48 22 666 66 66', 'alicjanowak@example.com', 'ul. Medyczna 1, 00-001 Warszawa', 2);

INSERT INTO surgery (surgery_id, surgery_room, "date", name_of_surgery, personel_personel_id, patient_patient_id) VALUES (1, 101, TO_DATE('2023-05-10', 'YYYY-MM-DD'), 'Usunięcie wyrostka robaczkowego', 1, 1);
INSERT INTO surgery (surgery_id, surgery_room, "date", name_of_surgery, personel_personel_id, patient_patient_id) VALUES (2, 102, TO_DATE('2023-05-11', 'YYYY-MM-DD'), 'Artroskopia kolana', 2, 2);



INSERT INTO hospital (hospital_id, hospital_name, adres, phone_number, email) VALUES (3, 'Szpital Wojewódzki', 'ul. Wojska Polskiego 1, 00-001 Warszawa', '+48 22 123 45 67', 'szpitalwojewodzki@example.com');
INSERT INTO hospital (hospital_id, hospital_name, adres, phone_number, email) VALUES (4, 'Szpital Miejski', 'ul. Grunwaldzka 1, 80-001 Gdańsk', '+48 58 765 43 21', 'szpitalmiejski@example.com');

INSERT INTO ward (ward_id, ward_name, building, floor, phone_number, number_of_free_beds, maximum_capacity, hospital_hospital_id) VALUES (1, 'Oddział Chirurgiczny', 'A', 1, '+48 22 111 11 11', 10, 20, 3);
INSERT INTO ward (ward_id, ward_name, building, floor, phone_number, number_of_free_beds, maximum_capacity, hospital_hospital_id) VALUES (2, 'Oddział Internistyczny', 'B', 2, '+48 22 222 22 22', 15, 25, 3);

INSERT INTO patient (patient_id, name, sure_name, email, residence_hall, ward_ward_id) VALUES (1, 'Jan', 'Kowalski', 'jankowalski@example.com', 1, 1);
INSERT INTO patient (patient_id, name, sure_name, email, residence_hall, ward_ward_id) VALUES (2, 'Anna', 'Nowak', 'annanowak@example.com', 2, 2);

INSERT INTO personel (personel_id, position, name, sure_name, phone_number, email, adres, ward_ward_id) VALUES (1, 'Lekarz', 'Andrzej', 'Nowakowski', '+48 22 555 55 55', 'andrzejnowakowski@example.com', 'ul. Słoneczna 1, 01-001 Warszawa', 1);
INSERT INTO personel (personel_id, position, name, sure_name, phone_number, email, adres, ward_ward_id) VALUES (2, 'Pielęgniarka', 'Maria', 'Kowalska', '+48 22 444 44 44', 'mariakowalska@example.com', 'ul. Zielona 2, 01-002 Warszawa', 2);

INSERT INTO surgery (surgery_id, surgery_room, "date", name_of_surgery, personel_personel_id, patient_patient_id) VALUES (1, 101, TO_DATE('2023-05-10 10:00', 'YYYY-MM-DD HH24:MI'), 'Usunięcie wyrostka robaczkowego', 1, 1);
INSERT INTO surgery (surgery_id, surgery_room, "date", name_of_surgery, personel_personel_id, patient_patient_id) VALUES (2, 201, TO_DATE('2023-05-12 14:00', 'YYYY-MM-DD HH24:MI'), 'Złamanie kości ramiennej', 2, 2);



INSERT INTO hospital (hospital_id, hospital_name, adres, phone_number, email)
VALUES (1, 'St. Mary Hospital', '123 Main St, Anytown, USA', '555-1234', 'info@stmaryhospital.com');

INSERT INTO ward (ward_id, ward_name, building, floor, phone_number, number_of_free_beds, maximum_capacity, hospital_hospital_id)
VALUES (1, 'Cardiology Ward', 'Main Building', 3, '555-4321', 10, 20, 1);

INSERT INTO patient (patient_id, name, sure_name, email, residence_hall, ward_ward_id)
VALUES (1, 'John', 'Doe', 'johndoe@email.com', 123, 1);

INSERT INTO personel (personel_id, position, name, sure_name, phone_number, email, adres, ward_ward_id)
VALUES (1, 'Nurse', 'Jane', 'Doe', '555-9876', 'janedoe@email.com', '456 Maple St, Anytown, USA', 1);

INSERT INTO surgery (surgery_id, surgery_room, "date", name_of_surgery, personel_personel_id, patient_patient_id)
VALUES (1, 101, TO_DATE('2023-05-07', 'YYYY-MM-DD'), 'Appendectomy', 1, 1);


INSERT INTO hospital (hospital_id, hospital_name, adres, phone_number, email)
VALUES (1, 'St. Luke Hospital', '123 Main St., Anytown USA', '555-1234', 'info@stlukehospital.com');

INSERT INTO hospital (hospital_id, hospital_name, adres, phone_number, email)
VALUES (2, 'Memorial Hospital', '456 Oak St., Anycity USA', '555-5678', 'info@memorialhospital.com');

INSERT INTO ward (ward_id, ward_name, building, floor, phone_number, number_of_free_beds, maximum_capacity, hospital_hospital_id)
VALUES (1, 'Pediatrics', 'Main', 3, '555-3333', 10, 20, 1);

INSERT INTO ward (ward_id, ward_name, building, floor, phone_number, number_of_free_beds, maximum_capacity, hospital_hospital_id)
VALUES (2, 'Surgery', 'Main', 4, '555-4444', 5, 10, 1);

INSERT INTO patient (patient_id, name, sure_name, email, residence_hall, ward_ward_id)
VALUES (1, 'John', 'Doe', 'johndoe@example.com', 101, 1);

INSERT INTO patient (patient_id, name, sure_name, email, residence_hall, ward_ward_id)
VALUES (2, 'Jane', 'Doe', 'janedoe@example.com', 102, 1);

INSERT INTO personel (personel_id, position, name, sure_name, phone_number, email, adres, ward_ward_id)
VALUES (1, 'Nurse', 'Susan', 'Smith', '555-1111', 'ssmith@example.com', '789 Elm St., Anycity USA', 1);

INSERT INTO personel (personel_id, position, name, sure_name, phone_number, email, adres, ward_ward_id)
VALUES (2, 'Doctor', 'Robert', 'Jones', '555-2222', 'rjones@example.com', '456 Maple St., Anytown USA', 1);

INSERT INTO surgery (surgery_id, surgery_room, "date", name_of_surgery, personel_personel_id, patient_patient_id)
VALUES (1, 101, TO_DATE('2023-05-10 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Appendectomy', 2, 1);

INSERT INTO surgery (surgery_id, surgery_room, "date", name_of_surgery, personel_personel_id, patient_patient_id)
VALUES (2, 102, TO_DATE('2023-05-11 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Hip replacement', 2, 2);

    add_patient_procedure('Jan', 'Kowalski', 'jan.kowalski@example.com', 1, 1);
    add_patient_procedure('Anna', 'Nowak', 'anna.nowak@example.com', 2, 2);
    add_patient_procedure('Marek', 'Pawlak', 'marek.pawlak@example.com', 3, 3);
    add_patient_procedure('Katarzyna', 'Szymczak', 'katarzyna.szymczak@example.com', 1, 4);
    add_patient_procedure('Marcin', 'Kaczmarek', 'marcin.kaczmarek@example.com', 2, 5);
    add_patient_procedure('Alicja', 'Jankowska', 'alicja.jankowska@example.com', 3, 6);
    add_patient_procedure('Adam', 'Lewandowski', 'adam.lewandowski@example.com', 1, 7);
    add_patient_procedure('Ewa', 'Olszewska', 'ewa.olszewska@example.com', 2, 8);
    add_patient_procedure('Piotr', 'Duda', 'piotr.duda@example.com', 3, 9);
    add_patient_procedure('Agnieszka', 'Kowalczyk', 'agnieszka.kowalczyk@example.com', 1, 10);
    add_patient_procedure('Tomasz', 'Mazur', 'tomasz.mazur@example.com', 2, 11);
    add_patient_procedure('Iwona', 'Krawczyk', 'iwona.krawczyk@example.com', 3, 12);
    add_patient_procedure('Rafał', 'Wójcik', 'rafal.wojcik@example.com', 1, 13);
    add_patient_procedure('Magdalena', 'Kaczmarczyk', 'magdalena.kaczmarczyk@example.com', 2, 14);
    add_patient_procedure('Krzysztof', 'Jóźwiak', 'krzysztof.jozwiak@example.com', 3, 15);
    add_patient_procedure('Dorota', 'Adamska', 'dorota.adamska@example.com', 1, 16);
    add_patient_procedure('Bartłomiej', 'Kowalewski', 'bartlomiej.kowalewski@example.com', 2, 17);
    add_patient_procedure('Martyna', 'Majewska', 'martyna.majewska@example.com', 3, 18);
    add_patient_procedure('Łukasz', 'Grabowski', 'lukasz.grabowski@example.com', 1, 19);
    add_patient_procedure('Sylwia', 'Kołodziej', 'sylwia.kolodziej@example.com', 2, 20);

    add_ward_procedure('Oddział chirurgii', 'Budynek A', 3, '123456789', 30, 1);
    add_ward_procedure('Oddział neurologii', 'Budynek B', 2, '987654321', 20, 2);
    add_ward_procedure('Oddział kardiologii', 'Budynek C', 5, '111222333', 40, 3);
    add_ward_procedure('Oddział pulmonologii', 'Budynek D', 4, '444555666', 25, 4);
    add_ward_procedure('Oddział pediatrii', 'Budynek A', 1, '777888999', 15, 1);
    add_ward_procedure('Oddział geriatrii', 'Budynek B', 3, '222333444', 35, 2);
    add_ward_procedure('Oddział okulistyczny', 'Budynek C', 2, '555666777', 18, 3);
    add_ward_procedure('Oddział dermatologiczny', 'Budynek D', 1, '888999000', 22, 4);
    add_ward_procedure('Oddział onkologiczny', 'Budynek A', 4, '000111222', 28, 1);
    add_ward_procedure('Oddział urologiczny', 'Budynek B', 2, '333444555', 19, 2);
    add_ward_procedure('Oddział ginekologiczny', 'Budynek C', 3, '666777888', 32, 3);
    add_ward_procedure('Oddział psychiatryczny', 'Budynek D', 1, '999000111', 16, 4);
    add_ward_procedure('Oddział ortopedyczny', 'Budynek A', 2, '222333444', 23, 1);
    add_ward_procedure('Oddział hematologiczny', 'Budynek B', 4, '555666777', 27, 2);
    add_ward_procedure('Oddział endokrynologiczny', 'Budynek C', 1, '888999000', 21, 3);
    add_ward_procedure('Oddział gastrologiczny', 'Budynek D', 3, '111222333', 29, 4);
    add_ward_procedure('Oddział rehabilitacyjny', 'Budynek A', 5, '444555666', 31, 1);
    add_ward_procedure('Oddział alergologiczny', 'Budynek B', 2, '777888999', 17, 2);
    add_ward_procedure('Oddział diabetologiczny', 'Budynek C', 1, '000111222', 24, 3);
    add_ward_procedure('Oddział nefrologiczny', 'Budynek D', 4, '333444555', 26, 4);



CREATE OR REPLACE FUNCTION get_next_name_personel(
    p_first_name IN VARCHAR2,
    p_sure_name in VARCHAR2
)
RETURN VARCHAR2
IS
    v_next_num NUMBER;
    v_next_name VARCHAR2(50);
BEGIN
    SELECT MAX(SUBSTR(name, LENGTH(p_first_name) + 1)) INTO v_next_num
    FROM (
        SELECT name FROM personel WHERE name LIKE '{p_first_name}%' AND sure_name = p_sure_name
    );

    IF v_next_num IS NULL THEN
        v_next_name := p_first_name || '1';
    ELSE
        v_next_num := v_next_num + 1;
        v_next_name := p_first_name || v_next_num;
    END IF;

    RETURN v_next_name;
END;


    add_personel_procedure('Lekarz', 'Alicja', 'Nowak', '111222333', 'alicia.nowak@example.com', 'ul. Wojska Polskiego 10', 2);
    add_personel_procedure('Pielegniarka', 'Katarzyna', 'Wójcik', '444555666', 'katarzyna.wojcik@example.com', 'ul. Długa 5', 3);
    add_personel_procedure('Lekarz', 'Marek', 'Kaczmarek', '777888999', 'marek.kaczmarek@example.com', 'ul. Wrocławska 20', 1);
    add_personel_procedure('Recepcjonista', 'Anna', 'Lewandowska', '121314151', 'anna.lewandowska@example.com', 'ul. Kopernika 4', 3);
    add_personel_procedure('Pielegniarka', 'Małgorzata', 'Szymańska', '161718192', 'malgorzata.szczepanska@example.com', 'ul. Podwale 6', 2);
    add_personel_procedure('Lekarz', 'Jakub', 'Kwiatkowski', '222333444', 'jakub.kwiatkowski@example.com', 'ul. Rycerska 3', 1);
    add_personel_procedure('Recepcjonista', 'Karolina', 'Kowalczyk', '555666777', 'karolina.kowalczyk@example.com', 'ul. Wawelska 12', 2);
    add_personel_procedure('Lekarz', 'Tomasz', 'Wójcik', '888999000', 'tomasz.wojcik@example.com', 'ul. Słoneczna 7', 1);
    add_personel_procedure('Pielegniarka', 'Patrycja', 'Nowakowska', '252627282', 'patrycja.nowakowska@example.com', 'ul. Główna 15', 3);
    add_personel_procedure('Lekarz', 'Katarzyna', 'Kaczmarek', '333444555', 'katarzyna.kaczmarek@example.com', 'ul. Szkolna 8', 2);
    add_personel_procedure('Recepcjonista', 'Marta', 'Lis', '666777888', 'marta.lis@example.com', 'ul. Zielona 21', 1);
    add_personel_procedure('Pielegniarka', 'Joanna', 'Mazur', '293031323', 'joanna.mazur@example.com', 'ul. Wolska 3', 1);
    add_personel_procedure('Lekarz', 'Piotr', 'Kwiatkowski', '444555666', 'piotr.kwiatkowski@example.com', 'ul. Klonowa 9', 3);


CREATE OR REPLACE PROCEDURE add_patient_procedure(
    p_name IN VARCHAR2,
    p_sure_name IN VARCHAR2,
    p_email IN VARCHAR2,
    p_residence_hall IN NUMBER,
    p_ward_id IN NUMBER
)
IS
    v_name VARCHAR2(150);
    v_patient_id NUMBER;
BEGIN
    SELECT MAX(patient_id) + 1 INTO v_patient_id FROM patient;
    v_name := get_next_name_patient(p_name, p_sure_name);
    INSERT INTO patient (
        patient_id,
        name,
        sure_name,
        email,
        residence_hall,
        ward_ward_id
    ) VALUES (
        v_patient_id,
        v_name,
        p_sure_name,
        p_email,
        p_residence_hall,
        p_ward_id
    );
    COMMIT;
END;
;
    add_surgery_procedure(1, '10-MAY-2023', 'Operacja serca', 'Jan', 'Nowak', 'Anna', 'Kowalska');
    add_surgery_procedure(2, '11-MAY-2023', 'Artroskopia kolana', 'Adam', 'Kowalczyk', 'Jan', 'Nowak');
    add_surgery_procedure(3, '12-MAY-2023', 'Operacja pęcherza', 'Marta', 'Wójcik', 'Maria', 'Jankowska');
    add_surgery_procedure(4, '13-MAY-2023', 'Wymiana stawu biodrowego', 'Piotr', 'Kaczmarek', 'Katarzyna', 'Lis');
    add_surgery_procedure(5, '14-MAY-2023', 'Usunięcie wyrostka robaczkowego', 'Tomasz', 'Piotrowski', 'Jakub', 'Szymański');
    add_surgery_procedure(6, '15-MAY-2023', 'Rekonstrukcja ACL', 'Dominik', 'Sobczak', 'Agnieszka', 'Wojciechowska');
    add_surgery_procedure(7, '16-MAY-2023', 'Artroskopia barku', 'Aleksandra', 'Dąbrowska', 'Robert', 'Jaworski');
    add_surgery_procedure(8, '17-MAY-2023', 'Operacja kręgosłupa', 'Krzysztof', 'Kubiak', 'Bartosz', 'Czarnecki');
    add_surgery_procedure(9, '18-MAY-2023', 'Operacja tarczycy', 'Patrycja', 'Zawadzka', 'Mateusz', 'Kowalewski');
    add_surgery_procedure(10, '19-MAY-2023', 'Wymiana zastawki aortalnej', 'Michał', 'Sikora', 'Ewa', 'Dudek');
    add_surgery_procedure(11, '20-MAY-2023', 'Laparoskopowa nefrektomia', 'Katarzyna', 'Jastrzębska', 'Kamil', 'Mazur');
    add_surgery_procedure(12, '21-MAY-2023', 'Operacja żołądka', 'Grzegorz', 'Witkowski', 'Patrycja', 'Kowalczyk');
    add_surgery_procedure(13, '22-MAY-2023', 'Usunięcie guza mózgu', 'Karolina', 'Marcinkowska', 'Bartłomiej', 'Laskowski');
    add_surgery_procedure(14, '23-MAY-2023', 'Artroskopia stawu skokowego', 'Łukasz', 'Nowicki', 'Kornelia', 'Olejniczak');
    add_surgery_procedure(15, '24-MAY-2023', 'Operacja stulejki', 'Natalia', 'Krajewska', 'Wojciech', 'Lisowski');

