-- Creation of maps view
CREATE VIEW maps_view AS
  SELECT maps.id,
    maps.name
  FROM private.maps;

-- Creation of nodes view
CREATE VIEW nodes_view AS
  SELECT nodes.id,
    nodes.position,
    nodes.map_id
  FROM private.nodes;

-- Creation of links view
CREATE VIEW links_view AS
  SELECT links.id,
	  links.source,
	  links.target,
    links.map_id
  FROM private.links;