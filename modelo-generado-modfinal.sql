/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     24/11/2023 1:26:57 p. m.                     */
/*==============================================================*/


alter table CARGO
   drop constraint FK_CARGO_CARGOCARG_CARGO;

alter table CARGO
   drop constraint FK_CARGO_DEPCARGO_DEPENDEN;

alter table CATPRODUCTO
   drop constraint FK_CATPRODU_CATCAT_CATPRODU;

alter table CONTACTO
   drop constraint FK_CONTACTO_PERSONACO_PERSONA;

alter table CONTACTO
   drop constraint FK_CONTACTO_TIPOCONTY_TIPOCONT;

alter table DETALLEFACTURA
   drop constraint FK_DETALLEF_FACTDETAL_FACTURA;

alter table DETALLEFACTURA
   drop constraint FK_DETALLEF_PRODDETAL_PRODUCTO;

alter table DIRECCION
   drop constraint FK_DIRECCIO_DIRCOMPDI_COMPONEN;

alter table DIRECCION
   drop constraint FK_DIRECCIO_NOMENDIRR_NOMENCLA;

alter table DIRECCION
   drop constraint FK_DIRECCIO_PERSONDIR_PERSONA;

alter table EMPLCARGO
   drop constraint FK_EMPLCARG_EMPLCARGO_CARGO;

alter table EMPLCARGO
   drop constraint FK_EMPLCARG_EMPLCARGO_EMPLEADO;

alter table FACTURA
   drop constraint FK_FACTURA_EMPLEADOF_EMPLEADO;

alter table FACTURA
   drop constraint FK_FACTURA_FACTFACT_FACTURA;

alter table FACTURA
   drop constraint FK_FACTURA_PERSONFAC_PERSONA;

alter table FACTURA
   drop constraint FK_FACTURA_TIPOFACTF_TIPOFACT;

alter table HISTORICOPRECIO
   drop constraint FK_HISTORIC_PRODUCTHI_PRODUCTO;

alter table INVENTARIO
   drop constraint FK_INVENTAR_DETALLEIN_DETALLEF;

alter table INVENTARIO
   drop constraint FK_INVENTAR_FACTMODIF_INVENTAR;

alter table INVENTARIO
   drop constraint FK_INVENTAR_PRODINVEN_PRODUCTO;

alter table NOMENCLATURA
   drop constraint FK_NOMENCLA_COMPNOMEN_COMPONEN;

alter table PERSONA
   drop constraint FK_PERSONA_PERSONADO_TIPODOC;

alter table PERSONA
   drop constraint FK_PERSONA_TIPOPERSO_TIPOPERS;

alter table PRODUCTO
   drop constraint FK_PRODUCTO_CATPRODPR_CATPRODU;

drop index DEPCARGO_FK;

drop index CARGOCARGO_FK;

drop table CARGO cascade constraints;

drop index CATCAT_FK;

drop table CATPRODUCTO cascade constraints;

drop table COMPONENTEDIRECC cascade constraints;

drop index PERSONACONTACTO_FK;

drop index TIPOCONTYCONTACTO_FK;

drop table CONTACTO cascade constraints;

drop table DEPENDENCIA cascade constraints;

drop index PRODDETALLE_FK;

drop table DETALLEFACTURA cascade constraints;

drop index NOMENDIRR_FK;

drop index PERSONDIRECCION_FK;

drop index DIRCOMPDIR_FK;

drop table DIRECCION cascade constraints;

drop index EMPLCARGO_FK;

drop index EMPLCARGO2_FK;

drop table EMPLCARGO cascade constraints;

drop table EMPLEADO cascade constraints;

drop index EMPLEADOFACT_FK;

drop index FACTFACT_FK;

drop index PERSONFACT_FK;

drop index TIPOFACTFACT_FK;

drop table FACTURA cascade constraints;

drop index PRODUCTHISTORICO_FK;

drop table HISTORICOPRECIO cascade constraints;

drop index FACTMODIFICADA_FK;

drop index PRODINVENT_FK;

drop index DETALLEINVENTARIO_FK;

drop table INVENTARIO cascade constraints;

drop index COMPNOMEN_FK;

