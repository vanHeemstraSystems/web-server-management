-- Updating of nodes data table
-- UPDATE private.nodes_data
-- SET parent = (SELECT id FROM private.nodes_data WHERE uniquelabel = 'Users1')
-- WHERE
--     private.nodes_data.uniquelabel = 'User\nName: John Doe\nID: john.doe1';

-- UPDATE private.nodes_data
-- SET parent = (SELECT id FROM private.nodes_data WHERE uniquelabel = 'Devices1')
-- WHERE
--     private.nodes_data.uniquelabel = 'Device\nName: Computer\nSerial Number: 01234567891';  