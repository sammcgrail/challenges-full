# YOUR SQL CODE GOES HERE

-- Help Larry by answering the following questions:

-- For which collars can we identify an owner?

We can identify owners for the following lost collars by:

SELECT dog_owners.name, lost_dog_collars.dog_name
  FROM dog_owners
  JOIN lost_dog_collars
  ON (dog_owners.dog_name = lost_dog_collars.dog_name);

-- For which collars is there no known owner?

SELECT dog_owners.name, lost_dog_collars.dog_name
  FROM dog_owners
  RIGHT OUTER JOIN lost_dog_collars
  ON (dog_owners.dog_name = lost_dog_collars.dog_name) WHERE dog_owners.name IS NULL;

-- We need to see all collars, with an owner, if one matches.

SELECT lost_dog_collars.dog_name, dog_owners.name
  FROM lost_dog_collars
  JOIN dog_owners
  ON lost_dog_collars.dog_name = dog_owners.dog_name;


-- We need to see all owners, with collars in the Lost and Found, if one matches.

SELECT dog_owners.name, lost_dog_collars.dog_name
  FROM dog_owners
  LEFT JOIN lost_dog_collars
  ON dog_owners.dog_name = lost_dog_collars.dog_name;




```SQL
INNER JOIN
LEFT JOIN
RIGHT JOIN
FULL OUTER JOIN
LEFT OUTER JOIN
RIGHT OUTER JOIN
```