drop table NOMENCLATURA cascade constraints;

drop index TIPOPERSONAPERSON_FK;

drop index PERSONADOC_FK;

drop table PERSONA cascade constraints;

drop index CATPRODPROD_FK;

drop table PRODUCTO cascade constraints;

drop table TIPOCONTACTO cascade constraints;

drop table TIPODOC cascade constraints;

drop table TIPOFACTURA cascade constraints;

drop table TIPOPERSONA cascade constraints;

/*==============================================================*/
/* Table: CARGO                                                 */
/*==============================================================*/
create table CARGO 
(
   CODCARGO             VARCHAR2(5)          not null,
   CODCARGO_SUP         VARCHAR2(5),
   CODDEPENDENCIA       VARCHAR2(5)          not null,
   NOMCARGO             VARCHAR2(40)         not null,
   ESTADOCARGO          SMALLINT             not null,
   constraint PK_CARGO primary key (CODCARGO)
);

/*==============================================================*/
/* Index: CARGOCARGO_FK                                         */
/*==============================================================*/
create index CARGOCARGO_FK on CARGO (
   CODCARGO_SUP ASC
);

/*==============================================================*/
/* Index: DEPCARGO_FK                                           */
/*==============================================================*/
create index DEPCARGO_FK on CARGO (
   CODDEPENDENCIA ASC
);

/*==============================================================*/
/* Table: CATPRODUCTO                                           */
/*==============================================================*/
create table CATPRODUCTO 
(
   IDCATPRODUCTO        VARCHAR2(3)          not null,
   IDCATPRODUCTO_SUP    VARCHAR2(3),
   DESCATPRODUCTO       VARCHAR2(30)         not null,
   constraint PK_CATPRODUCTO primary key (IDCATPRODUCTO)
);

/*==============================================================*/
/* Index: CATCAT_FK                                             */
/*==============================================================*/
create index CATCAT_FK on CATPRODUCTO (
   IDCATPRODUCTO_SUP ASC
);

/*==============================================================*/
/* Table: COMPONENTEDIRECC                                      */
/*==============================================================*/
create table COMPONENTEDIRECC 
(
   POSICION             NUMBER(2)            not null,
   DESCPOSICION         VARCHAR2(30)         not null,
   OBLIGATORIEDAD       SMALLINT             not null,
   constraint PK_COMPONENTEDIRECC primary key (POSICION)
);

/*==============================================================*/
/* Table: CONTACTO                                              */
/*==============================================================*/
create table CONTACTO 
(
   CONSECCONTACTO       NUMBER(4,0)          not null,
   IDTIPOCONTACTO       VARCHAR2(2)          not null,
   DESCTIPOCONTACTO     VARCHAR2(15)         not null,
   IDTIPOPERSONA        VARCHAR2(2)          not null,
   IDTIPODOC            VARCHAR2(2)          not null,
   NDOCUMENTO           VARCHAR2(12)         not null,
   DESCCONTACTO         CHAR(10)             not null,
   constraint PK_CONTACTO primary key (CONSECCONTACTO)
);

/*==============================================================*/
/* Index: TIPOCONTYCONTACTO_FK                                  */
/*==============================================================*/
create index TIPOCONTYCONTACTO_FK on CONTACTO (
   IDTIPOCONTACTO ASC,
   DESCTIPOCONTACTO ASC
);

/*==============================================================*/
/* Index: PERSONACONTACTO_FK                                    */
/*==============================================================*/
create index PERSONACONTACTO_FK on CONTACTO (
   IDTIPOPERSONA ASC,
   IDTIPODOC ASC,
   NDOCUMENTO ASC
);

/*==============================================================*/
/* Table: DEPENDENCIA                                           */
/*==============================================================*/
create table DEPENDENCIA 
(
   CODDEPENDENCIA       VARCHAR2(5)          not null,
   NOMDEPENDENCIA       VARCHAR2(30)         not null,
   ESTADODEPEN          SMALLINT             not null,
   constraint PK_DEPENDENCIA primary key (CODDEPENDENCIA)
);

