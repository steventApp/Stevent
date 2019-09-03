CREATE TABLE users (
    user_id varchar(10),
    nama varchar(100),
    alamat text,
    tempat_lahir varchar(100),
    taggal_lahir date,
    pass varchar(100),
    roles varchar(15),
    CONSTRAINT users_pk PRIMARY KEY (user_id) ENABLE
);

CREATE TABLE events (
    event_id varchar(10),
    judul varchar(100),
    tanggal_waktu timestamp,
    tempat varchar(100),
    deskripsi text,
    user_id varchar(10),
    harga integer,
    CONSTRAINT events_pk PRIMARY KEY (event_id) ENABLE,
    CONSTRAINT events_fk FOREIGN KEY (usr_id)
        REFERENCES users(user_id) ON DELETE CASCADE ENABLE
);

CREATE TABLE categories (
    category_id varchar(10),
    nama varchar(100),
    CONSTRAINT categories_pk PRIMARY KEY (category_pk) ENABLE
);

CREATE TABLE tickets (
    ticket_id varchar(10),
    harga integer,
    payment_status boolean,
    event_id varchar(10),
    user_id varchar(10,)
    CONSTRAINT tickets_pk PRIMARY KEY (ticket_id) ENABLE,
    CONSTRAINT tickets_fk FOREIGN KEY (evnt_id)
        REFERENCES events(event_id) ON DELETE CASCADE ENABLE,
    CONSTRAINT tickets_fk FOREIGN KEY (usr_id)
        REFERENCES users(user_id) ON DELETE CASCADE ENABLE
);

CREATE TABLE payment (
    payment_id varchar(10),
    bukti_pembayaran varchar(100),
    CONSTRAINT payment_pk PRIMARY KEY (paymen_id) ENABLE
);

CREATE TABLE categories_event (
    event_id varchar(10),
    category_id varchar(10),
    CONSTRAINT categories_event_pk PRIMARY KEY(event_id, category_id),
    CONSTRAINT categories_event_fk FOREIGN KEY (event_id)
        REFERENCES events(event_id) ON DELETE CASCADE ENABLE,
    CONSTRAINT categories_event_fk FOREIGN KEY (category_id)
        REFERENCES categories(category_id) ON DELETE CASCADE ENABLE
);

INSERT INTO USERS(user_id,nama,alamat,tempat_lahir,tanggal_lahir,pass,roles)
VALUES ('U_001', 'Alfhi', 'Permata Buah Batu', 'Jambi', '14-01-1999','astronaut','Admin');
INSERT INTO USERS(user_id,nama,alamat,tempat_lahir,tanggal_lahir,pass,roles)
VALUES ('U_002', 'Rakha', 'Pesona Bali', 'Jambi', '14-01-1999','astronaut','pelanggan');
INSERT INTO USERS(user_id,nama,alamat,tempat_lahir,tanggal_lahir,pass,roles)
VALUES ('U_003', 'Indri', 'Perata Buah Batu', 'Jambi', '14-01-1999','astronaut','pelanggan');
INSERT INTO USERS(user_id,nama,alamat,tempat_lahir,tanggal_lahir,pass,roles)
VALUES ('U_004', 'Kartika', 'Perata Buah Batu', 'Jambi', '14-01-1999','astronaut','pelanggan');
INSERT INTO USERS(user_id,nama,alamat,tempat_lahir,tanggal_lahir,pass,roles)
VALUES ('U_005', 'Yayat', 'Jl. Siliwangi', 'Bandung', '01-01-2000','123456','pelanggan');
INSERT INTO USERS(user_id,nama,alamat,tempat_lahir,tanggal_lahir,pass,roles)
VALUES ('U_006', 'Bob', 'Perata Buah Batu', 'Jambi', '14-01-1999','astronaut','penyelenggara');
INSERT INTO USERS(user_id,nama,alamat,tempat_lahir,tanggal_lahir,pass,roles)
VALUES ('U_007', 'Alex', 'Perata Buah Batu', 'Jambi', '14-01-1999','astronaut','penyelenggara');
INSERT INTO USERS(user_id,nama,alamat,tempat_lahir,tanggal_lahir,pass,roles)
VALUES ('U_008', 'Yuki', 'Perata Buah Batu', 'Jambi', '14-01-1999','astronaut','penyelenggara');
INSERT INTO USERS(user_id,nama,alamat,tempat_lahir,tanggal_lahir,pass,roles)
VALUES ('U_009', 'Immelman', 'Perata Buah Batu', 'Jambi', '14-01-1999','secret','admin');
INSERT INTO USERS(user_id,nama,alamat,tempat_lahir,tanggal_lahir,pass,roles)
VALUES ('U_010', 'Alfhisa', 'Perata Buah Batu', 'Jambi', '14-01-1999','secret','admin');
INSERT INTO USERS(user_id,nama,alamat,tempat_lahir,tanggal_lahir,pass,roles)
VALUES ('U_011', 'Hito', 'Perata Buah Batu', 'Jambi', '14-01-1999','astronaut','pelanggan');


