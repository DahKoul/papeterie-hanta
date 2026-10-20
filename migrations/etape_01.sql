CREATE TABLE article (
  id_article SERIAL PRIMARY KEY,
  libelle    VARCHAR(100) NOT NULL,
  prix       INTEGER NOT NULL CHECK (prix >= 0)
);
INSERT INTO article (libelle, prix) VALUES
('Cahier 100 pages',1200),('Cahier 200 pages',2000),('Stylo à bille bleu',500),
('Crayon à papier',300),('Règle 30 cm',800),('Manuel Mathématiques CM2',15000),('Cartable',35000);