/*==============================================================*/
/* Table: DETALLEFACTURA                                        */
/*==============================================================*/
create table DETALLEFACTURA 
(
   NFACTURA             VARCHAR2(5)          not null,
   IDTIPOFAC            VARCHAR2(3)          not null,
   ITEM                 NUMBER(3,0)          not null,
   IDCATPRODUCTO        VARCHAR2(3)          not null,
   REFPRODUCTO          VARCHAR2(5)          not null,
   CANTIDAD             NUMBER(3,0)          not null,
   PRECIO               NUMBER(4,2)          not null,
   constraint PK_DETALLEFACTURA primary key (IDTIPOFAC, NFACTURA, ITEM)
);

/*==============================================================*/
/* Index: PRODDETALLE_FK                                        */
/*==============================================================*/
create index PRODDETALLE_FK on DETALLEFACTURA (
   IDCATPRODUCTO ASC,
   REFPRODUCTO ASC
);

/*==============================================================*/
/* Table: DIRECCION                                             */
/*==============================================================*/
create table DIRECCION 
(
   POSICION             NUMBER(2)            not null,
   IDDIRECCION          NUMBER(3,0)          not null,
   IDTIPOPERSONA        VARCHAR2(2)          not null,
   IDTIPODOC            VARCHAR2(2)          not null,
   NDOCUMENTO           VARCHAR2(12)         not null,
   IDNOMEN              VARCHAR2(10),
   VALORDIREC           VARCHAR2(15),
   constraint PK_DIRECCION primary key (POSICION, IDDIRECCION)
);

/*==============================================================*/
/* Index: DIRCOMPDIR_FK                                         */
/*==============================================================*/
create index DIRCOMPDIR_FK on DIRECCION (
   POSICION ASC
);

/*==============================================================*/
/* Index: PERSONDIRECCION_FK                                    */
/*==============================================================*/
create index PERSONDIRECCION_FK on DIRECCION (
   IDTIPOPERSONA ASC,
   IDTIPODOC ASC,
   NDOCUMENTO ASC
);

/*==============================================================*/
/* Index: NOMENDIRR_FK                                          */
/*==============================================================*/
create index NOMENDIRR_FK on DIRECCION (
   IDNOMEN ASC
);

/*==============================================================*/
/* Table: EMPLCARGO                                             */
/*==============================================================*/
create table EMPLCARGO 
(
   CODCARGO             VARCHAR2(5)          not null,
   CODEMPLEADO          VARCHAR2(5)          not null,
   constraint AK_IDENTIFIER_1_EMPLCARG unique (CODCARGO, CODEMPLEADO)
);

/*==============================================================*/
/* Index: EMPLCARGO2_FK                                         */
/*==============================================================*/
create index EMPLCARGO2_FK on EMPLCARGO (
   CODEMPLEADO ASC
);

/*==============================================================*/
/* Index: EMPLCARGO_FK                                          */
/*==============================================================*/
create index EMPLCARGO_FK on EMPLCARGO (
   CODCARGO ASC
);

/*==============================================================*/
/* Table: EMPLEADO                                              */
/*==============================================================*/
create table EMPLEADO 
(
   CODEMPLEADO          VARCHAR2(5)          not null,
   NOMEMPLEADO          VARCHAR2(30)         not null,
   APELLEMPLEADO        VARCHAR2(30)         not null,
   CORREO               VARCHAR2(50)         not null,
   constraint PK_EMPLEADO primary key (CODEMPLEADO)
);

/*==============================================================*/
/* Table: FACTURA                                               */
/*==============================================================*/
create table FACTURA 
(
   NFACTURA             VARCHAR2(5)          not null,
   IDTIPOFAC            VARCHAR2(3)          not null,
   IDTIPOPERSONA        VARCHAR2(2)          not null,
   IDTIPODOC            VARCHAR2(2)          not null,
   NDOCUMENTO           VARCHAR2(12)         not null,
   IDTIPOFAC_SUP        VARCHAR2(3),
   NFACTURA_SUP         VARCHAR2(5),
   CODEMPLEADO          VARCHAR2(5)          not null,
   FECHAFACTURA         DATE                 not null,
   TOTALFACTURA         NUMBER(7,2),
   constraint PK_FACTURA primary key (IDTIPOFAC, NFACTURA)
);

