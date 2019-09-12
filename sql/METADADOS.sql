DROP TABLE IF EXISTS `rtr_tur_veiculo`;

CREATE TABLE `rtr_tur_veiculo`
(
    `id`                 bigint(20)  NOT NULL AUTO_INCREMENT,

    `prefixo`            varchar(50) NOT NULL,
    `apelido`            varchar(100),
    `placa`              varchar(15) NOT NULL,
    `status`             varchar(50) NOT NULL,
    `renavan`            varchar(50) NOT NULL,

    `obs`                varchar(3000),


    `inserted`           datetime    NOT NULL,
    `updated`            datetime    NOT NULL,
    `version`            int(11),
    `estabelecimento_id` bigint(20)  NOT NULL,
    `user_inserted_id`   bigint(20)  NOT NULL,
    `user_updated_id`    bigint(20)  NOT NULL,

    PRIMARY KEY (`id`),
    UNIQUE KEY `UK_rtr_tur_veiculo_codigo` (`placa`),
    UNIQUE KEY `UK_rtr_tur_veiculo_descricao` (`renavan`),

    KEY `K_rtr_tur_veiculo_estabelecimento` (`estabelecimento_id`),
    KEY `K_rtr_tur_veiculo_user_inserted` (`user_inserted_id`),
    KEY `K_rtr_tur_veiculo_user_updated` (`user_updated_id`),
    CONSTRAINT `FK_rtr_tur_veiculo_user_inserted` FOREIGN KEY (`user_inserted_id`) REFERENCES `sec_user` (`id`),
    CONSTRAINT `FK_rtr_tur_veiculo_estabelecimento` FOREIGN KEY (`estabelecimento_id`) REFERENCES `cfg_estabelecimento` (`id`),
    CONSTRAINT `FK_rtr_tur_veiculo_user_updated` FOREIGN KEY (`user_updated_id`) REFERENCES `sec_user` (`id`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  COLLATE = utf8_swedish_ci;