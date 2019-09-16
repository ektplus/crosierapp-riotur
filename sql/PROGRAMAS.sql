START TRANSACTION;

SET FOREIGN_KEY_CHECKS=0;


INSERT INTO sec_role(id,inserted,updated,role,descricao,estabelecimento_id,user_inserted_id,user_updated_id) VALUES(null,now(),now(),'ROLE_TURISMO_ADMIN','ROLE_TURISMO_ADMIN',1,1,1);
INSERT INTO sec_role(id,inserted,updated,role,descricao,estabelecimento_id,user_inserted_id,user_updated_id) VALUES(null,now(),now(),'ROLE_TURISMO','ROLE_TURISMO',1,1,1);




DELETE FROM cfg_program WHERE uuid = 'fa42eef2-9ed7-4a1d-bc0c-6563ad0295f6';
DELETE FROM cfg_entmenu WHERE uuid = '6db48d87-d16c-47e4-91c7-c123f5d20cfd';

INSERT INTO cfg_program(uuid, descricao, url, app_uuid, entmenu_uuid ,inserted, updated, estabelecimento_id, user_inserted_id, user_updated_id)
VALUES ('fa42eef2-9ed7-4a1d-bc0c-6563ad0295f6','Viagens', '/tur/viagem/list', 'e6605a3c-1b39-46af-bd64-f006628bd3c6', null, now(), now(), 1, 1, 1);

INSERT INTO cfg_entmenu(uuid, label, icon, tipo, program_uuid, pai_uuid, ordem, css_style, inserted, updated, estabelecimento_id, user_inserted_id, user_updated_id)
VALUES ('6db48d87-d16c-47e4-91c7-c123f5d20cfd', 'Viagens', 'fas fa-suitcase', 'ENT', 'fa42eef2-9ed7-4a1d-bc0c-6563ad0295f6', '24ba2935-4d81-41aa-95c2-754cf9857f63', 1 , null, now(), now(), 1, 1, 1);




DELETE FROM cfg_program WHERE uuid = 'cc1990f1-ca04-4dc8-82ac-5db813e04ff1';
DELETE FROM cfg_entmenu WHERE uuid = '7972887c-2120-4986-b113-bceca90a9191';

INSERT INTO cfg_program(uuid, descricao, url, app_uuid, entmenu_uuid ,inserted, updated, estabelecimento_id, user_inserted_id, user_updated_id)
VALUES ('cc1990f1-ca04-4dc8-82ac-5db813e04ff1','Itinerários', '/tur/itinerario/list', 'e6605a3c-1b39-46af-bd64-f006628bd3c6', null, now(), now(), 1, 1, 1);

INSERT INTO cfg_entmenu(uuid, label, icon, tipo, program_uuid, pai_uuid, ordem, css_style, inserted, updated, estabelecimento_id, user_inserted_id, user_updated_id)
VALUES ('7972887c-2120-4986-b113-bceca90a9191', 'Itinerários', 'fas fa-map-signs', 'ENT', 'cc1990f1-ca04-4dc8-82ac-5db813e04ff1', '24ba2935-4d81-41aa-95c2-754cf9857f63', 1 , null, now(), now(), 1, 1, 1);




DELETE FROM cfg_program WHERE uuid = '3cd94830-69b7-48a9-86cd-a25f5d1ba160';
DELETE FROM cfg_entmenu WHERE uuid = 'e83f9266-2b4c-4e24-ab4e-ea8afdd18e48';

INSERT INTO cfg_program(uuid, descricao, url, app_uuid, entmenu_uuid ,inserted, updated, estabelecimento_id, user_inserted_id, user_updated_id)
VALUES ('3cd94830-69b7-48a9-86cd-a25f5d1ba160','Agências', '/tur/agencia/list', 'e6605a3c-1b39-46af-bd64-f006628bd3c6', null, now(), now(), 1, 1, 1);

INSERT INTO cfg_entmenu(uuid, label, icon, tipo, program_uuid, pai_uuid, ordem, css_style, inserted, updated, estabelecimento_id, user_inserted_id, user_updated_id)
VALUES ('e83f9266-2b4c-4e24-ab4e-ea8afdd18e48', 'Agências', 'fas fa-comments-dollar', 'ENT', '3cd94830-69b7-48a9-86cd-a25f5d1ba160', '24ba2935-4d81-41aa-95c2-754cf9857f63', 1 , null, now(), now(), 1, 1, 1);



DELETE FROM cfg_program WHERE uuid = '086e29df-a3aa-446b-ade0-218882e23e7b';
DELETE FROM cfg_entmenu WHERE uuid = '6f56fa94-f64f-40d5-83fb-b56bd30a5a1a';

INSERT INTO cfg_program(uuid, descricao, url, app_uuid, entmenu_uuid ,inserted, updated, estabelecimento_id, user_inserted_id, user_updated_id)
VALUES ('086e29df-a3aa-446b-ade0-218882e23e7b','Veículos', '/tur/veiculo/list', 'e6605a3c-1b39-46af-bd64-f006628bd3c6', null, now(), now(), 1, 1, 1);

INSERT INTO cfg_entmenu(uuid, label, icon, tipo, program_uuid, pai_uuid, ordem, css_style, inserted, updated, estabelecimento_id, user_inserted_id, user_updated_id)
VALUES ('6f56fa94-f64f-40d5-83fb-b56bd30a5a1a', 'Veículos', 'fas fa-bus-alt', 'ENT', '086e29df-a3aa-446b-ade0-218882e23e7b', '24ba2935-4d81-41aa-95c2-754cf9857f63', 1 , null, now(), now(), 1, 1, 1);






DELETE FROM cfg_program WHERE uuid = '95a025f6-5732-4c2f-a212-2fcdd70c8770';
DELETE FROM cfg_entmenu WHERE uuid = '5f42952c-563a-4652-8192-e336dd41035d';

INSERT INTO cfg_program(uuid, descricao, url, app_uuid, entmenu_uuid ,inserted, updated, estabelecimento_id, user_inserted_id, user_updated_id)
VALUES ('95a025f6-5732-4c2f-a212-2fcdd70c8770','Motoristas', '/tur/motorista/list', 'e6605a3c-1b39-46af-bd64-f006628bd3c6', null, now(), now(), 1, 1, 1);

INSERT INTO cfg_entmenu(uuid, label, icon, tipo, program_uuid, pai_uuid, ordem, css_style, inserted, updated, estabelecimento_id, user_inserted_id, user_updated_id)
VALUES ('5f42952c-563a-4652-8192-e336dd41035d', 'Motoristas', 'fas fa-user-tie', 'ENT', '95a025f6-5732-4c2f-a212-2fcdd70c8770', '24ba2935-4d81-41aa-95c2-754cf9857f63', 1 , null, now(), now(), 1, 1, 1);








COMMIT;