/*==============================================================*/
/* Index: TIPOFACTFACT_FK                                       */
/*==============================================================*/
create index TIPOFACTFACT_FK on FACTURA (
   IDTIPOFAC ASC
);

/*==============================================================*/
/* Index: PERSONFACT_FK                                         */
/*==============================================================*/
create index PERSONFACT_FK on FACTURA (
   IDTIPOPERSONA ASC,
   IDTIPODOC ASC,
   NDOCUMENTO ASC
);

/*==============================================================*/
/* Index: FACTFACT_FK                                           */
/*==============================================================*/
create index FACTFACT_FK on FACTURA (
   IDTIPOFAC_SUP ASC,
   NFACTURA_SUP ASC
);

/*==============================================================*/
/* Index: EMPLEADOFACT_FK                                       */
/*==============================================================*/
create index EMPLEADOFACT_FK on FACTURA (
   CODEMPLEADO ASC
);

/*==============================================================*/
/* Table: HISTORICOPRECIO                                       */
/*==============================================================*/
create table HISTORICOPRECIO 
(
   CONSECPRECIO         NUMBER(4,0)          not null,
   REFPRODUCTO          VARCHAR2(5)          not null,
   IDCATPRODUCTO        VARCHAR2(3)          not null,
   FECHAINICIO          DATE                 not null,
   FECHAFIN             DATE,
   VALOR                NUMBER(6,2)          not null,
   constraint PK_HISTORICOPRECIO primary key (IDCATPRODUCTO, REFPRODUCTO, CONSECPRECIO)
);

/*==============================================================*/
/* Index: PRODUCTHISTORICO_FK                                   */
/*==============================================================*/
create index PRODUCTHISTORICO_FK on HISTORICOPRECIO (
   IDCATPRODUCTO ASC,
   REFPRODUCTO ASC
);

/*==============================================================*/
/* Table: INVENTARIO                                            */
/*==============================================================*/
create table INVENTARIO 
(
   CONSECINVEN          NUMBER(5)            not null,
   IDTIPOFAC            VARCHAR2(3)          not null,
   NFACTURA             VARCHAR2(5)          not null,
   ITEM                 NUMBER(3,0)          not null,
   IDCATPRODUCTO        VARCHAR2(3)          not null,
   REFPRODUCTO          VARCHAR2(5)          not null,
   CONSECINVEN_SUP      NUMBER(5),
   FECHAINVE            DATE                 not null,
   SALEN                NUMBER(5,0),
   ENTRAN               NUMBER(5,0),
   EXISTENCIA           NUMBER(5)            not null,
   constraint PK_INVENTARIO primary key (CONSECINVEN)
);

/*==============================================================*/
/* Index: DETALLEINVENTARIO_FK                                  */
/*==============================================================*/
create index DETALLEINVENTARIO_FK on INVENTARIO (
   IDTIPOFAC ASC,
   NFACTURA ASC,
   ITEM ASC
);

/*==============================================================*/
/* Index: PRODINVENT_FK                                         */
/*==============================================================*/
create index PRODINVENT_FK on INVENTARIO (
   IDCATPRODUCTO ASC,
   REFPRODUCTO ASC
);

/*==============================================================*/
/* Index: FACTMODIFICADA_FK                                     */
/*==============================================================*/
create index FACTMODIFICADA_FK on INVENTARIO (
   CONSECINVEN_SUP ASC
);

/*==============================================================*/
/* Table: NOMENCLATURA                                          */
/*==============================================================*/
create table NOMENCLATURA 
(
   IDNOMEN              VARCHAR2(10)         not null,
   POSICION             NUMBER(2)            not null,
   DESCNOMEN            VARCHAR2(30)         not null,
   constraint PK_NOMENCLATURA primary key (IDNOMEN)
);

/*==============================================================*/
/* Index: COMPNOMEN_FK                                          */
/*==============================================================*/
create index COMPNOMEN_FK on NOMENCLATURA (
   POSICION ASC
);

