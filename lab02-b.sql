  ALTER TABLE SOFT ADD CONSTRAINT pervich_key_soft PRIMARY KEY (id);
  ALTER TABLE PCS ADD CONSTRAINT pervich_key_pcs PRIMARY KEY (id);
  ALTER TABLE ROOMS ADD CONSTRAINT pervich_key_rooms PRIMARY KEY (id);
  ALTER TABLE EMPLOYEES ADD CONSTRAINT pervich_key_employees PRIMARY KEY (id);



  ALTER TABLE INSTALLS ADD CONSTRAINT FK_Installs_PC_ID  FOREIGN KEY (pc_id) REFERENCES PCS (id);
  ALTER TABLE INSTALLS ADD CONSTRAINT FK_Installs_SOFT_ID  FOREIGN KEY (soft_id) REFERENCES SOFT (id);
  ALTER TABLE PCS ADD CONSTRAINT FK_PCS_ROOMS  FOREIGN KEY (room_id) REFERENCES ROOMS (id);
  ALTER TABLE ROOMS ADD CONSTRAINT FK_ROOMS_EMP  FOREIGN KEY (emp_id) REFERENCES EMPLOYEES (id);