insert into events values('E_001', 'UI UX Workshop', '2019-09-03 09:00:00', 'Telkom University', 'Workshop mengenai User Interface dan User Experience', 'U_006',10000);
insert into events values('E_002', 'Techweek', '2019-09-10 09:00:00', 'Telkom University', 'Workshop mengenai Website', 'U_006',15000);
insert into events values('E_003', 'Net.Conf', '2019-09-17 09:00:00', 'Telkom University', 'Workshop mengenai Jaringan Dasar dan Konfigurasinya', 'U_006',12000);
insert into events values('E_004', 'Data Debunked Day', '2019-09-24 09:00:00', 'Telkom University', 'Seminar mengenai Big Data', 'U_006',12000);
insert into events values('E_005', 'Lets Talk With Modern Journalism', '2019-10-01 09:00:00', 'Telkom University', 'Seminar mengenai jurnalis modern', 'U_006',180000);
insert into events values('E_006', 'Royal League', '2019-10-08 09:00:00', 'Telkom University', 'Turnamen Game PUBG Mobile', 'U_006',10500);
insert into events values('E_007', 'Mengenal Lebih Dekat Tentang TA ICM', '2019-09-01 09:00:00', 'Telkom University', 'Seminar yang membahas TA bidang ICM', 'U_007',40000);
insert into events values('E_008', 'Pelatihan TensorFlow.js', '2019-10-01 09:00:00', 'Telkom University', 'Workshop tentang TensorFlow.js', 'U_007',40000);
insert into events values('E_009', 'Pra-Event Nihon No Matsuri', '2019-10-9 09:00:00', 'BEC Mall', 'Acara Pra-Event dari Festival Jepang Nihon No Matsuri', 'U_008',50000);
insert into events values('E_010', 'Nihon No Matsuri', '2019-10-19 09:00:00', 'Telkom University', 'Festival Jepang', 'U_008',50000);


INSERT INTO categories(category_id,nama)
VALUES ('C_001','Konser');
INSERT INTO categories(category_id,nama)
VALUES ('C_002','K-pop');
INSERT INTO categories(category_id,nama)
VALUES ('C_003','Rock');
INSERT INTO categories(category_id,nama)
VALUES ('C_004','Pensi');
INSERT INTO categories(category_id,nama)
VALUES ('C_005','Fan Meeting');
INSERT INTO categories(category_id,nama)
VALUES ('C_006','Seni');
INSERT INTO categories(category_id,nama)
VALUES ('C_007','Galeri');
INSERT INTO categories(category_id,nama)
VALUES ('C_008','Seminar');
INSERT INTO categories(category_id,nama)
VALUES ('C_009','Workshop');
INSERT INTO categories(category_id,nama)
VALUES ('C_0010','Pelatihan');

INSERT INTO tickets(ticket_id,harga,payment_status,event_id,user_id)
VALUES ('T_001','20000','Lunas','E_001','U_005');
INSERT INTO tickets(ticket_id,harga,payment_status,event_id,user_id)
VALUES ('T_002','30000','Lunas','E_002','U_001');
INSERT INTO tickets(ticket_id,harga,payment_status,event_id,user_id)
VALUES ('T_003','130000','Lunas','E_003','U_002');
INSERT INTO tickets(ticket_id,harga,payment_status,event_id,user_id)
VALUES ('T_004','230000','Lunas','E_004','U_003');
INSERT INTO tickets(ticket_id,harga,payment_status,event_id,user_id)
VALUES ('T_005','50000','Lunas','E_005','U_004');
INSERT INTO tickets(ticket_id,harga,payment_status,event_id,user_id)
VALUES ('T_006','70000','Lunas','E_006','U_001');
INSERT INTO tickets(ticket_id,harga,payment_status,event_id,user_id)
VALUES ('T_007','80000','Lunas','E_007','U_002');
INSERT INTO tickets(ticket_id,harga,payment_status,event_id,user_id)
VALUES ('T_008','40000','Lunas','E_008','U_003');
INSERT INTO tickets(ticket_id,harga,payment_status,event_id,user_id)
VALUES ('T_009','30000','Lunas','E_009','U_004');
INSERT INTO tickets(ticket_id,harga,payment_status,event_id,user_id)
VALUES ('T_010','20000','Lunas','E_010','U_005');

INSERT INTO payment(payment_id,bukti_pembayaran)
VALUES ('P_001','tf1.jpg');
INSERT INTO payment(payment_id,bukti_pembayaran)
VALUES ('P_002','tf2.jpg');
INSERT INTO payment(payment_id,bukti_pembayaran)
VALUES ('P_003','tf3.jpg');
INSERT INTO payment(payment_id,bukti_pembayaran)
VALUES ('P_004','tf4.jpg');
INSERT INTO payment(payment_id,bukti_pembayaran)
VALUES ('P_005','tf5.jpg');
INSERT INTO payment(payment_id,bukti_pembayaran)
VALUES ('P_006','tf6.jpg');
INSERT INTO payment(payment_id,bukti_pembayaran)
VALUES ('P_007','tf7.jpg');
INSERT INTO payment(payment_id,bukti_pembayaran)
VALUES ('P_008','tf8.jpg');
INSERT INTO payment(payment_id,bukti_pembayaran)
VALUES ('P_009','tf9.jpg');
INSERT INTO payment(payment_id,bukti_pembayaran)
VALUES ('P_010','tf10.jpg');

INSERT INTO categories_event(event_id,category_id)
Values ('E_001','C_001');
INSERT INTO categories_event(event_id,category_id)
Values ('E_002','C_002');
INSERT INTO categories_event(event_id,category_id)
Values ('E_003','C_003');
INSERT INTO categories_event(event_id,category_id)
Values ('E_004','C_004');
INSERT INTO categories_event(event_id,category_id)
Values ('E_005','C_005');
INSERT INTO categories_event(event_id,category_id)
Values ('E_006','C_006');
INSERT INTO categories_event(event_id,category_id)
Values ('E_007','C_007');
INSERT INTO categories_event(event_id,category_id)
Values ('E_008','C_008');
INSERT INTO categories_event(event_id,category_id)
Values ('E_009','C_009');
INSERT INTO categories_event(event_id,category_id)
Values ('E_010','C_010');

SELECT * FROM USERS;
SELECT event_id, judul, tempat, deskripsi
FROM events;
