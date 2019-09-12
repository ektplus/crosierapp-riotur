START TRANSACTION;

-- app                   e6605a3c-1b39-46af-bd64-f006628bd3c6
-- program               2f1b0348-089c-4df6-bfe5-694bf3d477ed
-- entMenu (CrosierCore) fbb0522d-6983-48a6-9001-38029ed1b881
-- entMenu (Raíz do App) 24ba2935-4d81-41aa-95c2-754cf9857f63
-- entMenu (Dashboard)   9d9d4173-3884-4c0e-8e2e-b5feb7fc0618

SET FOREIGN_KEY_CHECKS=0;

DELETE FROM cfg_app WHERE uuid = 'e6605a3c-1b39-46af-bd64-f006628bd3c6';
DELETE FROM cfg_program WHERE uuid = '2f1b0348-089c-4df6-bfe5-694bf3d477ed';
DELETE FROM cfg_entmenu WHERE uuid = 'fbb0522d-6983-48a6-9001-38029ed1b881';
DELETE FROM cfg_entmenu WHERE uuid = '24ba2935-4d81-41aa-95c2-754cf9857f63';
DELETE FROM cfg_entmenu WHERE uuid = '9d9d4173-3884-4c0e-8e2e-b5feb7fc0618';


INSERT INTO cfg_app(uuid,nome,obs,default_entmenu_uuid,inserted,updated,estabelecimento_id,user_inserted_id,user_updated_id) 
VALUES ('e6605a3c-1b39-46af-bd64-f006628bd3c6','crosierapp-riotur','CrosierApp para o projeto Riotur','24ba2935-4d81-41aa-95c2-754cf9857f63',now(),now(),1,1,1);

INSERT INTO cfg_program(uuid, descricao, url, app_uuid, entmenu_uuid ,inserted, updated, estabelecimento_id, user_inserted_id, user_updated_id)
VALUES ('2f1b0348-089c-4df6-bfe5-694bf3d477ed','Dashboard - crosierapp-riotur', '/', 'e6605a3c-1b39-46af-bd64-f006628bd3c6', null, now(), now(), 1, 1, 1);



-- Entrada de menu para o MainMenu do Crosier com apontamento para o Dashboard deste CrosierApp (É EXIBIDO NO MENU DO CROSIER-CORE)
INSERT INTO cfg_entmenu(uuid,label,icon,tipo,program_uuid,pai_uuid,ordem,css_style,inserted,updated,estabelecimento_id,user_inserted_id,user_updated_id)
VALUES ('fbb0522d-6983-48a6-9001-38029ed1b881','Riotur','fas fa-columns','CROSIERCORE_APPENT','2f1b0348-089c-4df6-bfe5-694bf3d477ed',null,0,null,now(),now(),1,1,1);

-- Entrada de menu raíz para este CrosierApp (NÃO É EXIBIDO)
INSERT INTO cfg_entmenu(uuid,label,icon,tipo,program_uuid,pai_uuid,ordem,css_style,inserted,updated,estabelecimento_id,user_inserted_id,user_updated_id)
VALUES ('24ba2935-4d81-41aa-95c2-754cf9857f63','Dashboard - crosierapp-riotur','','PAI','',null,0,null,now(),now(),1,1,1);

-- Entrada de menu para o menu raíz deste CrosierApp com apontamento para o Dashboard deste CrosierApp TAMBÉM! (É EXIBIDO COMO PRIMEIRO ITEM DO MENU DESTE CROSIERAPP)
INSERT INTO cfg_entmenu(uuid,label,icon,tipo,program_uuid,pai_uuid,ordem,css_style,inserted,updated,estabelecimento_id,user_inserted_id,user_updated_id)
VALUES ('9d9d4173-3884-4c0e-8e2e-b5feb7fc0618','Dashboard','fas fa-columns','ENT','2f1b0348-089c-4df6-bfe5-694bf3d477ed','24ba2935-4d81-41aa-95c2-754cf9857f63',0,null,now(),now(),1,1,1);



COMMIT;
