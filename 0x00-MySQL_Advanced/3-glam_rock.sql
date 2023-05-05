-- an sql script that lists all band with GLAM rock as
-- their main style, ranked by thier longevity
SELECT `band_name`, IFNULL(split, 2020)-formed AS `lifespan`
  FROM `metal_bands`
 WHERE style='Glam rock'
 ORDER BY lifespan DESC;