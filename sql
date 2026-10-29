sudo mysql -u root xvwa << 'EOF'
CREATE TABLE IF NOT EXISTS users (
  userid int(11) NOT NULL AUTO_INCREMENT,
  username varchar(50) NOT NULL,
  password varchar(50) NOT NULL,
  email varchar(100) NOT NULL,
  profile varchar(255) NOT NULL,
  secret varchar(255) NOT NULL,
  PRIMARY KEY (userid)
);
INSERT INTO users (username, password, email, profile, secret) VALUES 
('admin', 'admin', 'admin@xvwa.local', 'Administrator', 'SuperSecretAdminKey'),
('xvwa', 'xvwa', 'xvwa@xvwa.local', 'Normal User', 'UserSecretKey')
ON DUPLICATE KEY UPDATE userid=userid;
EOF
