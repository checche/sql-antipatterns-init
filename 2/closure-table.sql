CREATE TABLE Comments (
  comment_id   SERIAL PRIMARY KEY,
  comment_date DATETIME NOT NULL,
  comment      TEXT NOT NULL
);

CREATE TABLE TreePaths (
  ancestor    BIGINT UNSIGNED NOT NULL,
  descendant  BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (ancestor, descendant),
  FOREIGN KEY (ancestor) REFERENCES Comments(comment_id),
  FOREIGN KEY (descendant) REFERENCES Comments(comment_id)
);


INSERT INTO Comments (comment_id, comment_date, comment)
  VALUES (1, CURRENT_TIMESTAMP, 'aaaaaa');
INSERT INTO Comments (comment_id, comment_date, comment)
  VALUES (2, CURRENT_TIMESTAMP, 'aaaaaa');
INSERT INTO Comments (comment_id, comment_date, comment)
  VALUES (3, CURRENT_TIMESTAMP, 'aaaaaa');
INSERT INTO Comments (comment_id, comment_date, comment)
  VALUES (4, CURRENT_TIMESTAMP, 'aaaaaa');
INSERT INTO Comments (comment_id, comment_date, comment)
  VALUES (5, CURRENT_TIMESTAMP, 'aaaaaa');
INSERT INTO Comments (comment_id, comment_date, comment)
  VALUES (6, CURRENT_TIMESTAMP, 'aaaaaa');
INSERT INTO Comments (comment_id, comment_date, comment)
  VALUES (7, CURRENT_TIMESTAMP, 'aaaaaa');

INSERT INTO TreePaths (ancestor, descendant) VALUES (1,1);
INSERT INTO TreePaths (ancestor, descendant) VALUES (1,2);
INSERT INTO TreePaths (ancestor, descendant) VALUES (1,3);
INSERT INTO TreePaths (ancestor, descendant) VALUES (1,4);
INSERT INTO TreePaths (ancestor, descendant) VALUES (1,5);
INSERT INTO TreePaths (ancestor, descendant) VALUES (1,6);
INSERT INTO TreePaths (ancestor, descendant) VALUES (1,7);
INSERT INTO TreePaths (ancestor, descendant) VALUES (2,2);
INSERT INTO TreePaths (ancestor, descendant) VALUES (2,3);
INSERT INTO TreePaths (ancestor, descendant) VALUES (3,3);
INSERT INTO TreePaths (ancestor, descendant) VALUES (4,4);
INSERT INTO TreePaths (ancestor, descendant) VALUES (4,5);
INSERT INTO TreePaths (ancestor, descendant) VALUES (4,6);
INSERT INTO TreePaths (ancestor, descendant) VALUES (4,7);
INSERT INTO TreePaths (ancestor, descendant) VALUES (5,5);
INSERT INTO TreePaths (ancestor, descendant) VALUES (6,6);
INSERT INTO TreePaths (ancestor, descendant) VALUES (6,7);
INSERT INTO TreePaths (ancestor, descendant) VALUES (7,7);