/*==============================================================*/
/* Table: PERSONA                                               */
/*==============================================================*/
create table PERSONA 
(
   IDTIPOPERSONA        VARCHAR2(2)          not null,
   IDTIPODOC            VARCHAR2(2)          not null,
   NDOCUMENTO           VARCHAR2(12)         not null,
   NOMBRE               VARCHAR2(30)         not null,
   APELLIDO             VARCHAR2(30)         not null,
   constraint PK_PERSONA primary key (IDTIPOPERSONA, IDTIPODOC, NDOCUMENTO)
);

/*==============================================================*/
/* Index: PERSONADOC_FK                                         */
/*==============================================================*/
create index PERSONADOC_FK on PERSONA (
   IDTIPODOC ASC
);

/*==============================================================*/
/* Index: TIPOPERSONAPERSON_FK                                  */
/*==============================================================*/
create index TIPOPERSONAPERSON_FK on PERSONA (
   IDTIPOPERSONA ASC
);

/*==============================================================*/
/* Table: PRODUCTO                                              */
/*==============================================================*/
create table PRODUCTO 
(
   REFPRODUCTO          VARCHAR2(5)          not null,
   IDCATPRODUCTO        VARCHAR2(3)          not null,
   NOMPRODUCTO          VARCHAR2(30)         not null,
   constraint PK_PRODUCTO primary key (IDCATPRODUCTO, REFPRODUCTO)
);

/*==============================================================*/
/* Index: CATPRODPROD_FK                                        */
/*==============================================================*/
create index CATPRODPROD_FK on PRODUCTO (
   IDCATPRODUCTO ASC
);

/*==============================================================*/
/* Table: TIPOCONTACTO                                          */
/*==============================================================*/
create table TIPOCONTACTO 
(
   IDTIPOCONTACTO       VARCHAR2(2)          not null,
   DESCTIPOCONTACTO     VARCHAR2(15)         not null,
   constraint PK_TIPOCONTACTO primary key (IDTIPOCONTACTO, DESCTIPOCONTACTO)
);

/*==============================================================*/
/* Table: TIPODOC                                               */
/*==============================================================*/
create table TIPODOC 
(
   IDTIPODOC            VARCHAR2(2)          not null,
   DESCTIPODOC          VARCHAR2(20)         not null,
   constraint PK_TIPODOC primary key (IDTIPODOC)
);

/*==============================================================*/
/* Table: TIPOFACTURA                                           */
/*==============================================================*/
create table TIPOFACTURA 
(
   IDTIPOFAC            VARCHAR2(3)          not null,
   DESCTIPOFAC          VARCHAR2(30)         not null,
   constraint PK_TIPOFACTURA primary key (IDTIPOFAC)
);

/*==============================================================*/
/* Table: TIPOPERSONA                                           */
/*==============================================================*/
create table TIPOPERSONA 
(
   IDTIPOPERSONA        VARCHAR2(2)          not null,
   DESCTIPOPERSONA      VARCHAR2(20)         not null,
   constraint PK_TIPOPERSONA primary key (IDTIPOPERSONA)
);

alter table CARGO
   add constraint FK_CARGO_CARGOCARG_CARGO foreign key (CODCARGO_SUP)
      references CARGO (CODCARGO);

alter table CARGO
   add constraint FK_CARGO_DEPCARGO_DEPENDEN foreign key (CODDEPENDENCIA)
      references DEPENDENCIA (CODDEPENDENCIA);

alter table CATPRODUCTO
   add constraint FK_CATPRODU_CATCAT_CATPRODU foreign key (IDCATPRODUCTO_SUP)
      references CATPRODUCTO (IDCATPRODUCTO);

alter table CONTACTO
   add constraint FK_CONTACTO_PERSONACO_PERSONA foreign key (IDTIPOPERSONA, IDTIPODOC, NDOCUMENTO)
      references PERSONA (IDTIPOPERSONA, IDTIPODOC, NDOCUMENTO);

alter table CONTACTO
   add constraint FK_CONTACTO_TIPOCONTY_TIPOCONT foreign key (IDTIPOCONTACTO, DESCTIPOCONTACTO)
      references TIPOCONTACTO (IDTIPOCONTACTO, DESCTIPOCONTACTO);

