-- Filling of maps table
INSERT INTO private.maps (
    id,
    name
)
VALUES
    (
        default,
        'first'
    );

-- Filling of nodes table
INSERT INTO private.nodes (
    id,
	position,
    map_id
)
VALUES
    (
        default,
        '{
			"x": 36,
			"y": 36
		}',
		1
    ),
	(
        default,
        '{
			"x": 136,
			"y": 136
		}',
		1
    ),
	(
        default,
        '{
			"x": 236,
			"y": 236
		}',
		1
    );

-- Filling of links table
INSERT INTO private.links (
    id,
	source,
	target,
    map_id
)
VALUES
    (
        default,
        1,
        2,
        1
    ),
    (
        default,
        2,
        3,
        1
    );