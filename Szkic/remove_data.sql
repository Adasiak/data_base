DELIMITER $
CREATE PROCEDURE remove_content_from_table (
    p_table_name IN VARCHAR2
)
BEGIN
    CASE 
      WHEN p_table_name = 'hospital'  THEN DELETE FROM hospital;
      WHEN p_table_name = 'patient'  THEN DELETE FROM patient;
      WHEN p_table_name = 'personel'  THEN DELETE FROM personel;
      WHEN p_table_name = 'surgery'  THEN DELETE FROM surgery;
      WHEN p_table_name = 'ward'  THEN DELETE FROM ward;
      ELSE ''
    END CASE;
   COMMIT;
END $
DELIMITER ;





CREATE OR REPLACE PROCEDURE delete_all_rows(p_table_name IN VARCHAR2) IS
BEGIN
    EXECUTE IMMEDIATE 'DELETE FROM ' || p_table_name;
    COMMIT;
END;

CREATE OR REPLACE PROCEDURE delete_all_data AS
BEGIN
  DELETE FROM surgery;
  DELETE FROM patient;
  DELETE FROM personel;
  DELETE FROM ward;
  DELETE FROM hospital;
  COMMIT;
END;