alter table DETALLEFACTURA
   add constraint FK_DETALLEF_FACTDETAL_FACTURA foreign key (IDTIPOFAC, NFACTURA)
      references FACTURA (IDTIPOFAC, NFACTURA);

alter table DETALLEFACTURA
   add constraint FK_DETALLEF_PRODDETAL_PRODUCTO foreign key (IDCATPRODUCTO, REFPRODUCTO)
      references PRODUCTO (IDCATPRODUCTO, REFPRODUCTO);

alter table DIRECCION
   add constraint FK_DIRECCIO_DIRCOMPDI_COMPONEN foreign key (POSICION)
      references COMPONENTEDIRECC (POSICION);

alter table DIRECCION
   add constraint FK_DIRECCIO_NOMENDIRR_NOMENCLA foreign key (IDNOMEN)
      references NOMENCLATURA (IDNOMEN);

alter table DIRECCION
   add constraint FK_DIRECCIO_PERSONDIR_PERSONA foreign key (IDTIPOPERSONA, IDTIPODOC, NDOCUMENTO)
      references PERSONA (IDTIPOPERSONA, IDTIPODOC, NDOCUMENTO);

alter table EMPLCARGO
   add constraint FK_EMPLCARG_EMPLCARGO_CARGO foreign key (CODCARGO)
      references CARGO (CODCARGO);

alter table EMPLCARGO
   add constraint FK_EMPLCARG_EMPLCARGO_EMPLEADO foreign key (CODEMPLEADO)
      references EMPLEADO (CODEMPLEADO);

alter table FACTURA
   add constraint FK_FACTURA_EMPLEADOF_EMPLEADO foreign key (CODEMPLEADO)
      references EMPLEADO (CODEMPLEADO);

alter table FACTURA
   add constraint FK_FACTURA_FACTFACT_FACTURA foreign key (IDTIPOFAC_SUP, NFACTURA_SUP)
      references FACTURA (IDTIPOFAC, NFACTURA);

alter table FACTURA
   add constraint FK_FACTURA_PERSONFAC_PERSONA foreign key (IDTIPOPERSONA, IDTIPODOC, NDOCUMENTO)
      references PERSONA (IDTIPOPERSONA, IDTIPODOC, NDOCUMENTO);

alter table FACTURA
   add constraint FK_FACTURA_TIPOFACTF_TIPOFACT foreign key (IDTIPOFAC)
      references TIPOFACTURA (IDTIPOFAC);

alter table HISTORICOPRECIO
   add constraint FK_HISTORIC_PRODUCTHI_PRODUCTO foreign key (IDCATPRODUCTO, REFPRODUCTO)
      references PRODUCTO (IDCATPRODUCTO, REFPRODUCTO);

alter table INVENTARIO
   add constraint FK_INVENTAR_DETALLEIN_DETALLEF foreign key (IDTIPOFAC, NFACTURA, ITEM)
      references DETALLEFACTURA (IDTIPOFAC, NFACTURA, ITEM);

alter table INVENTARIO
   add constraint FK_INVENTAR_FACTMODIF_INVENTAR foreign key (CONSECINVEN_SUP)
      references INVENTARIO (CONSECINVEN);

alter table INVENTARIO
   add constraint FK_INVENTAR_PRODINVEN_PRODUCTO foreign key (IDCATPRODUCTO, REFPRODUCTO)
      references PRODUCTO (IDCATPRODUCTO, REFPRODUCTO);

alter table NOMENCLATURA
   add constraint FK_NOMENCLA_COMPNOMEN_COMPONEN foreign key (POSICION)
      references COMPONENTEDIRECC (POSICION);

alter table PERSONA
   add constraint FK_PERSONA_PERSONADO_TIPODOC foreign key (IDTIPODOC)
      references TIPODOC (IDTIPODOC);

alter table PERSONA
   add constraint FK_PERSONA_TIPOPERSO_TIPOPERS foreign key (IDTIPOPERSONA)
      references TIPOPERSONA (IDTIPOPERSONA);

alter table PRODUCTO
   add constraint FK_PRODUCTO_CATPRODPR_CATPRODU foreign key (IDCATPRODUCTO)
      references CATPRODUCTO (IDCATPRODUCTO);

