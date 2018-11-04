PGDMP         3                v            planning    10.3    10.3 �   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    77386    planning    DATABASE     �   CREATE DATABASE planning WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Uruguay.1252' LC_CTYPE = 'Spanish_Uruguay.1252';
    DROP DATABASE planning;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    77387    abaTimeUnit_id_seq    SEQUENCE     �   CREATE SEQUENCE public."abaTimeUnit_id_seq"
    START WITH 2
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 +   DROP SEQUENCE public."abaTimeUnit_id_seq";
       public       postgres    false    3            �            1259    77389    aba_breeds_and_stages_id_seq    SEQUENCE     �   CREATE SEQUENCE public.aba_breeds_and_stages_id_seq
    START WITH 8
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 3   DROP SEQUENCE public.aba_breeds_and_stages_id_seq;
       public       postgres    false    3            �            1259    77391    aba_breeds_and_stages    TABLE       CREATE TABLE public.aba_breeds_and_stages (
    id integer DEFAULT nextval('public.aba_breeds_and_stages_id_seq'::regclass) NOT NULL,
    code character varying(100),
    name character varying(100),
    id_aba_consumption_and_mortality integer,
    id_process integer
);
 )   DROP TABLE public.aba_breeds_and_stages;
       public         postgres    false    197    3            �            1259    77395 $   aba_consumption_and_mortality_id_seq    SEQUENCE     �   CREATE SEQUENCE public.aba_consumption_and_mortality_id_seq
    START WITH 8
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 ;   DROP SEQUENCE public.aba_consumption_and_mortality_id_seq;
       public       postgres    false    3            �            1259    77397    aba_consumption_and_mortality    TABLE     $  CREATE TABLE public.aba_consumption_and_mortality (
    id integer DEFAULT nextval('public.aba_consumption_and_mortality_id_seq'::regclass) NOT NULL,
    code character varying(100),
    name character varying(100),
    id_breed integer,
    id_stage integer,
    id_aba_time_unit integer
);
 1   DROP TABLE public.aba_consumption_and_mortality;
       public         postgres    false    199    3            �            1259    77401 +   aba_consumption_and_mortality_detail_id_seq    SEQUENCE     �   CREATE SEQUENCE public.aba_consumption_and_mortality_detail_id_seq
    START WITH 203
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 B   DROP SEQUENCE public.aba_consumption_and_mortality_detail_id_seq;
       public       postgres    false    3            �            1259    77403 $   aba_consumption_and_mortality_detail    TABLE     =  CREATE TABLE public.aba_consumption_and_mortality_detail (
    id integer DEFAULT nextval('public.aba_consumption_and_mortality_detail_id_seq'::regclass) NOT NULL,
    id_aba_consumption_and_mortality integer NOT NULL,
    time_unit_number integer,
    consumption double precision,
    mortality double precision
);
 8   DROP TABLE public.aba_consumption_and_mortality_detail;
       public         postgres    false    201    3            �            1259    77407    aba_elements_id_seq    SEQUENCE     �   CREATE SEQUENCE public.aba_elements_id_seq
    START WITH 22
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 *   DROP SEQUENCE public.aba_elements_id_seq;
       public       postgres    false    3            �            1259    77409    aba_elements    TABLE     �   CREATE TABLE public.aba_elements (
    id integer DEFAULT nextval('public.aba_elements_id_seq'::regclass) NOT NULL,
    code character varying(100),
    name character varying(100)
);
     DROP TABLE public.aba_elements;
       public         postgres    false    203    3            �            1259    77413 &   aba_elements_and_concentrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.aba_elements_and_concentrations_id_seq
    START WITH 105
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 =   DROP SEQUENCE public.aba_elements_and_concentrations_id_seq;
       public       postgres    false    3            �            1259    77415    aba_elements_and_concentrations    TABLE     k  CREATE TABLE public.aba_elements_and_concentrations (
    id integer DEFAULT nextval('public.aba_elements_and_concentrations_id_seq'::regclass) NOT NULL,
    id_aba_element integer,
    id_aba_formulation integer,
    proportion double precision,
    id_element_equivalent integer,
    id_aba_element_property integer,
    equivalent_quantity double precision
);
 3   DROP TABLE public.aba_elements_and_concentrations;
       public         postgres    false    205    3            �            1259    77419    aba_elements_properties_id_seq    SEQUENCE     �   CREATE SEQUENCE public.aba_elements_properties_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 5   DROP SEQUENCE public.aba_elements_properties_id_seq;
       public       postgres    false    3            �            1259    77421    aba_elements_properties    TABLE     �   CREATE TABLE public.aba_elements_properties (
    id integer DEFAULT nextval('public.aba_elements_properties_id_seq'::regclass) NOT NULL,
    code character varying(100),
    name character varying(100)
);
 +   DROP TABLE public.aba_elements_properties;
       public         postgres    false    207    3            �            1259    77425    aba_formulation_id_seq    SEQUENCE     �   CREATE SEQUENCE public.aba_formulation_id_seq
    START WITH 68
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 -   DROP SEQUENCE public.aba_formulation_id_seq;
       public       postgres    false    3            �            1259    77427    aba_formulation    TABLE     �   CREATE TABLE public.aba_formulation (
    id integer DEFAULT nextval('public.aba_formulation_id_seq'::regclass) NOT NULL,
    code character varying(100),
    name character varying(100)
);
 #   DROP TABLE public.aba_formulation;
       public         postgres    false    209    3            �            1259    77431    aba_results_id_seq    SEQUENCE     �   CREATE SEQUENCE public.aba_results_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 )   DROP SEQUENCE public.aba_results_id_seq;
       public       postgres    false    3            �            1259    77433    aba_results    TABLE     �   CREATE TABLE public.aba_results (
    id integer DEFAULT nextval('public.aba_results_id_seq'::regclass) NOT NULL,
    id_aba_element integer,
    quantity double precision
);
    DROP TABLE public.aba_results;
       public         postgres    false    211    3            �            1259    77437 &   aba_stages_of_breeds_and_stages_id_seq    SEQUENCE     �   CREATE SEQUENCE public.aba_stages_of_breeds_and_stages_id_seq
    START WITH 24
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 =   DROP SEQUENCE public.aba_stages_of_breeds_and_stages_id_seq;
       public       postgres    false    3            �            1259    77439    aba_stages_of_breeds_and_stages    TABLE       CREATE TABLE public.aba_stages_of_breeds_and_stages (
    id integer DEFAULT nextval('public.aba_stages_of_breeds_and_stages_id_seq'::regclass) NOT NULL,
    id_aba_breeds_and_stages integer,
    id_formulation integer,
    name character varying(100),
    duration integer
);
 3   DROP TABLE public.aba_stages_of_breeds_and_stages;
       public         postgres    false    213    3            �            1259    77443    aba_time_unit    TABLE     �   CREATE TABLE public.aba_time_unit (
    id integer DEFAULT nextval('public."abaTimeUnit_id_seq"'::regclass) NOT NULL,
    singular_name character varying(100),
    plural_name character varying(100)
);
 !   DROP TABLE public.aba_time_unit;
       public         postgres    false    196    3            �            1259    77447    availability_shed_id_seq    SEQUENCE     �   CREATE SEQUENCE public.availability_shed_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.availability_shed_id_seq;
       public       postgres    false    3            �            1259    77449    base_day_id_seq    SEQUENCE     x   CREATE SEQUENCE public.base_day_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.base_day_id_seq;
       public       postgres    false    3            �            1259    77451    breed_id_seq    SEQUENCE     u   CREATE SEQUENCE public.breed_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.breed_id_seq;
       public       postgres    false    3            �            1259    77453    broiler_detail_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.broiler_detail_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.broiler_detail_id_seq;
       public       postgres    false    3            �            1259    77455    broiler_id_seq    SEQUENCE     w   CREATE SEQUENCE public.broiler_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.broiler_id_seq;
       public       postgres    false    3            �            1259    77457    broiler_product_detail_id_seq    SEQUENCE     �   CREATE SEQUENCE public.broiler_product_detail_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.broiler_product_detail_id_seq;
       public       postgres    false    3            �            1259    77459    broiler_product_id_seq    SEQUENCE        CREATE SEQUENCE public.broiler_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.broiler_product_id_seq;
       public       postgres    false    3            �            1259    77461    broilereviction_detail_id_seq    SEQUENCE     �   CREATE SEQUENCE public.broilereviction_detail_id_seq
    START WITH 124
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.broilereviction_detail_id_seq;
       public       postgres    false    3            �            1259    77463    broilereviction_id_seq    SEQUENCE     �   CREATE SEQUENCE public.broilereviction_id_seq
    START WITH 70
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.broilereviction_id_seq;
       public       postgres    false    3            �            1259    77465    brooder_id_seq    SEQUENCE     w   CREATE SEQUENCE public.brooder_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.brooder_id_seq;
       public       postgres    false    3            �            1259    77467    brooder_machines_id_seq    SEQUENCE     �   CREATE SEQUENCE public.brooder_machines_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.brooder_machines_id_seq;
       public       postgres    false    3            �            1259    77469    calendar_day_id_seq    SEQUENCE     |   CREATE SEQUENCE public.calendar_day_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.calendar_day_id_seq;
       public       postgres    false    3            �            1259    77471    calendar_id_seq    SEQUENCE     x   CREATE SEQUENCE public.calendar_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.calendar_id_seq;
       public       postgres    false    3            �            1259    77473    center_id_seq    SEQUENCE     v   CREATE SEQUENCE public.center_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.center_id_seq;
       public       postgres    false    3            �            1259    77475    egg_planning_id_seq    SEQUENCE     |   CREATE SEQUENCE public.egg_planning_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.egg_planning_id_seq;
       public       postgres    false    3            �            1259    77477    egg_required_id_seq    SEQUENCE     |   CREATE SEQUENCE public.egg_required_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.egg_required_id_seq;
       public       postgres    false    3            �            1259    77479    eggs_storage_id_seq    SEQUENCE     |   CREATE SEQUENCE public.eggs_storage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.eggs_storage_id_seq;
       public       postgres    false    3            �            1259    77481    farm_id_seq    SEQUENCE     t   CREATE SEQUENCE public.farm_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.farm_id_seq;
       public       postgres    false    3            �            1259    77483    farm_type_id_seq    SEQUENCE     y   CREATE SEQUENCE public.farm_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.farm_type_id_seq;
       public       postgres    false    3            �            1259    77485    holiday_id_seq    SEQUENCE     w   CREATE SEQUENCE public.holiday_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.holiday_id_seq;
       public       postgres    false    3            �            1259    77487    housing_way_detail_id_seq    SEQUENCE     �   CREATE SEQUENCE public.housing_way_detail_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.housing_way_detail_id_seq;
       public       postgres    false    3            �            1259    77489    housing_way_id_seq    SEQUENCE     {   CREATE SEQUENCE public.housing_way_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.housing_way_id_seq;
       public       postgres    false    3            �            1259    77491    incubator_id_seq    SEQUENCE     y   CREATE SEQUENCE public.incubator_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.incubator_id_seq;
       public       postgres    false    3            �            1259    77493    incubator_plant_id_seq    SEQUENCE        CREATE SEQUENCE public.incubator_plant_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.incubator_plant_id_seq;
       public       postgres    false    3            �            1259    77495    industry_id_seq    SEQUENCE     x   CREATE SEQUENCE public.industry_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.industry_id_seq;
       public       postgres    false    3            �            1259    77497    line_id_seq    SEQUENCE     t   CREATE SEQUENCE public.line_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.line_id_seq;
       public       postgres    false    3            �            1259    77499    lot_eggs_id_seq    SEQUENCE     x   CREATE SEQUENCE public.lot_eggs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.lot_eggs_id_seq;
       public       postgres    false    3            �            1259    77501    lot_fattening_id_seq    SEQUENCE     }   CREATE SEQUENCE public.lot_fattening_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.lot_fattening_id_seq;
       public       postgres    false    3            �            1259    77503 
   lot_id_seq    SEQUENCE     s   CREATE SEQUENCE public.lot_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.lot_id_seq;
       public       postgres    false    3            �            1259    77505    lot_liftbreeding_id_seq    SEQUENCE     �   CREATE SEQUENCE public.lot_liftbreeding_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.lot_liftbreeding_id_seq;
       public       postgres    false    3            �            1259    77507     mdapplication_application_id_seq    SEQUENCE     �   CREATE SEQUENCE public.mdapplication_application_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999999999999
    CACHE 1;
 7   DROP SEQUENCE public.mdapplication_application_id_seq;
       public       postgres    false    3            �            1259    77509    mdapplication    TABLE     �   CREATE TABLE public.mdapplication (
    application_id integer DEFAULT nextval('public.mdapplication_application_id_seq'::regclass) NOT NULL,
    application_name character varying(30) NOT NULL,
    type character varying
);
 !   DROP TABLE public.mdapplication;
       public         postgres    false    246    3            �            1259    77516    mdapplication_rol_id_seq    SEQUENCE     �   CREATE SEQUENCE public.mdapplication_rol_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 9999999999999
    CACHE 1;
 /   DROP SEQUENCE public.mdapplication_rol_id_seq;
       public       postgres    false    3            �            1259    77518    mdapplication_rol    TABLE     �   CREATE TABLE public.mdapplication_rol (
    application_id integer NOT NULL,
    id integer DEFAULT nextval('public.mdapplication_rol_id_seq'::regclass) NOT NULL,
    rol_id integer NOT NULL
);
 %   DROP TABLE public.mdapplication_rol;
       public         postgres    false    248    3            �            1259    77522    mdbreed    TABLE     �   CREATE TABLE public.mdbreed (
    breed_id integer DEFAULT nextval('public.breed_id_seq'::regclass) NOT NULL,
    code character varying(20) NOT NULL,
    name character varying(45) NOT NULL
);
    DROP TABLE public.mdbreed;
       public         postgres    false    218    3            �           0    0    TABLE mdbreed    COMMENT     U   COMMENT ON TABLE public.mdbreed IS 'Tabla donde se almacenan las razas de las aves';
            public       postgres    false    250            �           0    0    COLUMN mdbreed.breed_id    COMMENT     >   COMMENT ON COLUMN public.mdbreed.breed_id IS 'Id de la raza';
            public       postgres    false    250            �           0    0    COLUMN mdbreed.code    COMMENT     >   COMMENT ON COLUMN public.mdbreed.code IS 'Codigo de la raza';
            public       postgres    false    250            �           0    0    COLUMN mdbreed.name    COMMENT     >   COMMENT ON COLUMN public.mdbreed.name IS 'Nombre de la Raza';
            public       postgres    false    250            �            1259    77526    mdbroiler_product    TABLE     �   CREATE TABLE public.mdbroiler_product (
    broiler_product_id integer DEFAULT nextval('public.broiler_product_id_seq'::regclass) NOT NULL,
    name character varying(45) NOT NULL,
    days_eviction integer,
    weight double precision
);
 %   DROP TABLE public.mdbroiler_product;
       public         postgres    false    222    3            �           0    0    TABLE mdbroiler_product    COMMENT     w   COMMENT ON TABLE public.mdbroiler_product IS 'Almacena los productos de salida de la etapa de engorda hacia desalojo';
            public       postgres    false    251            �           0    0 +   COLUMN mdbroiler_product.broiler_product_id    COMMENT     ^   COMMENT ON COLUMN public.mdbroiler_product.broiler_product_id IS 'Id de producto de engorde';
            public       postgres    false    251            �           0    0    COLUMN mdbroiler_product.name    COMMENT     T   COMMENT ON COLUMN public.mdbroiler_product.name IS 'Nombre de producto de engorde';
            public       postgres    false    251            �           0    0 &   COLUMN mdbroiler_product.days_eviction    COMMENT     y   COMMENT ON COLUMN public.mdbroiler_product.days_eviction IS 'Días necesarios para el desalojo del producto de engorde';
            public       postgres    false    251            �           0    0    COLUMN mdbroiler_product.weight    COMMENT     b   COMMENT ON COLUMN public.mdbroiler_product.weight IS 'Peso estimado del producto para su salida';
            public       postgres    false    251            �            1259    77530 
   mdfarmtype    TABLE     �   CREATE TABLE public.mdfarmtype (
    farm_type_id integer DEFAULT nextval('public.farm_type_id_seq'::regclass) NOT NULL,
    name character varying(45) NOT NULL
);
    DROP TABLE public.mdfarmtype;
       public         postgres    false    234    3            �           0    0    TABLE mdfarmtype    COMMENT     D   COMMENT ON TABLE public.mdfarmtype IS 'Define los tipos de granja';
            public       postgres    false    252            �           0    0    COLUMN mdfarmtype.farm_type_id    COMMENT     L   COMMENT ON COLUMN public.mdfarmtype.farm_type_id IS 'Id de tipo de granja';
            public       postgres    false    252            �           0    0    COLUMN mdfarmtype.name    COMMENT     O   COMMENT ON COLUMN public.mdfarmtype.name IS 'Nombre de la etapa de la granja';
            public       postgres    false    252            �            1259    77534 
   mdindustry    TABLE     �   CREATE TABLE public.mdindustry (
    industry_id integer DEFAULT nextval('public.industry_id_seq'::regclass) NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.mdindustry;
       public         postgres    false    240    3            �           0    0    TABLE mdindustry    COMMENT     L   COMMENT ON TABLE public.mdindustry IS 'Almacena los datos de la industria';
            public       postgres    false    253            �           0    0    COLUMN mdindustry.industry_id    COMMENT     I   COMMENT ON COLUMN public.mdindustry.industry_id IS 'Id de la industria';
            public       postgres    false    253            �           0    0    COLUMN mdindustry.name    COMMENT     F   COMMENT ON COLUMN public.mdindustry.name IS 'Nombre de la industria';
            public       postgres    false    253            �            1259    77538    measure_id_seq    SEQUENCE     w   CREATE SEQUENCE public.measure_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.measure_id_seq;
       public       postgres    false    3            �            1259    77540 	   mdmeasure    TABLE       CREATE TABLE public.mdmeasure (
    measure_id integer DEFAULT nextval('public.measure_id_seq'::regclass) NOT NULL,
    name character varying(10) NOT NULL,
    abbreviation character varying(5) NOT NULL,
    originvalue double precision,
    valuekg double precision
);
    DROP TABLE public.mdmeasure;
       public         postgres    false    254    3            �           0    0    TABLE mdmeasure    COMMENT     _   COMMENT ON TABLE public.mdmeasure IS 'Almacena las medidas a utilizar en las planificaciones';
            public       postgres    false    255            �           0    0    COLUMN mdmeasure.measure_id    COMMENT     D   COMMENT ON COLUMN public.mdmeasure.measure_id IS 'Id de la medida';
            public       postgres    false    255            �           0    0    COLUMN mdmeasure.name    COMMENT     B   COMMENT ON COLUMN public.mdmeasure.name IS 'Nombre de la medida';
            public       postgres    false    255            �           0    0    COLUMN mdmeasure.abbreviation    COMMENT     O   COMMENT ON COLUMN public.mdmeasure.abbreviation IS 'Abreviatura de la medida';
            public       postgres    false    255            �           0    0    COLUMN mdmeasure.originvalue    COMMENT     Q   COMMENT ON COLUMN public.mdmeasure.originvalue IS 'Valor original de la medida';
            public       postgres    false    255            �           0    0    COLUMN mdmeasure.valuekg    COMMENT     R   COMMENT ON COLUMN public.mdmeasure.valuekg IS 'Valor en Kilogramos de la medida';
            public       postgres    false    255                        1259    77544    parameter_id_seq    SEQUENCE     y   CREATE SEQUENCE public.parameter_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.parameter_id_seq;
       public       postgres    false    3                       1259    77546    mdparameter    TABLE     '  CREATE TABLE public.mdparameter (
    parameter_id integer DEFAULT nextval('public.parameter_id_seq'::regclass) NOT NULL,
    description character varying(250) NOT NULL,
    type character varying(10),
    measure_id integer,
    process_id integer,
    name character varying(250) NOT NULL
);
    DROP TABLE public.mdparameter;
       public         postgres    false    256    3            �           0    0    TABLE mdparameter    COMMENT     �   COMMENT ON TABLE public.mdparameter IS 'Almacena la definición de los parámetros a utilizar en la planificación regresiva junto a sus respectivas características';
            public       postgres    false    257            �           0    0    COLUMN mdparameter.parameter_id    COMMENT     N   COMMENT ON COLUMN public.mdparameter.parameter_id IS 'Id de los parámetros';
            public       postgres    false    257            �           0    0    COLUMN mdparameter.description    COMMENT     W   COMMENT ON COLUMN public.mdparameter.description IS 'Descripción de los parámetros';
            public       postgres    false    257            �           0    0    COLUMN mdparameter.type    COMMENT     D   COMMENT ON COLUMN public.mdparameter.type IS 'Tipo de parámetros';
            public       postgres    false    257            �           0    0    COLUMN mdparameter.measure_id    COMMENT     F   COMMENT ON COLUMN public.mdparameter.measure_id IS 'Id de la medida';
            public       postgres    false    257            �           0    0    COLUMN mdparameter.process_id    COMMENT     E   COMMENT ON COLUMN public.mdparameter.process_id IS 'Id del proceso';
            public       postgres    false    257            �           0    0    COLUMN mdparameter.name    COMMENT     F   COMMENT ON COLUMN public.mdparameter.name IS 'Nombre del parámetro';
            public       postgres    false    257                       1259    77553    process_id_seq    SEQUENCE     w   CREATE SEQUENCE public.process_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.process_id_seq;
       public       postgres    false    3                       1259    77555 	   mdprocess    TABLE     i  CREATE TABLE public.mdprocess (
    process_id integer DEFAULT nextval('public.process_id_seq'::regclass) NOT NULL,
    process_order integer NOT NULL,
    product_id integer NOT NULL,
    stage_id integer NOT NULL,
    historical_decrease double precision NOT NULL,
    theoretical_decrease double precision NOT NULL,
    historical_weight double precision NOT NULL,
    theoretical_weight double precision NOT NULL,
    historical_duration integer NOT NULL,
    theoretical_duration integer NOT NULL,
    calendar_id integer NOT NULL,
    visible boolean,
    name character varying(250) NOT NULL,
    predecessor_id integer,
    capacity integer NOT NULL,
    breed_id integer NOT NULL,
    gender character varying(30),
    fattening_goal double precision,
    type_posture character varying(30),
    process_class_id integer NOT NULL,
    biological_active boolean
);
    DROP TABLE public.mdprocess;
       public         postgres    false    258    3            �           0    0    TABLE mdprocess    COMMENT     �   COMMENT ON TABLE public.mdprocess IS 'Almacena los procesos definidos para la planificación progresiva junto a sus respectivas características';
            public       postgres    false    259            �           0    0    COLUMN mdprocess.process_id    COMMENT     G   COMMENT ON COLUMN public.mdprocess.process_id IS 'Id de los procesos';
            public       postgres    false    259            �           0    0    COLUMN mdprocess.process_order    COMMENT     M   COMMENT ON COLUMN public.mdprocess.process_order IS 'Orden de los procesos';
            public       postgres    false    259            �           0    0    COLUMN mdprocess.product_id    COMMENT     D   COMMENT ON COLUMN public.mdprocess.product_id IS 'Id del producto';
            public       postgres    false    259            �           0    0    COLUMN mdprocess.stage_id    COMMENT     >   COMMENT ON COLUMN public.mdprocess.stage_id IS 'Id de etapa';
            public       postgres    false    259            �           0    0 $   COLUMN mdprocess.historical_decrease    COMMENT     Y   COMMENT ON COLUMN public.mdprocess.historical_decrease IS 'Merma historica del proceso';
            public       postgres    false    259            �           0    0 %   COLUMN mdprocess.theoretical_decrease    COMMENT     Y   COMMENT ON COLUMN public.mdprocess.theoretical_decrease IS 'Merma teórica del proceso';
            public       postgres    false    259            �           0    0 "   COLUMN mdprocess.historical_weight    COMMENT     V   COMMENT ON COLUMN public.mdprocess.historical_weight IS 'Peso historico del proceso';
            public       postgres    false    259            �           0    0 #   COLUMN mdprocess.theoretical_weight    COMMENT     V   COMMENT ON COLUMN public.mdprocess.theoretical_weight IS 'Peso teórico del proceso';
            public       postgres    false    259            �           0    0 $   COLUMN mdprocess.historical_duration    COMMENT     ^   COMMENT ON COLUMN public.mdprocess.historical_duration IS 'Duración histórica del proceso';
            public       postgres    false    259            �           0    0 %   COLUMN mdprocess.theoretical_duration    COMMENT     ]   COMMENT ON COLUMN public.mdprocess.theoretical_duration IS 'Duración teórica del proceso';
            public       postgres    false    259            �           0    0    COLUMN mdprocess.calendar_id    COMMENT     G   COMMENT ON COLUMN public.mdprocess.calendar_id IS 'Id del calendario';
            public       postgres    false    259            �           0    0    COLUMN mdprocess.visible    COMMENT     I   COMMENT ON COLUMN public.mdprocess.visible IS 'Visibilidad del proceso';
            public       postgres    false    259            �           0    0    COLUMN mdprocess.name    COMMENT     A   COMMENT ON COLUMN public.mdprocess.name IS 'Nombre del proceso';
            public       postgres    false    259            �           0    0    COLUMN mdprocess.predecessor_id    COMMENT     J   COMMENT ON COLUMN public.mdprocess.predecessor_id IS 'Id del predecesor';
            public       postgres    false    259            �           0    0    COLUMN mdprocess.capacity    COMMENT     X   COMMENT ON COLUMN public.mdprocess.capacity IS 'Capacidad semanal asociada al proceso';
            public       postgres    false    259            �           0    0    COLUMN mdprocess.breed_id    COMMENT     @   COMMENT ON COLUMN public.mdprocess.breed_id IS 'Id de la raza';
            public       postgres    false    259            �           0    0    COLUMN mdprocess.gender    COMMENT     N   COMMENT ON COLUMN public.mdprocess.gender IS 'Genero del producto de salida';
            public       postgres    false    259            �           0    0    COLUMN mdprocess.fattening_goal    COMMENT     H   COMMENT ON COLUMN public.mdprocess.fattening_goal IS 'Meta de engorde';
            public       postgres    false    259            �           0    0    COLUMN mdprocess.type_posture    COMMENT     s   COMMENT ON COLUMN public.mdprocess.type_posture IS 'Define el tipo de postura de acuerdo a la edad de la gallina';
            public       postgres    false    259            �           0    0 !   COLUMN mdprocess.process_class_id    COMMENT     R   COMMENT ON COLUMN public.mdprocess.process_class_id IS 'Id del proceso de clase';
            public       postgres    false    259            �           0    0 "   COLUMN mdprocess.biological_active    COMMENT     h   COMMENT ON COLUMN public.mdprocess.biological_active IS 'Define si el proceso es un activo biológico';
            public       postgres    false    259                       1259    77559    process_class_id_seq    SEQUENCE     }   CREATE SEQUENCE public.process_class_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.process_class_id_seq;
       public       postgres    false    3                       1259    77561    mdprocessclass    TABLE     �   CREATE TABLE public.mdprocessclass (
    process_class_id integer DEFAULT nextval('public.process_class_id_seq'::regclass) NOT NULL,
    name character varying(45) NOT NULL,
    industry_id integer
);
 "   DROP TABLE public.mdprocessclass;
       public         postgres    false    260    3            �           0    0 &   COLUMN mdprocessclass.process_class_id    COMMENT     W   COMMENT ON COLUMN public.mdprocessclass.process_class_id IS 'Id del proceso de clase';
            public       postgres    false    261            �           0    0    COLUMN mdprocessclass.name    COMMENT     F   COMMENT ON COLUMN public.mdprocessclass.name IS 'Nombre del proceso';
            public       postgres    false    261            �           0    0 !   COLUMN mdprocessclass.industry_id    COMMENT     M   COMMENT ON COLUMN public.mdprocessclass.industry_id IS 'Id de la industria';
            public       postgres    false    261                       1259    77565    product_id_seq    SEQUENCE     w   CREATE SEQUENCE public.product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.product_id_seq;
       public       postgres    false    3                       1259    77567 	   mdproduct    TABLE     �   CREATE TABLE public.mdproduct (
    product_id integer DEFAULT nextval('public.product_id_seq'::regclass) NOT NULL,
    code character varying(20) NOT NULL,
    name character varying(45) NOT NULL
);
    DROP TABLE public.mdproduct;
       public         postgres    false    262    3            �           0    0    TABLE mdproduct    COMMENT     Z   COMMENT ON TABLE public.mdproduct IS 'Almacena los productos utilizados en los procesos';
            public       postgres    false    263            �           0    0    COLUMN mdproduct.product_id    COMMENT     D   COMMENT ON COLUMN public.mdproduct.product_id IS 'Id del producto';
            public       postgres    false    263            �           0    0    COLUMN mdproduct.code    COMMENT     B   COMMENT ON COLUMN public.mdproduct.code IS 'Codigo del producto';
            public       postgres    false    263            �           0    0    COLUMN mdproduct.name    COMMENT     B   COMMENT ON COLUMN public.mdproduct.name IS 'Nombre del producto';
            public       postgres    false    263                       1259    77571    mdrol_rol_id_seq    SEQUENCE        CREATE SEQUENCE public.mdrol_rol_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 10000000
    CACHE 1;
 '   DROP SEQUENCE public.mdrol_rol_id_seq;
       public       postgres    false    3            	           1259    77573    mdrol    TABLE     	  CREATE TABLE public.mdrol (
    rol_id integer DEFAULT nextval('public.mdrol_rol_id_seq'::regclass) NOT NULL,
    rol_name character varying(80) NOT NULL,
    admin_user_creator character varying(80) NOT NULL,
    creation_date timestamp with time zone NOT NULL
);
    DROP TABLE public.mdrol;
       public         postgres    false    264    3            
           1259    77577    scenario_id_seq    SEQUENCE     x   CREATE SEQUENCE public.scenario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.scenario_id_seq;
       public       postgres    false    3                       1259    77579 
   mdscenario    TABLE     d  CREATE TABLE public.mdscenario (
    scenario_id integer DEFAULT nextval('public.scenario_id_seq'::regclass) NOT NULL,
    description character varying(250) NOT NULL,
    date_start timestamp with time zone,
    date_end timestamp with time zone,
    name character varying(250) NOT NULL,
    status integer DEFAULT 0,
    calendar_id integer NOT NULL
);
    DROP TABLE public.mdscenario;
       public         postgres    false    266    3            �           0    0    TABLE mdscenario    COMMENT     [   COMMENT ON TABLE public.mdscenario IS 'Almacena información de los distintos escenarios';
            public       postgres    false    267            �           0    0    COLUMN mdscenario.scenario_id    COMMENT     G   COMMENT ON COLUMN public.mdscenario.scenario_id IS 'Id del escenario';
            public       postgres    false    267            �           0    0    COLUMN mdscenario.description    COMMENT     P   COMMENT ON COLUMN public.mdscenario.description IS 'Descripcion del escenario';
            public       postgres    false    267            �           0    0    COLUMN mdscenario.date_start    COMMENT     S   COMMENT ON COLUMN public.mdscenario.date_start IS 'Fecha de inicio del escenario';
            public       postgres    false    267            �           0    0    COLUMN mdscenario.date_end    COMMENT     N   COMMENT ON COLUMN public.mdscenario.date_end IS 'Fecha de fin del escenario';
            public       postgres    false    267            �           0    0    COLUMN mdscenario.name    COMMENT     D   COMMENT ON COLUMN public.mdscenario.name IS 'Nombre del escenario';
            public       postgres    false    267            �           0    0    COLUMN mdscenario.status    COMMENT     F   COMMENT ON COLUMN public.mdscenario.status IS 'Estado del escenario';
            public       postgres    false    267                       1259    77587    status_shed_id_seq    SEQUENCE     {   CREATE SEQUENCE public.status_shed_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.status_shed_id_seq;
       public       postgres    false    3                       1259    77589    mdshedstatus    TABLE     �   CREATE TABLE public.mdshedstatus (
    shed_status_id integer DEFAULT nextval('public.status_shed_id_seq'::regclass) NOT NULL,
    name character varying(50) NOT NULL,
    description character varying(250) NOT NULL
);
     DROP TABLE public.mdshedstatus;
       public         postgres    false    268    3            �           0    0    TABLE mdshedstatus    COMMENT     b   COMMENT ON TABLE public.mdshedstatus IS 'Almaceno los estatus de disponibilidad de los galpones';
            public       postgres    false    269            �           0    0 "   COLUMN mdshedstatus.shed_status_id    COMMENT     T   COMMENT ON COLUMN public.mdshedstatus.shed_status_id IS 'Id del estado del galpon';
            public       postgres    false    269            �           0    0    COLUMN mdshedstatus.name    COMMENT     a   COMMENT ON COLUMN public.mdshedstatus.name IS 'Nombre del estado en que se encuentra el galpon';
            public       postgres    false    269            �           0    0    COLUMN mdshedstatus.description    COMMENT     [   COMMENT ON COLUMN public.mdshedstatus.description IS 'Descripcion del estado del galpon
';
            public       postgres    false    269                       1259    77593    stage_id_seq    SEQUENCE     u   CREATE SEQUENCE public.stage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.stage_id_seq;
       public       postgres    false    3                       1259    77595    mdstage    TABLE     �   CREATE TABLE public.mdstage (
    stage_id integer DEFAULT nextval('public.stage_id_seq'::regclass) NOT NULL,
    order_ integer,
    name character varying(250) NOT NULL
);
    DROP TABLE public.mdstage;
       public         postgres    false    270    3            �           0    0    TABLE mdstage    COMMENT     d   COMMENT ON TABLE public.mdstage IS 'Almacena las etapas a utilizar en el proceso de planificacion';
            public       postgres    false    271            �           0    0    COLUMN mdstage.stage_id    COMMENT     ?   COMMENT ON COLUMN public.mdstage.stage_id IS 'Id de la etapa';
            public       postgres    false    271            �           0    0    COLUMN mdstage.order_    COMMENT     U   COMMENT ON COLUMN public.mdstage.order_ IS 'Orden en el que se muestras las etapas';
            public       postgres    false    271            �           0    0    COLUMN mdstage.name    COMMENT     ?   COMMENT ON COLUMN public.mdstage.name IS 'Nombre de la etapa';
            public       postgres    false    271                       1259    77599    mduser_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.mduser_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 9999999999
    CACHE 1;
 )   DROP SEQUENCE public.mduser_user_id_seq;
       public       postgres    false    3                       1259    77601    mduser    TABLE     �  CREATE TABLE public.mduser (
    username character varying(80) NOT NULL,
    password character varying(80) NOT NULL,
    name character varying(80) NOT NULL,
    lastname character varying(80) NOT NULL,
    active boolean NOT NULL,
    admi_user_creator character varying(80) NOT NULL,
    rol_id integer NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    user_id integer DEFAULT nextval('public.mduser_user_id_seq'::regclass) NOT NULL
);
    DROP TABLE public.mduser;
       public         postgres    false    272    3                       1259    77605    oscenter    TABLE       CREATE TABLE public.oscenter (
    center_id integer DEFAULT nextval('public.center_id_seq'::regclass) NOT NULL,
    partnership_id integer NOT NULL,
    farm_id integer NOT NULL,
    name character varying(45) NOT NULL,
    code character varying(20) NOT NULL
);
    DROP TABLE public.oscenter;
       public         postgres    false    229    3            �           0    0    TABLE oscenter    COMMENT     S   COMMENT ON TABLE public.oscenter IS 'Almacena los datos referentes a los nucleos';
            public       postgres    false    274            �           0    0    COLUMN oscenter.center_id    COMMENT     @   COMMENT ON COLUMN public.oscenter.center_id IS 'Id del nucleo';
            public       postgres    false    274            �           0    0    COLUMN oscenter.partnership_id    COMMENT     H   COMMENT ON COLUMN public.oscenter.partnership_id IS 'Id de la empresa';
            public       postgres    false    274            �           0    0    COLUMN oscenter.farm_id    COMMENT     @   COMMENT ON COLUMN public.oscenter.farm_id IS 'Id de la granja';
            public       postgres    false    274            �           0    0    COLUMN oscenter.name    COMMENT     @   COMMENT ON COLUMN public.oscenter.name IS 'Nombre del nucleo
';
            public       postgres    false    274            �           0    0    COLUMN oscenter.code    COMMENT     ?   COMMENT ON COLUMN public.oscenter.code IS 'Codigo del nucleo';
            public       postgres    false    274                       1259    77609    oscenter_oswarehouse    TABLE     �   CREATE TABLE public.oscenter_oswarehouse (
    client_id integer NOT NULL,
    partnership_id integer NOT NULL,
    farm_id integer NOT NULL,
    center_id integer NOT NULL,
    warehouse_id integer NOT NULL,
    delete_mark integer
);
 (   DROP TABLE public.oscenter_oswarehouse;
       public         postgres    false    3            �           0    0    TABLE oscenter_oswarehouse    COMMENT     p   COMMENT ON TABLE public.oscenter_oswarehouse IS 'Relación que une los núcleos con sus respectivos almacenes';
            public       postgres    false    275            �           0    0 %   COLUMN oscenter_oswarehouse.client_id    COMMENT     M   COMMENT ON COLUMN public.oscenter_oswarehouse.client_id IS 'Id del cliente';
            public       postgres    false    275            �           0    0 *   COLUMN oscenter_oswarehouse.partnership_id    COMMENT     T   COMMENT ON COLUMN public.oscenter_oswarehouse.partnership_id IS 'Id de la empresa';
            public       postgres    false    275                        0    0 #   COLUMN oscenter_oswarehouse.farm_id    COMMENT     L   COMMENT ON COLUMN public.oscenter_oswarehouse.farm_id IS 'Id de la granja';
            public       postgres    false    275                       0    0 %   COLUMN oscenter_oswarehouse.center_id    COMMENT     L   COMMENT ON COLUMN public.oscenter_oswarehouse.center_id IS 'Id del nucleo';
            public       postgres    false    275                       0    0 (   COLUMN oscenter_oswarehouse.warehouse_id    COMMENT     P   COMMENT ON COLUMN public.oscenter_oswarehouse.warehouse_id IS 'Id del almacen';
            public       postgres    false    275                       0    0 '   COLUMN oscenter_oswarehouse.delete_mark    COMMENT     Q   COMMENT ON COLUMN public.oscenter_oswarehouse.delete_mark IS 'Marca de borrado';
            public       postgres    false    275                       1259    77612    osfarm    TABLE     �   CREATE TABLE public.osfarm (
    farm_id integer DEFAULT nextval('public.farm_id_seq'::regclass) NOT NULL,
    partnership_id integer,
    code character varying(20) NOT NULL,
    name character varying(45) NOT NULL,
    farm_type_id integer NOT NULL
);
    DROP TABLE public.osfarm;
       public         postgres    false    233    3                       0    0    TABLE osfarm    COMMENT     p   COMMENT ON TABLE public.osfarm IS 'Almacena la información de la granja con sus respectivas características';
            public       postgres    false    276                       0    0    COLUMN osfarm.farm_id    COMMENT     >   COMMENT ON COLUMN public.osfarm.farm_id IS 'Id de la granja';
            public       postgres    false    276                       0    0    COLUMN osfarm.partnership_id    COMMENT     F   COMMENT ON COLUMN public.osfarm.partnership_id IS 'Id de la empresa';
            public       postgres    false    276                       0    0    COLUMN osfarm.code    COMMENT     ?   COMMENT ON COLUMN public.osfarm.code IS 'Codigo de la granja';
            public       postgres    false    276                       0    0    COLUMN osfarm.name    COMMENT     ?   COMMENT ON COLUMN public.osfarm.name IS 'Nombre de la granja';
            public       postgres    false    276            	           0    0    COLUMN osfarm.farm_type_id    COMMENT     I   COMMENT ON COLUMN public.osfarm.farm_type_id IS 'Id del tipo de granja';
            public       postgres    false    276                       1259    77616    osincubator    TABLE     �  CREATE TABLE public.osincubator (
    incubator_id integer DEFAULT nextval('public.incubator_id_seq'::regclass) NOT NULL,
    incubator_plant_id integer,
    name character varying(45) NOT NULL,
    code character varying(20) NOT NULL,
    description character varying(250) NOT NULL,
    capacity integer,
    sunday integer,
    monday integer,
    tuesday integer,
    wednesday integer,
    thursday integer,
    friday integer,
    saturday integer
);
    DROP TABLE public.osincubator;
       public         postgres    false    238    3            
           0    0    TABLE osincubator    COMMENT     y   COMMENT ON TABLE public.osincubator IS 'Almacena las máquinas de incubación pertenecientes a cada una de las plantas';
            public       postgres    false    277                       0    0    COLUMN osincubator.incubator_id    COMMENT     L   COMMENT ON COLUMN public.osincubator.incubator_id IS 'Id de la incubadora';
            public       postgres    false    277                       0    0 %   COLUMN osincubator.incubator_plant_id    COMMENT     Y   COMMENT ON COLUMN public.osincubator.incubator_plant_id IS 'Id de la planta incubadora';
            public       postgres    false    277                       0    0    COLUMN osincubator.name    COMMENT     H   COMMENT ON COLUMN public.osincubator.name IS 'Nombre de la incubadora';
            public       postgres    false    277                       0    0    COLUMN osincubator.code    COMMENT     H   COMMENT ON COLUMN public.osincubator.code IS 'Codigo de la incubadora';
            public       postgres    false    277                       0    0    COLUMN osincubator.description    COMMENT     T   COMMENT ON COLUMN public.osincubator.description IS 'Descripcion de la incubadora';
            public       postgres    false    277                       0    0    COLUMN osincubator.capacity    COMMENT     O   COMMENT ON COLUMN public.osincubator.capacity IS 'Capacidad de la incubadora';
            public       postgres    false    277                       0    0    COLUMN osincubator.sunday    COMMENT     ]   COMMENT ON COLUMN public.osincubator.sunday IS 'Marca los dias de trabajo de la incubadora';
            public       postgres    false    277                       0    0    COLUMN osincubator.monday    COMMENT     ^   COMMENT ON COLUMN public.osincubator.monday IS 'Marca los días de trabajo de la incubadora';
            public       postgres    false    277                       0    0    COLUMN osincubator.tuesday    COMMENT     _   COMMENT ON COLUMN public.osincubator.tuesday IS 'Marca los días de trabajo de la incubadora';
            public       postgres    false    277                       0    0    COLUMN osincubator.wednesday    COMMENT     a   COMMENT ON COLUMN public.osincubator.wednesday IS 'Marca los días de trabajo de la incubadora';
            public       postgres    false    277                       0    0    COLUMN osincubator.thursday    COMMENT     `   COMMENT ON COLUMN public.osincubator.thursday IS 'Marca los días de trabajo de la incubadora';
            public       postgres    false    277                       0    0    COLUMN osincubator.friday    COMMENT     ^   COMMENT ON COLUMN public.osincubator.friday IS 'Marca los días de trabajo de la incubadora';
            public       postgres    false    277                       0    0    COLUMN osincubator.saturday    COMMENT     `   COMMENT ON COLUMN public.osincubator.saturday IS 'Marca los días de trabajo de la incubadora';
            public       postgres    false    277                       1259    77620    osincubatorplant    TABLE     U  CREATE TABLE public.osincubatorplant (
    incubator_plant_id integer DEFAULT nextval('public.incubator_plant_id_seq'::regclass) NOT NULL,
    name character varying(45) NOT NULL,
    code character varying(20) NOT NULL,
    description character varying(250),
    partnership_id integer,
    max_storage integer,
    min_storage integer
);
 $   DROP TABLE public.osincubatorplant;
       public         postgres    false    239    3                       0    0    TABLE osincubatorplant    COMMENT     }   COMMENT ON TABLE public.osincubatorplant IS 'Almacena la información de la planta incubadora perteneciente a cada empresa';
            public       postgres    false    278                       0    0 *   COLUMN osincubatorplant.incubator_plant_id    COMMENT     ^   COMMENT ON COLUMN public.osincubatorplant.incubator_plant_id IS 'Id de la planta incubadora';
            public       postgres    false    278                       0    0    COLUMN osincubatorplant.name    COMMENT     T   COMMENT ON COLUMN public.osincubatorplant.name IS 'Nombre de la planta incubadora';
            public       postgres    false    278                       0    0    COLUMN osincubatorplant.code    COMMENT     T   COMMENT ON COLUMN public.osincubatorplant.code IS 'Codigo de la planta incubadora';
            public       postgres    false    278                       0    0 #   COLUMN osincubatorplant.description    COMMENT     a   COMMENT ON COLUMN public.osincubatorplant.description IS 'Descripción de la planta incubadora';
            public       postgres    false    278                       0    0 &   COLUMN osincubatorplant.partnership_id    COMMENT     P   COMMENT ON COLUMN public.osincubatorplant.partnership_id IS 'Id de la empresa';
            public       postgres    false    278                       0    0 #   COLUMN osincubatorplant.max_storage    COMMENT     ]   COMMENT ON COLUMN public.osincubatorplant.max_storage IS 'Numero máximo de almacenamiento';
            public       postgres    false    278                       0    0 #   COLUMN osincubatorplant.min_storage    COMMENT     \   COMMENT ON COLUMN public.osincubatorplant.min_storage IS 'Numero minimo de almacenamiento';
            public       postgres    false    278                       1259    77624    partnership_id_seq    SEQUENCE     {   CREATE SEQUENCE public.partnership_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.partnership_id_seq;
       public       postgres    false    3                       1259    77626    ospartnership    TABLE     2  CREATE TABLE public.ospartnership (
    partnership_id integer DEFAULT nextval('public.partnership_id_seq'::regclass) NOT NULL,
    name character varying(45) NOT NULL,
    address character varying(250) NOT NULL,
    description character varying(250) NOT NULL,
    code character varying(20) NOT NULL
);
 !   DROP TABLE public.ospartnership;
       public         postgres    false    279    3                        0    0    TABLE ospartnership    COMMENT     j   COMMENT ON TABLE public.ospartnership IS 'Almacena la información referente a las empresas registradas';
            public       postgres    false    280            !           0    0 #   COLUMN ospartnership.partnership_id    COMMENT     M   COMMENT ON COLUMN public.ospartnership.partnership_id IS 'Id de la empresa';
            public       postgres    false    280            "           0    0    COLUMN ospartnership.name    COMMENT     G   COMMENT ON COLUMN public.ospartnership.name IS 'Nombre de la empresa';
            public       postgres    false    280            #           0    0    COLUMN ospartnership.address    COMMENT     M   COMMENT ON COLUMN public.ospartnership.address IS 'Direccion de la empresa';
            public       postgres    false    280            $           0    0     COLUMN ospartnership.description    COMMENT     T   COMMENT ON COLUMN public.ospartnership.description IS 'Descripción de la empresa';
            public       postgres    false    280            %           0    0    COLUMN ospartnership.code    COMMENT     G   COMMENT ON COLUMN public.ospartnership.code IS 'Codigo de la empresa';
            public       postgres    false    280                       1259    77633    shed_id_seq    SEQUENCE     t   CREATE SEQUENCE public.shed_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.shed_id_seq;
       public       postgres    false    3                       1259    77635    osshed    TABLE     �  CREATE TABLE public.osshed (
    shed_id integer DEFAULT nextval('public.shed_id_seq'::regclass) NOT NULL,
    partnership_id integer NOT NULL,
    farm_id integer NOT NULL,
    center_id integer NOT NULL,
    code character varying(20) NOT NULL,
    statusshed_id integer NOT NULL,
    type_id integer,
    building_date date,
    stall_width double precision NOT NULL,
    stall_height double precision NOT NULL,
    capacity_min double precision NOT NULL,
    capacity_max double precision NOT NULL,
    environment_id integer,
    rotation_days integer DEFAULT 0 NOT NULL,
    nests_quantity integer DEFAULT 0,
    cages_quantity integer DEFAULT 0,
    birds_quantity integer DEFAULT 0,
    capacity_theoretical integer DEFAULT 0
);
    DROP TABLE public.osshed;
       public         postgres    false    281    3            &           0    0    TABLE osshed    COMMENT     d   COMMENT ON TABLE public.osshed IS 'Almacena la informacion de los galpones asociados a la empresa';
            public       postgres    false    282            '           0    0    COLUMN osshed.shed_id    COMMENT     <   COMMENT ON COLUMN public.osshed.shed_id IS 'Id del galpon';
            public       postgres    false    282            (           0    0    COLUMN osshed.partnership_id    COMMENT     F   COMMENT ON COLUMN public.osshed.partnership_id IS 'Id de la empresa';
            public       postgres    false    282            )           0    0    COLUMN osshed.farm_id    COMMENT     >   COMMENT ON COLUMN public.osshed.farm_id IS 'Id de la granja';
            public       postgres    false    282            *           0    0    COLUMN osshed.center_id    COMMENT     >   COMMENT ON COLUMN public.osshed.center_id IS 'Id del nucleo';
            public       postgres    false    282            +           0    0    COLUMN osshed.code    COMMENT     =   COMMENT ON COLUMN public.osshed.code IS 'Codigo del galpon';
            public       postgres    false    282            ,           0    0    COLUMN osshed.statusshed_id    COMMENT     _   COMMENT ON COLUMN public.osshed.statusshed_id IS 'Identificador del estado actual del galpon';
            public       postgres    false    282            -           0    0    COLUMN osshed.type_id    COMMENT     D   COMMENT ON COLUMN public.osshed.type_id IS 'Id del tipo de galpon';
            public       postgres    false    282            .           0    0    COLUMN osshed.building_date    COMMENT     c   COMMENT ON COLUMN public.osshed.building_date IS 'Almacena la fecha de construccion del edificio';
            public       postgres    false    282            /           0    0    COLUMN osshed.stall_width    COMMENT     M   COMMENT ON COLUMN public.osshed.stall_width IS 'Indica el ancho del galpon';
            public       postgres    false    282            0           0    0    COLUMN osshed.stall_height    COMMENT     M   COMMENT ON COLUMN public.osshed.stall_height IS 'Indica el alto del galpon';
            public       postgres    false    282            1           0    0    COLUMN osshed.capacity_min    COMMENT     D   COMMENT ON COLUMN public.osshed.capacity_min IS 'Capacidad minima';
            public       postgres    false    282            2           0    0    COLUMN osshed.capacity_max    COMMENT     F   COMMENT ON COLUMN public.osshed.capacity_max IS 'Capacidad máxima ';
            public       postgres    false    282            3           0    0    COLUMN osshed.environment_id    COMMENT     E   COMMENT ON COLUMN public.osshed.environment_id IS 'Id del ambiente';
            public       postgres    false    282            4           0    0    COLUMN osshed.rotation_days    COMMENT     H   COMMENT ON COLUMN public.osshed.rotation_days IS 'Días de rotación
';
            public       postgres    false    282            5           0    0    COLUMN osshed.nests_quantity    COMMENT     I   COMMENT ON COLUMN public.osshed.nests_quantity IS 'Cantidad de nidales';
            public       postgres    false    282            6           0    0    COLUMN osshed.cages_quantity    COMMENT     H   COMMENT ON COLUMN public.osshed.cages_quantity IS 'Cantidad de jaulas';
            public       postgres    false    282            7           0    0    COLUMN osshed.birds_quantity    COMMENT     F   COMMENT ON COLUMN public.osshed.birds_quantity IS 'Cantidad de aves';
            public       postgres    false    282            8           0    0 "   COLUMN osshed.capacity_theoretical    COMMENT     O   COMMENT ON COLUMN public.osshed.capacity_theoretical IS '	Capacidad teórica';
            public       postgres    false    282                       1259    77644    silo_id_seq    SEQUENCE     t   CREATE SEQUENCE public.silo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.silo_id_seq;
       public       postgres    false    3                       1259    77646    ossilo    TABLE     �  CREATE TABLE public.ossilo (
    silo_id integer DEFAULT nextval('public.silo_id_seq'::regclass) NOT NULL,
    client_id integer,
    partnership_id integer NOT NULL,
    farm_id integer NOT NULL,
    center_id integer NOT NULL,
    name character varying(45) NOT NULL,
    rings_height double precision,
    rings_height_id integer,
    height double precision NOT NULL,
    height_unit_id integer,
    diameter double precision NOT NULL,
    diameter_unit_id integer,
    total_rings_quantity integer,
    measuring_mechanism integer,
    cone_degrees double precision,
    total_capacity_1 double precision,
    total_capacity_2 double precision,
    capacity_unit_id_1 integer,
    capacity_unit_id_2 integer,
    central character varying(20)
);
    DROP TABLE public.ossilo;
       public         postgres    false    283    3            9           0    0    TABLE ossilo    COMMENT     E   COMMENT ON TABLE public.ossilo IS 'Almacena los datos de los silos';
            public       postgres    false    284            :           0    0    COLUMN ossilo.silo_id    COMMENT     :   COMMENT ON COLUMN public.ossilo.silo_id IS 'Id del silo';
            public       postgres    false    284            ;           0    0    COLUMN ossilo.client_id    COMMENT     ?   COMMENT ON COLUMN public.ossilo.client_id IS 'Id del cliente';
            public       postgres    false    284            <           0    0    COLUMN ossilo.partnership_id    COMMENT     F   COMMENT ON COLUMN public.ossilo.partnership_id IS 'Id de la empresa';
            public       postgres    false    284            =           0    0    COLUMN ossilo.farm_id    COMMENT     >   COMMENT ON COLUMN public.ossilo.farm_id IS 'Id de la granja';
            public       postgres    false    284            >           0    0    COLUMN ossilo.center_id    COMMENT     >   COMMENT ON COLUMN public.ossilo.center_id IS 'Id del nucleo';
            public       postgres    false    284            ?           0    0    COLUMN ossilo.name    COMMENT     ;   COMMENT ON COLUMN public.ossilo.name IS 'Nombre del silo';
            public       postgres    false    284            @           0    0    COLUMN ossilo.rings_height    COMMENT     E   COMMENT ON COLUMN public.ossilo.rings_height IS 'Numero de anillos';
            public       postgres    false    284            A           0    0    COLUMN ossilo.rings_height_id    COMMENT     R   COMMENT ON COLUMN public.ossilo.rings_height_id IS 'Unidad de medida del anillo';
            public       postgres    false    284            B           0    0    COLUMN ossilo.height    COMMENT     =   COMMENT ON COLUMN public.ossilo.height IS 'Altura del silo';
            public       postgres    false    284            C           0    0    COLUMN ossilo.height_unit_id    COMMENT     R   COMMENT ON COLUMN public.ossilo.height_unit_id IS 'Unidad de media de la altura';
            public       postgres    false    284            D           0    0    COLUMN ossilo.diameter    COMMENT     A   COMMENT ON COLUMN public.ossilo.diameter IS 'Diametro del silo';
            public       postgres    false    284            E           0    0    COLUMN ossilo.diameter_unit_id    COMMENT     T   COMMENT ON COLUMN public.ossilo.diameter_unit_id IS 'Unidad de media del diametro';
            public       postgres    false    284            F           0    0 "   COLUMN ossilo.total_rings_quantity    COMMENT     U   COMMENT ON COLUMN public.ossilo.total_rings_quantity IS 'Total de anillos del silo';
            public       postgres    false    284            G           0    0 !   COLUMN ossilo.measuring_mechanism    COMMENT     Y   COMMENT ON COLUMN public.ossilo.measuring_mechanism IS 'Mecanismo de medidad del silo
';
            public       postgres    false    284            H           0    0    COLUMN ossilo.cone_degrees    COMMENT     C   COMMENT ON COLUMN public.ossilo.cone_degrees IS 'Grados del cono';
            public       postgres    false    284            I           0    0    COLUMN ossilo.total_capacity_1    COMMENT     L   COMMENT ON COLUMN public.ossilo.total_capacity_1 IS 'Total de capacidad 1';
            public       postgres    false    284            J           0    0    COLUMN ossilo.total_capacity_2    COMMENT     L   COMMENT ON COLUMN public.ossilo.total_capacity_2 IS 'Total de capacidad 2';
            public       postgres    false    284            K           0    0     COLUMN ossilo.capacity_unit_id_1    COMMENT     X   COMMENT ON COLUMN public.ossilo.capacity_unit_id_1 IS 'Id de Capacidad de la unidad 1';
            public       postgres    false    284            L           0    0     COLUMN ossilo.capacity_unit_id_2    COMMENT     X   COMMENT ON COLUMN public.ossilo.capacity_unit_id_2 IS 'Id de Capacidad de la unidad 2';
            public       postgres    false    284            M           0    0    COLUMN ossilo.central    COMMENT     6   COMMENT ON COLUMN public.ossilo.central IS 'Central';
            public       postgres    false    284                       1259    77650    ossilo_osshed    TABLE     �   CREATE TABLE public.ossilo_osshed (
    silo_id integer NOT NULL,
    shed_id integer NOT NULL,
    center_id integer NOT NULL,
    farm_id integer NOT NULL,
    partnership_id integer NOT NULL,
    client_id integer NOT NULL,
    deleted_mark integer
);
 !   DROP TABLE public.ossilo_osshed;
       public         postgres    false    3            N           0    0    TABLE ossilo_osshed    COMMENT     R   COMMENT ON TABLE public.ossilo_osshed IS 'Tabla union de las tablas silo y shed';
            public       postgres    false    285            O           0    0    COLUMN ossilo_osshed.silo_id    COMMENT     A   COMMENT ON COLUMN public.ossilo_osshed.silo_id IS 'Id del silo';
            public       postgres    false    285            P           0    0    COLUMN ossilo_osshed.shed_id    COMMENT     C   COMMENT ON COLUMN public.ossilo_osshed.shed_id IS 'Id del galpon';
            public       postgres    false    285            Q           0    0    COLUMN ossilo_osshed.center_id    COMMENT     E   COMMENT ON COLUMN public.ossilo_osshed.center_id IS 'Id del nucleo';
            public       postgres    false    285            R           0    0    COLUMN ossilo_osshed.farm_id    COMMENT     E   COMMENT ON COLUMN public.ossilo_osshed.farm_id IS 'Id de la granja';
            public       postgres    false    285            S           0    0 #   COLUMN ossilo_osshed.partnership_id    COMMENT     M   COMMENT ON COLUMN public.ossilo_osshed.partnership_id IS 'Id de la empresa';
            public       postgres    false    285            T           0    0    COLUMN ossilo_osshed.client_id    COMMENT     F   COMMENT ON COLUMN public.ossilo_osshed.client_id IS 'Id del cliente';
            public       postgres    false    285            U           0    0 !   COLUMN ossilo_osshed.deleted_mark    COMMENT     K   COMMENT ON COLUMN public.ossilo_osshed.deleted_mark IS 'Marca de borrado';
            public       postgres    false    285                       1259    77653    slaughterhouse_id_seq    SEQUENCE        CREATE SEQUENCE public.slaughterhouse_id_seq
    START WITH 33
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.slaughterhouse_id_seq;
       public       postgres    false    3                       1259    77655    osslaughterhouse    TABLE     Z  CREATE TABLE public.osslaughterhouse (
    slaughterhouse_id integer DEFAULT nextval('public.slaughterhouse_id_seq'::regclass) NOT NULL,
    name character varying(45) NOT NULL,
    address character varying(250) NOT NULL,
    description character varying(250) NOT NULL,
    code character varying(20) NOT NULL,
    capacity double precision
);
 $   DROP TABLE public.osslaughterhouse;
       public         postgres    false    286    3                        1259    77662    warehouse_id_seq    SEQUENCE     y   CREATE SEQUENCE public.warehouse_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.warehouse_id_seq;
       public       postgres    false    3            !           1259    77664    oswarehouse    TABLE       CREATE TABLE public.oswarehouse (
    warehouse_id integer DEFAULT nextval('public.warehouse_id_seq'::regclass) NOT NULL,
    partnership_id integer NOT NULL,
    farm_id integer NOT NULL,
    name character varying(45) NOT NULL,
    code character varying(20) NOT NULL
);
    DROP TABLE public.oswarehouse;
       public         postgres    false    288    3            V           0    0    TABLE oswarehouse    COMMENT     \   COMMENT ON TABLE public.oswarehouse IS 'Almacena la informacion referente a los almacenes';
            public       postgres    false    289            W           0    0    COLUMN oswarehouse.warehouse_id    COMMENT     G   COMMENT ON COLUMN public.oswarehouse.warehouse_id IS 'Id del almacen';
            public       postgres    false    289            X           0    0 !   COLUMN oswarehouse.partnership_id    COMMENT     ^   COMMENT ON COLUMN public.oswarehouse.partnership_id IS 'Id de la empresa dueña del almacen';
            public       postgres    false    289            Y           0    0    COLUMN oswarehouse.farm_id    COMMENT     C   COMMENT ON COLUMN public.oswarehouse.farm_id IS 'Id de la granja';
            public       postgres    false    289            Z           0    0    COLUMN oswarehouse.name    COMMENT     C   COMMENT ON COLUMN public.oswarehouse.name IS 'Nombre del almacen';
            public       postgres    false    289            [           0    0    COLUMN oswarehouse.code    COMMENT     C   COMMENT ON COLUMN public.oswarehouse.code IS 'Codigo del almacen';
            public       postgres    false    289            "           1259    77668    posture_curve_id_seq    SEQUENCE     }   CREATE SEQUENCE public.posture_curve_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.posture_curve_id_seq;
       public       postgres    false    3            #           1259    77670    predecessor_id_seq    SEQUENCE     {   CREATE SEQUENCE public.predecessor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.predecessor_id_seq;
       public       postgres    false    3            $           1259    77672    programmed_eggs_id_seq    SEQUENCE        CREATE SEQUENCE public.programmed_eggs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.programmed_eggs_id_seq;
       public       postgres    false    3            %           1259    77674    raspberry_id_seq    SEQUENCE     y   CREATE SEQUENCE public.raspberry_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.raspberry_id_seq;
       public       postgres    false    3            &           1259    77676    scenario_formula_id_seq    SEQUENCE     �   CREATE SEQUENCE public.scenario_formula_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.scenario_formula_id_seq;
       public       postgres    false    3            '           1259    77678    scenario_parameter_day_seq    SEQUENCE     �   CREATE SEQUENCE public.scenario_parameter_day_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.scenario_parameter_day_seq;
       public       postgres    false    3            (           1259    77680    scenario_parameter_id_seq    SEQUENCE     �   CREATE SEQUENCE public.scenario_parameter_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.scenario_parameter_id_seq;
       public       postgres    false    3            )           1259    77682    scenario_posture_id_seq    SEQUENCE     �   CREATE SEQUENCE public.scenario_posture_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.scenario_posture_id_seq;
       public       postgres    false    3            *           1259    77684    scenario_process_id_seq    SEQUENCE     �   CREATE SEQUENCE public.scenario_process_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.scenario_process_id_seq;
       public       postgres    false    3            +           1259    77686    txavailabilitysheds    TABLE       CREATE TABLE public.txavailabilitysheds (
    availability_shed_id integer DEFAULT nextval('public.availability_shed_id_seq'::regclass) NOT NULL,
    shed_id integer NOT NULL,
    init_date date,
    end_date date,
    lot_code character varying(20) NOT NULL
);
 '   DROP TABLE public.txavailabilitysheds;
       public         postgres    false    216    3            \           0    0    TABLE txavailabilitysheds    COMMENT     �   COMMENT ON TABLE public.txavailabilitysheds IS 'Almacena la disponibilidad en fechas de los galpones de acuerdo a la programación establecida';
            public       postgres    false    299            ]           0    0 /   COLUMN txavailabilitysheds.availability_shed_id    COMMENT     �   COMMENT ON COLUMN public.txavailabilitysheds.availability_shed_id IS 'Id de la disponibilidad del almacen, indicando si este esta disponible';
            public       postgres    false    299            ^           0    0 "   COLUMN txavailabilitysheds.shed_id    COMMENT     I   COMMENT ON COLUMN public.txavailabilitysheds.shed_id IS 'Id del galpon';
            public       postgres    false    299            _           0    0 $   COLUMN txavailabilitysheds.init_date    COMMENT     r   COMMENT ON COLUMN public.txavailabilitysheds.init_date IS 'Fecha de inicio de la programacion de uso del galpon';
            public       postgres    false    299            `           0    0 #   COLUMN txavailabilitysheds.end_date    COMMENT     r   COMMENT ON COLUMN public.txavailabilitysheds.end_date IS 'Fecha de cerrado de la programacion de uso del galpon';
            public       postgres    false    299            a           0    0 #   COLUMN txavailabilitysheds.lot_code    COMMENT     W   COMMENT ON COLUMN public.txavailabilitysheds.lot_code IS 'codigo del lote del galpon';
            public       postgres    false    299            ,           1259    77690 	   txbroiler    TABLE     L  CREATE TABLE public.txbroiler (
    broiler_id integer DEFAULT nextval('public.broiler_id_seq'::regclass) NOT NULL,
    projected_date date,
    projected_quantity integer,
    partnership_id integer,
    scenario_id integer,
    breed_id integer,
    lot_incubator character varying(45) NOT NULL,
    programmed_eggs_id integer
);
    DROP TABLE public.txbroiler;
       public         postgres    false    220    3            b           0    0    TABLE txbroiler    COMMENT     c   COMMENT ON TABLE public.txbroiler IS 'Almacena la proyeccion realizada para el modulo de engorde';
            public       postgres    false    300            c           0    0    COLUMN txbroiler.broiler_id    COMMENT     U   COMMENT ON COLUMN public.txbroiler.broiler_id IS 'Id de la programacion de engorde';
            public       postgres    false    300            d           0    0    COLUMN txbroiler.projected_date    COMMENT     X   COMMENT ON COLUMN public.txbroiler.projected_date IS 'Fecha de proyección de engorde';
            public       postgres    false    300            e           0    0 #   COLUMN txbroiler.projected_quantity    COMMENT     `   COMMENT ON COLUMN public.txbroiler.projected_quantity IS 'Cantidad proyectada para el engorde';
            public       postgres    false    300            f           0    0    COLUMN txbroiler.partnership_id    COMMENT     I   COMMENT ON COLUMN public.txbroiler.partnership_id IS 'Id de la empresa';
            public       postgres    false    300            g           0    0    COLUMN txbroiler.scenario_id    COMMENT     G   COMMENT ON COLUMN public.txbroiler.scenario_id IS 'Id edl escenario ';
            public       postgres    false    300            h           0    0    COLUMN txbroiler.breed_id    COMMENT     K   COMMENT ON COLUMN public.txbroiler.breed_id IS 'Id de la raza a engordar';
            public       postgres    false    300            i           0    0    COLUMN txbroiler.lot_incubator    COMMENT     u   COMMENT ON COLUMN public.txbroiler.lot_incubator IS 'Lote de incubación de donde provienen los huevos proyectados';
            public       postgres    false    300            j           0    0 #   COLUMN txbroiler.programmed_eggs_id    COMMENT     Y   COMMENT ON COLUMN public.txbroiler.programmed_eggs_id IS 'Id de los huevos programados';
            public       postgres    false    300            -           1259    77694    txbroiler_detail    TABLE     �  CREATE TABLE public.txbroiler_detail (
    broiler_detail_id integer DEFAULT nextval('public.broiler_detail_id_seq'::regclass) NOT NULL,
    broiler_id integer NOT NULL,
    scheduled_date date,
    scheduled_quantity integer,
    farm_id integer NOT NULL,
    shed_id integer NOT NULL,
    confirm integer,
    execution_date date,
    execution_quantity integer,
    lot integer NOT NULL,
    broiler_product_id integer
);
 $   DROP TABLE public.txbroiler_detail;
       public         postgres    false    219    3            k           0    0    TABLE txbroiler_detail    COMMENT     l   COMMENT ON TABLE public.txbroiler_detail IS 'Almacena la programacion y ejecuccion del proceso de engorde';
            public       postgres    false    301            l           0    0 )   COLUMN txbroiler_detail.broiler_detail_id    COMMENT     `   COMMENT ON COLUMN public.txbroiler_detail.broiler_detail_id IS 'Id de los detalles de engorde';
            public       postgres    false    301            m           0    0 "   COLUMN txbroiler_detail.broiler_id    COMMENT     \   COMMENT ON COLUMN public.txbroiler_detail.broiler_id IS 'Id de la programacion de engorde';
            public       postgres    false    301            n           0    0 &   COLUMN txbroiler_detail.scheduled_date    COMMENT     k   COMMENT ON COLUMN public.txbroiler_detail.scheduled_date IS 'Fecha programada para el proceso de engorde';
            public       postgres    false    301            o           0    0 *   COLUMN txbroiler_detail.scheduled_quantity    COMMENT     r   COMMENT ON COLUMN public.txbroiler_detail.scheduled_quantity IS 'Cantidad programada para el proceso de engorde';
            public       postgres    false    301            p           0    0    COLUMN txbroiler_detail.farm_id    COMMENT     H   COMMENT ON COLUMN public.txbroiler_detail.farm_id IS 'Id de la granja';
            public       postgres    false    301            q           0    0    COLUMN txbroiler_detail.shed_id    COMMENT     F   COMMENT ON COLUMN public.txbroiler_detail.shed_id IS 'Id del galpon';
            public       postgres    false    301            r           0    0    COLUMN txbroiler_detail.confirm    COMMENT     E   COMMENT ON COLUMN public.txbroiler_detail.confirm IS 'Confirmacion';
            public       postgres    false    301            s           0    0 &   COLUMN txbroiler_detail.execution_date    COMMENT     p   COMMENT ON COLUMN public.txbroiler_detail.execution_date IS 'Fecha de ejeccion de la planificacion de engorde';
            public       postgres    false    301            t           0    0 *   COLUMN txbroiler_detail.execution_quantity    COMMENT     u   COMMENT ON COLUMN public.txbroiler_detail.execution_quantity IS 'Cantidad ejecutada de la programación de engorde';
            public       postgres    false    301            u           0    0    COLUMN txbroiler_detail.lot    COMMENT     D   COMMENT ON COLUMN public.txbroiler_detail.lot IS 'Lote de engorde';
            public       postgres    false    301            v           0    0 *   COLUMN txbroiler_detail.broiler_product_id    COMMENT     ^   COMMENT ON COLUMN public.txbroiler_detail.broiler_product_id IS 'Id del producto de engorde';
            public       postgres    false    301            .           1259    77698    txbroilereviction    TABLE     _  CREATE TABLE public.txbroilereviction (
    broilereviction_id integer DEFAULT nextval('public.broilereviction_id_seq'::regclass) NOT NULL,
    projected_date date,
    projected_quantity integer,
    partnership_id integer NOT NULL,
    scenario_id integer NOT NULL,
    breed_id integer NOT NULL,
    lot_incubator character varying(45) NOT NULL
);
 %   DROP TABLE public.txbroilereviction;
       public         postgres    false    224    3            w           0    0    TABLE txbroilereviction    COMMENT     _   COMMENT ON TABLE public.txbroilereviction IS 'Almacena las proyeccion del modula de desalojo';
            public       postgres    false    302            x           0    0 +   COLUMN txbroilereviction.broilereviction_id    COMMENT     ^   COMMENT ON COLUMN public.txbroilereviction.broilereviction_id IS 'Id del modulo de desalojo';
            public       postgres    false    302            y           0    0 '   COLUMN txbroilereviction.projected_date    COMMENT     b   COMMENT ON COLUMN public.txbroilereviction.projected_date IS 'Fecha proyectada para el desalojo';
            public       postgres    false    302            z           0    0 +   COLUMN txbroilereviction.projected_quantity    COMMENT     i   COMMENT ON COLUMN public.txbroilereviction.projected_quantity IS 'Cantidad proyectada para el desalojo';
            public       postgres    false    302            {           0    0 '   COLUMN txbroilereviction.partnership_id    COMMENT     Q   COMMENT ON COLUMN public.txbroilereviction.partnership_id IS 'Id de la empresa';
            public       postgres    false    302            |           0    0 $   COLUMN txbroilereviction.scenario_id    COMMENT     N   COMMENT ON COLUMN public.txbroilereviction.scenario_id IS 'Id del escenario';
            public       postgres    false    302            }           0    0 !   COLUMN txbroilereviction.breed_id    COMMENT     H   COMMENT ON COLUMN public.txbroilereviction.breed_id IS 'Id de la raza';
            public       postgres    false    302            ~           0    0 &   COLUMN txbroilereviction.lot_incubator    COMMENT     R   COMMENT ON COLUMN public.txbroilereviction.lot_incubator IS 'Lote de incubacion';
            public       postgres    false    302            /           1259    77702    txbroilereviction_detail    TABLE     �  CREATE TABLE public.txbroilereviction_detail (
    broilereviction_detail_id integer DEFAULT nextval('public.broilereviction_detail_id_seq'::regclass) NOT NULL,
    broilereviction_id integer NOT NULL,
    scheduled_date date,
    scheduled_quantity integer,
    farm_id integer NOT NULL,
    shed_id integer NOT NULL,
    confirm integer,
    execution_date date,
    execution_quantity integer,
    lot integer NOT NULL,
    broiler_product_id integer NOT NULL,
    slaughterhouse_id integer NOT NULL
);
 ,   DROP TABLE public.txbroilereviction_detail;
       public         postgres    false    223    3                       0    0    TABLE txbroilereviction_detail    COMMENT     v   COMMENT ON TABLE public.txbroilereviction_detail IS 'Almacena la programación y ejecución del módulo de desalojo';
            public       postgres    false    303            �           0    0 9   COLUMN txbroilereviction_detail.broilereviction_detail_id    COMMENT     ~   COMMENT ON COLUMN public.txbroilereviction_detail.broilereviction_detail_id IS 'Id de los detalles del modulo de desarrollo';
            public       postgres    false    303            �           0    0 2   COLUMN txbroilereviction_detail.broilereviction_id    COMMENT     e   COMMENT ON COLUMN public.txbroilereviction_detail.broilereviction_id IS 'Id del modulo de desalojo';
            public       postgres    false    303            �           0    0 .   COLUMN txbroilereviction_detail.scheduled_date    COMMENT     i   COMMENT ON COLUMN public.txbroilereviction_detail.scheduled_date IS 'Fecha programada para el desalojo';
            public       postgres    false    303            �           0    0 2   COLUMN txbroilereviction_detail.scheduled_quantity    COMMENT     p   COMMENT ON COLUMN public.txbroilereviction_detail.scheduled_quantity IS 'Cantidad programada para el desalojo';
            public       postgres    false    303            �           0    0 '   COLUMN txbroilereviction_detail.farm_id    COMMENT     P   COMMENT ON COLUMN public.txbroilereviction_detail.farm_id IS 'Id de la granja';
            public       postgres    false    303            �           0    0 '   COLUMN txbroilereviction_detail.shed_id    COMMENT     N   COMMENT ON COLUMN public.txbroilereviction_detail.shed_id IS 'Id del galpon';
            public       postgres    false    303            �           0    0 '   COLUMN txbroilereviction_detail.confirm    COMMENT     M   COMMENT ON COLUMN public.txbroilereviction_detail.confirm IS 'Confirmacion';
            public       postgres    false    303            �           0    0 .   COLUMN txbroilereviction_detail.execution_date    COMMENT     \   COMMENT ON COLUMN public.txbroilereviction_detail.execution_date IS 'Fecha de ejecución ';
            public       postgres    false    303            �           0    0 2   COLUMN txbroilereviction_detail.execution_quantity    COMMENT     c   COMMENT ON COLUMN public.txbroilereviction_detail.execution_quantity IS 'Cantidad de ejecución ';
            public       postgres    false    303            �           0    0 #   COLUMN txbroilereviction_detail.lot    COMMENT     X   COMMENT ON COLUMN public.txbroilereviction_detail.lot IS 'Lote del modulo de desalojo';
            public       postgres    false    303            �           0    0 2   COLUMN txbroilereviction_detail.broiler_product_id    COMMENT     f   COMMENT ON COLUMN public.txbroilereviction_detail.broiler_product_id IS 'Id del producto de engorde';
            public       postgres    false    303            �           0    0 1   COLUMN txbroilereviction_detail.slaughterhouse_id    COMMENT     g   COMMENT ON COLUMN public.txbroilereviction_detail.slaughterhouse_id IS 'Id de la planta de beneficio';
            public       postgres    false    303            0           1259    77706    txbroilerproduct_detail    TABLE     �   CREATE TABLE public.txbroilerproduct_detail (
    broilerproduct_detail_id integer DEFAULT nextval('public.broiler_product_detail_id_seq'::regclass) NOT NULL,
    broiler_detail integer NOT NULL,
    broiler_product_id integer,
    quantity integer
);
 +   DROP TABLE public.txbroilerproduct_detail;
       public         postgres    false    221    3            �           0    0    TABLE txbroilerproduct_detail    COMMENT     h   COMMENT ON TABLE public.txbroilerproduct_detail IS 'Almacena los detalles de la produccion de engorde';
            public       postgres    false    304            �           0    0 7   COLUMN txbroilerproduct_detail.broilerproduct_detail_id    COMMENT     |   COMMENT ON COLUMN public.txbroilerproduct_detail.broilerproduct_detail_id IS 'Id de los detalles de produccion de engorde';
            public       postgres    false    304            �           0    0 -   COLUMN txbroilerproduct_detail.broiler_detail    COMMENT     Z   COMMENT ON COLUMN public.txbroilerproduct_detail.broiler_detail IS 'Detalles de engorde';
            public       postgres    false    304            �           0    0 1   COLUMN txbroilerproduct_detail.broiler_product_id    COMMENT     e   COMMENT ON COLUMN public.txbroilerproduct_detail.broiler_product_id IS 'Id del producto de engorde';
            public       postgres    false    304            �           0    0 '   COLUMN txbroilerproduct_detail.quantity    COMMENT     `   COMMENT ON COLUMN public.txbroilerproduct_detail.quantity IS 'Cantidad de producto de engorde';
            public       postgres    false    304            1           1259    77710    txbroodermachine    TABLE     �  CREATE TABLE public.txbroodermachine (
    brooder_machine_id_seq integer DEFAULT nextval('public.brooder_machines_id_seq'::regclass) NOT NULL,
    partnership_id integer NOT NULL,
    farm_id integer NOT NULL,
    capacity integer,
    sunday integer,
    monday integer,
    tuesday integer,
    wednesday integer,
    thursday integer,
    friday integer,
    saturday integer,
    name character varying(250)
);
 $   DROP TABLE public.txbroodermachine;
       public         postgres    false    226    3            �           0    0    TABLE txbroodermachine    COMMENT     ]   COMMENT ON TABLE public.txbroodermachine IS 'Almacena los datos de las maquinas de engorde';
            public       postgres    false    305            �           0    0 .   COLUMN txbroodermachine.brooder_machine_id_seq    COMMENT     c   COMMENT ON COLUMN public.txbroodermachine.brooder_machine_id_seq IS 'Id de la maquina de engorde';
            public       postgres    false    305            �           0    0 &   COLUMN txbroodermachine.partnership_id    COMMENT     P   COMMENT ON COLUMN public.txbroodermachine.partnership_id IS 'Id de la empresa';
            public       postgres    false    305            �           0    0    COLUMN txbroodermachine.farm_id    COMMENT     H   COMMENT ON COLUMN public.txbroodermachine.farm_id IS 'Id de la granja';
            public       postgres    false    305            �           0    0     COLUMN txbroodermachine.capacity    COMMENT     Q   COMMENT ON COLUMN public.txbroodermachine.capacity IS 'Capacidad de la maquina';
            public       postgres    false    305            �           0    0    COLUMN txbroodermachine.sunday    COMMENT     ?   COMMENT ON COLUMN public.txbroodermachine.sunday IS 'Domingo';
            public       postgres    false    305            �           0    0    COLUMN txbroodermachine.monday    COMMENT     =   COMMENT ON COLUMN public.txbroodermachine.monday IS 'Lunes';
            public       postgres    false    305            �           0    0    COLUMN txbroodermachine.tuesday    COMMENT     ?   COMMENT ON COLUMN public.txbroodermachine.tuesday IS 'Martes';
            public       postgres    false    305            �           0    0 !   COLUMN txbroodermachine.wednesday    COMMENT     D   COMMENT ON COLUMN public.txbroodermachine.wednesday IS 'Miercoles';
            public       postgres    false    305            �           0    0     COLUMN txbroodermachine.thursday    COMMENT     @   COMMENT ON COLUMN public.txbroodermachine.thursday IS 'Jueves';
            public       postgres    false    305            �           0    0    COLUMN txbroodermachine.friday    COMMENT     ?   COMMENT ON COLUMN public.txbroodermachine.friday IS 'Viernes';
            public       postgres    false    305            �           0    0     COLUMN txbroodermachine.saturday    COMMENT     @   COMMENT ON COLUMN public.txbroodermachine.saturday IS 'Sabado';
            public       postgres    false    305            �           0    0    COLUMN txbroodermachine.name    COMMENT     J   COMMENT ON COLUMN public.txbroodermachine.name IS 'Nombre de la maquina';
            public       postgres    false    305            2           1259    77714 
   txcalendar    TABLE     |  CREATE TABLE public.txcalendar (
    calendar_id integer DEFAULT nextval('public.calendar_id_seq'::regclass) NOT NULL,
    description character varying(250) NOT NULL,
    saturday character varying(15),
    sunday character varying(15),
    week_start character varying(15),
    code character(20) NOT NULL,
    year_start integer,
    year_end integer,
    generated integer
);
    DROP TABLE public.txcalendar;
       public         postgres    false    228    3            �           0    0    TABLE txcalendar    COMMENT     n   COMMENT ON TABLE public.txcalendar IS 'Almacena la informacion del calendario con la que trabaja el sistema';
            public       postgres    false    306            �           0    0    COLUMN txcalendar.calendar_id    COMMENT     H   COMMENT ON COLUMN public.txcalendar.calendar_id IS 'Id del calendario';
            public       postgres    false    306            �           0    0    COLUMN txcalendar.description    COMMENT     S   COMMENT ON COLUMN public.txcalendar.description IS 'Descripción del calendario
';
            public       postgres    false    306            �           0    0    COLUMN txcalendar.saturday    COMMENT     Z   COMMENT ON COLUMN public.txcalendar.saturday IS 'Indica si el día sábado es laborable';
            public       postgres    false    306            �           0    0    COLUMN txcalendar.sunday    COMMENT     X   COMMENT ON COLUMN public.txcalendar.sunday IS 'Indica si el día Domingo es laborable';
            public       postgres    false    306            �           0    0    COLUMN txcalendar.week_start    COMMENT     [   COMMENT ON COLUMN public.txcalendar.week_start IS 'Semana en la que inicia el calendario';
            public       postgres    false    306            �           0    0    COLUMN txcalendar.code    COMMENT     E   COMMENT ON COLUMN public.txcalendar.code IS 'Codigo del calendario';
            public       postgres    false    306            �           0    0    COLUMN txcalendar.year_start    COMMENT     Y   COMMENT ON COLUMN public.txcalendar.year_start IS 'Año en el que inicia el calendario';
            public       postgres    false    306            �           0    0    COLUMN txcalendar.year_end    COMMENT     Y   COMMENT ON COLUMN public.txcalendar.year_end IS 'Año en el que finaliza el calendario';
            public       postgres    false    306            �           0    0    COLUMN txcalendar.generated    COMMENT     u   COMMENT ON COLUMN public.txcalendar.generated IS 'Indica si el calendario fue generado a partir de otro calendario';
            public       postgres    false    306            3           1259    77718    txcalendarday    TABLE     �  CREATE TABLE public.txcalendarday (
    calendar_day_id integer DEFAULT nextval('public.calendar_day_id_seq'::regclass) NOT NULL,
    calendar_id integer NOT NULL,
    date timestamp with time zone NOT NULL,
    year integer NOT NULL,
    month integer NOT NULL,
    day integer NOT NULL,
    week timestamp with time zone NOT NULL,
    week_day integer NOT NULL,
    description character varying(250),
    sequence integer NOT NULL,
    working_day integer NOT NULL
);
 !   DROP TABLE public.txcalendarday;
       public         postgres    false    227    3            �           0    0    TABLE txcalendarday    COMMENT     _   COMMENT ON TABLE public.txcalendarday IS 'Almacena los datos de los dias que son laborables ';
            public       postgres    false    307            �           0    0 $   COLUMN txcalendarday.calendar_day_id    COMMENT     W   COMMENT ON COLUMN public.txcalendarday.calendar_day_id IS 'Id del dia del calendario';
            public       postgres    false    307            �           0    0     COLUMN txcalendarday.calendar_id    COMMENT     K   COMMENT ON COLUMN public.txcalendarday.calendar_id IS 'Id del calendario';
            public       postgres    false    307            �           0    0    COLUMN txcalendarday.date    COMMENT     `   COMMENT ON COLUMN public.txcalendarday.date IS 'Fecha en el que se encuentra el dia laborable';
            public       postgres    false    307            �           0    0    COLUMN txcalendarday.year    COMMENT     _   COMMENT ON COLUMN public.txcalendarday.year IS 'Año en el que se encuentra el dia laborable';
            public       postgres    false    307            �           0    0    COLUMN txcalendarday.month    COMMENT     _   COMMENT ON COLUMN public.txcalendarday.month IS 'Mes en el que se encuentra el dia laborable';
            public       postgres    false    307            �           0    0    COLUMN txcalendarday.day    COMMENT     ]   COMMENT ON COLUMN public.txcalendarday.day IS 'Dia en el que se encuentra el dia laborable';
            public       postgres    false    307            �           0    0    COLUMN txcalendarday.week    COMMENT     a   COMMENT ON COLUMN public.txcalendarday.week IS 'Semana en el que se encuentra el dia laborable';
            public       postgres    false    307            �           0    0    COLUMN txcalendarday.week_day    COMMENT     l   COMMENT ON COLUMN public.txcalendarday.week_day IS 'Dia de semana en el que se encuentra el dia laborable';
            public       postgres    false    307            �           0    0     COLUMN txcalendarday.description    COMMENT     E   COMMENT ON COLUMN public.txcalendarday.description IS 'Descripcion';
            public       postgres    false    307            �           0    0     COLUMN txcalendarday.working_day    COMMENT     Z   COMMENT ON COLUMN public.txcalendarday.working_day IS 'Indica si el dia es laboral o no';
            public       postgres    false    307            4           1259    77722    txeggs_planning    TABLE       CREATE TABLE public.txeggs_planning (
    egg_planning_id integer DEFAULT nextval('public.egg_planning_id_seq'::regclass) NOT NULL,
    month_planning integer,
    year_planning integer,
    scenario_id integer,
    planned double precision,
    breed_id integer NOT NULL
);
 #   DROP TABLE public.txeggs_planning;
       public         postgres    false    230    3            �           0    0    TABLE txeggs_planning    COMMENT     g   COMMENT ON TABLE public.txeggs_planning IS 'Almacena los detalles de la planificación de los huevos';
            public       postgres    false    308            �           0    0 &   COLUMN txeggs_planning.egg_planning_id    COMMENT     [   COMMENT ON COLUMN public.txeggs_planning.egg_planning_id IS 'Id de planeación de huevos';
            public       postgres    false    308            �           0    0 %   COLUMN txeggs_planning.month_planning    COMMENT     c   COMMENT ON COLUMN public.txeggs_planning.month_planning IS 'Mes de planificación de los huevos
';
            public       postgres    false    308            �           0    0 $   COLUMN txeggs_planning.year_planning    COMMENT     b   COMMENT ON COLUMN public.txeggs_planning.year_planning IS 'Año de planificación de los huevos';
            public       postgres    false    308            �           0    0 "   COLUMN txeggs_planning.scenario_id    COMMENT     p   COMMENT ON COLUMN public.txeggs_planning.scenario_id IS 'Escenario al cual pertenecen los huevos planificados';
            public       postgres    false    308            �           0    0    COLUMN txeggs_planning.planned    COMMENT     X   COMMENT ON COLUMN public.txeggs_planning.planned IS 'Cantidad de huevos planificados
';
            public       postgres    false    308            �           0    0    COLUMN txeggs_planning.breed_id    COMMENT     T   COMMENT ON COLUMN public.txeggs_planning.breed_id IS 'Id de la raza de los huevos';
            public       postgres    false    308            5           1259    77726    txeggs_required    TABLE       CREATE TABLE public.txeggs_required (
    egg_required_id integer DEFAULT nextval('public.egg_required_id_seq'::regclass) NOT NULL,
    _month integer,
    _year integer,
    scenario_id integer NOT NULL,
    required double precision,
    breed_id integer
);
 #   DROP TABLE public.txeggs_required;
       public         postgres    false    231    3            �           0    0    TABLE txeggs_required    COMMENT     V   COMMENT ON TABLE public.txeggs_required IS 'Almacena los datos de huevos requeridos';
            public       postgres    false    309            �           0    0 &   COLUMN txeggs_required.egg_required_id    COMMENT     [   COMMENT ON COLUMN public.txeggs_required.egg_required_id IS 'Id de los huevos requeridos';
            public       postgres    false    309            �           0    0    COLUMN txeggs_required._month    COMMENT     :   COMMENT ON COLUMN public.txeggs_required._month IS 'Mes';
            public       postgres    false    309            �           0    0    COLUMN txeggs_required._year    COMMENT     :   COMMENT ON COLUMN public.txeggs_required._year IS 'Año';
            public       postgres    false    309            �           0    0 "   COLUMN txeggs_required.scenario_id    COMMENT     L   COMMENT ON COLUMN public.txeggs_required.scenario_id IS 'Id del escenario';
            public       postgres    false    309            �           0    0    COLUMN txeggs_required.required    COMMENT     K   COMMENT ON COLUMN public.txeggs_required.required IS 'Cantidad requerida';
            public       postgres    false    309            �           0    0    COLUMN txeggs_required.breed_id    COMMENT     F   COMMENT ON COLUMN public.txeggs_required.breed_id IS 'Id de la raza';
            public       postgres    false    309            6           1259    77730    txeggs_storage    TABLE     G  CREATE TABLE public.txeggs_storage (
    eggs_storage_id integer DEFAULT nextval('public.eggs_storage_id_seq'::regclass) NOT NULL,
    incubator_plant_id integer NOT NULL,
    scenario_id integer NOT NULL,
    breed_id integer NOT NULL,
    init_date date,
    end_date date,
    lot character varying(45),
    eggs integer
);
 "   DROP TABLE public.txeggs_storage;
       public         postgres    false    232    3            �           0    0    TABLE txeggs_storage    COMMENT     ~   COMMENT ON TABLE public.txeggs_storage IS 'Guarda la informacion de almacenamiento de los huevos en las plantas incubadoras';
            public       postgres    false    310            �           0    0 %   COLUMN txeggs_storage.eggs_storage_id    COMMENT     W   COMMENT ON COLUMN public.txeggs_storage.eggs_storage_id IS 'Id del almacen de huevos';
            public       postgres    false    310            �           0    0 (   COLUMN txeggs_storage.incubator_plant_id    COMMENT     Y   COMMENT ON COLUMN public.txeggs_storage.incubator_plant_id IS 'Id de planta incubadora';
            public       postgres    false    310            �           0    0 !   COLUMN txeggs_storage.scenario_id    COMMENT     K   COMMENT ON COLUMN public.txeggs_storage.scenario_id IS 'Id del escenario';
            public       postgres    false    310            �           0    0    COLUMN txeggs_storage.breed_id    COMMENT     E   COMMENT ON COLUMN public.txeggs_storage.breed_id IS 'Id de la raza';
            public       postgres    false    310            �           0    0    COLUMN txeggs_storage.init_date    COMMENT     H   COMMENT ON COLUMN public.txeggs_storage.init_date IS 'Fecha de inicio';
            public       postgres    false    310            �           0    0    COLUMN txeggs_storage.end_date    COMMENT     J   COMMENT ON COLUMN public.txeggs_storage.end_date IS 'Fecha de terminado';
            public       postgres    false    310            �           0    0    COLUMN txeggs_storage.lot    COMMENT     7   COMMENT ON COLUMN public.txeggs_storage.lot IS 'Lote';
            public       postgres    false    310            �           0    0    COLUMN txeggs_storage.eggs    COMMENT     F   COMMENT ON COLUMN public.txeggs_storage.eggs IS 'Cantidad de huevos';
            public       postgres    false    310            7           1259    77734    txgoals_erp    TABLE     �   CREATE TABLE public.txgoals_erp (
    goals_erp_id bigint NOT NULL,
    week date,
    value integer,
    product_id integer NOT NULL,
    code character varying(10),
    scenario_id integer NOT NULL
);
    DROP TABLE public.txgoals_erp;
       public         postgres    false    3            �           0    0    TABLE txgoals_erp    COMMENT     �   COMMENT ON TABLE public.txgoals_erp IS 'Almacena los datos generados de las metas de producción de la planificación regresiva para ser enviados al ERP';
            public       postgres    false    311            �           0    0    COLUMN txgoals_erp.goals_erp_id    COMMENT     N   COMMENT ON COLUMN public.txgoals_erp.goals_erp_id IS 'Id de la meta del ERP';
            public       postgres    false    311            �           0    0    COLUMN txgoals_erp.week    COMMENT     7   COMMENT ON COLUMN public.txgoals_erp.week IS 'Semana';
            public       postgres    false    311            �           0    0    COLUMN txgoals_erp.value    COMMENT     @   COMMENT ON COLUMN public.txgoals_erp.value IS 'Valor objetivo';
            public       postgres    false    311            �           0    0    COLUMN txgoals_erp.product_id    COMMENT     F   COMMENT ON COLUMN public.txgoals_erp.product_id IS 'Id del producto';
            public       postgres    false    311            �           0    0    COLUMN txgoals_erp.code    COMMENT     D   COMMENT ON COLUMN public.txgoals_erp.code IS 'Codigo del producto';
            public       postgres    false    311            �           0    0    COLUMN txgoals_erp.scenario_id    COMMENT     H   COMMENT ON COLUMN public.txgoals_erp.scenario_id IS 'Id del escenario';
            public       postgres    false    311            8           1259    77737    txgoals_erp_goals_erp_id_seq    SEQUENCE     �   CREATE SEQUENCE public.txgoals_erp_goals_erp_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.txgoals_erp_goals_erp_id_seq;
       public       postgres    false    311    3            �           0    0    txgoals_erp_goals_erp_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.txgoals_erp_goals_erp_id_seq OWNED BY public.txgoals_erp.goals_erp_id;
            public       postgres    false    312            9           1259    77739 	   txholiday    TABLE       CREATE TABLE public.txholiday (
    holiday_id integer DEFAULT nextval('public.holiday_id_seq'::regclass) NOT NULL,
    calendar_id integer NOT NULL,
    year integer NOT NULL,
    month integer NOT NULL,
    day integer NOT NULL,
    description character varying(250)
);
    DROP TABLE public.txholiday;
       public         postgres    false    235    3            �           0    0    TABLE txholiday    COMMENT     U   COMMENT ON TABLE public.txholiday IS 'Almacena la informacion de los dias festivos';
            public       postgres    false    313            �           0    0    COLUMN txholiday.holiday_id    COMMENT     G   COMMENT ON COLUMN public.txholiday.holiday_id IS 'Id del dia festivo';
            public       postgres    false    313            �           0    0    COLUMN txholiday.calendar_id    COMMENT     G   COMMENT ON COLUMN public.txholiday.calendar_id IS 'Id del calendario';
            public       postgres    false    313            �           0    0    COLUMN txholiday.year    COMMENT     C   COMMENT ON COLUMN public.txholiday.year IS 'Año del dia festivo';
            public       postgres    false    313            �           0    0    COLUMN txholiday.month    COMMENT     C   COMMENT ON COLUMN public.txholiday.month IS 'Mes del dia festivo';
            public       postgres    false    313            �           0    0    COLUMN txholiday.day    COMMENT     A   COMMENT ON COLUMN public.txholiday.day IS 'Dia del dia festivo';
            public       postgres    false    313            �           0    0    COLUMN txholiday.description    COMMENT     Q   COMMENT ON COLUMN public.txholiday.description IS 'Descripcion del dia festivo';
            public       postgres    false    313            :           1259    77743    txhousingway    TABLE     d  CREATE TABLE public.txhousingway (
    housing_way_id integer DEFAULT nextval('public.housing_way_id_seq'::regclass) NOT NULL,
    projected_quantity integer,
    projected_date date,
    stage_id integer NOT NULL,
    partnership_id integer NOT NULL,
    scenario_id integer NOT NULL,
    breed_id integer NOT NULL,
    predecessor_id integer NOT NULL
);
     DROP TABLE public.txhousingway;
       public         postgres    false    237    3            �           0    0    TABLE txhousingway    COMMENT     t   COMMENT ON TABLE public.txhousingway IS 'Almacena la proyección de los módulos de levante, cría y reproductora';
            public       postgres    false    314            �           0    0 "   COLUMN txhousingway.housing_way_id    COMMENT     �   COMMENT ON COLUMN public.txhousingway.housing_way_id IS 'Id de las proyecciones  de los módulos de levante, cría y reproductora';
            public       postgres    false    314            �           0    0 &   COLUMN txhousingway.projected_quantity    COMMENT     S   COMMENT ON COLUMN public.txhousingway.projected_quantity IS 'Cantidad proyectada';
            public       postgres    false    314            �           0    0 "   COLUMN txhousingway.projected_date    COMMENT     L   COMMENT ON COLUMN public.txhousingway.projected_date IS 'Fecha proyectada';
            public       postgres    false    314            �           0    0    COLUMN txhousingway.stage_id    COMMENT     D   COMMENT ON COLUMN public.txhousingway.stage_id IS 'Id de la etapa';
            public       postgres    false    314            �           0    0 "   COLUMN txhousingway.partnership_id    COMMENT     L   COMMENT ON COLUMN public.txhousingway.partnership_id IS 'Id de la empresa';
            public       postgres    false    314            �           0    0    COLUMN txhousingway.breed_id    COMMENT     C   COMMENT ON COLUMN public.txhousingway.breed_id IS 'Id de la raza';
            public       postgres    false    314            �           0    0 "   COLUMN txhousingway.predecessor_id    COMMENT     N   COMMENT ON COLUMN public.txhousingway.predecessor_id IS 'Id del predecesor ';
            public       postgres    false    314            ;           1259    77747    txhousingway_detail    TABLE     �  CREATE TABLE public.txhousingway_detail (
    housingway_detail_id integer DEFAULT nextval('public.housing_way_detail_id_seq'::regclass) NOT NULL,
    housing_way_id integer NOT NULL,
    scheduled_date date,
    scheduled_quantity integer,
    farm_id integer NOT NULL,
    shed_id integer NOT NULL,
    confirm integer,
    execution_date date,
    execution_quantity integer,
    lot character varying(45),
    incubator_plant_id integer
);
 '   DROP TABLE public.txhousingway_detail;
       public         postgres    false    236    3            �           0    0    TABLE txhousingway_detail    COMMENT     �   COMMENT ON TABLE public.txhousingway_detail IS 'Almacena la programación y la ejecución de los módulos de levante y cría y reproductora';
            public       postgres    false    315            �           0    0 /   COLUMN txhousingway_detail.housingway_detail_id    COMMENT     �   COMMENT ON COLUMN public.txhousingway_detail.housingway_detail_id IS 'Id de la programación y ejecución de los modelos de levante y cría y reproductora';
            public       postgres    false    315            �           0    0 )   COLUMN txhousingway_detail.housing_way_id    COMMENT     �   COMMENT ON COLUMN public.txhousingway_detail.housing_way_id IS 'Id de las proyecciones  de los módulos de levante, cría y reproductora';
            public       postgres    false    315            �           0    0 )   COLUMN txhousingway_detail.scheduled_date    COMMENT     S   COMMENT ON COLUMN public.txhousingway_detail.scheduled_date IS 'Fecha programada';
            public       postgres    false    315            �           0    0 -   COLUMN txhousingway_detail.scheduled_quantity    COMMENT     Z   COMMENT ON COLUMN public.txhousingway_detail.scheduled_quantity IS 'Cantidad programada';
            public       postgres    false    315            �           0    0 "   COLUMN txhousingway_detail.farm_id    COMMENT     K   COMMENT ON COLUMN public.txhousingway_detail.farm_id IS 'Id de la granja';
            public       postgres    false    315            �           0    0 "   COLUMN txhousingway_detail.shed_id    COMMENT     S   COMMENT ON COLUMN public.txhousingway_detail.shed_id IS 'Id del galpon utilizado';
            public       postgres    false    315            �           0    0 "   COLUMN txhousingway_detail.confirm    COMMENT     [   COMMENT ON COLUMN public.txhousingway_detail.confirm IS 'Confirmacion de sincronizacion ';
            public       postgres    false    315            �           0    0 )   COLUMN txhousingway_detail.execution_date    COMMENT     V   COMMENT ON COLUMN public.txhousingway_detail.execution_date IS 'Fecha de ejecución';
            public       postgres    false    315            �           0    0 -   COLUMN txhousingway_detail.execution_quantity    COMMENT     Z   COMMENT ON COLUMN public.txhousingway_detail.execution_quantity IS 'Cantidad a ejecutar';
            public       postgres    false    315            �           0    0    COLUMN txhousingway_detail.lot    COMMENT     I   COMMENT ON COLUMN public.txhousingway_detail.lot IS 'Lote seleccionado';
            public       postgres    false    315            �           0    0 -   COLUMN txhousingway_detail.incubator_plant_id    COMMENT     a   COMMENT ON COLUMN public.txhousingway_detail.incubator_plant_id IS 'Id de la planta incubadora';
            public       postgres    false    315            <           1259    77751    txlot    TABLE     �  CREATE TABLE public.txlot (
    lot_id integer DEFAULT nextval('public.lot_id_seq'::regclass) NOT NULL,
    lot_code character varying(20) NOT NULL,
    process_class_id integer NOT NULL,
    lot_origin character varying(150),
    status integer,
    proyected_date date,
    sheduled_date date,
    proyected_quantity integer,
    sheduled_quantity integer,
    released_quantity integer,
    product_id integer NOT NULL,
    breed_id integer NOT NULL,
    gender character varying(30),
    type_posture character varying(30),
    shed_id integer NOT NULL,
    origin character varying(30),
    farm_id integer NOT NULL,
    housing_way_id integer NOT NULL
);
    DROP TABLE public.txlot;
       public         postgres    false    244    3            �           0    0    TABLE txlot    COMMENT     T   COMMENT ON TABLE public.txlot IS 'Almacena la informacion de los diferentes lotes';
            public       postgres    false    316            �           0    0    COLUMN txlot.lot_id    COMMENT     8   COMMENT ON COLUMN public.txlot.lot_id IS 'Id del lote';
            public       postgres    false    316            �           0    0    COLUMN txlot.lot_code    COMMENT     >   COMMENT ON COLUMN public.txlot.lot_code IS 'Codigo del lote';
            public       postgres    false    316            �           0    0    COLUMN txlot.process_class_id    COMMENT     N   COMMENT ON COLUMN public.txlot.process_class_id IS 'Id del proceso de clase';
            public       postgres    false    316            �           0    0    COLUMN txlot.lot_origin    COMMENT     @   COMMENT ON COLUMN public.txlot.lot_origin IS 'Origen del lote';
            public       postgres    false    316            �           0    0    COLUMN txlot.status    COMMENT     <   COMMENT ON COLUMN public.txlot.status IS 'Estado del lote';
            public       postgres    false    316            �           0    0    COLUMN txlot.proyected_date    COMMENT     E   COMMENT ON COLUMN public.txlot.proyected_date IS 'Fecha proyectada';
            public       postgres    false    316            �           0    0    COLUMN txlot.sheduled_date    COMMENT     D   COMMENT ON COLUMN public.txlot.sheduled_date IS 'Fecha programada';
            public       postgres    false    316            �           0    0    COLUMN txlot.proyected_quantity    COMMENT     L   COMMENT ON COLUMN public.txlot.proyected_quantity IS 'Cantidad proyectada';
            public       postgres    false    316            �           0    0    COLUMN txlot.sheduled_quantity    COMMENT     K   COMMENT ON COLUMN public.txlot.sheduled_quantity IS 'Cantidad programada';
            public       postgres    false    316            �           0    0    COLUMN txlot.released_quantity    COMMENT     I   COMMENT ON COLUMN public.txlot.released_quantity IS 'Cantidad liberada';
            public       postgres    false    316            �           0    0    COLUMN txlot.product_id    COMMENT     @   COMMENT ON COLUMN public.txlot.product_id IS 'Id del producto';
            public       postgres    false    316            �           0    0    COLUMN txlot.breed_id    COMMENT     <   COMMENT ON COLUMN public.txlot.breed_id IS 'Id de la raza';
            public       postgres    false    316            �           0    0    COLUMN txlot.gender    COMMENT     <   COMMENT ON COLUMN public.txlot.gender IS 'Genero del lote';
            public       postgres    false    316            �           0    0    COLUMN txlot.type_posture    COMMENT     B   COMMENT ON COLUMN public.txlot.type_posture IS 'Tipo de postura';
            public       postgres    false    316            �           0    0    COLUMN txlot.shed_id    COMMENT     ;   COMMENT ON COLUMN public.txlot.shed_id IS 'Id del galpon';
            public       postgres    false    316            �           0    0    COLUMN txlot.origin    COMMENT     3   COMMENT ON COLUMN public.txlot.origin IS 'Origen';
            public       postgres    false    316            �           0    0    COLUMN txlot.farm_id    COMMENT     =   COMMENT ON COLUMN public.txlot.farm_id IS 'Id de la granja';
            public       postgres    false    316            �           0    0    COLUMN txlot.housing_way_id    COMMENT     ~   COMMENT ON COLUMN public.txlot.housing_way_id IS 'Id del almacenamientos de la proyecciones de levante, cria y reproductora';
            public       postgres    false    316            =           1259    77755 
   txlot_eggs    TABLE     �   CREATE TABLE public.txlot_eggs (
    lot_eggs_id integer DEFAULT nextval('public.lot_eggs_id_seq'::regclass) NOT NULL,
    theorical_performance double precision,
    week_date date,
    week integer
);
    DROP TABLE public.txlot_eggs;
       public         postgres    false    242    3                        0    0    TABLE txlot_eggs    COMMENT     S   COMMENT ON TABLE public.txlot_eggs IS 'Almacena los datos de los lotes de huevos';
            public       postgres    false    317                       0    0    COLUMN txlot_eggs.lot_eggs_id    COMMENT     L   COMMENT ON COLUMN public.txlot_eggs.lot_eggs_id IS 'Id del lote de huevos';
            public       postgres    false    317                       0    0 '   COLUMN txlot_eggs.theorical_performance    COMMENT     T   COMMENT ON COLUMN public.txlot_eggs.theorical_performance IS 'Rendimiento teorico';
            public       postgres    false    317                       0    0    COLUMN txlot_eggs.week_date    COMMENT     G   COMMENT ON COLUMN public.txlot_eggs.week_date IS 'Fecha de la semana';
            public       postgres    false    317                       0    0    COLUMN txlot_eggs.week    COMMENT     6   COMMENT ON COLUMN public.txlot_eggs.week IS 'Semana';
            public       postgres    false    317            >           1259    77759    txposturecurve    TABLE     �  CREATE TABLE public.txposturecurve (
    posture_curve_id integer DEFAULT nextval('public.posture_curve_id_seq'::regclass) NOT NULL,
    week integer,
    breed_id integer NOT NULL,
    theorical_performance double precision,
    historical_performance double precision,
    theorical_accum_mortality integer,
    historical_accum_mortality integer,
    theorical_uniformity double precision,
    historical_uniformity double precision,
    type_posture character varying(30)
);
 "   DROP TABLE public.txposturecurve;
       public         postgres    false    290    3                       0    0    TABLE txposturecurve    COMMENT        COMMENT ON TABLE public.txposturecurve IS 'Almacena la información de la curva de postura por cada raza separada por semana';
            public       postgres    false    318                       0    0 &   COLUMN txposturecurve.posture_curve_id    COMMENT     Y   COMMENT ON COLUMN public.txposturecurve.posture_curve_id IS 'Id de la curva de postura';
            public       postgres    false    318                       0    0    COLUMN txposturecurve.week    COMMENT     _   COMMENT ON COLUMN public.txposturecurve.week IS 'Semana en la que inicia la curva de postura';
            public       postgres    false    318                       0    0    COLUMN txposturecurve.breed_id    COMMENT     E   COMMENT ON COLUMN public.txposturecurve.breed_id IS 'Id de la raza';
            public       postgres    false    318            	           0    0 +   COLUMN txposturecurve.theorical_performance    COMMENT     X   COMMENT ON COLUMN public.txposturecurve.theorical_performance IS 'Desempeño teórico';
            public       postgres    false    318            
           0    0 ,   COLUMN txposturecurve.historical_performance    COMMENT     [   COMMENT ON COLUMN public.txposturecurve.historical_performance IS 'Desempeño histórico';
            public       postgres    false    318                       0    0 /   COLUMN txposturecurve.theorical_accum_mortality    COMMENT     h   COMMENT ON COLUMN public.txposturecurve.theorical_accum_mortality IS 'Acumulado de mortalidad teorico';
            public       postgres    false    318                       0    0 0   COLUMN txposturecurve.historical_accum_mortality    COMMENT     k   COMMENT ON COLUMN public.txposturecurve.historical_accum_mortality IS 'Acumulado de mortalidad historico';
            public       postgres    false    318                       0    0 *   COLUMN txposturecurve.theorical_uniformity    COMMENT     W   COMMENT ON COLUMN public.txposturecurve.theorical_uniformity IS 'Uniformidad teorica';
            public       postgres    false    318                       0    0 +   COLUMN txposturecurve.historical_uniformity    COMMENT     Z   COMMENT ON COLUMN public.txposturecurve.historical_uniformity IS 'Uniformidad historica';
            public       postgres    false    318                       0    0 "   COLUMN txposturecurve.type_posture    COMMENT     K   COMMENT ON COLUMN public.txposturecurve.type_posture IS 'Tipo de postura';
            public       postgres    false    318            ?           1259    77763    txprogrammed_eggs    TABLE     �  CREATE TABLE public.txprogrammed_eggs (
    programmed_eggs_id integer DEFAULT nextval('public.programmed_eggs_id_seq'::regclass) NOT NULL,
    incubator_id integer NOT NULL,
    lot_breed character varying(45),
    lot_incubator character varying(45),
    _date date,
    eggs integer,
    breed_id integer NOT NULL,
    execution_quantity integer,
    eggs_storage_id integer NOT NULL,
    confirm integer
);
 %   DROP TABLE public.txprogrammed_eggs;
       public         postgres    false    292    3                       0    0    TABLE txprogrammed_eggs    COMMENT        COMMENT ON TABLE public.txprogrammed_eggs IS 'Almacena la proyección, programación y ejecución del módulo de incubadoras';
            public       postgres    false    319                       0    0 +   COLUMN txprogrammed_eggs.programmed_eggs_id    COMMENT     j   COMMENT ON COLUMN public.txprogrammed_eggs.programmed_eggs_id IS 'Id de las programacion de incubadoras';
            public       postgres    false    319                       0    0 %   COLUMN txprogrammed_eggs.incubator_id    COMMENT     O   COMMENT ON COLUMN public.txprogrammed_eggs.incubator_id IS 'Id de incubadora';
            public       postgres    false    319                       0    0 "   COLUMN txprogrammed_eggs.lot_breed    COMMENT     I   COMMENT ON COLUMN public.txprogrammed_eggs.lot_breed IS 'Lote por raza';
            public       postgres    false    319                       0    0 &   COLUMN txprogrammed_eggs.lot_incubator    COMMENT     S   COMMENT ON COLUMN public.txprogrammed_eggs.lot_incubator IS 'Lote de incubadoras';
            public       postgres    false    319                       0    0    COLUMN txprogrammed_eggs.eggs    COMMENT     I   COMMENT ON COLUMN public.txprogrammed_eggs.eggs IS 'Cantidad de huevos';
            public       postgres    false    319                       0    0 !   COLUMN txprogrammed_eggs.breed_id    COMMENT     E   COMMENT ON COLUMN public.txprogrammed_eggs.breed_id IS 'Id de raza';
            public       postgres    false    319                       0    0 +   COLUMN txprogrammed_eggs.execution_quantity    COMMENT     [   COMMENT ON COLUMN public.txprogrammed_eggs.execution_quantity IS 'Cantidad de ejecución';
            public       postgres    false    319            @           1259    77767    txscenarioformula    TABLE     �  CREATE TABLE public.txscenarioformula (
    scenario_formula_id integer DEFAULT nextval('public.scenario_formula_id_seq'::regclass) NOT NULL,
    process_id integer NOT NULL,
    predecessor_id integer NOT NULL,
    parameter_id integer NOT NULL,
    sign integer,
    divider double precision,
    duration integer,
    level integer,
    scenario_id integer NOT NULL,
    measure_id integer NOT NULL
);
 %   DROP TABLE public.txscenarioformula;
       public         postgres    false    294    3                       0    0    TABLE txscenarioformula    COMMENT     �   COMMENT ON TABLE public.txscenarioformula IS 'Almacena los datos para la formulación de salida de la planificación regresiva';
            public       postgres    false    320                       0    0 ,   COLUMN txscenarioformula.scenario_formula_id    COMMENT     d   COMMENT ON COLUMN public.txscenarioformula.scenario_formula_id IS 'Id de la formula del escenario';
            public       postgres    false    320                       0    0 #   COLUMN txscenarioformula.process_id    COMMENT     K   COMMENT ON COLUMN public.txscenarioformula.process_id IS 'Id del proceso';
            public       postgres    false    320                       0    0 '   COLUMN txscenarioformula.predecessor_id    COMMENT     R   COMMENT ON COLUMN public.txscenarioformula.predecessor_id IS 'Id del predecesor';
            public       postgres    false    320                       0    0 %   COLUMN txscenarioformula.parameter_id    COMMENT     O   COMMENT ON COLUMN public.txscenarioformula.parameter_id IS 'Id del parametro';
            public       postgres    false    320                       0    0    COLUMN txscenarioformula.sign    COMMENT     E   COMMENT ON COLUMN public.txscenarioformula.sign IS 'Firma de datos';
            public       postgres    false    320                       0    0     COLUMN txscenarioformula.divider    COMMENT     J   COMMENT ON COLUMN public.txscenarioformula.divider IS 'divisor de datos';
            public       postgres    false    320                       0    0 !   COLUMN txscenarioformula.duration    COMMENT     Q   COMMENT ON COLUMN public.txscenarioformula.duration IS 'Duracion de la formula';
            public       postgres    false    320                        0    0    COLUMN txscenarioformula.level    COMMENT     K   COMMENT ON COLUMN public.txscenarioformula.level IS 'Nivel del escenario';
            public       postgres    false    320            !           0    0 $   COLUMN txscenarioformula.scenario_id    COMMENT     N   COMMENT ON COLUMN public.txscenarioformula.scenario_id IS 'Id del escenario';
            public       postgres    false    320            "           0    0 #   COLUMN txscenarioformula.measure_id    COMMENT     M   COMMENT ON COLUMN public.txscenarioformula.measure_id IS 'Id de la medida
';
            public       postgres    false    320            A           1259    77771    txscenariohen    TABLE     �   CREATE TABLE public.txscenariohen (
    _week integer NOT NULL,
    _year integer NOT NULL,
    scenario_id integer NOT NULL,
    quantity_hen integer,
    breed_id integer NOT NULL
);
 !   DROP TABLE public.txscenariohen;
       public         postgres    false    3            B           1259    77774    txscenarioparameter    TABLE     f  CREATE TABLE public.txscenarioparameter (
    scenario_parameter_id integer DEFAULT nextval('public.scenario_parameter_id_seq'::regclass) NOT NULL,
    process_id integer NOT NULL,
    parameter_id integer NOT NULL,
    year integer,
    month integer,
    value character varying(250),
    scenario_id integer NOT NULL,
    value_units integer DEFAULT 0
);
 '   DROP TABLE public.txscenarioparameter;
       public         postgres    false    296    3            #           0    0    TABLE txscenarioparameter    COMMENT     s   COMMENT ON TABLE public.txscenarioparameter IS 'Almacena las metas de producción ingresadas para los escenarios';
            public       postgres    false    322            $           0    0 0   COLUMN txscenarioparameter.scenario_parameter_id    COMMENT     l   COMMENT ON COLUMN public.txscenarioparameter.scenario_parameter_id IS 'Id de los parametros del escenario';
            public       postgres    false    322            %           0    0 %   COLUMN txscenarioparameter.process_id    COMMENT     M   COMMENT ON COLUMN public.txscenarioparameter.process_id IS 'Id del proceso';
            public       postgres    false    322            &           0    0 '   COLUMN txscenarioparameter.parameter_id    COMMENT     Q   COMMENT ON COLUMN public.txscenarioparameter.parameter_id IS 'Id del parametro';
            public       postgres    false    322            '           0    0    COLUMN txscenarioparameter.year    COMMENT     K   COMMENT ON COLUMN public.txscenarioparameter.year IS 'Año del parametro';
            public       postgres    false    322            (           0    0     COLUMN txscenarioparameter.month    COMMENT     K   COMMENT ON COLUMN public.txscenarioparameter.month IS 'Mes del parametro';
            public       postgres    false    322            )           0    0     COLUMN txscenarioparameter.value    COMMENT     M   COMMENT ON COLUMN public.txscenarioparameter.value IS 'Valor del parametro';
            public       postgres    false    322            *           0    0 &   COLUMN txscenarioparameter.scenario_id    COMMENT     P   COMMENT ON COLUMN public.txscenarioparameter.scenario_id IS 'Id del escenario';
            public       postgres    false    322            +           0    0 &   COLUMN txscenarioparameter.value_units    COMMENT     U   COMMENT ON COLUMN public.txscenarioparameter.value_units IS 'Valor de las unidades';
            public       postgres    false    322            C           1259    77779    txscenarioparameterday    TABLE     k  CREATE TABLE public.txscenarioparameterday (
    scenario_parameter_day_id integer DEFAULT nextval('public.scenario_parameter_day_seq'::regclass) NOT NULL,
    day integer,
    parameter_id integer NOT NULL,
    units_day integer,
    scenario_id integer NOT NULL,
    sequence integer,
    month integer,
    year integer,
    week_day integer,
    week date
);
 *   DROP TABLE public.txscenarioparameterday;
       public         postgres    false    295    3            ,           0    0    TABLE txscenarioparameterday    COMMENT     V   COMMENT ON TABLE public.txscenarioparameterday IS 'Almcacena los parametros por dia';
            public       postgres    false    323            -           0    0 7   COLUMN txscenarioparameterday.scenario_parameter_day_id    COMMENT     m   COMMENT ON COLUMN public.txscenarioparameterday.scenario_parameter_day_id IS 'Id de los parametros del dia';
            public       postgres    false    323            .           0    0 !   COLUMN txscenarioparameterday.day    COMMENT     >   COMMENT ON COLUMN public.txscenarioparameterday.day IS 'Dia';
            public       postgres    false    323            /           0    0 *   COLUMN txscenarioparameterday.parameter_id    COMMENT     c   COMMENT ON COLUMN public.txscenarioparameterday.parameter_id IS 'Id de los parametros necesarios';
            public       postgres    false    323            0           0    0 '   COLUMN txscenarioparameterday.units_day    COMMENT     U   COMMENT ON COLUMN public.txscenarioparameterday.units_day IS 'Cantidad de material';
            public       postgres    false    323            1           0    0 )   COLUMN txscenarioparameterday.scenario_id    COMMENT     u   COMMENT ON COLUMN public.txscenarioparameterday.scenario_id IS 'Escenario al cual pertenece el scanrioparameterday';
            public       postgres    false    323            2           0    0 &   COLUMN txscenarioparameterday.sequence    COMMENT     R   COMMENT ON COLUMN public.txscenarioparameterday.sequence IS 'Secuencia del dia
';
            public       postgres    false    323            3           0    0 #   COLUMN txscenarioparameterday.month    COMMENT     Y   COMMENT ON COLUMN public.txscenarioparameterday.month IS 'Mes en que se ubica el día ';
            public       postgres    false    323            4           0    0 "   COLUMN txscenarioparameterday.year    COMMENT     Y   COMMENT ON COLUMN public.txscenarioparameterday.year IS 'Año en que se ubica el día ';
            public       postgres    false    323            5           0    0 &   COLUMN txscenarioparameterday.week_day    COMMENT     P   COMMENT ON COLUMN public.txscenarioparameterday.week_day IS 'Dia de la semana';
            public       postgres    false    323            6           0    0 "   COLUMN txscenarioparameterday.week    COMMENT     B   COMMENT ON COLUMN public.txscenarioparameterday.week IS 'Semana';
            public       postgres    false    323            D           1259    77783    txscenarioposturecurve    TABLE     3  CREATE TABLE public.txscenarioposturecurve (
    scenario_posture_id integer DEFAULT nextval('public.scenario_posture_id_seq'::regclass) NOT NULL,
    posture_date date,
    eggs double precision,
    scenario_id integer NOT NULL,
    housingway_detail_id integer NOT NULL,
    breed_id integer NOT NULL
);
 *   DROP TABLE public.txscenarioposturecurve;
       public         postgres    false    297    3            7           0    0    TABLE txscenarioposturecurve    COMMENT     o   COMMENT ON TABLE public.txscenarioposturecurve IS 'Almacena los datos que se utilizan en la curva de postura';
            public       postgres    false    324            8           0    0 1   COLUMN txscenarioposturecurve.scenario_posture_id    COMMENT     i   COMMENT ON COLUMN public.txscenarioposturecurve.scenario_posture_id IS 'Id de la postura del escenario';
            public       postgres    false    324            9           0    0 *   COLUMN txscenarioposturecurve.posture_date    COMMENT     W   COMMENT ON COLUMN public.txscenarioposturecurve.posture_date IS 'Fecha de la postura';
            public       postgres    false    324            :           0    0 "   COLUMN txscenarioposturecurve.eggs    COMMENT     N   COMMENT ON COLUMN public.txscenarioposturecurve.eggs IS 'Cantidad de huevos';
            public       postgres    false    324            ;           0    0 )   COLUMN txscenarioposturecurve.scenario_id    COMMENT     R   COMMENT ON COLUMN public.txscenarioposturecurve.scenario_id IS 'Id del scenario';
            public       postgres    false    324            <           0    0 2   COLUMN txscenarioposturecurve.housingway_detail_id    COMMENT     �   COMMENT ON COLUMN public.txscenarioposturecurve.housingway_detail_id IS 'Id de la programación y ejecución de los modelos de levante y cría y reproductora';
            public       postgres    false    324            =           0    0 &   COLUMN txscenarioposturecurve.breed_id    COMMENT     M   COMMENT ON COLUMN public.txscenarioposturecurve.breed_id IS 'Id de la raza';
            public       postgres    false    324            E           1259    77787    txscenarioprocess    TABLE     4  CREATE TABLE public.txscenarioprocess (
    scenario_process_id integer DEFAULT nextval('public.scenario_process_id_seq'::regclass) NOT NULL,
    process_id integer NOT NULL,
    decrease_goal double precision,
    weight_goal double precision,
    duration_goal integer,
    scenario_id integer NOT NULL
);
 %   DROP TABLE public.txscenarioprocess;
       public         postgres    false    298    3            >           0    0    TABLE txscenarioprocess    COMMENT     m   COMMENT ON TABLE public.txscenarioprocess IS 'Almacena los procesos asociados a cada uno de los escenarios';
            public       postgres    false    325            ?           0    0 ,   COLUMN txscenarioprocess.scenario_process_id    COMMENT     a   COMMENT ON COLUMN public.txscenarioprocess.scenario_process_id IS 'Id del proceso de escenario';
            public       postgres    false    325            @           0    0 #   COLUMN txscenarioprocess.process_id    COMMENT     V   COMMENT ON COLUMN public.txscenarioprocess.process_id IS 'Id del proceso a utilizar';
            public       postgres    false    325            A           0    0 &   COLUMN txscenarioprocess.decrease_goal    COMMENT     v   COMMENT ON COLUMN public.txscenarioprocess.decrease_goal IS 'Guarda los datos de la merma historia en dicho proceso';
            public       postgres    false    325            B           0    0 $   COLUMN txscenarioprocess.weight_goal    COMMENT     q   COMMENT ON COLUMN public.txscenarioprocess.weight_goal IS 'Guarda los datos del peso historio en dicho proceso';
            public       postgres    false    325            C           0    0 &   COLUMN txscenarioprocess.duration_goal    COMMENT     y   COMMENT ON COLUMN public.txscenarioprocess.duration_goal IS 'Guarda los datos de la duracion historia en dicho proceso';
            public       postgres    false    325            D           0    0 $   COLUMN txscenarioprocess.scenario_id    COMMENT     X   COMMENT ON COLUMN public.txscenarioprocess.scenario_id IS 'Id del escenario utilizado';
            public       postgres    false    325            F           1259    77791 #   user_application_application_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_application_application_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 :   DROP SEQUENCE public.user_application_application_id_seq;
       public       postgres    false    3            G           1259    77793     user_application_user_app_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_application_user_app_id_seq
    START WITH 215
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 7   DROP SEQUENCE public.user_application_user_app_id_seq;
       public       postgres    false    3            H           1259    77795    user_application_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_application_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 3   DROP SEQUENCE public.user_application_user_id_seq;
       public       postgres    false    3            *           2604    77797    txgoals_erp goals_erp_id    DEFAULT     �   ALTER TABLE ONLY public.txgoals_erp ALTER COLUMN goals_erp_id SET DEFAULT nextval('public.txgoals_erp_goals_erp_id_seq'::regclass);
 G   ALTER TABLE public.txgoals_erp ALTER COLUMN goals_erp_id DROP DEFAULT;
       public       postgres    false    312    311            $          0    77391    aba_breeds_and_stages 
   TABLE DATA               m   COPY public.aba_breeds_and_stages (id, code, name, id_aba_consumption_and_mortality, id_process) FROM stdin;
    public       postgres    false    198   d�      &          0    77397    aba_consumption_and_mortality 
   TABLE DATA               m   COPY public.aba_consumption_and_mortality (id, code, name, id_breed, id_stage, id_aba_time_unit) FROM stdin;
    public       postgres    false    200   ��      (          0    77403 $   aba_consumption_and_mortality_detail 
   TABLE DATA               �   COPY public.aba_consumption_and_mortality_detail (id, id_aba_consumption_and_mortality, time_unit_number, consumption, mortality) FROM stdin;
    public       postgres    false    202   ��      *          0    77409    aba_elements 
   TABLE DATA               6   COPY public.aba_elements (id, code, name) FROM stdin;
    public       postgres    false    204   ��      ,          0    77415    aba_elements_and_concentrations 
   TABLE DATA               �   COPY public.aba_elements_and_concentrations (id, id_aba_element, id_aba_formulation, proportion, id_element_equivalent, id_aba_element_property, equivalent_quantity) FROM stdin;
    public       postgres    false    206   ߁      .          0    77421    aba_elements_properties 
   TABLE DATA               A   COPY public.aba_elements_properties (id, code, name) FROM stdin;
    public       postgres    false    208   �      0          0    77427    aba_formulation 
   TABLE DATA               9   COPY public.aba_formulation (id, code, name) FROM stdin;
    public       postgres    false    210   *�      2          0    77433    aba_results 
   TABLE DATA               C   COPY public.aba_results (id, id_aba_element, quantity) FROM stdin;
    public       postgres    false    212   N�      4          0    77439    aba_stages_of_breeds_and_stages 
   TABLE DATA               w   COPY public.aba_stages_of_breeds_and_stages (id, id_aba_breeds_and_stages, id_formulation, name, duration) FROM stdin;
    public       postgres    false    214   k�      5          0    77443    aba_time_unit 
   TABLE DATA               G   COPY public.aba_time_unit (id, singular_name, plural_name) FROM stdin;
    public       postgres    false    215   ��      U          0    77509    mdapplication 
   TABLE DATA               O   COPY public.mdapplication (application_id, application_name, type) FROM stdin;
    public       postgres    false    247   ��      W          0    77518    mdapplication_rol 
   TABLE DATA               G   COPY public.mdapplication_rol (application_id, id, rol_id) FROM stdin;
    public       postgres    false    249   ��      X          0    77522    mdbreed 
   TABLE DATA               7   COPY public.mdbreed (breed_id, code, name) FROM stdin;
    public       postgres    false    250   �      Y          0    77526    mdbroiler_product 
   TABLE DATA               \   COPY public.mdbroiler_product (broiler_product_id, name, days_eviction, weight) FROM stdin;
    public       postgres    false    251   3�      Z          0    77530 
   mdfarmtype 
   TABLE DATA               8   COPY public.mdfarmtype (farm_type_id, name) FROM stdin;
    public       postgres    false    252   h�      [          0    77534 
   mdindustry 
   TABLE DATA               7   COPY public.mdindustry (industry_id, name) FROM stdin;
    public       postgres    false    253   ��      ]          0    77540 	   mdmeasure 
   TABLE DATA               Y   COPY public.mdmeasure (measure_id, name, abbreviation, originvalue, valuekg) FROM stdin;
    public       postgres    false    255   ܄      _          0    77546    mdparameter 
   TABLE DATA               d   COPY public.mdparameter (parameter_id, description, type, measure_id, process_id, name) FROM stdin;
    public       postgres    false    257   �      a          0    77555 	   mdprocess 
   TABLE DATA               \  COPY public.mdprocess (process_id, process_order, product_id, stage_id, historical_decrease, theoretical_decrease, historical_weight, theoretical_weight, historical_duration, theoretical_duration, calendar_id, visible, name, predecessor_id, capacity, breed_id, gender, fattening_goal, type_posture, process_class_id, biological_active) FROM stdin;
    public       postgres    false    259   ��      c          0    77561    mdprocessclass 
   TABLE DATA               M   COPY public.mdprocessclass (process_class_id, name, industry_id) FROM stdin;
    public       postgres    false    261   _�      e          0    77567 	   mdproduct 
   TABLE DATA               ;   COPY public.mdproduct (product_id, code, name) FROM stdin;
    public       postgres    false    263   ��      g          0    77573    mdrol 
   TABLE DATA               T   COPY public.mdrol (rol_id, rol_name, admin_user_creator, creation_date) FROM stdin;
    public       postgres    false    265   '�      i          0    77579 
   mdscenario 
   TABLE DATA               o   COPY public.mdscenario (scenario_id, description, date_start, date_end, name, status, calendar_id) FROM stdin;
    public       postgres    false    267   �      k          0    77589    mdshedstatus 
   TABLE DATA               I   COPY public.mdshedstatus (shed_status_id, name, description) FROM stdin;
    public       postgres    false    269   %�      m          0    77595    mdstage 
   TABLE DATA               9   COPY public.mdstage (stage_id, order_, name) FROM stdin;
    public       postgres    false    271   ˈ      o          0    77601    mduser 
   TABLE DATA                  COPY public.mduser (username, password, name, lastname, active, admi_user_creator, rol_id, creation_date, user_id) FROM stdin;
    public       postgres    false    273   )�      p          0    77605    oscenter 
   TABLE DATA               R   COPY public.oscenter (center_id, partnership_id, farm_id, name, code) FROM stdin;
    public       postgres    false    274   �      q          0    77609    oscenter_oswarehouse 
   TABLE DATA               x   COPY public.oscenter_oswarehouse (client_id, partnership_id, farm_id, center_id, warehouse_id, delete_mark) FROM stdin;
    public       postgres    false    275   ܌      r          0    77612    osfarm 
   TABLE DATA               S   COPY public.osfarm (farm_id, partnership_id, code, name, farm_type_id) FROM stdin;
    public       postgres    false    276   ��      s          0    77616    osincubator 
   TABLE DATA               �   COPY public.osincubator (incubator_id, incubator_plant_id, name, code, description, capacity, sunday, monday, tuesday, wednesday, thursday, friday, saturday) FROM stdin;
    public       postgres    false    277   ō      t          0    77620    osincubatorplant 
   TABLE DATA               �   COPY public.osincubatorplant (incubator_plant_id, name, code, description, partnership_id, max_storage, min_storage) FROM stdin;
    public       postgres    false    278   �      v          0    77626    ospartnership 
   TABLE DATA               Y   COPY public.ospartnership (partnership_id, name, address, description, code) FROM stdin;
    public       postgres    false    280   a�      x          0    77635    osshed 
   TABLE DATA                 COPY public.osshed (shed_id, partnership_id, farm_id, center_id, code, statusshed_id, type_id, building_date, stall_width, stall_height, capacity_min, capacity_max, environment_id, rotation_days, nests_quantity, cages_quantity, birds_quantity, capacity_theoretical) FROM stdin;
    public       postgres    false    282   )�      z          0    77646    ossilo 
   TABLE DATA               ?  COPY public.ossilo (silo_id, client_id, partnership_id, farm_id, center_id, name, rings_height, rings_height_id, height, height_unit_id, diameter, diameter_unit_id, total_rings_quantity, measuring_mechanism, cone_degrees, total_capacity_1, total_capacity_2, capacity_unit_id_1, capacity_unit_id_2, central) FROM stdin;
    public       postgres    false    284   ݏ      {          0    77650    ossilo_osshed 
   TABLE DATA               v   COPY public.ossilo_osshed (silo_id, shed_id, center_id, farm_id, partnership_id, client_id, deleted_mark) FROM stdin;
    public       postgres    false    285   ��      }          0    77655    osslaughterhouse 
   TABLE DATA               i   COPY public.osslaughterhouse (slaughterhouse_id, name, address, description, code, capacity) FROM stdin;
    public       postgres    false    287   �                0    77664    oswarehouse 
   TABLE DATA               X   COPY public.oswarehouse (warehouse_id, partnership_id, farm_id, name, code) FROM stdin;
    public       postgres    false    289   ��      �          0    77686    txavailabilitysheds 
   TABLE DATA               k   COPY public.txavailabilitysheds (availability_shed_id, shed_id, init_date, end_date, lot_code) FROM stdin;
    public       postgres    false    299   �      �          0    77690 	   txbroiler 
   TABLE DATA               �   COPY public.txbroiler (broiler_id, projected_date, projected_quantity, partnership_id, scenario_id, breed_id, lot_incubator, programmed_eggs_id) FROM stdin;
    public       postgres    false    300   +�      �          0    77694    txbroiler_detail 
   TABLE DATA               �   COPY public.txbroiler_detail (broiler_detail_id, broiler_id, scheduled_date, scheduled_quantity, farm_id, shed_id, confirm, execution_date, execution_quantity, lot, broiler_product_id) FROM stdin;
    public       postgres    false    301   H�      �          0    77698    txbroilereviction 
   TABLE DATA               �   COPY public.txbroilereviction (broilereviction_id, projected_date, projected_quantity, partnership_id, scenario_id, breed_id, lot_incubator) FROM stdin;
    public       postgres    false    302   e�      �          0    77702    txbroilereviction_detail 
   TABLE DATA               �   COPY public.txbroilereviction_detail (broilereviction_detail_id, broilereviction_id, scheduled_date, scheduled_quantity, farm_id, shed_id, confirm, execution_date, execution_quantity, lot, broiler_product_id, slaughterhouse_id) FROM stdin;
    public       postgres    false    303   ��      �          0    77706    txbroilerproduct_detail 
   TABLE DATA               y   COPY public.txbroilerproduct_detail (broilerproduct_detail_id, broiler_detail, broiler_product_id, quantity) FROM stdin;
    public       postgres    false    304   ��      �          0    77710    txbroodermachine 
   TABLE DATA               �   COPY public.txbroodermachine (brooder_machine_id_seq, partnership_id, farm_id, capacity, sunday, monday, tuesday, wednesday, thursday, friday, saturday, name) FROM stdin;
    public       postgres    false    305   ��      �          0    77714 
   txcalendar 
   TABLE DATA               �   COPY public.txcalendar (calendar_id, description, saturday, sunday, week_start, code, year_start, year_end, generated) FROM stdin;
    public       postgres    false    306   ّ      �          0    77718    txcalendarday 
   TABLE DATA               �   COPY public.txcalendarday (calendar_day_id, calendar_id, date, year, month, day, week, week_day, description, sequence, working_day) FROM stdin;
    public       postgres    false    307   8�      �          0    77722    txeggs_planning 
   TABLE DATA               y   COPY public.txeggs_planning (egg_planning_id, month_planning, year_planning, scenario_id, planned, breed_id) FROM stdin;
    public       postgres    false    308   ��      �          0    77726    txeggs_required 
   TABLE DATA               j   COPY public.txeggs_required (egg_required_id, _month, _year, scenario_id, required, breed_id) FROM stdin;
    public       postgres    false    309   ��      �          0    77730    txeggs_storage 
   TABLE DATA               �   COPY public.txeggs_storage (eggs_storage_id, incubator_plant_id, scenario_id, breed_id, init_date, end_date, lot, eggs) FROM stdin;
    public       postgres    false    310   ��      �          0    77734    txgoals_erp 
   TABLE DATA               _   COPY public.txgoals_erp (goals_erp_id, week, value, product_id, code, scenario_id) FROM stdin;
    public       postgres    false    311   ��      �          0    77739 	   txholiday 
   TABLE DATA               [   COPY public.txholiday (holiday_id, calendar_id, year, month, day, description) FROM stdin;
    public       postgres    false    313   �      �          0    77743    txhousingway 
   TABLE DATA               �   COPY public.txhousingway (housing_way_id, projected_quantity, projected_date, stage_id, partnership_id, scenario_id, breed_id, predecessor_id) FROM stdin;
    public       postgres    false    314   �      �          0    77747    txhousingway_detail 
   TABLE DATA               �   COPY public.txhousingway_detail (housingway_detail_id, housing_way_id, scheduled_date, scheduled_quantity, farm_id, shed_id, confirm, execution_date, execution_quantity, lot, incubator_plant_id) FROM stdin;
    public       postgres    false    315   <�      �          0    77751    txlot 
   TABLE DATA                 COPY public.txlot (lot_id, lot_code, process_class_id, lot_origin, status, proyected_date, sheduled_date, proyected_quantity, sheduled_quantity, released_quantity, product_id, breed_id, gender, type_posture, shed_id, origin, farm_id, housing_way_id) FROM stdin;
    public       postgres    false    316   Y�      �          0    77755 
   txlot_eggs 
   TABLE DATA               Y   COPY public.txlot_eggs (lot_eggs_id, theorical_performance, week_date, week) FROM stdin;
    public       postgres    false    317   v�      �          0    77759    txposturecurve 
   TABLE DATA               �   COPY public.txposturecurve (posture_curve_id, week, breed_id, theorical_performance, historical_performance, theorical_accum_mortality, historical_accum_mortality, theorical_uniformity, historical_uniformity, type_posture) FROM stdin;
    public       postgres    false    318   ��      �          0    77763    txprogrammed_eggs 
   TABLE DATA               �   COPY public.txprogrammed_eggs (programmed_eggs_id, incubator_id, lot_breed, lot_incubator, _date, eggs, breed_id, execution_quantity, eggs_storage_id, confirm) FROM stdin;
    public       postgres    false    319   ��      �          0    77767    txscenarioformula 
   TABLE DATA               �   COPY public.txscenarioformula (scenario_formula_id, process_id, predecessor_id, parameter_id, sign, divider, duration, level, scenario_id, measure_id) FROM stdin;
    public       postgres    false    320   ��      �          0    77771    txscenariohen 
   TABLE DATA               Z   COPY public.txscenariohen (_week, _year, scenario_id, quantity_hen, breed_id) FROM stdin;
    public       postgres    false    321   ��      �          0    77774    txscenarioparameter 
   TABLE DATA               �   COPY public.txscenarioparameter (scenario_parameter_id, process_id, parameter_id, year, month, value, scenario_id, value_units) FROM stdin;
    public       postgres    false    322   �      �          0    77779    txscenarioparameterday 
   TABLE DATA               �   COPY public.txscenarioparameterday (scenario_parameter_day_id, day, parameter_id, units_day, scenario_id, sequence, month, year, week_day, week) FROM stdin;
    public       postgres    false    323   $�      �          0    77783    txscenarioposturecurve 
   TABLE DATA               �   COPY public.txscenarioposturecurve (scenario_posture_id, posture_date, eggs, scenario_id, housingway_detail_id, breed_id) FROM stdin;
    public       postgres    false    324   A�      �          0    77787    txscenarioprocess 
   TABLE DATA               �   COPY public.txscenarioprocess (scenario_process_id, process_id, decrease_goal, weight_goal, duration_goal, scenario_id) FROM stdin;
    public       postgres    false    325   ^�      E           0    0    abaTimeUnit_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."abaTimeUnit_id_seq"', 2, false);
            public       postgres    false    196            F           0    0    aba_breeds_and_stages_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.aba_breeds_and_stages_id_seq', 8, false);
            public       postgres    false    197            G           0    0 +   aba_consumption_and_mortality_detail_id_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public.aba_consumption_and_mortality_detail_id_seq', 203, false);
            public       postgres    false    201            H           0    0 $   aba_consumption_and_mortality_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.aba_consumption_and_mortality_id_seq', 8, false);
            public       postgres    false    199            I           0    0 &   aba_elements_and_concentrations_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.aba_elements_and_concentrations_id_seq', 105, true);
            public       postgres    false    205            J           0    0    aba_elements_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.aba_elements_id_seq', 22, true);
            public       postgres    false    203            K           0    0    aba_elements_properties_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.aba_elements_properties_id_seq', 1, false);
            public       postgres    false    207            L           0    0    aba_formulation_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.aba_formulation_id_seq', 68, true);
            public       postgres    false    209            M           0    0    aba_results_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.aba_results_id_seq', 1, false);
            public       postgres    false    211            N           0    0 &   aba_stages_of_breeds_and_stages_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.aba_stages_of_breeds_and_stages_id_seq', 24, false);
            public       postgres    false    213            O           0    0    availability_shed_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.availability_shed_id_seq', 301, true);
            public       postgres    false    216            P           0    0    base_day_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.base_day_id_seq', 3, true);
            public       postgres    false    217            Q           0    0    breed_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.breed_id_seq', 16, true);
            public       postgres    false    218            R           0    0    broiler_detail_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.broiler_detail_id_seq', 56, true);
            public       postgres    false    219            S           0    0    broiler_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.broiler_id_seq', 84, true);
            public       postgres    false    220            T           0    0    broiler_product_detail_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.broiler_product_detail_id_seq', 2, true);
            public       postgres    false    221            U           0    0    broiler_product_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.broiler_product_id_seq', 21, true);
            public       postgres    false    222            V           0    0    broilereviction_detail_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.broilereviction_detail_id_seq', 133, true);
            public       postgres    false    223            W           0    0    broilereviction_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.broilereviction_id_seq', 84, true);
            public       postgres    false    224            X           0    0    brooder_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.brooder_id_seq', 52, true);
            public       postgres    false    225            Y           0    0    brooder_machines_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.brooder_machines_id_seq', 7, true);
            public       postgres    false    226            Z           0    0    calendar_day_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.calendar_day_id_seq', 16435, true);
            public       postgres    false    227            [           0    0    calendar_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.calendar_id_seq', 13, true);
            public       postgres    false    228            \           0    0    center_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.center_id_seq', 159, true);
            public       postgres    false    229            ]           0    0    egg_planning_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.egg_planning_id_seq', 2890, true);
            public       postgres    false    230            ^           0    0    egg_required_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.egg_required_id_seq', 3035, true);
            public       postgres    false    231            _           0    0    eggs_storage_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.eggs_storage_id_seq', 27567, true);
            public       postgres    false    232            `           0    0    farm_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.farm_id_seq', 165, true);
            public       postgres    false    233            a           0    0    farm_type_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.farm_type_id_seq', 3, true);
            public       postgres    false    234            b           0    0    holiday_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.holiday_id_seq', 297, true);
            public       postgres    false    235            c           0    0    housing_way_detail_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.housing_way_detail_id_seq', 568, true);
            public       postgres    false    236            d           0    0    housing_way_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.housing_way_id_seq', 779, true);
            public       postgres    false    237            e           0    0    incubator_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.incubator_id_seq', 23, true);
            public       postgres    false    238            f           0    0    incubator_plant_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.incubator_plant_id_seq', 19, true);
            public       postgres    false    239            g           0    0    industry_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.industry_id_seq', 1, true);
            public       postgres    false    240            h           0    0    line_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.line_id_seq', 1, true);
            public       postgres    false    241            i           0    0    lot_eggs_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.lot_eggs_id_seq', 108, true);
            public       postgres    false    242            j           0    0    lot_fattening_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.lot_fattening_id_seq', 1, false);
            public       postgres    false    243            k           0    0 
   lot_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.lot_id_seq', 316, true);
            public       postgres    false    244            l           0    0    lot_liftbreeding_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.lot_liftbreeding_id_seq', 4, true);
            public       postgres    false    245            m           0    0     mdapplication_application_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.mdapplication_application_id_seq', 1, false);
            public       postgres    false    246            n           0    0    mdapplication_rol_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.mdapplication_rol_id_seq', 1, false);
            public       postgres    false    248            o           0    0    mdrol_rol_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.mdrol_rol_id_seq', 1, false);
            public       postgres    false    264            p           0    0    mduser_user_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.mduser_user_id_seq', 1, false);
            public       postgres    false    272            q           0    0    measure_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.measure_id_seq', 15, true);
            public       postgres    false    254            r           0    0    parameter_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.parameter_id_seq', 50, true);
            public       postgres    false    256            s           0    0    partnership_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.partnership_id_seq', 31, true);
            public       postgres    false    279            t           0    0    posture_curve_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.posture_curve_id_seq', 325, true);
            public       postgres    false    290            u           0    0    predecessor_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.predecessor_id_seq', 13, true);
            public       postgres    false    291            v           0    0    process_class_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.process_class_id_seq', 5, true);
            public       postgres    false    260            w           0    0    process_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.process_id_seq', 78, true);
            public       postgres    false    258            x           0    0    product_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.product_id_seq', 90, true);
            public       postgres    false    262            y           0    0    programmed_eggs_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.programmed_eggs_id_seq', 270, true);
            public       postgres    false    292            z           0    0    raspberry_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.raspberry_id_seq', 5, true);
            public       postgres    false    293            {           0    0    scenario_formula_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.scenario_formula_id_seq', 1169, true);
            public       postgres    false    294            |           0    0    scenario_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.scenario_id_seq', 153, true);
            public       postgres    false    266            }           0    0    scenario_parameter_day_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.scenario_parameter_day_seq', 40236, true);
            public       postgres    false    295            ~           0    0    scenario_parameter_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.scenario_parameter_id_seq', 4229, true);
            public       postgres    false    296                       0    0    scenario_posture_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.scenario_posture_id_seq', 52674, true);
            public       postgres    false    297            �           0    0    scenario_process_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.scenario_process_id_seq', 767, true);
            public       postgres    false    298            �           0    0    shed_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.shed_id_seq', 364, true);
            public       postgres    false    281            �           0    0    silo_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.silo_id_seq', 4, true);
            public       postgres    false    283            �           0    0    slaughterhouse_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.slaughterhouse_id_seq', 36, true);
            public       postgres    false    286            �           0    0    stage_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.stage_id_seq', 27, true);
            public       postgres    false    270            �           0    0    status_shed_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.status_shed_id_seq', 10, true);
            public       postgres    false    268            �           0    0    txgoals_erp_goals_erp_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.txgoals_erp_goals_erp_id_seq', 1920, true);
            public       postgres    false    312            �           0    0 #   user_application_application_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.user_application_application_id_seq', 1, false);
            public       postgres    false    326            �           0    0     user_application_user_app_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.user_application_user_app_id_seq', 215, true);
            public       postgres    false    327            �           0    0    user_application_user_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.user_application_user_id_seq', 1, false);
            public       postgres    false    328            �           0    0    warehouse_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.warehouse_id_seq', 124, true);
            public       postgres    false    288            W           2606    77799    aba_time_unit abaTimeUnit_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.aba_time_unit
    ADD CONSTRAINT "abaTimeUnit_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.aba_time_unit DROP CONSTRAINT "abaTimeUnit_pkey";
       public         postgres    false    215            9           2606    77801 0   aba_breeds_and_stages aba_breeds_and_stages_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.aba_breeds_and_stages
    ADD CONSTRAINT aba_breeds_and_stages_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.aba_breeds_and_stages DROP CONSTRAINT aba_breeds_and_stages_pkey;
       public         postgres    false    198            B           2606    77803 N   aba_consumption_and_mortality_detail aba_consumption_and_mortality_detail_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.aba_consumption_and_mortality_detail
    ADD CONSTRAINT aba_consumption_and_mortality_detail_pkey PRIMARY KEY (id);
 x   ALTER TABLE ONLY public.aba_consumption_and_mortality_detail DROP CONSTRAINT aba_consumption_and_mortality_detail_pkey;
       public         postgres    false    202            =           2606    77805 @   aba_consumption_and_mortality aba_consumption_and_mortality_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.aba_consumption_and_mortality
    ADD CONSTRAINT aba_consumption_and_mortality_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.aba_consumption_and_mortality DROP CONSTRAINT aba_consumption_and_mortality_pkey;
       public         postgres    false    200            G           2606    77807 D   aba_elements_and_concentrations aba_elements_and_concentrations_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.aba_elements_and_concentrations
    ADD CONSTRAINT aba_elements_and_concentrations_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.aba_elements_and_concentrations DROP CONSTRAINT aba_elements_and_concentrations_pkey;
       public         postgres    false    206            E           2606    77809    aba_elements aba_elements_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.aba_elements
    ADD CONSTRAINT aba_elements_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.aba_elements DROP CONSTRAINT aba_elements_pkey;
       public         postgres    false    204            L           2606    77811 4   aba_elements_properties aba_elements_properties_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.aba_elements_properties
    ADD CONSTRAINT aba_elements_properties_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.aba_elements_properties DROP CONSTRAINT aba_elements_properties_pkey;
       public         postgres    false    208            N           2606    77813 $   aba_formulation aba_formulation_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.aba_formulation
    ADD CONSTRAINT aba_formulation_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.aba_formulation DROP CONSTRAINT aba_formulation_pkey;
       public         postgres    false    210            P           2606    77815    aba_results aba_results_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.aba_results
    ADD CONSTRAINT aba_results_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.aba_results DROP CONSTRAINT aba_results_pkey;
       public         postgres    false    212            S           2606    77817 D   aba_stages_of_breeds_and_stages aba_stages_of_breeds_and_stages_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.aba_stages_of_breeds_and_stages
    ADD CONSTRAINT aba_stages_of_breeds_and_stages_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.aba_stages_of_breeds_and_stages DROP CONSTRAINT aba_stages_of_breeds_and_stages_pkey;
       public         postgres    false    214            Y           2606    77819    mdapplication application_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.mdapplication
    ADD CONSTRAINT application_pkey PRIMARY KEY (application_id);
 H   ALTER TABLE ONLY public.mdapplication DROP CONSTRAINT application_pkey;
       public         postgres    false    247            [           2606    77821 &   mdapplication_rol application_rol_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.mdapplication_rol
    ADD CONSTRAINT application_rol_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.mdapplication_rol DROP CONSTRAINT application_rol_pkey;
       public         postgres    false    249            ]           2606    77823    mdbreed mdbreed_code_key 
   CONSTRAINT     S   ALTER TABLE ONLY public.mdbreed
    ADD CONSTRAINT mdbreed_code_key UNIQUE (code);
 B   ALTER TABLE ONLY public.mdbreed DROP CONSTRAINT mdbreed_code_key;
       public         postgres    false    250            _           2606    77825    mdbreed mdbreed_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.mdbreed
    ADD CONSTRAINT mdbreed_pkey PRIMARY KEY (breed_id);
 >   ALTER TABLE ONLY public.mdbreed DROP CONSTRAINT mdbreed_pkey;
       public         postgres    false    250            a           2606    77827 (   mdbroiler_product mdbroiler_product_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.mdbroiler_product
    ADD CONSTRAINT mdbroiler_product_pkey PRIMARY KEY (broiler_product_id);
 R   ALTER TABLE ONLY public.mdbroiler_product DROP CONSTRAINT mdbroiler_product_pkey;
       public         postgres    false    251            c           2606    77829    mdfarmtype mdfarmtype_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.mdfarmtype
    ADD CONSTRAINT mdfarmtype_pkey PRIMARY KEY (farm_type_id);
 D   ALTER TABLE ONLY public.mdfarmtype DROP CONSTRAINT mdfarmtype_pkey;
       public         postgres    false    252            e           2606    77831 !   mdindustry mdindustry_name_unique 
   CONSTRAINT     \   ALTER TABLE ONLY public.mdindustry
    ADD CONSTRAINT mdindustry_name_unique UNIQUE (name);
 K   ALTER TABLE ONLY public.mdindustry DROP CONSTRAINT mdindustry_name_unique;
       public         postgres    false    253            g           2606    77833    mdindustry mdindustry_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.mdindustry
    ADD CONSTRAINT mdindustry_pkey PRIMARY KEY (industry_id);
 D   ALTER TABLE ONLY public.mdindustry DROP CONSTRAINT mdindustry_pkey;
       public         postgres    false    253            i           2606    77835    mdmeasure mdmeasure_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.mdmeasure
    ADD CONSTRAINT mdmeasure_pkey PRIMARY KEY (measure_id);
 B   ALTER TABLE ONLY public.mdmeasure DROP CONSTRAINT mdmeasure_pkey;
       public         postgres    false    255            m           2606    77837    mdparameter mdparameter_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.mdparameter
    ADD CONSTRAINT mdparameter_pkey PRIMARY KEY (parameter_id);
 F   ALTER TABLE ONLY public.mdparameter DROP CONSTRAINT mdparameter_pkey;
       public         postgres    false    257            t           2606    77839    mdprocess mdprocess_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.mdprocess
    ADD CONSTRAINT mdprocess_pkey PRIMARY KEY (process_id);
 B   ALTER TABLE ONLY public.mdprocess DROP CONSTRAINT mdprocess_pkey;
       public         postgres    false    259            w           2606    77841 "   mdprocessclass mdprocessclass_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.mdprocessclass
    ADD CONSTRAINT mdprocessclass_pkey PRIMARY KEY (process_class_id);
 L   ALTER TABLE ONLY public.mdprocessclass DROP CONSTRAINT mdprocessclass_pkey;
       public         postgres    false    261            y           2606    77843    mdproduct mdproduct_code_unique 
   CONSTRAINT     Z   ALTER TABLE ONLY public.mdproduct
    ADD CONSTRAINT mdproduct_code_unique UNIQUE (code);
 I   ALTER TABLE ONLY public.mdproduct DROP CONSTRAINT mdproduct_code_unique;
       public         postgres    false    263            {           2606    77845    mdproduct mdproduct_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.mdproduct
    ADD CONSTRAINT mdproduct_pkey PRIMARY KEY (product_id);
 B   ALTER TABLE ONLY public.mdproduct DROP CONSTRAINT mdproduct_pkey;
       public         postgres    false    263            �           2606    77847 !   mdscenario mdscenario_name_unique 
   CONSTRAINT     \   ALTER TABLE ONLY public.mdscenario
    ADD CONSTRAINT mdscenario_name_unique UNIQUE (name);
 K   ALTER TABLE ONLY public.mdscenario DROP CONSTRAINT mdscenario_name_unique;
       public         postgres    false    267            �           2606    77849    mdscenario mdscenario_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.mdscenario
    ADD CONSTRAINT mdscenario_pkey PRIMARY KEY (scenario_id);
 D   ALTER TABLE ONLY public.mdscenario DROP CONSTRAINT mdscenario_pkey;
       public         postgres    false    267            �           2606    77851    mdshedstatus mdshedstatus_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.mdshedstatus
    ADD CONSTRAINT mdshedstatus_pkey PRIMARY KEY (shed_status_id);
 H   ALTER TABLE ONLY public.mdshedstatus DROP CONSTRAINT mdshedstatus_pkey;
       public         postgres    false    269            �           2606    77853    mdstage mdstage_name_unique 
   CONSTRAINT     V   ALTER TABLE ONLY public.mdstage
    ADD CONSTRAINT mdstage_name_unique UNIQUE (name);
 E   ALTER TABLE ONLY public.mdstage DROP CONSTRAINT mdstage_name_unique;
       public         postgres    false    271            �           2606    77855    mdstage mdstage_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.mdstage
    ADD CONSTRAINT mdstage_pkey PRIMARY KEY (stage_id);
 >   ALTER TABLE ONLY public.mdstage DROP CONSTRAINT mdstage_pkey;
       public         postgres    false    271            �           2606    77857 .   oscenter_oswarehouse oscenter_oswarehouse_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.oscenter_oswarehouse
    ADD CONSTRAINT oscenter_oswarehouse_pkey PRIMARY KEY (client_id, partnership_id, farm_id, center_id, warehouse_id);
 X   ALTER TABLE ONLY public.oscenter_oswarehouse DROP CONSTRAINT oscenter_oswarehouse_pkey;
       public         postgres    false    275    275    275    275    275            �           2606    77859    oscenter oscenter_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.oscenter
    ADD CONSTRAINT oscenter_pkey PRIMARY KEY (center_id);
 @   ALTER TABLE ONLY public.oscenter DROP CONSTRAINT oscenter_pkey;
       public         postgres    false    274            �           2606    77861    osfarm osfarm_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.osfarm
    ADD CONSTRAINT osfarm_pkey PRIMARY KEY (farm_id);
 <   ALTER TABLE ONLY public.osfarm DROP CONSTRAINT osfarm_pkey;
       public         postgres    false    276            �           2606    77863    osshed oshed_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.osshed
    ADD CONSTRAINT oshed_pkey PRIMARY KEY (shed_id);
 ;   ALTER TABLE ONLY public.osshed DROP CONSTRAINT oshed_pkey;
       public         postgres    false    282            �           2606    77865    osincubator osincubator_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.osincubator
    ADD CONSTRAINT osincubator_pkey PRIMARY KEY (incubator_id);
 F   ALTER TABLE ONLY public.osincubator DROP CONSTRAINT osincubator_pkey;
       public         postgres    false    277            �           2606    77867 &   osincubatorplant osincubatorplant_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.osincubatorplant
    ADD CONSTRAINT osincubatorplant_pkey PRIMARY KEY (incubator_plant_id);
 P   ALTER TABLE ONLY public.osincubatorplant DROP CONSTRAINT osincubatorplant_pkey;
       public         postgres    false    278            �           2606    77869 '   ospartnership ospartnership_code_unique 
   CONSTRAINT     b   ALTER TABLE ONLY public.ospartnership
    ADD CONSTRAINT ospartnership_code_unique UNIQUE (code);
 Q   ALTER TABLE ONLY public.ospartnership DROP CONSTRAINT ospartnership_code_unique;
       public         postgres    false    280            �           2606    77871     ospartnership ospartnership_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.ospartnership
    ADD CONSTRAINT ospartnership_pkey PRIMARY KEY (partnership_id);
 J   ALTER TABLE ONLY public.ospartnership DROP CONSTRAINT ospartnership_pkey;
       public         postgres    false    280            �           2606    77873     ossilo_osshed ossilo_osshed_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.ossilo_osshed
    ADD CONSTRAINT ossilo_osshed_pkey PRIMARY KEY (silo_id, shed_id);
 J   ALTER TABLE ONLY public.ossilo_osshed DROP CONSTRAINT ossilo_osshed_pkey;
       public         postgres    false    285    285            �           2606    77875    ossilo ossilo_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.ossilo
    ADD CONSTRAINT ossilo_pkey PRIMARY KEY (silo_id);
 <   ALTER TABLE ONLY public.ossilo DROP CONSTRAINT ossilo_pkey;
       public         postgres    false    284            �           2606    77877 &   osslaughterhouse osslaughterhouse_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.osslaughterhouse
    ADD CONSTRAINT osslaughterhouse_pkey PRIMARY KEY (slaughterhouse_id);
 P   ALTER TABLE ONLY public.osslaughterhouse DROP CONSTRAINT osslaughterhouse_pkey;
       public         postgres    false    287            �           2606    77879    oswarehouse oswarehouse_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.oswarehouse
    ADD CONSTRAINT oswarehouse_pkey PRIMARY KEY (warehouse_id);
 F   ALTER TABLE ONLY public.oswarehouse DROP CONSTRAINT oswarehouse_pkey;
       public         postgres    false    289            }           2606    77881    mdrol rol_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.mdrol
    ADD CONSTRAINT rol_pkey PRIMARY KEY (rol_id);
 8   ALTER TABLE ONLY public.mdrol DROP CONSTRAINT rol_pkey;
       public         postgres    false    265            �           2606    77883 ,   txavailabilitysheds txavailabilitysheds_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.txavailabilitysheds
    ADD CONSTRAINT txavailabilitysheds_pkey PRIMARY KEY (availability_shed_id);
 V   ALTER TABLE ONLY public.txavailabilitysheds DROP CONSTRAINT txavailabilitysheds_pkey;
       public         postgres    false    299            �           2606    77885 &   txbroiler_detail txbroiler_detail_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.txbroiler_detail
    ADD CONSTRAINT txbroiler_detail_pkey PRIMARY KEY (broiler_detail_id);
 P   ALTER TABLE ONLY public.txbroiler_detail DROP CONSTRAINT txbroiler_detail_pkey;
       public         postgres    false    301            �           2606    77887    txbroiler txbroiler_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.txbroiler
    ADD CONSTRAINT txbroiler_pkey PRIMARY KEY (broiler_id);
 B   ALTER TABLE ONLY public.txbroiler DROP CONSTRAINT txbroiler_pkey;
       public         postgres    false    300            �           2606    77889 6   txbroilereviction_detail txbroilereviction_detail_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.txbroilereviction_detail
    ADD CONSTRAINT txbroilereviction_detail_pkey PRIMARY KEY (broilereviction_detail_id);
 `   ALTER TABLE ONLY public.txbroilereviction_detail DROP CONSTRAINT txbroilereviction_detail_pkey;
       public         postgres    false    303            �           2606    77891 (   txbroilereviction txbroilereviction_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.txbroilereviction
    ADD CONSTRAINT txbroilereviction_pkey PRIMARY KEY (broilereviction_id);
 R   ALTER TABLE ONLY public.txbroilereviction DROP CONSTRAINT txbroilereviction_pkey;
       public         postgres    false    302            �           2606    77893 4   txbroilerproduct_detail txbroilerproduct_detail_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.txbroilerproduct_detail
    ADD CONSTRAINT txbroilerproduct_detail_pkey PRIMARY KEY (broilerproduct_detail_id);
 ^   ALTER TABLE ONLY public.txbroilerproduct_detail DROP CONSTRAINT txbroilerproduct_detail_pkey;
       public         postgres    false    304            �           2606    77895 &   txbroodermachine txbroodermachine_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.txbroodermachine
    ADD CONSTRAINT txbroodermachine_pkey PRIMARY KEY (brooder_machine_id_seq);
 P   ALTER TABLE ONLY public.txbroodermachine DROP CONSTRAINT txbroodermachine_pkey;
       public         postgres    false    305            �           2606    77897    txcalendar txcalendar_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.txcalendar
    ADD CONSTRAINT txcalendar_pkey PRIMARY KEY (calendar_id);
 D   ALTER TABLE ONLY public.txcalendar DROP CONSTRAINT txcalendar_pkey;
       public         postgres    false    306            �           2606    77899     txcalendarday txcalendarday_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.txcalendarday
    ADD CONSTRAINT txcalendarday_pkey PRIMARY KEY (calendar_day_id);
 J   ALTER TABLE ONLY public.txcalendarday DROP CONSTRAINT txcalendarday_pkey;
       public         postgres    false    307            �           2606    77901 $   txeggs_planning txeggs_planning_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.txeggs_planning
    ADD CONSTRAINT txeggs_planning_pkey PRIMARY KEY (egg_planning_id);
 N   ALTER TABLE ONLY public.txeggs_planning DROP CONSTRAINT txeggs_planning_pkey;
       public         postgres    false    308            �           2606    77903 $   txeggs_required txeggs_required_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.txeggs_required
    ADD CONSTRAINT txeggs_required_pkey PRIMARY KEY (egg_required_id);
 N   ALTER TABLE ONLY public.txeggs_required DROP CONSTRAINT txeggs_required_pkey;
       public         postgres    false    309            �           2606    77905 "   txeggs_storage txeggs_storage_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.txeggs_storage
    ADD CONSTRAINT txeggs_storage_pkey PRIMARY KEY (eggs_storage_id);
 L   ALTER TABLE ONLY public.txeggs_storage DROP CONSTRAINT txeggs_storage_pkey;
       public         postgres    false    310            �           2606    77907    txgoals_erp txgoals_erp_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.txgoals_erp
    ADD CONSTRAINT txgoals_erp_pkey PRIMARY KEY (goals_erp_id);
 F   ALTER TABLE ONLY public.txgoals_erp DROP CONSTRAINT txgoals_erp_pkey;
       public         postgres    false    311            �           2606    77909    txholiday txholiday_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.txholiday
    ADD CONSTRAINT txholiday_pkey PRIMARY KEY (holiday_id);
 B   ALTER TABLE ONLY public.txholiday DROP CONSTRAINT txholiday_pkey;
       public         postgres    false    313                       2606    77911 ,   txhousingway_detail txhousingway_detail_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.txhousingway_detail
    ADD CONSTRAINT txhousingway_detail_pkey PRIMARY KEY (housingway_detail_id);
 V   ALTER TABLE ONLY public.txhousingway_detail DROP CONSTRAINT txhousingway_detail_pkey;
       public         postgres    false    315                       2606    77913    txhousingway txhousingway_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.txhousingway
    ADD CONSTRAINT txhousingway_pkey PRIMARY KEY (housing_way_id);
 H   ALTER TABLE ONLY public.txhousingway DROP CONSTRAINT txhousingway_pkey;
       public         postgres    false    314                       2606    77915    txlot_eggs txlot_eggs_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.txlot_eggs
    ADD CONSTRAINT txlot_eggs_pkey PRIMARY KEY (lot_eggs_id);
 D   ALTER TABLE ONLY public.txlot_eggs DROP CONSTRAINT txlot_eggs_pkey;
       public         postgres    false    317                       2606    77917    txlot txlot_lot_code_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.txlot
    ADD CONSTRAINT txlot_lot_code_key UNIQUE (lot_code);
 B   ALTER TABLE ONLY public.txlot DROP CONSTRAINT txlot_lot_code_key;
       public         postgres    false    316                       2606    77919    txlot txlot_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.txlot
    ADD CONSTRAINT txlot_pkey PRIMARY KEY (lot_id);
 :   ALTER TABLE ONLY public.txlot DROP CONSTRAINT txlot_pkey;
       public         postgres    false    316                       2606    77921 "   txposturecurve txposturecurve_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.txposturecurve
    ADD CONSTRAINT txposturecurve_pkey PRIMARY KEY (posture_curve_id);
 L   ALTER TABLE ONLY public.txposturecurve DROP CONSTRAINT txposturecurve_pkey;
       public         postgres    false    318                       2606    77923 (   txprogrammed_eggs txprogrammed_eggs_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.txprogrammed_eggs
    ADD CONSTRAINT txprogrammed_eggs_pkey PRIMARY KEY (programmed_eggs_id);
 R   ALTER TABLE ONLY public.txprogrammed_eggs DROP CONSTRAINT txprogrammed_eggs_pkey;
       public         postgres    false    319            !           2606    77925 (   txscenarioformula txscenarioformula_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.txscenarioformula
    ADD CONSTRAINT txscenarioformula_pkey PRIMARY KEY (scenario_formula_id);
 R   ALTER TABLE ONLY public.txscenarioformula DROP CONSTRAINT txscenarioformula_pkey;
       public         postgres    false    320            %           2606    77927     txscenariohen txscenariohen_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.txscenariohen
    ADD CONSTRAINT txscenariohen_pkey PRIMARY KEY (_week, _year);
 J   ALTER TABLE ONLY public.txscenariohen DROP CONSTRAINT txscenariohen_pkey;
       public         postgres    false    321    321            *           2606    77929 ,   txscenarioparameter txscenarioparameter_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public.txscenarioparameter
    ADD CONSTRAINT txscenarioparameter_pkey PRIMARY KEY (scenario_parameter_id);
 V   ALTER TABLE ONLY public.txscenarioparameter DROP CONSTRAINT txscenarioparameter_pkey;
       public         postgres    false    322            .           2606    77931 2   txscenarioparameterday txscenarioparameterday_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.txscenarioparameterday
    ADD CONSTRAINT txscenarioparameterday_pkey PRIMARY KEY (scenario_parameter_day_id);
 \   ALTER TABLE ONLY public.txscenarioparameterday DROP CONSTRAINT txscenarioparameterday_pkey;
       public         postgres    false    323            4           2606    77933 2   txscenarioposturecurve txscenarioposturecurve_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.txscenarioposturecurve
    ADD CONSTRAINT txscenarioposturecurve_pkey PRIMARY KEY (scenario_posture_id);
 \   ALTER TABLE ONLY public.txscenarioposturecurve DROP CONSTRAINT txscenarioposturecurve_pkey;
       public         postgres    false    324            8           2606    77935 (   txscenarioprocess txscenarioprocess_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.txscenarioprocess
    ADD CONSTRAINT txscenarioprocess_pkey PRIMARY KEY (scenario_process_id);
 R   ALTER TABLE ONLY public.txscenarioprocess DROP CONSTRAINT txscenarioprocess_pkey;
       public         postgres    false    325                       2606    77937    mdrol uniqueRolName 
   CONSTRAINT     T   ALTER TABLE ONLY public.mdrol
    ADD CONSTRAINT "uniqueRolName" UNIQUE (rol_name);
 ?   ALTER TABLE ONLY public.mdrol DROP CONSTRAINT "uniqueRolName";
       public         postgres    false    265            �           2606    77939    mduser user_id 
   CONSTRAINT     Q   ALTER TABLE ONLY public.mduser
    ADD CONSTRAINT user_id PRIMARY KEY (user_id);
 8   ALTER TABLE ONLY public.mduser DROP CONSTRAINT user_id;
       public         postgres    false    273            �           2606    77941    mduser username unique 
   CONSTRAINT     W   ALTER TABLE ONLY public.mduser
    ADD CONSTRAINT "username unique" UNIQUE (username);
 B   ALTER TABLE ONLY public.mduser DROP CONSTRAINT "username unique";
       public         postgres    false    273            �           1259    77942    calendar_index    INDEX     N   CREATE INDEX calendar_index ON public.txcalendarday USING hash (calendar_id);
 "   DROP INDEX public.calendar_index;
       public         postgres    false    307            n           1259    77943    calendarid_index    INDEX     L   CREATE INDEX calendarid_index ON public.mdprocess USING hash (calendar_id);
 $   DROP INDEX public.calendarid_index;
       public         postgres    false    259            �           1259    77944 
   code_index    INDEX     H   CREATE UNIQUE INDEX code_index ON public.txcalendar USING btree (code);
    DROP INDEX public.code_index;
       public         postgres    false    306            �           1259    77945 
   date_index    INDEX     C   CREATE INDEX date_index ON public.txcalendarday USING hash (date);
    DROP INDEX public.date_index;
       public         postgres    false    307            >           1259    77946    fki_FK_ id_aba_time_unit    INDEX     p   CREATE INDEX "fki_FK_ id_aba_time_unit" ON public.aba_consumption_and_mortality USING btree (id_aba_time_unit);
 .   DROP INDEX public."fki_FK_ id_aba_time_unit";
       public         postgres    false    200            T           1259    77947    fki_FK_id_aba_breeds_and_stages    INDEX     �   CREATE INDEX "fki_FK_id_aba_breeds_and_stages" ON public.aba_stages_of_breeds_and_stages USING btree (id_aba_breeds_and_stages);
 5   DROP INDEX public."fki_FK_id_aba_breeds_and_stages";
       public         postgres    false    214            :           1259    77948 '   fki_FK_id_aba_consumption_and_mortality    INDEX     �   CREATE INDEX "fki_FK_id_aba_consumption_and_mortality" ON public.aba_breeds_and_stages USING btree (id_aba_consumption_and_mortality);
 =   DROP INDEX public."fki_FK_id_aba_consumption_and_mortality";
       public         postgres    false    198            C           1259    77949 (   fki_FK_id_aba_consumption_and_mortality2    INDEX     �   CREATE INDEX "fki_FK_id_aba_consumption_and_mortality2" ON public.aba_consumption_and_mortality_detail USING btree (id_aba_consumption_and_mortality);
 >   DROP INDEX public."fki_FK_id_aba_consumption_and_mortality2";
       public         postgres    false    202            H           1259    77950    fki_FK_id_aba_element    INDEX     m   CREATE INDEX "fki_FK_id_aba_element" ON public.aba_elements_and_concentrations USING btree (id_aba_element);
 +   DROP INDEX public."fki_FK_id_aba_element";
       public         postgres    false    206            Q           1259    77951    fki_FK_id_aba_element2    INDEX     Z   CREATE INDEX "fki_FK_id_aba_element2" ON public.aba_results USING btree (id_aba_element);
 ,   DROP INDEX public."fki_FK_id_aba_element2";
       public         postgres    false    212            I           1259    77952    fki_FK_id_aba_element_property    INDEX        CREATE INDEX "fki_FK_id_aba_element_property" ON public.aba_elements_and_concentrations USING btree (id_aba_element_property);
 4   DROP INDEX public."fki_FK_id_aba_element_property";
       public         postgres    false    206            J           1259    77953    fki_FK_id_aba_formulation    INDEX     u   CREATE INDEX "fki_FK_id_aba_formulation" ON public.aba_elements_and_concentrations USING btree (id_aba_formulation);
 /   DROP INDEX public."fki_FK_id_aba_formulation";
       public         postgres    false    206            ?           1259    77954    fki_FK_id_breed    INDEX     _   CREATE INDEX "fki_FK_id_breed" ON public.aba_consumption_and_mortality USING btree (id_breed);
 %   DROP INDEX public."fki_FK_id_breed";
       public         postgres    false    200            U           1259    77955    fki_FK_id_formulation    INDEX     m   CREATE INDEX "fki_FK_id_formulation" ON public.aba_stages_of_breeds_and_stages USING btree (id_formulation);
 +   DROP INDEX public."fki_FK_id_formulation";
       public         postgres    false    214            ;           1259    77956    fki_FK_id_process    INDEX     [   CREATE INDEX "fki_FK_id_process" ON public.aba_breeds_and_stages USING btree (id_process);
 '   DROP INDEX public."fki_FK_id_process";
       public         postgres    false    198            @           1259    77957    fki_FK_id_stage    INDEX     _   CREATE INDEX "fki_FK_id_stage" ON public.aba_consumption_and_mortality USING btree (id_stage);
 %   DROP INDEX public."fki_FK_id_stage";
       public         postgres    false    200            j           1259    77958    fki_mdparameter_measure_id_fkey    INDEX     ]   CREATE INDEX fki_mdparameter_measure_id_fkey ON public.mdparameter USING btree (measure_id);
 3   DROP INDEX public.fki_mdparameter_measure_id_fkey;
       public         postgres    false    257            k           1259    77959    fki_mdparameter_process_id_fkey    INDEX     ]   CREATE INDEX fki_mdparameter_process_id_fkey ON public.mdparameter USING btree (process_id);
 3   DROP INDEX public.fki_mdparameter_process_id_fkey;
       public         postgres    false    257            o           1259    77960    fki_mdprocess_breed_id_fkey    INDEX     U   CREATE INDEX fki_mdprocess_breed_id_fkey ON public.mdprocess USING btree (breed_id);
 /   DROP INDEX public.fki_mdprocess_breed_id_fkey;
       public         postgres    false    259            p           1259    77961 #   fki_mdprocess_process_class_id_fkey    INDEX     e   CREATE INDEX fki_mdprocess_process_class_id_fkey ON public.mdprocess USING btree (process_class_id);
 7   DROP INDEX public.fki_mdprocess_process_class_id_fkey;
       public         postgres    false    259            u           1259    77962 #   fki_mdprocessclass_industry_id_fkey    INDEX     e   CREATE INDEX fki_mdprocessclass_industry_id_fkey ON public.mdprocessclass USING btree (industry_id);
 7   DROP INDEX public.fki_mdprocessclass_industry_id_fkey;
       public         postgres    false    261            �           1259    77963    fki_oscenter_farm_id_fkey    INDEX     Q   CREATE INDEX fki_oscenter_farm_id_fkey ON public.oscenter USING btree (farm_id);
 -   DROP INDEX public.fki_oscenter_farm_id_fkey;
       public         postgres    false    274            �           1259    77964 '   fki_oscenter_oswarehouse_center_id_fkey    INDEX     m   CREATE INDEX fki_oscenter_oswarehouse_center_id_fkey ON public.oscenter_oswarehouse USING btree (center_id);
 ;   DROP INDEX public.fki_oscenter_oswarehouse_center_id_fkey;
       public         postgres    false    275            �           1259    77965 %   fki_oscenter_oswarehouse_farm_id_fkey    INDEX     i   CREATE INDEX fki_oscenter_oswarehouse_farm_id_fkey ON public.oscenter_oswarehouse USING btree (farm_id);
 9   DROP INDEX public.fki_oscenter_oswarehouse_farm_id_fkey;
       public         postgres    false    275            �           1259    77966 ,   fki_oscenter_oswarehouse_partnership_id_fkey    INDEX     w   CREATE INDEX fki_oscenter_oswarehouse_partnership_id_fkey ON public.oscenter_oswarehouse USING btree (partnership_id);
 @   DROP INDEX public.fki_oscenter_oswarehouse_partnership_id_fkey;
       public         postgres    false    275            �           1259    77967 *   fki_oscenter_oswarehouse_warehouse_id_fkey    INDEX     s   CREATE INDEX fki_oscenter_oswarehouse_warehouse_id_fkey ON public.oscenter_oswarehouse USING btree (warehouse_id);
 >   DROP INDEX public.fki_oscenter_oswarehouse_warehouse_id_fkey;
       public         postgres    false    275            �           1259    77968     fki_oscenter_partnership_id_fkey    INDEX     _   CREATE INDEX fki_oscenter_partnership_id_fkey ON public.oscenter USING btree (partnership_id);
 4   DROP INDEX public.fki_oscenter_partnership_id_fkey;
       public         postgres    false    274            �           1259    77969    fki_osfarm_farm_type_id_fkey    INDEX     W   CREATE INDEX fki_osfarm_farm_type_id_fkey ON public.osfarm USING btree (farm_type_id);
 0   DROP INDEX public.fki_osfarm_farm_type_id_fkey;
       public         postgres    false    276            �           1259    77970    fki_osfarm_partnership_id_fkey    INDEX     [   CREATE INDEX fki_osfarm_partnership_id_fkey ON public.osfarm USING btree (partnership_id);
 2   DROP INDEX public.fki_osfarm_partnership_id_fkey;
       public         postgres    false    276            �           1259    77971 '   fki_osincubator_incubator_plant_id_fkey    INDEX     m   CREATE INDEX fki_osincubator_incubator_plant_id_fkey ON public.osincubator USING btree (incubator_plant_id);
 ;   DROP INDEX public.fki_osincubator_incubator_plant_id_fkey;
       public         postgres    false    277            �           1259    77972 (   fki_osincubatorplant_partnership_id_fkey    INDEX     o   CREATE INDEX fki_osincubatorplant_partnership_id_fkey ON public.osincubatorplant USING btree (partnership_id);
 <   DROP INDEX public.fki_osincubatorplant_partnership_id_fkey;
       public         postgres    false    278            �           1259    77973    fki_osshed_center_id_fkey    INDEX     Q   CREATE INDEX fki_osshed_center_id_fkey ON public.osshed USING btree (center_id);
 -   DROP INDEX public.fki_osshed_center_id_fkey;
       public         postgres    false    282            �           1259    77974    fki_osshed_farm_id_fkey    INDEX     M   CREATE INDEX fki_osshed_farm_id_fkey ON public.osshed USING btree (farm_id);
 +   DROP INDEX public.fki_osshed_farm_id_fkey;
       public         postgres    false    282            �           1259    77975    fki_osshed_partnership_id_fkey    INDEX     [   CREATE INDEX fki_osshed_partnership_id_fkey ON public.osshed USING btree (partnership_id);
 2   DROP INDEX public.fki_osshed_partnership_id_fkey;
       public         postgres    false    282            �           1259    77976    fki_osshed_statusshed_id_fkey    INDEX     Y   CREATE INDEX fki_osshed_statusshed_id_fkey ON public.osshed USING btree (statusshed_id);
 1   DROP INDEX public.fki_osshed_statusshed_id_fkey;
       public         postgres    false    282            �           1259    77977    fki_ossilo_center_id_fkey    INDEX     Q   CREATE INDEX fki_ossilo_center_id_fkey ON public.ossilo USING btree (center_id);
 -   DROP INDEX public.fki_ossilo_center_id_fkey;
       public         postgres    false    284            �           1259    77978    fki_ossilo_farm_id_fkey    INDEX     M   CREATE INDEX fki_ossilo_farm_id_fkey ON public.ossilo USING btree (farm_id);
 +   DROP INDEX public.fki_ossilo_farm_id_fkey;
       public         postgres    false    284            �           1259    77979     fki_ossilo_osshed_center_id_fkey    INDEX     _   CREATE INDEX fki_ossilo_osshed_center_id_fkey ON public.ossilo_osshed USING btree (center_id);
 4   DROP INDEX public.fki_ossilo_osshed_center_id_fkey;
       public         postgres    false    285            �           1259    77980    fki_ossilo_osshed_farm_id_fkey    INDEX     [   CREATE INDEX fki_ossilo_osshed_farm_id_fkey ON public.ossilo_osshed USING btree (farm_id);
 2   DROP INDEX public.fki_ossilo_osshed_farm_id_fkey;
       public         postgres    false    285            �           1259    77981 %   fki_ossilo_osshed_partnership_id_fkey    INDEX     i   CREATE INDEX fki_ossilo_osshed_partnership_id_fkey ON public.ossilo_osshed USING btree (partnership_id);
 9   DROP INDEX public.fki_ossilo_osshed_partnership_id_fkey;
       public         postgres    false    285            �           1259    77982    fki_ossilo_osshed_shed_id_fkey    INDEX     [   CREATE INDEX fki_ossilo_osshed_shed_id_fkey ON public.ossilo_osshed USING btree (shed_id);
 2   DROP INDEX public.fki_ossilo_osshed_shed_id_fkey;
       public         postgres    false    285            �           1259    77983    fki_ossilo_osshed_silo_id_fkey    INDEX     [   CREATE INDEX fki_ossilo_osshed_silo_id_fkey ON public.ossilo_osshed USING btree (silo_id);
 2   DROP INDEX public.fki_ossilo_osshed_silo_id_fkey;
       public         postgres    false    285            �           1259    77984    fki_ossilo_partnership_id_fkey    INDEX     [   CREATE INDEX fki_ossilo_partnership_id_fkey ON public.ossilo USING btree (partnership_id);
 2   DROP INDEX public.fki_ossilo_partnership_id_fkey;
       public         postgres    false    284            �           1259    77985    fki_oswarehouse_farm_id_fkey    INDEX     W   CREATE INDEX fki_oswarehouse_farm_id_fkey ON public.oswarehouse USING btree (farm_id);
 0   DROP INDEX public.fki_oswarehouse_farm_id_fkey;
       public         postgres    false    289            �           1259    77986 #   fki_oswarehouse_partnership_id_fkey    INDEX     e   CREATE INDEX fki_oswarehouse_partnership_id_fkey ON public.oswarehouse USING btree (partnership_id);
 7   DROP INDEX public.fki_oswarehouse_partnership_id_fkey;
       public         postgres    false    289            q           1259    77987    fki_process_product_id_fkey    INDEX     W   CREATE INDEX fki_process_product_id_fkey ON public.mdprocess USING btree (product_id);
 /   DROP INDEX public.fki_process_product_id_fkey;
       public         postgres    false    259            r           1259    77988    fki_process_stage_id_fkey    INDEX     S   CREATE INDEX fki_process_stage_id_fkey ON public.mdprocess USING btree (stage_id);
 -   DROP INDEX public.fki_process_stage_id_fkey;
       public         postgres    false    259            �           1259    77989 %   fki_txavailabilitysheds_lot_code_fkey    INDEX     i   CREATE INDEX fki_txavailabilitysheds_lot_code_fkey ON public.txavailabilitysheds USING btree (lot_code);
 9   DROP INDEX public.fki_txavailabilitysheds_lot_code_fkey;
       public         postgres    false    299            �           1259    77990 $   fki_txavailabilitysheds_shed_id_fkey    INDEX     g   CREATE INDEX fki_txavailabilitysheds_shed_id_fkey ON public.txavailabilitysheds USING btree (shed_id);
 8   DROP INDEX public.fki_txavailabilitysheds_shed_id_fkey;
       public         postgres    false    299            �           1259    77991 $   fki_txbroiler_detail_broiler_id_fkey    INDEX     g   CREATE INDEX fki_txbroiler_detail_broiler_id_fkey ON public.txbroiler_detail USING btree (broiler_id);
 8   DROP INDEX public.fki_txbroiler_detail_broiler_id_fkey;
       public         postgres    false    301            �           1259    77992 !   fki_txbroiler_detail_farm_id_fkey    INDEX     a   CREATE INDEX fki_txbroiler_detail_farm_id_fkey ON public.txbroiler_detail USING btree (farm_id);
 5   DROP INDEX public.fki_txbroiler_detail_farm_id_fkey;
       public         postgres    false    301            �           1259    77993 !   fki_txbroiler_detail_shed_id_fkey    INDEX     a   CREATE INDEX fki_txbroiler_detail_shed_id_fkey ON public.txbroiler_detail USING btree (shed_id);
 5   DROP INDEX public.fki_txbroiler_detail_shed_id_fkey;
       public         postgres    false    301            �           1259    77994 %   fki_txbroiler_programmed_eggs_id_fkey    INDEX     i   CREATE INDEX fki_txbroiler_programmed_eggs_id_fkey ON public.txbroiler USING btree (programmed_eggs_id);
 9   DROP INDEX public.fki_txbroiler_programmed_eggs_id_fkey;
       public         postgres    false    300            �           1259    77995 #   fki_txbroilereviction_breed_id_fkey    INDEX     e   CREATE INDEX fki_txbroilereviction_breed_id_fkey ON public.txbroilereviction USING btree (breed_id);
 7   DROP INDEX public.fki_txbroilereviction_breed_id_fkey;
       public         postgres    false    302            �           1259    77996 ,   fki_txbroilereviction_detail_broiler_id_fkey    INDEX        CREATE INDEX fki_txbroilereviction_detail_broiler_id_fkey ON public.txbroilereviction_detail USING btree (broilereviction_id);
 @   DROP INDEX public.fki_txbroilereviction_detail_broiler_id_fkey;
       public         postgres    false    303            �           1259    77997 4   fki_txbroilereviction_detail_broiler_product_id_fkey    INDEX     �   CREATE INDEX fki_txbroilereviction_detail_broiler_product_id_fkey ON public.txbroilereviction_detail USING btree (broiler_product_id);
 H   DROP INDEX public.fki_txbroilereviction_detail_broiler_product_id_fkey;
       public         postgres    false    303            �           1259    77998 )   fki_txbroilereviction_detail_farm_id_fkey    INDEX     q   CREATE INDEX fki_txbroilereviction_detail_farm_id_fkey ON public.txbroilereviction_detail USING btree (farm_id);
 =   DROP INDEX public.fki_txbroilereviction_detail_farm_id_fkey;
       public         postgres    false    303            �           1259    77999 )   fki_txbroilereviction_detail_shed_id_fkey    INDEX     q   CREATE INDEX fki_txbroilereviction_detail_shed_id_fkey ON public.txbroilereviction_detail USING btree (shed_id);
 =   DROP INDEX public.fki_txbroilereviction_detail_shed_id_fkey;
       public         postgres    false    303            �           1259    78000 3   fki_txbroilereviction_detail_slaughterhouse_id_fkey    INDEX     �   CREATE INDEX fki_txbroilereviction_detail_slaughterhouse_id_fkey ON public.txbroilereviction_detail USING btree (slaughterhouse_id);
 G   DROP INDEX public.fki_txbroilereviction_detail_slaughterhouse_id_fkey;
       public         postgres    false    303            �           1259    78001 )   fki_txbroilereviction_partnership_id_fkey    INDEX     q   CREATE INDEX fki_txbroilereviction_partnership_id_fkey ON public.txbroilereviction USING btree (partnership_id);
 =   DROP INDEX public.fki_txbroilereviction_partnership_id_fkey;
       public         postgres    false    302            �           1259    78002 &   fki_txbroilereviction_scenario_id_fkey    INDEX     k   CREATE INDEX fki_txbroilereviction_scenario_id_fkey ON public.txbroilereviction USING btree (scenario_id);
 :   DROP INDEX public.fki_txbroilereviction_scenario_id_fkey;
       public         postgres    false    302            �           1259    78003 /   fki_txbroilerproduct_detail_broiler_detail_fkey    INDEX     }   CREATE INDEX fki_txbroilerproduct_detail_broiler_detail_fkey ON public.txbroilerproduct_detail USING btree (broiler_detail);
 C   DROP INDEX public.fki_txbroilerproduct_detail_broiler_detail_fkey;
       public         postgres    false    304            �           1259    78004 "   fki_txbroodermachines_farm_id_fkey    INDEX     b   CREATE INDEX fki_txbroodermachines_farm_id_fkey ON public.txbroodermachine USING btree (farm_id);
 6   DROP INDEX public.fki_txbroodermachines_farm_id_fkey;
       public         postgres    false    305            �           1259    78005 )   fki_txbroodermachines_partnership_id_fkey    INDEX     p   CREATE INDEX fki_txbroodermachines_partnership_id_fkey ON public.txbroodermachine USING btree (partnership_id);
 =   DROP INDEX public.fki_txbroodermachines_partnership_id_fkey;
       public         postgres    false    305            �           1259    78006 !   fki_txeggs_planning_breed_id_fkey    INDEX     a   CREATE INDEX fki_txeggs_planning_breed_id_fkey ON public.txeggs_planning USING btree (breed_id);
 5   DROP INDEX public.fki_txeggs_planning_breed_id_fkey;
       public         postgres    false    308            �           1259    78007 $   fki_txeggs_planning_scenario_id_fkey    INDEX     g   CREATE INDEX fki_txeggs_planning_scenario_id_fkey ON public.txeggs_planning USING btree (scenario_id);
 8   DROP INDEX public.fki_txeggs_planning_scenario_id_fkey;
       public         postgres    false    308            �           1259    78008 !   fki_txeggs_required_breed_id_fkey    INDEX     a   CREATE INDEX fki_txeggs_required_breed_id_fkey ON public.txeggs_required USING btree (breed_id);
 5   DROP INDEX public.fki_txeggs_required_breed_id_fkey;
       public         postgres    false    309            �           1259    78009 $   fki_txeggs_required_scenario_id_fkey    INDEX     g   CREATE INDEX fki_txeggs_required_scenario_id_fkey ON public.txeggs_required USING btree (scenario_id);
 8   DROP INDEX public.fki_txeggs_required_scenario_id_fkey;
       public         postgres    false    309            �           1259    78010     fki_txeggs_storage_breed_id_fkey    INDEX     _   CREATE INDEX fki_txeggs_storage_breed_id_fkey ON public.txeggs_storage USING btree (breed_id);
 4   DROP INDEX public.fki_txeggs_storage_breed_id_fkey;
       public         postgres    false    310            �           1259    78011 *   fki_txeggs_storage_incubator_plant_id_fkey    INDEX     s   CREATE INDEX fki_txeggs_storage_incubator_plant_id_fkey ON public.txeggs_storage USING btree (incubator_plant_id);
 >   DROP INDEX public.fki_txeggs_storage_incubator_plant_id_fkey;
       public         postgres    false    310            �           1259    78012 #   fki_txeggs_storage_scenario_id_fkey    INDEX     e   CREATE INDEX fki_txeggs_storage_scenario_id_fkey ON public.txeggs_storage USING btree (scenario_id);
 7   DROP INDEX public.fki_txeggs_storage_scenario_id_fkey;
       public         postgres    false    310            �           1259    78013    fki_txfattening_breed_id_fkey    INDEX     W   CREATE INDEX fki_txfattening_breed_id_fkey ON public.txbroiler USING btree (breed_id);
 1   DROP INDEX public.fki_txfattening_breed_id_fkey;
       public         postgres    false    300            �           1259    78014 #   fki_txfattening_partnership_id_fkey    INDEX     c   CREATE INDEX fki_txfattening_partnership_id_fkey ON public.txbroiler USING btree (partnership_id);
 7   DROP INDEX public.fki_txfattening_partnership_id_fkey;
       public         postgres    false    300            �           1259    78015     fki_txfattening_scenario_id_fkey    INDEX     ]   CREATE INDEX fki_txfattening_scenario_id_fkey ON public.txbroiler USING btree (scenario_id);
 4   DROP INDEX public.fki_txfattening_scenario_id_fkey;
       public         postgres    false    300            �           1259    78016    fki_txgoals_erp_product_id_fkey    INDEX     ]   CREATE INDEX fki_txgoals_erp_product_id_fkey ON public.txgoals_erp USING btree (product_id);
 3   DROP INDEX public.fki_txgoals_erp_product_id_fkey;
       public         postgres    false    311            �           1259    78017     fki_txgoals_erp_scenario_id_fkey    INDEX     _   CREATE INDEX fki_txgoals_erp_scenario_id_fkey ON public.txgoals_erp USING btree (scenario_id);
 4   DROP INDEX public.fki_txgoals_erp_scenario_id_fkey;
       public         postgres    false    311            �           1259    78018    fki_txholiday_calendar_id_fkey    INDEX     [   CREATE INDEX fki_txholiday_calendar_id_fkey ON public.txholiday USING btree (calendar_id);
 2   DROP INDEX public.fki_txholiday_calendar_id_fkey;
       public         postgres    false    313            �           1259    78019    fki_txhousingway_breed_id_fkey    INDEX     [   CREATE INDEX fki_txhousingway_breed_id_fkey ON public.txhousingway USING btree (breed_id);
 2   DROP INDEX public.fki_txhousingway_breed_id_fkey;
       public         postgres    false    314                       1259    78020 $   fki_txhousingway_detail_farm_id_fkey    INDEX     g   CREATE INDEX fki_txhousingway_detail_farm_id_fkey ON public.txhousingway_detail USING btree (farm_id);
 8   DROP INDEX public.fki_txhousingway_detail_farm_id_fkey;
       public         postgres    false    315                       1259    78021 +   fki_txhousingway_detail_housing_way_id_fkey    INDEX     u   CREATE INDEX fki_txhousingway_detail_housing_way_id_fkey ON public.txhousingway_detail USING btree (housing_way_id);
 ?   DROP INDEX public.fki_txhousingway_detail_housing_way_id_fkey;
       public         postgres    false    315                       1259    78022 /   fki_txhousingway_detail_incubator_plant_id_fkey    INDEX     }   CREATE INDEX fki_txhousingway_detail_incubator_plant_id_fkey ON public.txhousingway_detail USING btree (incubator_plant_id);
 C   DROP INDEX public.fki_txhousingway_detail_incubator_plant_id_fkey;
       public         postgres    false    315                       1259    78023 $   fki_txhousingway_detail_shed_id_fkey    INDEX     g   CREATE INDEX fki_txhousingway_detail_shed_id_fkey ON public.txhousingway_detail USING btree (shed_id);
 8   DROP INDEX public.fki_txhousingway_detail_shed_id_fkey;
       public         postgres    false    315            �           1259    78024 $   fki_txhousingway_partnership_id_fkey    INDEX     g   CREATE INDEX fki_txhousingway_partnership_id_fkey ON public.txhousingway USING btree (partnership_id);
 8   DROP INDEX public.fki_txhousingway_partnership_id_fkey;
       public         postgres    false    314            �           1259    78025 !   fki_txhousingway_scenario_id_fkey    INDEX     a   CREATE INDEX fki_txhousingway_scenario_id_fkey ON public.txhousingway USING btree (scenario_id);
 5   DROP INDEX public.fki_txhousingway_scenario_id_fkey;
       public         postgres    false    314            �           1259    78026    fki_txhousingway_stage_id_fkey    INDEX     [   CREATE INDEX fki_txhousingway_stage_id_fkey ON public.txhousingway USING btree (stage_id);
 2   DROP INDEX public.fki_txhousingway_stage_id_fkey;
       public         postgres    false    314                       1259    78027    fki_txlot_breed_id_fkey    INDEX     M   CREATE INDEX fki_txlot_breed_id_fkey ON public.txlot USING btree (breed_id);
 +   DROP INDEX public.fki_txlot_breed_id_fkey;
       public         postgres    false    316            	           1259    78028    fki_txlot_farm_id_fkey    INDEX     K   CREATE INDEX fki_txlot_farm_id_fkey ON public.txlot USING btree (farm_id);
 *   DROP INDEX public.fki_txlot_farm_id_fkey;
       public         postgres    false    316            
           1259    78029    fki_txlot_housin_way_id_fkey    INDEX     X   CREATE INDEX fki_txlot_housin_way_id_fkey ON public.txlot USING btree (housing_way_id);
 0   DROP INDEX public.fki_txlot_housin_way_id_fkey;
       public         postgres    false    316                       1259    78030    fki_txlot_process_class_id_fkey    INDEX     ]   CREATE INDEX fki_txlot_process_class_id_fkey ON public.txlot USING btree (process_class_id);
 3   DROP INDEX public.fki_txlot_process_class_id_fkey;
       public         postgres    false    316                       1259    78031    fki_txlot_product_id_fkey    INDEX     Q   CREATE INDEX fki_txlot_product_id_fkey ON public.txlot USING btree (product_id);
 -   DROP INDEX public.fki_txlot_product_id_fkey;
       public         postgres    false    316                       1259    78032    fki_txlot_shed_id_fkey    INDEX     K   CREATE INDEX fki_txlot_shed_id_fkey ON public.txlot USING btree (shed_id);
 *   DROP INDEX public.fki_txlot_shed_id_fkey;
       public         postgres    false    316                       1259    78033     fki_txposturecurve_breed_id_fkey    INDEX     _   CREATE INDEX fki_txposturecurve_breed_id_fkey ON public.txposturecurve USING btree (breed_id);
 4   DROP INDEX public.fki_txposturecurve_breed_id_fkey;
       public         postgres    false    318                       1259    78034 #   fki_txprogrammed_eggs_breed_id_fkey    INDEX     e   CREATE INDEX fki_txprogrammed_eggs_breed_id_fkey ON public.txprogrammed_eggs USING btree (breed_id);
 7   DROP INDEX public.fki_txprogrammed_eggs_breed_id_fkey;
       public         postgres    false    319                       1259    78035 *   fki_txprogrammed_eggs_eggs_storage_id_fkey    INDEX     s   CREATE INDEX fki_txprogrammed_eggs_eggs_storage_id_fkey ON public.txprogrammed_eggs USING btree (eggs_storage_id);
 >   DROP INDEX public.fki_txprogrammed_eggs_eggs_storage_id_fkey;
       public         postgres    false    319                       1259    78036 '   fki_txprogrammed_eggs_incubator_id_fkey    INDEX     m   CREATE INDEX fki_txprogrammed_eggs_incubator_id_fkey ON public.txprogrammed_eggs USING btree (incubator_id);
 ;   DROP INDEX public.fki_txprogrammed_eggs_incubator_id_fkey;
       public         postgres    false    319                       1259    78037 %   fki_txscenarioformula_measure_id_fkey    INDEX     i   CREATE INDEX fki_txscenarioformula_measure_id_fkey ON public.txscenarioformula USING btree (measure_id);
 9   DROP INDEX public.fki_txscenarioformula_measure_id_fkey;
       public         postgres    false    320                       1259    78038 '   fki_txscenarioformula_parameter_id_fkey    INDEX     m   CREATE INDEX fki_txscenarioformula_parameter_id_fkey ON public.txscenarioformula USING btree (parameter_id);
 ;   DROP INDEX public.fki_txscenarioformula_parameter_id_fkey;
       public         postgres    false    320                       1259    78039 %   fki_txscenarioformula_process_id_fkey    INDEX     i   CREATE INDEX fki_txscenarioformula_process_id_fkey ON public.txscenarioformula USING btree (process_id);
 9   DROP INDEX public.fki_txscenarioformula_process_id_fkey;
       public         postgres    false    320                       1259    78040 &   fki_txscenarioformula_scenario_id_fkey    INDEX     k   CREATE INDEX fki_txscenarioformula_scenario_id_fkey ON public.txscenarioformula USING btree (scenario_id);
 :   DROP INDEX public.fki_txscenarioformula_scenario_id_fkey;
       public         postgres    false    320            "           1259    78041    fki_txscenariohen_breed_id_fkey    INDEX     ]   CREATE INDEX fki_txscenariohen_breed_id_fkey ON public.txscenariohen USING btree (breed_id);
 3   DROP INDEX public.fki_txscenariohen_breed_id_fkey;
       public         postgres    false    321            #           1259    78042 "   fki_txscenariohen_scenario_id_fkey    INDEX     c   CREATE INDEX fki_txscenariohen_scenario_id_fkey ON public.txscenariohen USING btree (scenario_id);
 6   DROP INDEX public.fki_txscenariohen_scenario_id_fkey;
       public         postgres    false    321            &           1259    78043 )   fki_txscenarioparameter_parameter_id_fkey    INDEX     q   CREATE INDEX fki_txscenarioparameter_parameter_id_fkey ON public.txscenarioparameter USING btree (parameter_id);
 =   DROP INDEX public.fki_txscenarioparameter_parameter_id_fkey;
       public         postgres    false    322            '           1259    78044 '   fki_txscenarioparameter_process_id_fkey    INDEX     m   CREATE INDEX fki_txscenarioparameter_process_id_fkey ON public.txscenarioparameter USING btree (process_id);
 ;   DROP INDEX public.fki_txscenarioparameter_process_id_fkey;
       public         postgres    false    322            (           1259    78045 (   fki_txscenarioparameter_scenario_id_fkey    INDEX     o   CREATE INDEX fki_txscenarioparameter_scenario_id_fkey ON public.txscenarioparameter USING btree (scenario_id);
 <   DROP INDEX public.fki_txscenarioparameter_scenario_id_fkey;
       public         postgres    false    322            +           1259    78046 ,   fki_txscenarioparameterday_parameter_id_fkey    INDEX     w   CREATE INDEX fki_txscenarioparameterday_parameter_id_fkey ON public.txscenarioparameterday USING btree (parameter_id);
 @   DROP INDEX public.fki_txscenarioparameterday_parameter_id_fkey;
       public         postgres    false    323            ,           1259    78047 +   fki_txscenarioparameterday_scenario_id_fkey    INDEX     u   CREATE INDEX fki_txscenarioparameterday_scenario_id_fkey ON public.txscenarioparameterday USING btree (scenario_id);
 ?   DROP INDEX public.fki_txscenarioparameterday_scenario_id_fkey;
       public         postgres    false    323            /           1259    78048 (   fki_txscenarioposturecurve_breed_id_fkey    INDEX     o   CREATE INDEX fki_txscenarioposturecurve_breed_id_fkey ON public.txscenarioposturecurve USING btree (breed_id);
 <   DROP INDEX public.fki_txscenarioposturecurve_breed_id_fkey;
       public         postgres    false    324            0           1259    78049 4   fki_txscenarioposturecurve_housingway_detail_id_fkey    INDEX     �   CREATE INDEX fki_txscenarioposturecurve_housingway_detail_id_fkey ON public.txscenarioposturecurve USING btree (housingway_detail_id);
 H   DROP INDEX public.fki_txscenarioposturecurve_housingway_detail_id_fkey;
       public         postgres    false    324            1           1259    78050 +   fki_txscenarioposturecurve_scenario_id_fkey    INDEX     u   CREATE INDEX fki_txscenarioposturecurve_scenario_id_fkey ON public.txscenarioposturecurve USING btree (scenario_id);
 ?   DROP INDEX public.fki_txscenarioposturecurve_scenario_id_fkey;
       public         postgres    false    324            5           1259    78051 %   fki_txscenarioprocess_process_id_fkey    INDEX     i   CREATE INDEX fki_txscenarioprocess_process_id_fkey ON public.txscenarioprocess USING btree (process_id);
 9   DROP INDEX public.fki_txscenarioprocess_process_id_fkey;
       public         postgres    false    325            6           1259    78052 &   fki_txscenarioprocess_scenario_id_fkey    INDEX     k   CREATE INDEX fki_txscenarioprocess_scenario_id_fkey ON public.txscenarioprocess USING btree (scenario_id);
 :   DROP INDEX public.fki_txscenarioprocess_scenario_id_fkey;
       public         postgres    false    325            2           1259    78053    posturedate_index    INDEX     [   CREATE INDEX posturedate_index ON public.txscenarioposturecurve USING hash (posture_date);
 %   DROP INDEX public.posturedate_index;
       public         postgres    false    324            �           1259    78054    sequence_index    INDEX     L   CREATE INDEX sequence_index ON public.txcalendarday USING btree (sequence);
 "   DROP INDEX public.sequence_index;
       public         postgres    false    307            C           2606    78055 ;   aba_stages_of_breeds_and_stages FK_id_aba_breeds_and_stages    FK CONSTRAINT     �   ALTER TABLE ONLY public.aba_stages_of_breeds_and_stages
    ADD CONSTRAINT "FK_id_aba_breeds_and_stages" FOREIGN KEY (id_aba_breeds_and_stages) REFERENCES public.aba_breeds_and_stages(id) ON DELETE CASCADE;
 g   ALTER TABLE ONLY public.aba_stages_of_breeds_and_stages DROP CONSTRAINT "FK_id_aba_breeds_and_stages";
       public       postgres    false    198    214    3129            9           2606    78060 9   aba_breeds_and_stages FK_id_aba_consumption_and_mortality    FK CONSTRAINT     �   ALTER TABLE ONLY public.aba_breeds_and_stages
    ADD CONSTRAINT "FK_id_aba_consumption_and_mortality" FOREIGN KEY (id_aba_consumption_and_mortality) REFERENCES public.aba_consumption_and_mortality(id);
 e   ALTER TABLE ONLY public.aba_breeds_and_stages DROP CONSTRAINT "FK_id_aba_consumption_and_mortality";
       public       postgres    false    198    200    3133            >           2606    78065 I   aba_consumption_and_mortality_detail FK_id_aba_consumption_and_mortality2    FK CONSTRAINT     �   ALTER TABLE ONLY public.aba_consumption_and_mortality_detail
    ADD CONSTRAINT "FK_id_aba_consumption_and_mortality2" FOREIGN KEY (id_aba_consumption_and_mortality) REFERENCES public.aba_consumption_and_mortality(id) ON DELETE CASCADE;
 u   ALTER TABLE ONLY public.aba_consumption_and_mortality_detail DROP CONSTRAINT "FK_id_aba_consumption_and_mortality2";
       public       postgres    false    200    3133    202            ?           2606    78070 1   aba_elements_and_concentrations FK_id_aba_element    FK CONSTRAINT     �   ALTER TABLE ONLY public.aba_elements_and_concentrations
    ADD CONSTRAINT "FK_id_aba_element" FOREIGN KEY (id_aba_element) REFERENCES public.aba_elements(id);
 ]   ALTER TABLE ONLY public.aba_elements_and_concentrations DROP CONSTRAINT "FK_id_aba_element";
       public       postgres    false    206    3141    204            B           2606    78075    aba_results FK_id_aba_element2    FK CONSTRAINT     �   ALTER TABLE ONLY public.aba_results
    ADD CONSTRAINT "FK_id_aba_element2" FOREIGN KEY (id_aba_element) REFERENCES public.aba_elements(id);
 J   ALTER TABLE ONLY public.aba_results DROP CONSTRAINT "FK_id_aba_element2";
       public       postgres    false    212    204    3141            @           2606    78080 :   aba_elements_and_concentrations FK_id_aba_element_property    FK CONSTRAINT     �   ALTER TABLE ONLY public.aba_elements_and_concentrations
    ADD CONSTRAINT "FK_id_aba_element_property" FOREIGN KEY (id_aba_element_property) REFERENCES public.aba_elements_properties(id);
 f   ALTER TABLE ONLY public.aba_elements_and_concentrations DROP CONSTRAINT "FK_id_aba_element_property";
       public       postgres    false    208    206    3148            A           2606    78085 5   aba_elements_and_concentrations FK_id_aba_formulation    FK CONSTRAINT     �   ALTER TABLE ONLY public.aba_elements_and_concentrations
    ADD CONSTRAINT "FK_id_aba_formulation" FOREIGN KEY (id_aba_formulation) REFERENCES public.aba_formulation(id) ON DELETE CASCADE;
 a   ALTER TABLE ONLY public.aba_elements_and_concentrations DROP CONSTRAINT "FK_id_aba_formulation";
       public       postgres    false    3150    206    210            ;           2606    78090 1   aba_consumption_and_mortality FK_id_aba_time_unit    FK CONSTRAINT     �   ALTER TABLE ONLY public.aba_consumption_and_mortality
    ADD CONSTRAINT "FK_id_aba_time_unit" FOREIGN KEY (id_aba_time_unit) REFERENCES public.aba_time_unit(id);
 ]   ALTER TABLE ONLY public.aba_consumption_and_mortality DROP CONSTRAINT "FK_id_aba_time_unit";
       public       postgres    false    215    200    3159            <           2606    78095 )   aba_consumption_and_mortality FK_id_breed    FK CONSTRAINT     �   ALTER TABLE ONLY public.aba_consumption_and_mortality
    ADD CONSTRAINT "FK_id_breed" FOREIGN KEY (id_breed) REFERENCES public.mdbreed(breed_id);
 U   ALTER TABLE ONLY public.aba_consumption_and_mortality DROP CONSTRAINT "FK_id_breed";
       public       postgres    false    250    200    3167            D           2606    78100 1   aba_stages_of_breeds_and_stages FK_id_formulation    FK CONSTRAINT     �   ALTER TABLE ONLY public.aba_stages_of_breeds_and_stages
    ADD CONSTRAINT "FK_id_formulation" FOREIGN KEY (id_formulation) REFERENCES public.aba_formulation(id);
 ]   ALTER TABLE ONLY public.aba_stages_of_breeds_and_stages DROP CONSTRAINT "FK_id_formulation";
       public       postgres    false    210    214    3150            :           2606    78105 #   aba_breeds_and_stages FK_id_process    FK CONSTRAINT     �   ALTER TABLE ONLY public.aba_breeds_and_stages
    ADD CONSTRAINT "FK_id_process" FOREIGN KEY (id_process) REFERENCES public.mdprocess(process_id);
 O   ALTER TABLE ONLY public.aba_breeds_and_stages DROP CONSTRAINT "FK_id_process";
       public       postgres    false    259    198    3188            =           2606    78110 )   aba_consumption_and_mortality FK_id_stage    FK CONSTRAINT     �   ALTER TABLE ONLY public.aba_consumption_and_mortality
    ADD CONSTRAINT "FK_id_stage" FOREIGN KEY (id_stage) REFERENCES public.mdstage(stage_id);
 U   ALTER TABLE ONLY public.aba_consumption_and_mortality DROP CONSTRAINT "FK_id_stage";
       public       postgres    false    200    3209    271            E           2606    78115    mdapplication_rol aplication fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mdapplication_rol
    ADD CONSTRAINT "aplication fk" FOREIGN KEY (application_id) REFERENCES public.mdapplication(application_id);
 K   ALTER TABLE ONLY public.mdapplication_rol DROP CONSTRAINT "aplication fk";
       public       postgres    false    249    247    3161            O           2606    78616    mdscenario fk_calendar_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.mdscenario
    ADD CONSTRAINT fk_calendar_id FOREIGN KEY (calendar_id) REFERENCES public.txcalendar(calendar_id);
 C   ALTER TABLE ONLY public.mdscenario DROP CONSTRAINT fk_calendar_id;
       public       postgres    false    306    3298    267            G           2606    78120 '   mdparameter mdparameter_measure_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mdparameter
    ADD CONSTRAINT mdparameter_measure_id_fkey FOREIGN KEY (measure_id) REFERENCES public.mdmeasure(measure_id) ON UPDATE CASCADE ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.mdparameter DROP CONSTRAINT mdparameter_measure_id_fkey;
       public       postgres    false    3177    257    255            H           2606    78125 '   mdparameter mdparameter_process_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mdparameter
    ADD CONSTRAINT mdparameter_process_id_fkey FOREIGN KEY (process_id) REFERENCES public.mdprocess(process_id) ON UPDATE CASCADE ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.mdparameter DROP CONSTRAINT mdparameter_process_id_fkey;
       public       postgres    false    257    3188    259            I           2606    78130 !   mdprocess mdprocess_breed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mdprocess
    ADD CONSTRAINT mdprocess_breed_id_fkey FOREIGN KEY (breed_id) REFERENCES public.mdbreed(breed_id) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.mdprocess DROP CONSTRAINT mdprocess_breed_id_fkey;
       public       postgres    false    259    3167    250            J           2606    78135 $   mdprocess mdprocess_calendar_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mdprocess
    ADD CONSTRAINT mdprocess_calendar_id_fkey FOREIGN KEY (calendar_id) REFERENCES public.txcalendar(calendar_id) ON UPDATE CASCADE ON DELETE CASCADE;
 N   ALTER TABLE ONLY public.mdprocess DROP CONSTRAINT mdprocess_calendar_id_fkey;
       public       postgres    false    306    259    3298            K           2606    78140 )   mdprocess mdprocess_process_class_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mdprocess
    ADD CONSTRAINT mdprocess_process_class_id_fkey FOREIGN KEY (process_class_id) REFERENCES public.mdprocessclass(process_class_id) ON UPDATE CASCADE ON DELETE CASCADE;
 S   ALTER TABLE ONLY public.mdprocess DROP CONSTRAINT mdprocess_process_class_id_fkey;
       public       postgres    false    261    259    3191            L           2606    78145 #   mdprocess mdprocess_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mdprocess
    ADD CONSTRAINT mdprocess_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.mdproduct(product_id) ON UPDATE CASCADE ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.mdprocess DROP CONSTRAINT mdprocess_product_id_fkey;
       public       postgres    false    263    3195    259            M           2606    78150 !   mdprocess mdprocess_stage_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mdprocess
    ADD CONSTRAINT mdprocess_stage_id_fkey FOREIGN KEY (stage_id) REFERENCES public.mdstage(stage_id) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.mdprocess DROP CONSTRAINT mdprocess_stage_id_fkey;
       public       postgres    false    259    271    3209            N           2606    78155 .   mdprocessclass mdprocessclass_industry_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mdprocessclass
    ADD CONSTRAINT mdprocessclass_industry_id_fkey FOREIGN KEY (industry_id) REFERENCES public.mdindustry(industry_id) ON UPDATE CASCADE ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.mdprocessclass DROP CONSTRAINT mdprocessclass_industry_id_fkey;
       public       postgres    false    3175    261    253            Q           2606    78160    oscenter oscenter_farm_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.oscenter
    ADD CONSTRAINT oscenter_farm_id_fkey FOREIGN KEY (farm_id) REFERENCES public.osfarm(farm_id) ON UPDATE CASCADE ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.oscenter DROP CONSTRAINT oscenter_farm_id_fkey;
       public       postgres    false    276    3227    274            S           2606    78165 8   oscenter_oswarehouse oscenter_oswarehouse_center_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.oscenter_oswarehouse
    ADD CONSTRAINT oscenter_oswarehouse_center_id_fkey FOREIGN KEY (center_id) REFERENCES public.oscenter(center_id) ON UPDATE CASCADE ON DELETE CASCADE;
 b   ALTER TABLE ONLY public.oscenter_oswarehouse DROP CONSTRAINT oscenter_oswarehouse_center_id_fkey;
       public       postgres    false    3217    274    275            T           2606    78170 6   oscenter_oswarehouse oscenter_oswarehouse_farm_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.oscenter_oswarehouse
    ADD CONSTRAINT oscenter_oswarehouse_farm_id_fkey FOREIGN KEY (farm_id) REFERENCES public.osfarm(farm_id) ON UPDATE CASCADE ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.oscenter_oswarehouse DROP CONSTRAINT oscenter_oswarehouse_farm_id_fkey;
       public       postgres    false    276    275    3227            U           2606    78175 =   oscenter_oswarehouse oscenter_oswarehouse_partnership_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.oscenter_oswarehouse
    ADD CONSTRAINT oscenter_oswarehouse_partnership_id_fkey FOREIGN KEY (partnership_id) REFERENCES public.ospartnership(partnership_id) ON UPDATE CASCADE ON DELETE CASCADE;
 g   ALTER TABLE ONLY public.oscenter_oswarehouse DROP CONSTRAINT oscenter_oswarehouse_partnership_id_fkey;
       public       postgres    false    3237    275    280            V           2606    78180 ;   oscenter_oswarehouse oscenter_oswarehouse_warehouse_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.oscenter_oswarehouse
    ADD CONSTRAINT oscenter_oswarehouse_warehouse_id_fkey FOREIGN KEY (warehouse_id) REFERENCES public.oswarehouse(warehouse_id) ON UPDATE CASCADE ON DELETE CASCADE;
 e   ALTER TABLE ONLY public.oscenter_oswarehouse DROP CONSTRAINT oscenter_oswarehouse_warehouse_id_fkey;
       public       postgres    false    3261    275    289            R           2606    78185 %   oscenter oscenter_partnership_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.oscenter
    ADD CONSTRAINT oscenter_partnership_id_fkey FOREIGN KEY (partnership_id) REFERENCES public.ospartnership(partnership_id) ON UPDATE CASCADE ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.oscenter DROP CONSTRAINT oscenter_partnership_id_fkey;
       public       postgres    false    280    274    3237            W           2606    78190    osfarm osfarm_farm_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.osfarm
    ADD CONSTRAINT osfarm_farm_type_id_fkey FOREIGN KEY (farm_type_id) REFERENCES public.mdfarmtype(farm_type_id) ON UPDATE CASCADE ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.osfarm DROP CONSTRAINT osfarm_farm_type_id_fkey;
       public       postgres    false    3171    252    276            X           2606    78195 !   osfarm osfarm_partnership_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.osfarm
    ADD CONSTRAINT osfarm_partnership_id_fkey FOREIGN KEY (partnership_id) REFERENCES public.ospartnership(partnership_id) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.osfarm DROP CONSTRAINT osfarm_partnership_id_fkey;
       public       postgres    false    280    3237    276            Y           2606    78200 /   osincubator osincubator_incubator_plant_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.osincubator
    ADD CONSTRAINT osincubator_incubator_plant_id_fkey FOREIGN KEY (incubator_plant_id) REFERENCES public.osincubatorplant(incubator_plant_id) ON UPDATE CASCADE ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.osincubator DROP CONSTRAINT osincubator_incubator_plant_id_fkey;
       public       postgres    false    3233    278    277            Z           2606    78205 5   osincubatorplant osincubatorplant_partnership_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.osincubatorplant
    ADD CONSTRAINT osincubatorplant_partnership_id_fkey FOREIGN KEY (partnership_id) REFERENCES public.ospartnership(partnership_id) ON UPDATE CASCADE ON DELETE CASCADE;
 _   ALTER TABLE ONLY public.osincubatorplant DROP CONSTRAINT osincubatorplant_partnership_id_fkey;
       public       postgres    false    278    280    3237            [           2606    78210    osshed osshed_center_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.osshed
    ADD CONSTRAINT osshed_center_id_fkey FOREIGN KEY (center_id) REFERENCES public.oscenter(center_id) ON UPDATE CASCADE ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.osshed DROP CONSTRAINT osshed_center_id_fkey;
       public       postgres    false    274    3217    282            \           2606    78215    osshed osshed_farm_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.osshed
    ADD CONSTRAINT osshed_farm_id_fkey FOREIGN KEY (farm_id) REFERENCES public.osfarm(farm_id) ON UPDATE CASCADE ON DELETE CASCADE;
 D   ALTER TABLE ONLY public.osshed DROP CONSTRAINT osshed_farm_id_fkey;
       public       postgres    false    276    3227    282            ]           2606    78220 !   osshed osshed_partnership_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.osshed
    ADD CONSTRAINT osshed_partnership_id_fkey FOREIGN KEY (partnership_id) REFERENCES public.ospartnership(partnership_id) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.osshed DROP CONSTRAINT osshed_partnership_id_fkey;
       public       postgres    false    280    282    3237            ^           2606    78225     osshed osshed_statusshed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.osshed
    ADD CONSTRAINT osshed_statusshed_id_fkey FOREIGN KEY (statusshed_id) REFERENCES public.mdshedstatus(shed_status_id) ON UPDATE CASCADE ON DELETE CASCADE;
 J   ALTER TABLE ONLY public.osshed DROP CONSTRAINT osshed_statusshed_id_fkey;
       public       postgres    false    282    269    3205            _           2606    78230    ossilo ossilo_center_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ossilo
    ADD CONSTRAINT ossilo_center_id_fkey FOREIGN KEY (center_id) REFERENCES public.oscenter(center_id) ON UPDATE CASCADE ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.ossilo DROP CONSTRAINT ossilo_center_id_fkey;
       public       postgres    false    284    3217    274            `           2606    78235    ossilo ossilo_farm_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ossilo
    ADD CONSTRAINT ossilo_farm_id_fkey FOREIGN KEY (farm_id) REFERENCES public.osfarm(farm_id) ON UPDATE CASCADE ON DELETE CASCADE;
 D   ALTER TABLE ONLY public.ossilo DROP CONSTRAINT ossilo_farm_id_fkey;
       public       postgres    false    276    3227    284            b           2606    78240 *   ossilo_osshed ossilo_osshed_center_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ossilo_osshed
    ADD CONSTRAINT ossilo_osshed_center_id_fkey FOREIGN KEY (center_id) REFERENCES public.oscenter(center_id) ON UPDATE CASCADE ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.ossilo_osshed DROP CONSTRAINT ossilo_osshed_center_id_fkey;
       public       postgres    false    274    285    3217            c           2606    78245 (   ossilo_osshed ossilo_osshed_farm_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ossilo_osshed
    ADD CONSTRAINT ossilo_osshed_farm_id_fkey FOREIGN KEY (farm_id) REFERENCES public.osfarm(farm_id) ON UPDATE CASCADE ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.ossilo_osshed DROP CONSTRAINT ossilo_osshed_farm_id_fkey;
       public       postgres    false    3227    285    276            d           2606    78250 /   ossilo_osshed ossilo_osshed_partnership_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ossilo_osshed
    ADD CONSTRAINT ossilo_osshed_partnership_id_fkey FOREIGN KEY (partnership_id) REFERENCES public.ospartnership(partnership_id) ON UPDATE CASCADE ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.ossilo_osshed DROP CONSTRAINT ossilo_osshed_partnership_id_fkey;
       public       postgres    false    280    3237    285            e           2606    78255 (   ossilo_osshed ossilo_osshed_shed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ossilo_osshed
    ADD CONSTRAINT ossilo_osshed_shed_id_fkey FOREIGN KEY (shed_id) REFERENCES public.osshed(shed_id) ON UPDATE CASCADE ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.ossilo_osshed DROP CONSTRAINT ossilo_osshed_shed_id_fkey;
       public       postgres    false    3243    285    282            f           2606    78260 (   ossilo_osshed ossilo_osshed_silo_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ossilo_osshed
    ADD CONSTRAINT ossilo_osshed_silo_id_fkey FOREIGN KEY (silo_id) REFERENCES public.ossilo(silo_id) ON UPDATE CASCADE ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.ossilo_osshed DROP CONSTRAINT ossilo_osshed_silo_id_fkey;
       public       postgres    false    285    3248    284            a           2606    78265 !   ossilo ossilo_partnership_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ossilo
    ADD CONSTRAINT ossilo_partnership_id_fkey FOREIGN KEY (partnership_id) REFERENCES public.ospartnership(partnership_id) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.ossilo DROP CONSTRAINT ossilo_partnership_id_fkey;
       public       postgres    false    3237    280    284            g           2606    78270 $   oswarehouse oswarehouse_farm_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.oswarehouse
    ADD CONSTRAINT oswarehouse_farm_id_fkey FOREIGN KEY (farm_id) REFERENCES public.osfarm(farm_id) ON UPDATE CASCADE ON DELETE CASCADE;
 N   ALTER TABLE ONLY public.oswarehouse DROP CONSTRAINT oswarehouse_farm_id_fkey;
       public       postgres    false    289    276    3227            h           2606    78275 +   oswarehouse oswarehouse_partnership_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.oswarehouse
    ADD CONSTRAINT oswarehouse_partnership_id_fkey FOREIGN KEY (partnership_id) REFERENCES public.ospartnership(partnership_id) ON UPDATE CASCADE ON DELETE CASCADE;
 U   ALTER TABLE ONLY public.oswarehouse DROP CONSTRAINT oswarehouse_partnership_id_fkey;
       public       postgres    false    280    289    3237            F           2606    78280    mdapplication_rol rol fk    FK CONSTRAINT     |   ALTER TABLE ONLY public.mdapplication_rol
    ADD CONSTRAINT "rol fk" FOREIGN KEY (rol_id) REFERENCES public.mdrol(rol_id);
 D   ALTER TABLE ONLY public.mdapplication_rol DROP CONSTRAINT "rol fk";
       public       postgres    false    3197    265    249            P           2606    78285    mduser rol fk     FK CONSTRAINT     r   ALTER TABLE ONLY public.mduser
    ADD CONSTRAINT "rol fk " FOREIGN KEY (rol_id) REFERENCES public.mdrol(rol_id);
 :   ALTER TABLE ONLY public.mduser DROP CONSTRAINT "rol fk ";
       public       postgres    false    265    273    3197            i           2606    78290 5   txavailabilitysheds txavailabilitysheds_lot_code_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txavailabilitysheds
    ADD CONSTRAINT txavailabilitysheds_lot_code_fkey FOREIGN KEY (lot_code) REFERENCES public.txlot(lot_code) ON UPDATE CASCADE ON DELETE CASCADE;
 _   ALTER TABLE ONLY public.txavailabilitysheds DROP CONSTRAINT txavailabilitysheds_lot_code_fkey;
       public       postgres    false    3343    316    299            j           2606    78295 4   txavailabilitysheds txavailabilitysheds_shed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txavailabilitysheds
    ADD CONSTRAINT txavailabilitysheds_shed_id_fkey FOREIGN KEY (shed_id) REFERENCES public.osshed(shed_id) ON UPDATE CASCADE ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.txavailabilitysheds DROP CONSTRAINT txavailabilitysheds_shed_id_fkey;
       public       postgres    false    282    3243    299            k           2606    78300 !   txbroiler txbroiler_breed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroiler
    ADD CONSTRAINT txbroiler_breed_id_fkey FOREIGN KEY (breed_id) REFERENCES public.mdbreed(breed_id) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.txbroiler DROP CONSTRAINT txbroiler_breed_id_fkey;
       public       postgres    false    3167    250    300            o           2606    78305 1   txbroiler_detail txbroiler_detail_broiler_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroiler_detail
    ADD CONSTRAINT txbroiler_detail_broiler_id_fkey FOREIGN KEY (broiler_id) REFERENCES public.txbroiler(broiler_id) ON UPDATE CASCADE ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.txbroiler_detail DROP CONSTRAINT txbroiler_detail_broiler_id_fkey;
       public       postgres    false    301    300    3271            p           2606    78310 .   txbroiler_detail txbroiler_detail_farm_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroiler_detail
    ADD CONSTRAINT txbroiler_detail_farm_id_fkey FOREIGN KEY (farm_id) REFERENCES public.osfarm(farm_id) ON UPDATE CASCADE ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.txbroiler_detail DROP CONSTRAINT txbroiler_detail_farm_id_fkey;
       public       postgres    false    3227    301    276            q           2606    78315 .   txbroiler_detail txbroiler_detail_shed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroiler_detail
    ADD CONSTRAINT txbroiler_detail_shed_id_fkey FOREIGN KEY (shed_id) REFERENCES public.osshed(shed_id) ON UPDATE CASCADE ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.txbroiler_detail DROP CONSTRAINT txbroiler_detail_shed_id_fkey;
       public       postgres    false    301    282    3243            l           2606    78320 '   txbroiler txbroiler_partnership_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroiler
    ADD CONSTRAINT txbroiler_partnership_id_fkey FOREIGN KEY (partnership_id) REFERENCES public.ospartnership(partnership_id) ON UPDATE CASCADE ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.txbroiler DROP CONSTRAINT txbroiler_partnership_id_fkey;
       public       postgres    false    280    3237    300            m           2606    78325 +   txbroiler txbroiler_programmed_eggs_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroiler
    ADD CONSTRAINT txbroiler_programmed_eggs_id_fkey FOREIGN KEY (programmed_eggs_id) REFERENCES public.txprogrammed_eggs(programmed_eggs_id) ON UPDATE CASCADE ON DELETE CASCADE;
 U   ALTER TABLE ONLY public.txbroiler DROP CONSTRAINT txbroiler_programmed_eggs_id_fkey;
       public       postgres    false    3355    300    319            n           2606    78330 $   txbroiler txbroiler_scenario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroiler
    ADD CONSTRAINT txbroiler_scenario_id_fkey FOREIGN KEY (scenario_id) REFERENCES public.mdscenario(scenario_id) ON UPDATE CASCADE ON DELETE CASCADE;
 N   ALTER TABLE ONLY public.txbroiler DROP CONSTRAINT txbroiler_scenario_id_fkey;
       public       postgres    false    267    300    3203            r           2606    78335 1   txbroilereviction txbroilereviction_breed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroilereviction
    ADD CONSTRAINT txbroilereviction_breed_id_fkey FOREIGN KEY (breed_id) REFERENCES public.mdbreed(breed_id) ON UPDATE CASCADE ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.txbroilereviction DROP CONSTRAINT txbroilereviction_breed_id_fkey;
       public       postgres    false    3167    302    250            u           2606    78340 A   txbroilereviction_detail txbroilereviction_detail_broiler_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroilereviction_detail
    ADD CONSTRAINT txbroilereviction_detail_broiler_id_fkey FOREIGN KEY (broilereviction_id) REFERENCES public.txbroilereviction(broilereviction_id) ON UPDATE CASCADE ON DELETE CASCADE;
 k   ALTER TABLE ONLY public.txbroilereviction_detail DROP CONSTRAINT txbroilereviction_detail_broiler_id_fkey;
       public       postgres    false    302    303    3281            v           2606    78345 I   txbroilereviction_detail txbroilereviction_detail_broiler_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroilereviction_detail
    ADD CONSTRAINT txbroilereviction_detail_broiler_product_id_fkey FOREIGN KEY (broiler_product_id) REFERENCES public.mdbroiler_product(broiler_product_id) ON UPDATE CASCADE ON DELETE CASCADE;
 s   ALTER TABLE ONLY public.txbroilereviction_detail DROP CONSTRAINT txbroilereviction_detail_broiler_product_id_fkey;
       public       postgres    false    251    303    3169            w           2606    78350 >   txbroilereviction_detail txbroilereviction_detail_farm_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroilereviction_detail
    ADD CONSTRAINT txbroilereviction_detail_farm_id_fkey FOREIGN KEY (farm_id) REFERENCES public.osfarm(farm_id) ON UPDATE CASCADE ON DELETE CASCADE;
 h   ALTER TABLE ONLY public.txbroilereviction_detail DROP CONSTRAINT txbroilereviction_detail_farm_id_fkey;
       public       postgres    false    276    303    3227            x           2606    78355 >   txbroilereviction_detail txbroilereviction_detail_shed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroilereviction_detail
    ADD CONSTRAINT txbroilereviction_detail_shed_id_fkey FOREIGN KEY (shed_id) REFERENCES public.osshed(shed_id) ON UPDATE CASCADE ON DELETE CASCADE;
 h   ALTER TABLE ONLY public.txbroilereviction_detail DROP CONSTRAINT txbroilereviction_detail_shed_id_fkey;
       public       postgres    false    282    303    3243            y           2606    78360 H   txbroilereviction_detail txbroilereviction_detail_slaughterhouse_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroilereviction_detail
    ADD CONSTRAINT txbroilereviction_detail_slaughterhouse_id_fkey FOREIGN KEY (slaughterhouse_id) REFERENCES public.osslaughterhouse(slaughterhouse_id) ON UPDATE CASCADE ON DELETE CASCADE;
 r   ALTER TABLE ONLY public.txbroilereviction_detail DROP CONSTRAINT txbroilereviction_detail_slaughterhouse_id_fkey;
       public       postgres    false    287    303    3257            s           2606    78365 7   txbroilereviction txbroilereviction_partnership_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroilereviction
    ADD CONSTRAINT txbroilereviction_partnership_id_fkey FOREIGN KEY (partnership_id) REFERENCES public.ospartnership(partnership_id) ON UPDATE CASCADE ON DELETE CASCADE;
 a   ALTER TABLE ONLY public.txbroilereviction DROP CONSTRAINT txbroilereviction_partnership_id_fkey;
       public       postgres    false    280    302    3237            t           2606    78370 4   txbroilereviction txbroilereviction_scenario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroilereviction
    ADD CONSTRAINT txbroilereviction_scenario_id_fkey FOREIGN KEY (scenario_id) REFERENCES public.mdscenario(scenario_id) ON UPDATE CASCADE ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.txbroilereviction DROP CONSTRAINT txbroilereviction_scenario_id_fkey;
       public       postgres    false    302    267    3203            z           2606    78375 C   txbroilerproduct_detail txbroilerproduct_detail_broiler_detail_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroilerproduct_detail
    ADD CONSTRAINT txbroilerproduct_detail_broiler_detail_fkey FOREIGN KEY (broiler_detail) REFERENCES public.txbroiler_detail(broiler_detail_id) ON UPDATE CASCADE ON DELETE CASCADE;
 m   ALTER TABLE ONLY public.txbroilerproduct_detail DROP CONSTRAINT txbroilerproduct_detail_broiler_detail_fkey;
       public       postgres    false    304    301    3276            {           2606    78380 .   txbroodermachine txbroodermachine_farm_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroodermachine
    ADD CONSTRAINT txbroodermachine_farm_id_fkey FOREIGN KEY (farm_id) REFERENCES public.osfarm(farm_id) ON UPDATE CASCADE ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.txbroodermachine DROP CONSTRAINT txbroodermachine_farm_id_fkey;
       public       postgres    false    3227    305    276            |           2606    78385 5   txbroodermachine txbroodermachine_partnership_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroodermachine
    ADD CONSTRAINT txbroodermachine_partnership_id_fkey FOREIGN KEY (partnership_id) REFERENCES public.ospartnership(partnership_id) ON UPDATE CASCADE ON DELETE CASCADE;
 _   ALTER TABLE ONLY public.txbroodermachine DROP CONSTRAINT txbroodermachine_partnership_id_fkey;
       public       postgres    false    280    305    3237            }           2606    78390 ,   txcalendarday txcalendarday_calendar_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txcalendarday
    ADD CONSTRAINT txcalendarday_calendar_id_fkey FOREIGN KEY (calendar_id) REFERENCES public.txcalendar(calendar_id) ON UPDATE CASCADE ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.txcalendarday DROP CONSTRAINT txcalendarday_calendar_id_fkey;
       public       postgres    false    306    307    3298            ~           2606    78395 -   txeggs_planning txeggs_planning_breed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txeggs_planning
    ADD CONSTRAINT txeggs_planning_breed_id_fkey FOREIGN KEY (breed_id) REFERENCES public.mdbreed(breed_id) ON UPDATE CASCADE ON DELETE CASCADE;
 W   ALTER TABLE ONLY public.txeggs_planning DROP CONSTRAINT txeggs_planning_breed_id_fkey;
       public       postgres    false    308    250    3167                       2606    78400 0   txeggs_planning txeggs_planning_scenario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txeggs_planning
    ADD CONSTRAINT txeggs_planning_scenario_id_fkey FOREIGN KEY (scenario_id) REFERENCES public.mdscenario(scenario_id);
 Z   ALTER TABLE ONLY public.txeggs_planning DROP CONSTRAINT txeggs_planning_scenario_id_fkey;
       public       postgres    false    308    267    3203            �           2606    78405 -   txeggs_required txeggs_required_breed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txeggs_required
    ADD CONSTRAINT txeggs_required_breed_id_fkey FOREIGN KEY (breed_id) REFERENCES public.mdbreed(breed_id);
 W   ALTER TABLE ONLY public.txeggs_required DROP CONSTRAINT txeggs_required_breed_id_fkey;
       public       postgres    false    309    250    3167            �           2606    78410 0   txeggs_required txeggs_required_scenario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txeggs_required
    ADD CONSTRAINT txeggs_required_scenario_id_fkey FOREIGN KEY (scenario_id) REFERENCES public.mdscenario(scenario_id);
 Z   ALTER TABLE ONLY public.txeggs_required DROP CONSTRAINT txeggs_required_scenario_id_fkey;
       public       postgres    false    267    309    3203            �           2606    78415 +   txeggs_storage txeggs_storage_breed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txeggs_storage
    ADD CONSTRAINT txeggs_storage_breed_id_fkey FOREIGN KEY (breed_id) REFERENCES public.mdbreed(breed_id);
 U   ALTER TABLE ONLY public.txeggs_storage DROP CONSTRAINT txeggs_storage_breed_id_fkey;
       public       postgres    false    3167    250    310            �           2606    78420 5   txeggs_storage txeggs_storage_incubator_plant_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txeggs_storage
    ADD CONSTRAINT txeggs_storage_incubator_plant_id_fkey FOREIGN KEY (incubator_plant_id) REFERENCES public.osincubatorplant(incubator_plant_id);
 _   ALTER TABLE ONLY public.txeggs_storage DROP CONSTRAINT txeggs_storage_incubator_plant_id_fkey;
       public       postgres    false    3233    310    278            �           2606    78425 .   txeggs_storage txeggs_storage_scenario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txeggs_storage
    ADD CONSTRAINT txeggs_storage_scenario_id_fkey FOREIGN KEY (scenario_id) REFERENCES public.mdscenario(scenario_id);
 X   ALTER TABLE ONLY public.txeggs_storage DROP CONSTRAINT txeggs_storage_scenario_id_fkey;
       public       postgres    false    310    267    3203            �           2606    78430 '   txgoals_erp txgoals_erp_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txgoals_erp
    ADD CONSTRAINT txgoals_erp_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.mdproduct(product_id);
 Q   ALTER TABLE ONLY public.txgoals_erp DROP CONSTRAINT txgoals_erp_product_id_fkey;
       public       postgres    false    263    3195    311            �           2606    78435 (   txgoals_erp txgoals_erp_scenario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txgoals_erp
    ADD CONSTRAINT txgoals_erp_scenario_id_fkey FOREIGN KEY (scenario_id) REFERENCES public.mdscenario(scenario_id);
 R   ALTER TABLE ONLY public.txgoals_erp DROP CONSTRAINT txgoals_erp_scenario_id_fkey;
       public       postgres    false    3203    267    311            �           2606    78440 $   txholiday txholiday_calendar_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txholiday
    ADD CONSTRAINT txholiday_calendar_id_fkey FOREIGN KEY (calendar_id) REFERENCES public.txcalendar(calendar_id);
 N   ALTER TABLE ONLY public.txholiday DROP CONSTRAINT txholiday_calendar_id_fkey;
       public       postgres    false    313    306    3298            �           2606    78445 '   txhousingway txhousingway_breed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txhousingway
    ADD CONSTRAINT txhousingway_breed_id_fkey FOREIGN KEY (breed_id) REFERENCES public.mdbreed(breed_id) ON UPDATE CASCADE ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.txhousingway DROP CONSTRAINT txhousingway_breed_id_fkey;
       public       postgres    false    314    250    3167            �           2606    78450 4   txhousingway_detail txhousingway_detail_farm_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txhousingway_detail
    ADD CONSTRAINT txhousingway_detail_farm_id_fkey FOREIGN KEY (farm_id) REFERENCES public.osfarm(farm_id) ON UPDATE CASCADE ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.txhousingway_detail DROP CONSTRAINT txhousingway_detail_farm_id_fkey;
       public       postgres    false    315    3227    276            �           2606    78455 ;   txhousingway_detail txhousingway_detail_housing_way_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txhousingway_detail
    ADD CONSTRAINT txhousingway_detail_housing_way_id_fkey FOREIGN KEY (housing_way_id) REFERENCES public.txhousingway(housing_way_id) ON UPDATE CASCADE ON DELETE CASCADE;
 e   ALTER TABLE ONLY public.txhousingway_detail DROP CONSTRAINT txhousingway_detail_housing_way_id_fkey;
       public       postgres    false    3329    314    315            �           2606    78460 4   txhousingway_detail txhousingway_detail_shed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txhousingway_detail
    ADD CONSTRAINT txhousingway_detail_shed_id_fkey FOREIGN KEY (shed_id) REFERENCES public.osshed(shed_id) ON UPDATE CASCADE ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.txhousingway_detail DROP CONSTRAINT txhousingway_detail_shed_id_fkey;
       public       postgres    false    315    3243    282            �           2606    78465 -   txhousingway txhousingway_partnership_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txhousingway
    ADD CONSTRAINT txhousingway_partnership_id_fkey FOREIGN KEY (partnership_id) REFERENCES public.ospartnership(partnership_id) ON UPDATE CASCADE ON DELETE CASCADE;
 W   ALTER TABLE ONLY public.txhousingway DROP CONSTRAINT txhousingway_partnership_id_fkey;
       public       postgres    false    3237    280    314            �           2606    78470 *   txhousingway txhousingway_scenario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txhousingway
    ADD CONSTRAINT txhousingway_scenario_id_fkey FOREIGN KEY (scenario_id) REFERENCES public.mdscenario(scenario_id) ON UPDATE CASCADE ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.txhousingway DROP CONSTRAINT txhousingway_scenario_id_fkey;
       public       postgres    false    314    3203    267            �           2606    78475 '   txhousingway txhousingway_stage_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txhousingway
    ADD CONSTRAINT txhousingway_stage_id_fkey FOREIGN KEY (stage_id) REFERENCES public.mdstage(stage_id);
 Q   ALTER TABLE ONLY public.txhousingway DROP CONSTRAINT txhousingway_stage_id_fkey;
       public       postgres    false    3209    271    314            �           2606    78480    txlot txlot_breed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txlot
    ADD CONSTRAINT txlot_breed_id_fkey FOREIGN KEY (breed_id) REFERENCES public.mdbreed(breed_id);
 C   ALTER TABLE ONLY public.txlot DROP CONSTRAINT txlot_breed_id_fkey;
       public       postgres    false    3167    250    316            �           2606    78485    txlot txlot_farm_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txlot
    ADD CONSTRAINT txlot_farm_id_fkey FOREIGN KEY (farm_id) REFERENCES public.osfarm(farm_id) ON UPDATE CASCADE ON DELETE CASCADE;
 B   ALTER TABLE ONLY public.txlot DROP CONSTRAINT txlot_farm_id_fkey;
       public       postgres    false    3227    276    316            �           2606    78490    txlot txlot_housing_way_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txlot
    ADD CONSTRAINT txlot_housing_way_id_fkey FOREIGN KEY (housing_way_id) REFERENCES public.txhousingway(housing_way_id) ON UPDATE CASCADE ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.txlot DROP CONSTRAINT txlot_housing_way_id_fkey;
       public       postgres    false    3329    314    316            �           2606    78495 !   txlot txlot_process_class_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txlot
    ADD CONSTRAINT txlot_process_class_id_fkey FOREIGN KEY (process_class_id) REFERENCES public.mdprocessclass(process_class_id);
 K   ALTER TABLE ONLY public.txlot DROP CONSTRAINT txlot_process_class_id_fkey;
       public       postgres    false    316    261    3191            �           2606    78500    txlot txlot_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txlot
    ADD CONSTRAINT txlot_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.mdproduct(product_id);
 E   ALTER TABLE ONLY public.txlot DROP CONSTRAINT txlot_product_id_fkey;
       public       postgres    false    263    316    3195            �           2606    78505    txlot txlot_shed_id_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY public.txlot
    ADD CONSTRAINT txlot_shed_id_fkey FOREIGN KEY (shed_id) REFERENCES public.osshed(shed_id);
 B   ALTER TABLE ONLY public.txlot DROP CONSTRAINT txlot_shed_id_fkey;
       public       postgres    false    316    282    3243            �           2606    78510 +   txposturecurve txposturecurve_breed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txposturecurve
    ADD CONSTRAINT txposturecurve_breed_id_fkey FOREIGN KEY (breed_id) REFERENCES public.mdbreed(breed_id) ON UPDATE CASCADE ON DELETE CASCADE;
 U   ALTER TABLE ONLY public.txposturecurve DROP CONSTRAINT txposturecurve_breed_id_fkey;
       public       postgres    false    250    3167    318            �           2606    78515 1   txprogrammed_eggs txprogrammed_eggs_breed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txprogrammed_eggs
    ADD CONSTRAINT txprogrammed_eggs_breed_id_fkey FOREIGN KEY (breed_id) REFERENCES public.mdbreed(breed_id) ON UPDATE CASCADE ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.txprogrammed_eggs DROP CONSTRAINT txprogrammed_eggs_breed_id_fkey;
       public       postgres    false    3167    319    250            �           2606    78520 8   txprogrammed_eggs txprogrammed_eggs_eggs_storage_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txprogrammed_eggs
    ADD CONSTRAINT txprogrammed_eggs_eggs_storage_id_fkey FOREIGN KEY (eggs_storage_id) REFERENCES public.txeggs_storage(eggs_storage_id) ON UPDATE CASCADE ON DELETE CASCADE;
 b   ALTER TABLE ONLY public.txprogrammed_eggs DROP CONSTRAINT txprogrammed_eggs_eggs_storage_id_fkey;
       public       postgres    false    319    310    3316            �           2606    78525 5   txprogrammed_eggs txprogrammed_eggs_incubator_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txprogrammed_eggs
    ADD CONSTRAINT txprogrammed_eggs_incubator_id_fkey FOREIGN KEY (incubator_id) REFERENCES public.osincubator(incubator_id) ON UPDATE CASCADE ON DELETE CASCADE;
 _   ALTER TABLE ONLY public.txprogrammed_eggs DROP CONSTRAINT txprogrammed_eggs_incubator_id_fkey;
       public       postgres    false    277    3230    319            �           2606    78530 3   txscenarioformula txscenarioformula_measure_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txscenarioformula
    ADD CONSTRAINT txscenarioformula_measure_id_fkey FOREIGN KEY (measure_id) REFERENCES public.mdmeasure(measure_id) ON UPDATE CASCADE ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public.txscenarioformula DROP CONSTRAINT txscenarioformula_measure_id_fkey;
       public       postgres    false    320    3177    255            �           2606    78535 5   txscenarioformula txscenarioformula_parameter_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txscenarioformula
    ADD CONSTRAINT txscenarioformula_parameter_id_fkey FOREIGN KEY (parameter_id) REFERENCES public.mdparameter(parameter_id) ON UPDATE CASCADE ON DELETE CASCADE;
 _   ALTER TABLE ONLY public.txscenarioformula DROP CONSTRAINT txscenarioformula_parameter_id_fkey;
       public       postgres    false    320    257    3181            �           2606    78540 3   txscenarioformula txscenarioformula_process_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txscenarioformula
    ADD CONSTRAINT txscenarioformula_process_id_fkey FOREIGN KEY (process_id) REFERENCES public.mdprocess(process_id) ON UPDATE CASCADE;
 ]   ALTER TABLE ONLY public.txscenarioformula DROP CONSTRAINT txscenarioformula_process_id_fkey;
       public       postgres    false    320    259    3188            �           2606    78545 4   txscenarioformula txscenarioformula_scenario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txscenarioformula
    ADD CONSTRAINT txscenarioformula_scenario_id_fkey FOREIGN KEY (scenario_id) REFERENCES public.mdscenario(scenario_id) ON UPDATE CASCADE ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.txscenarioformula DROP CONSTRAINT txscenarioformula_scenario_id_fkey;
       public       postgres    false    320    267    3203            �           2606    78550 )   txscenariohen txscenariohen_breed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txscenariohen
    ADD CONSTRAINT txscenariohen_breed_id_fkey FOREIGN KEY (breed_id) REFERENCES public.mdbreed(breed_id) ON UPDATE CASCADE ON DELETE CASCADE;
 S   ALTER TABLE ONLY public.txscenariohen DROP CONSTRAINT txscenariohen_breed_id_fkey;
       public       postgres    false    321    250    3167            �           2606    78555 ,   txscenariohen txscenariohen_scenario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txscenariohen
    ADD CONSTRAINT txscenariohen_scenario_id_fkey FOREIGN KEY (scenario_id) REFERENCES public.mdscenario(scenario_id) ON UPDATE CASCADE ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.txscenariohen DROP CONSTRAINT txscenariohen_scenario_id_fkey;
       public       postgres    false    321    267    3203            �           2606    78560 9   txscenarioparameter txscenarioparameter_parameter_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txscenarioparameter
    ADD CONSTRAINT txscenarioparameter_parameter_id_fkey FOREIGN KEY (parameter_id) REFERENCES public.mdparameter(parameter_id) ON UPDATE CASCADE ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.txscenarioparameter DROP CONSTRAINT txscenarioparameter_parameter_id_fkey;
       public       postgres    false    257    3181    322            �           2606    78565 7   txscenarioparameter txscenarioparameter_process_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txscenarioparameter
    ADD CONSTRAINT txscenarioparameter_process_id_fkey FOREIGN KEY (process_id) REFERENCES public.mdprocess(process_id) ON UPDATE CASCADE ON DELETE CASCADE;
 a   ALTER TABLE ONLY public.txscenarioparameter DROP CONSTRAINT txscenarioparameter_process_id_fkey;
       public       postgres    false    322    259    3188            �           2606    78570 8   txscenarioparameter txscenarioparameter_scenario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txscenarioparameter
    ADD CONSTRAINT txscenarioparameter_scenario_id_fkey FOREIGN KEY (scenario_id) REFERENCES public.mdscenario(scenario_id) ON UPDATE CASCADE ON DELETE CASCADE;
 b   ALTER TABLE ONLY public.txscenarioparameter DROP CONSTRAINT txscenarioparameter_scenario_id_fkey;
       public       postgres    false    3203    322    267            �           2606    78575 ?   txscenarioparameterday txscenarioparameterday_parameter_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txscenarioparameterday
    ADD CONSTRAINT txscenarioparameterday_parameter_id_fkey FOREIGN KEY (parameter_id) REFERENCES public.mdparameter(parameter_id);
 i   ALTER TABLE ONLY public.txscenarioparameterday DROP CONSTRAINT txscenarioparameterday_parameter_id_fkey;
       public       postgres    false    257    323    3181            �           2606    78580 >   txscenarioparameterday txscenarioparameterday_scenario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txscenarioparameterday
    ADD CONSTRAINT txscenarioparameterday_scenario_id_fkey FOREIGN KEY (scenario_id) REFERENCES public.mdscenario(scenario_id);
 h   ALTER TABLE ONLY public.txscenarioparameterday DROP CONSTRAINT txscenarioparameterday_scenario_id_fkey;
       public       postgres    false    267    323    3203            �           2606    78585 ;   txscenarioposturecurve txscenarioposturecurve_breed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txscenarioposturecurve
    ADD CONSTRAINT txscenarioposturecurve_breed_id_fkey FOREIGN KEY (breed_id) REFERENCES public.mdbreed(breed_id) ON UPDATE CASCADE ON DELETE CASCADE;
 e   ALTER TABLE ONLY public.txscenarioposturecurve DROP CONSTRAINT txscenarioposturecurve_breed_id_fkey;
       public       postgres    false    250    324    3167            �           2606    78590 G   txscenarioposturecurve txscenarioposturecurve_housingway_detail_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txscenarioposturecurve
    ADD CONSTRAINT txscenarioposturecurve_housingway_detail_id_fkey FOREIGN KEY (housingway_detail_id) REFERENCES public.txhousingway_detail(housingway_detail_id) ON UPDATE CASCADE ON DELETE CASCADE;
 q   ALTER TABLE ONLY public.txscenarioposturecurve DROP CONSTRAINT txscenarioposturecurve_housingway_detail_id_fkey;
       public       postgres    false    315    324    3335            �           2606    78595 >   txscenarioposturecurve txscenarioposturecurve_scenario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txscenarioposturecurve
    ADD CONSTRAINT txscenarioposturecurve_scenario_id_fkey FOREIGN KEY (scenario_id) REFERENCES public.mdscenario(scenario_id) ON UPDATE CASCADE ON DELETE CASCADE;
 h   ALTER TABLE ONLY public.txscenarioposturecurve DROP CONSTRAINT txscenarioposturecurve_scenario_id_fkey;
       public       postgres    false    324    267    3203            �           2606    78600 3   txscenarioprocess txscenarioprocess_process_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txscenarioprocess
    ADD CONSTRAINT txscenarioprocess_process_id_fkey FOREIGN KEY (process_id) REFERENCES public.mdprocess(process_id) ON UPDATE CASCADE ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public.txscenarioprocess DROP CONSTRAINT txscenarioprocess_process_id_fkey;
       public       postgres    false    325    259    3188            �           2606    78605 4   txscenarioprocess txscenarioprocess_scenario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txscenarioprocess
    ADD CONSTRAINT txscenarioprocess_scenario_id_fkey FOREIGN KEY (scenario_id) REFERENCES public.mdscenario(scenario_id) ON UPDATE CASCADE ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.txscenarioprocess DROP CONSTRAINT txscenarioprocess_scenario_id_fkey;
       public       postgres    false    325    267    3203            $      x������ � �      &      x������ � �      (      x������ � �      *      x�32�4�4����� 8�      ,      x�340�42�4��4�1~@����� 9�;      .      x������ � �      0      x�3��4�4����� ��      2      x������ � �      4      x������ � �      5      x������ � �      U   �   x�}��j�@�gݻ��i��kC��<@�8��tw���ƄL>}�%5�ċ��/D�3��0�JhV�!�[봨�մ7�<bh֎
��ZYj1�th�`4)+(/��S�������ˈ:���P�k;_ÀRHx`��/�#�Z�Ž���Qs�F�j#͇l��,c�X9��x,�����B�d-
�4���#?���#��f��k�Ɖ�      W   s   x�5��D!�C0[�>�\6�8v�(����x�yI��ߖt��J���@�f
dc��M�Qש�wz�`J���o������8�6�^�"�B�>����j�~��r`M      X      x�34�40�L�OJ����� f#      Y   %   x�32�,(�O)M.�W0�41�4�3�D\1z\\\ �	G      Z   9   x�3�J-(�O)MN�<�9�ˈ�5/=�(%�˘�'�,1�$U�R�����D�=... �6>      [      x�3���K)-.)�LT0����� 9V�      ]   /   x�34���LIL���440�4�0�2r\��S����\1z\\\ �	F      _   e   x�e�1
�0��99EN 
J���K�Q��Zz~Q�����4y!��%�tpb*3���%��섉�z����ǰ��3��ňi�(��j�?�Mp��rW*�      a   �   x��P1�0�/���6i�1����ڂ*����o�>��v���c_��}'�h(X�-2�\%;V������! ���Q��&D"��Y��1�YG UJ�E�&�d�Ao������0ɉ����(������\&������U_N�z}�����7K��~�J)�b�߆kl+:пmO�1�=LY�      c   F   x�3�t�K�/JI�4�2���K.MJL�<�9�7�J-(�O)M���r:^��P���Z��W����� =�s      e   b   x�5��	�0@�s2E&�V��	\�K�Q�H��_=x����9��̥���2M�Z�c^�㖦���\0N�ǯ^�>�)	ɹ�%��A�)���v�      g   �   x���=��0�g�W�4��8M�����naa� �H\+����G�@|��y��_���r�ӱ������;��?�f�e`$W��Ȕ胶�D�ou�� $�ǟ�v{B���]��sG��g�lώ����V$��X� �������|�,�����@�,bm�@����E��j{��z��M۴Ih�5��YgɩR�;12HV�(�_��      i      x������ � �      k   �   x�}�M�@���N�	����wz7e��fl'��#��(���}}/msWHM��E�(���]X��a���U�9z1���3y��c���^���kj�㓝�U:���DG҆Uޏ��qmܓ��l���oҫC@>M|�R�t�p� x ��l#      m   N   x�3�4�t�K�/JI�2�4���K.MJL����2�4�J-(�O)M.�/J,�2�4�t.:�6Q�R�'�,1�$�+F��� ۏ�      o   �  x���ɒ�J�����mc&s��(@�����AR��o�˺Q�:��FddD.�����I�4m�eM=��3d���Ʊ2_B����O�n��d��h�z��@`�X�S{�đ �ߤ~ݟ�-�yC�P���� T �@��d���Ӳ���q�t'V�5��M�b!b;oH�������2�q��3�Hc��MaԘ�o{��3�D$y��c�"9�~ou�2��:Hϸ��&�<�����|�]O}��H�PFY�~����ސUx��!'xtV�>~X�&���"z=��dI�V���=s.��+u�|_���tf��s״�����k�K�!�{H`�!��@�O5���@ �bf,U^:f%�fyԀp����ͪ׉|=#����x~p�i��-U��>d~��~��W d+�H�cHt[��ŎQ;�e~�U�>��iAD�n�DZ��l��j��^\o�M|�J�Mmn
���>�H���
+( 0"'��|� �'���u�UN\];	9lnhu�[�e����騸lS�d��ES%�=,��|�X���Tx��"e��^@��os�xP������e�/����̊�ׁ�:�i�|I�k�B�X6ׁ�쳜z��S������;P|H�x�q�����>�Q�6�@ӫ4s����6ƍz��S7��K��J�	9�S�ܕhM���b��v��Z�~+!�C��On�^v      p   �   x�%Ͻ�0���2E&@>;�%TE!
�SK�F!4l� L�Ÿ������5`V��A�[��J�j8�>0�`�b����ab��ut��'��Vs�[�k&�Q5�h�r칸��p�����ʒB��%��^!��6���RrFq.�@��Sڒ�'�^��E�\�p]మ�c(�>���|�m�$�6?9      q      x������ � �      r   �   x�M�1�0Eg�=rҦ-#�PT!�X��*A!A�,܆�p1�xa�����,���@�՝&��8��(�����~F
I���}HT0�NFn�L��y�p0�/�DϚB�&ZA���z�o�F"Ғ�5BGO����[�W)K��q��Y����r�wd�APĬ�,���}�ӍJ����@�6�.�,�~v9?      s   I   x�32�4���J�M-.O�40��b��K3�`✆&&���H���E�P��V� D7�~�=... iI      t   3   x�3��H,�,��4245��I�+ITHIU(H,J	pZps��qqq &M�      v   �   x�U��j�0D��W�#;�����:E[֒i ��@9�!���X��˰;�f㍨`f4��4�)k���\�]/��9e	�|�+\�S��PsQ&(͜�@�U����#���1ߦ���nk�3�t/:�;�/<��3�#��*�W��bd�a���r��n�L�-8���^~��u�iW����> A`>O      x   �   x�}��� ��g����&ȭd�9����4A��<�����\A�q�χE����%d�d��/S����P��a׫�W>�m�)�T���PV�v�?7k���oU"*������i]�\W5݌b��M�P%��Pk{�]�P�hΉ�2����R� �dT�      z      x������ � �      {      x������ � �      }   a   x�M�1
�0@�99EO ��t<��m��J"��۱��'X�M����ʻ$1�0�'���.���5=x y8US(Gf*���ҽ_'$#9<�"���"_         v   x�uϻ�0���T�*{z 
���S� �ܽ�#���v��2ɲ����{x|{ۃ( ���d�� ���
3�
��r��b�BA2 
F�5�Dy�������An�ι?ݔ^V      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   O   x�34�LN�I�KI,��WHIU((*MMJ��IL�/JL�IEb���Ur:;����8���*� �����06�4����� ��d      �      x�|�m�-;����ŝ@�o��G��G�{�a�)� �*���<;�K�C��]�<�<�M��R��<������������<o+���������O��T%��������ʐj�Ty�TyoR�T�T'����M�������������_���7qj���&	e%�oB��P��"������Oh�PI�*�z��g�	�DBM	���'� �I�+�~� �P*�4�Ҹ)���	���Oiޔ~H0xo���J��s@��{?�RxT~�|oR?$������w�-�W���I:<����I��<��������|�˓ty�7)�|>��J��v�2/�郜���S�I�̐a�AVO��iܤ~f��� �'��4o~f�0� �'i���?�'�r{�n��M�g��r{�n��&�3C���=��y�I�̐��An�����w13��ܞ��s�I���In��������In����_��n���,ݞ�Mʊ�}��c���7��
�>����I����n���X���ߛ��n���X���M�g�����Y�A�I��^(0�\�$�����O�)���%%������lN��W"%���]	%3��2)��&�R((�|Pa�UHI<3y�BA�g�
��JJ�ɻ
J?T�|5ROL޵P���
��NJ�ɻ�?���q*�Z({-�~6�0�"��Z({-�l� �/r�����BAʌ�yz_������U�	R�sUe����YaA�~�����Ba���9]�B�k���~R	RduUe�����-C���j��P����H��U-��
R����"��Z({-�~fhR�vUe������C�ܮj��PX`f���]�B�k���~Rp{"��Z({-��p{"��Z({-�~f�p{"��Z({-�~f�p{"��Z({-��� �'r�����BA�g��'r�����Ba��nO�ۋ�:�Qu��Q?%�=MR-G��G�g���EJ ����	�z~II��U�%3��)	{�����d>��s&%��rT�����BJeW��l�+)	o�]uğ�S��s#%aͲ����s���s?�T�Q��R?�<��U�Q��R?�<��U�Q��R?#�<��U��__s|^���(^u�f���U�Q��?�'�r��:�WA�g�	��U���x��~f��z!����x��~f�0{!����x��~f�p{!����x��~f�p{!����x�X�n/�vUu�:���I��ܮ���UG�23��ܮ���UG�23��ܮ���UG�23��|E��uK�ۂ߯}�W����U�R%ݤ~����`;~W��K!U����V��VH�+��W�� �`�$��ԺIY����OTS�}�����򻿢#��W'���s�vӲ�s��$��2�5o���n8���=�����Z����ώk՛�q�ǟ���űk_Є%2,��+��ܧ�M�<����Cۤ��s|��%2L�B�4}ۦR�ӟ]�&M߶���f�ӟ�&M���A�Q`���֤雛>ht��g�I�77}��3D���NQ��on��e��VQJgS�I�77}�/���ʤ��Ѥ雛>h�%� Ig��I�77}X 2h�O箾S���O�I�%��O����^gK���9��t�T;o,���ϕ!�SM箰��I�">h�!�/L��s1�Z�(C`��O��Ե�M��=O:w��@�#��fl/�Y���ih]�9�|:k����7-���t�������|��@}��JpHӏm� e�@%�{�R��c�~��I��������6}�Æ��:��釛>,0C,��e��n��ed���[#-a��ZA_����i���V>�0������M� �a�3�2�釛~�-I��'��̀i��Z��L�-&��5w�.|n�8��g�aS�T�I�#2LF&7+�ԸI�!2L��ɝ�����a�����"�V�i�!
L"�������/P�(0����!�������'[��K�Z{��#
L��<�v�2KT���S�y��a�/�^m��o���'	�	���K��SnRf	а|r�%�k�V�V1�
�ER�k����'�,e�����AX`� L�'�Xr�|����DK������ ��%�����f�@K>���%���A��AZ�=�|��׊i��g[w�����A�2O����jz�O�Rt���J�.0O����f忥]j���y��|��-]Rkݴ���k>���Gh}����f���FbM�����b��u���b�W^ab�~K��?����Q�|���VI�j�z[a���?����-6nb��y��#<����Վ}ob�za�#��,����():�$���'c�vӲ�X���n��К�@��$��H�&K�
�o��,#�a�#]�,ԫ��m��"��G�3�`�Ol������d����S�71�E����b�`�;V(c��H&a*�~3g����%<*��+��F����[���;���?�e)k��^\`ƨ���JY��ݢ��)�r�R���pYC��J�ReH�o���%�'E�P�����"9�I�)Z���_}�\��W�w�ۈ��_�;���*P�F@m��3nJ�f������_��_в6�=�N�Km���O��
��R����e}&|y��`I����H�L��R����`0~��_��_X`�&|w������U��-��:�A@Y�=�&e���;	(Ϸ�� s��`�I@��=�&�A#�~P�on��L�_D����������/e�����x�,r��on��e��Wƻ~)�77}��Bw�%��L����%���^��*�77}�2O Κ^2��v4�vDrdZ�%� ����G
�
͡D@u;��o��#��L�(��v�gݤ��L�Ku;�w;�x��З�vt�v���8tD� [�ݎ�ݎ�e�@�-e�_��ѽ�ɑi�����vt�v-srY��Rݎ�ݎ��,�T*�T��{�#ha�������s�����+a e��8���zR%
�L?�u�2C ד�/e�ᦏ�ȴ`�F�K�~�郖��Ig�'�Ok�X����/e��Z V0}'��L?��A#�0}'��L?���X�	ٞ�	~)�7}в&�=iP4t>���R&�� ��Χݤ�H��A@������x��'A EC��Р^�OB_��N��A��hO:�=S���44�3�=i�R4��/�`�/�_��N���4���/EC�o���Yٞ�~���qX`�@�'����`=W.^�^�K@��AC�HBe${�K@����U�@�''� j�|����JD���� �߯�&h�ў%���A��h%���}�u[ `�.h&�����A��lO����`�� h�%��ə���,��c�@�'" ���\s�����W ���%G``�B����jh���yٞ\���t�?�� V0~%��4���8s�=����[��W�71�>��J�%`��`V�~# �5 ��&fhd|r# �5 ��9��#������Ol�Ĭ��O�d��XI�`V�' �hz�?�ZЈ��N @��t��?ZցF�'��K0���0�
�D�$��c���I�|$}R�`�i���`�A�K�Q?%��Y��� ��~�H\a�@�'O`��AQ̌��O��$�C5��9y���I0�XD�f�������Q�a��G�'em�}��@G��@s^�R���D-�	-�_��~V@\a���Ϡh���⻿@�l�擢�/��+��<��w���[	��_}�M�p@@#��~�q ���yq ���ϼIY�	�o#�~շ~a�5����vb_j�W}���� :S$I�Ҹia�$��R[��ǵ��=�A�Km��o���H� ���~շ~�8��Ϙh�[��[�������A$@y�#�H�%|s��@�2};F^rK��x'#��M��o�wP�on��s���x�/e��Z@V0�"��L��������/e��Zf|g���2}sӇ@V�����雛>ha���3%ڤ�    ��>h�'M/� ���ϕ�X�=��~G?x�)Ԡ;���~G�m���C�0��wt�w-3B�)�R���@����T��{�#ha�=�L�K�;��;��!�T�~G�~G�9@V0}!�����A50}�_��wt�wDvdZ0}!�L?�t����+� e��M>�@L_�(ӏgܤ���J@�~�郖ўԈ})�����{R#��L?��A�40}�+�Wr���/��	)�7}����;�/e��0Pӟ�!M?��A��LH��N�W!��!��d�"���c������A @������9ٞ4�(:� K)���'�/�C��Рb�O�_��N�a�i`�I�K���<4h�!��I����yh�����/�C��Ѐs0Oӟ�)w��w�A�,�tOZ��Ԗx��8�#�B;�%����Y��2�=�%���i������8���gޤp>.A�ؗ�,�-+��/�?X�?8�4�%�_j�|��H��L�K���";2-�A3�/�?X�?Z��A�L��1h����=9�R������d�B 2��>���y���I��t��<4O ݓ ��~�y�2O ݓ+��e����w�G&�W�_r���A� �i8� ���:�8��o���û�� ���FL:�>��0M�)�b��e��ց~��FL:�>�� �`�N���l���Ȩ	�߉ H2�2�G�Z����N @��}]B\`h�|���$�~9A����/IF���c��Ŀ$�C�#�1_ �'0IF���(h�O"`���a�3����OJ�����Q������$�~Hz\h�������)�Q�4����IY�����H��#񓲶�>!;��?�H������QG1 �1�_��<V��/��)/���W����쟉:���+�_%~�r�&*Œ�w&�J�T���fb��%��ɯ?A8���Q+�D�P~��i�q�4��W�������ˮ�w/��ǿI����b����.��R�?W�@�Xv�8�kw�ԸI�)P*�]*���|]Ky�b٥����Z�e�@�Xv�8��[�V�-0G�T,�~l����e�@�Xv�8��H��}�(-s
Ų���!��/�uA�Xv�8�[6�ּi�'P&�F��њ�/���=QQ%�v�^E�w{���Mp}[$%,�`��ܮE@�Xz&)��
���@���vJ�\��W(-;�b铴�!����wI�_CT�e$����WZ����Ԋ���ϰ�y��(��%^��q�J���̗��{�;�]-0K�8,�0}{��]���(��$%��8'\I�#P��HJ�q(�}ޅ!P��O��a� l�e�@YXV#-�G�Κ�"/ZQ�5IK��c���ea}өK��OPV��
�[IK��

�e�@QX�AZ篶n�~�2K ^�KZKj-_0hnb��:L_���fɕ�YQ��{琪J���?7�
�ERCI���A��)E����3��57�*R������<i�0D��&h�!�%��0D����A�Z�@�����M��-80}�դV�UXA�Z_ҚRk޴�ȁ�z��Iӷm��Y�Z;I	ӷm� e�@x��ER��m�>H�� ���SJ��������i	�ӂ?Zv�{�M��on���ѐ߫=��0}s�-�����멥L���a�ݫ��^탴�雛>h�}F����0}s�-�:��:��E�����|���&�~���U�O�?�&e�@|��ER�}���K����ՙIJ8��>H�!߫��RI�{M�!�߫s��0D��>h�+�~%���^�-3�{u�S+Ct����'���^]���k�{M�����%-��^��PK�քV9��x~��J�<��^{�i��\?7K ���ER��c�>H�#�k)��0�ئR�\�T;��釛~��Z1C ���$-a��Zf��ZN�%L?���oIb�@~��zj)�7}�2C ��� -a��pL_^��n��e�@~��rj)�7}�2O ���a�ɛbh��-��[�,��^+���%��nR���Z�$%1��x�R�'��^��J��7�A���^����!�o��3�{�%����)Zf��Z��V���ɕ�]:��^k���[p��x�}��7��ZIK��o���ݧ��^녴�{p��x�Z꧅�^����'ݤps �7G�;����?'�O��Z���s�䘜ߕ�p��AL�䘜�K��5���Q1/9&�w@F1�>㻣$b^rL��[�����ļ�\�1� L�6h�޿j�'�>7$�/�����Z��i7)��;J�οj�gޤ���-��W-��o� pp�3���p�j&-��;J!ޥZ��߆���_	x��wp��2C�ۣT^�E��m�#��Q*��@Ǿ�]i�vl����t�{ҕ Lߨ��h~�,ȚK��(�Z���惀�����;J�ο"�����_VdR0��ա�c�l�������҉v)��c�����N�K��ݒ�H����w�u����0� �h�nI 8���� �h�nI�2K �]&/E@�wK��i���z��Z��ܤ��I�E-��o��2w�~Q�_Q��L��v)jY|����~�E�KQ�⛽ p��~�E�KQ�⛽�H���K�KQ�⛽H���#��RԲ�f/h�#�//��+������D�Km��o�� :B�z�j�W�|�2K �S���f�>���Ӗ0G �S3u��f�>�&D�h&ڥ6{�˛H����	w��^��&h�!穙x���U/o�@*���R����M�2C �S/�٫^�-s�<��R����M 8f	�yj%�6{�˛�H�W��+ӷ�[�7��]`�J�e�����9i�ڨ�Lߞy��
�o��W�on��e��yj#ܥL���A�ZK/L߈w)�77} 8�T0}'�L���A˚K���N<K����#-2-���R�on��e�%�y� �L���a L?���:��� ��<uP�_�~�?R��y�ο"�������0O���W�{M��H��I�KP^��8O����^�-@*�~�R�{M�!�穋��"��k��e�@��.^��v�郖Yy���R�{M  ڠ/����ǓnRf	�y�K�e��M?d֥!��u����3nR T�&j�+�7}X`�@��%�]���?~�q��w)�7}��B�?�R�n� p���L�K�~�郖9y��	x)�7}�E��^���M� �`�B�W�8����B�E@�s�Yf	�yZ�ֿ"�� �E�]�<�R�_��x��U�@��U�]��N�-3�<��Rt��8�"ӂ��.E@�o���	�yZ#���MqX�L�o���)Zմ`�N�Km��o�� L�	x�M��Mq 8���ig�g���z�M�U�N��)9�}0.�k=�{��G�������
g�n���0r�*��02�vP"�%��1�>㻣$b^r0.�`\�7�T�fb^����G�1Π����Z��l��L
]�L��"LO�I�-��Q
u�U�0=��9z��h�j&-L͠	z~u��BZ��e��wG�ĻT�0��0 @*��R-��oà�����R-��o�H�L����`C�a������@F}o07�7��+��GʚK��(�Z���惀�����;J�ο"���ƿ��WG�D���-	Z����ϯ5	�Ӫ�@I|��x�"�ٻ%A�
����@�L��􃀗"�ٻ%A��,h���-	Z�T0��޿���9�Ĺ�a�2����ey�M��,h���WԲ<����Qв��e��^�����.E-�,��LFA����7{A��(h}�w)jY|�� ��z韠�e��^ 8��AG�%२e��^�2K �S_^j�W|�i�i�#���j�W|��08��P�޿������Y������6{��7)s�<5S�_m��nR@T�f�]j�W��	 S3h��i�*7{�˛�e�@���]j    �W����ȴ`�B�Km���7AS30}!�6{�˛���<O-��f�zy� �`�J�Km���7A�30}�޿2};^n����J�e�����9i�ڨ�L�o���E&�7�]���M�05ӟi�8��v[`�%�yj'ޥL���A�
����雛>haj����雛> �.!�S;/e��Z�T0� �L����+����U���Yq�:���h��ss�<uR�_��̛L?�v)ڽ�Z�����4O��{M �q���w)ڽ�Z�T0�"�h��>�"%0�"��h��>h�#�穋��"��k�� �
mЗ��"��	h���ڠ/����ǓoRf	�y�K�e�q6��KC��%��+ӏgޤ���M��W�n�H������HܵM����L�K�~���@*��3/e��Z��A�?�R�n��e�@��e^���M  L_x)�7}���L_����|�,�,�8O+��Wt���KC��U��+:�q��
����Wt��8haj��D�����m�@��5�]��N��H�7�]��N�-L��􍀗"��7ő�L�x):}S� �`�N�Km��o���T��N�W����e�
y�v�y������m�*}�k��x��~�����u�K>@k?@A�����Y.� -����Q�A�,� ѯ ��TG5��jp�h����(�Y.� -�V،��P��\�Z� -3=��v��K>@����,�r�������(h�'P���=��[��wm-���v���gRhU_�i�y�`?�A�3)��M�<�r�堼gr�=�&&���(�Q�{&�s�~���%a?JBy���{&�
���~�����L*1���~T�����L*13��7"��{������ԅ���=���Tbf�=���ax����B�tT����=�c�3�����Q�{&ǾgR-0c�2�Ge(���I�e�@i؏�P�39��I%f�@q؏�P�39���!�.6_�<�Gy(�~Ϥ3_�>�G}(�~Ϥ�P�@�؏Q�39��I%f�@�؏
Q�39��I��猁�%��gr�=�J���Ԉ�ɱ�TZô`��F��L�}��G��1P#��F��L�}Ϥ���5��gr�=��B2=P%�#�-�ǇϏ+�fb�����������
�r���}������J�|��w?��r~|���3c �ݏ췜>?>DBɜ��w?��r~|���3k ��w�{����͏OuذI��;�=�����Ǖ���ﾳ�SϏ�o~\}n�@��������sϏ+-���cG����{~\i�%����`���ǧ�'�#��;�7������J����u����sϏOuڰiMh�
�ù�Ǖ�Y��#|SϏ�=?��'���0�������2K �7r&)a	̏+)s�{#7������$3�{#�S*��WZf��FI�%A�u�@~o�JK�!����2C �7� -a�/l��!���=��a��q�e�@~o�BZ�5�EM��Y��Q;i����4�"�d�@~o���j~|~��J�,���h��ğ�����N{"�7Z#)�W����j&ӷyJ�*g��q� �L�i�?�7?���i������#~��J�g������Ԋ%����%NC����xu8J��L?
i�~����@��7����Z$�=?�����q�^͏�o~\}n�@|o�LR�6��q%e�@|o�FR�6��q%e�@|o�yJE�6���i�#'�{c%�
�߹�Ǖ����*i	CT/o�i�?-����VdjsϏ+-3�{�}I+t��W���ͷ�V� �=?�����ͷ�V� �=?�������0������O���D|o�LR���0}!����L�����6}<lؤ
��)�L���A����̉��雛>,0C �7s%-a��Zf��f��2}s�-3�{���%L���!�d���r�T�`=N�B$�D�-XϼIY	���|���n���6�I��A�
lSт�т�e}G|k�I LE�'ر�#�6�$��ˣA˺���h�@��,�D�dZ a�@��,�-��6����%-����6��t�I�v��B3�% �{�y�2O�k��D��x�6~�:f
|o��H�<��Ώb�W�%Ba�|�w[_`$�'�%ba�w{?��/����0yB޻�W�1���3�0yD޻�ŀ������y�3k��py���7N*�c��H/��=a�`�꘼�/�^ȋ��Ma"=��� �H���(f�@�a����Xz�W"a���eaQ�|�x���$#��¢��)�^��IF�ׅE�c�@�7��HF���E1�+ؿ���/�X�D�卓c�8���Մ(x�����)�q���	H��c"�����H����Ŭׄ,x�¤�	o������/�$,������ �P���)0�����X������� �I,L����+��`�I,L��O��bf���$�ˈ@��@3k �1�:L��2R@}P�������!�����az���L
�_D�T�0y�0h�]�O�S���ð�,��x����a��a�2G 4^a�u��u��H �D L���×�:E�@Xd�sϕ+-��?c���+�{�\R$�B{4Pd4d4���@�gdB����>7G �32EF�3oRfF&
��h�.J����3 ��vE_0<��8�"�ٻ(�~���(����%E2-��Sd4{E�.<��@�"��[��r��Ϩ���\���ʕ�Y���	(�Y�z����E3��@@�̉��h�,N3��u!��(����߭h�D�gt�`�f��A�ڐ���NL���43,�6$�>�S4�8�ZֆD�ga1<�\�������� �{�\���>c��c�~�r�e�@�gLb1B?��r	�L
�������ʕ�91�1����͕�����I,���=W����`�E,���=W������E,���=W���9����۹�ʕ�9���#�sϕK�dZ`/�0EF��7A�,���<s>j�|�r��<���L����s�Y`W�`g�G͕�o�\I�#��g�G͕�o�\�3B>3S�on��v�	�)�77}�HP��2q0e��Zf�|f&�L���a�9�Y�)�77}��BP'�ǉ�����>)"꤁����l �s��<i`�I�"�&c&a0u�����8�$�NX~�@X�)��I L�4�����emG|m�I L�4�����x������4��l ��0u�����y_m��`�X��"��A/���Z��x�f�K(@ƿ�g�`����h�lDOŤ|3S�{�󜐌��b�W�%Ba2��z�;p�ؠ��������� f���GO��d����w�H&�nh&&�߯ǿ�fl����d����wXa��H���a�`�����/�^������H��y_ �
��t� �Fl`���t�A̯�b�$E{%&��!&0�����P�d�~�XÈ�_��IF귈���E{%&�_#ŀ�`�F,L2R�G,�a��o��$#���"رV��7�����Ȩe�&DF{' ��O�ɴ`�N(@��0b�G>�ў����
�5!3��0i?@2�_���P���� �0b�ba��~�d�:�D�� &��gHF1�+����C$F2~�Oba������H�IH@u�1�*c ��9L�īl�P_T�0=�&�!x�L��|���<�U�@h��T��� ��?���`�1��*��	�D/a0�9L�9Zf$��KLu�w��+4�q05��s�0e�FQ"�� �w��y�������u��<���Ȅ��"/5�������q �f*�?㌎���R�&e�@�g�`
�fo��@W0})�%)Xj7-���0��ٛ(�����(����Dѷ�~F%��h�&��tx �3*q0F�w�����Q		(�    Y�|�2K �33��n��\�󍀀���7)���m�R
f��A˚����NL���03p�+��3N�,���l`�NL���d�`
fN�}F'�`fq����`�AL�A��a�l`�AL�A��Z�	D}� $��ᅛ�YA�1�ģ��I�1�ŉ�Ϙ��H���M
C60��T<��t�yjZ0�"�F�i���L���ţ�~Z�� C60�"�F�i���1����ţ�~,&ߴ���^�`
�V/o�����KL����M�2O �3_B���q��yjR ���2};L�G
�
�������1dvf|�4}s�-32>3S�o���t
���)�77}�:�˄��雛>h�!�8�2}s�G�dZ0}!�L���A�,���,��R�Ϳ5���Q�B�/����[��'̴��:�Au��.�TR�'��uV��"��]D�>7ף�g1�.���E�J�L�Zp�����r�(�����<�Au�|:-P�e��Y��(羈Ri��PγTQ�}�-�X(�Y��(羈Ri5��K�,�E�s_D��,�P�N�Z����[#hUӂ��rpHӏm� 5L
�?��!M?���1�?G,��,�4�ئRfԂ��4�p�Y*-��,�4���nQ*-T���4�pӇf��sҏU�n��e�@98�rP]D9�E�J��rp�堺�r�(�8��,�rp�堺�r�(��y��\dz�!�	�VZ(�Y��Sq�����Y��:��)�4sw������,�����	
Rf��,�E�s_D�����Y��(羈r����(�Y��(羈Ri�!P��TQ�}�-P�@9��rP]D9�E�J��rp�堺�r�(����u���"ʹ/�TZ�	���,�E��RI�%P�3�����7V>�1��d�י�Vc��+WRfD���Vc�s��Ou8�i��g�[���=V����|�3����+W��|�3����+WZf����Vc�s��+��#ҋ��:c�j�|��)�Ib����V��s�+�1��~#��W�,����m�^$�ב��h�k7�1x��~���g�Ղ1���~������J�B�?��r�|�t�R�9��[G�[��O/�"�w ͷ���/�>_��`������̧:��Ԑ�[G\N�O�0Wj02}눂���#�j�T�:��r�|�s%� ַ�4�2�{�\�����#.���2�"�{X�/�G\��O3Wj��E���t�){�ϓ��p_~�L�4�>h��`K���H��I���j�a��{+����Γ��a����p9k>}�\�� ������Ӈͧ�-�!�������sO�+1�~�=�r�|�q��,�X��$1� �c%��1� q9p>}�\��=��4H9q>�������q�9�>r��`���8RΜO�9�"�{L<Ǚ�r�|�йR�?��TH9u>}�|�Ë���8R��O;Wjp���/&�yo��
sHz�$��҃��ϣV����[z�|��y���s��~K���o�|�S�����[z�|��s%f�H	��-=|����RGC���-=}����k�#��~K���=~��O��-=�����12��[z }�t%gd�����@_{}�(�Q`�y�_�S�7�������IZ�H�.u�1�`��HK�T�_��S+n2֞BW���f!̨%�%�)ژ�qF�(i�(	 ��R�BP���P�����.���:o"1>+�(�ϼI�B^|V�f�QҽQ u 4�f�QҽQ��!���l��T��{�$hY��B8�V�Y�}���@֣BX|v�f�QҽQ����:q3�'��'����L߉��6I�6Iв&��sBP�O�}��"���i7)sr�s@P�ϼI�!�����2�p���O�f���M��Ȉ�I�L�~��#t2-������,��Ri�!�����2�pӇ`]0�"n�L?��A�,�}k,�f���M��H������"%�.��^"
�����w2��%��@�|��EN&��K�@��� 5h�t�}��)�:�c�񕈚)�:�-3"��Ρ%�YZ7-3"�+7S u:H�-�L�L��� 5h�%_�����Aj�N��2���Aj���!R�s��,�T�*H]O�I�#
Z�����Y7)�.��4S u9H��TЪD�H]R����uƂ���S�:�L߈�)���-�.��7S u9H�rB.h5gj��|���qB0hu"gj��|��>��w���� ��@�7!�:1��o]��݄l���9{���@��^��� t&O�{����M�A�L���� ��9�ZGFHN�O�FWjpRBk=�����!�j��S0������D
 )�&�3y�޻���� +��3y�޻A���a4�7������ҋ��Z��d�R�� �@^h-B��kɢ�G��(z	�I���E5أ�S�;�pկ&��h��!9�>}.]���"�Y���d�:A��D�L�U��,����D�L�U��,��A:��虄�~IYT�x:����|�	�Q�fb�A�gPFtL3!� �S(��G�� f<t���/ui��P����O��j��ăpD����	u���x*�3� �i�Q��]x*�3� �y�Q�Xx*�3� ����� B#z&��BP�x�F� ���c�9���9hD"[]>��к~�4��oP]}��.<��A$�kO�+1����6�`u=�?��A4��)ZzV}�YuE�@4�A?8bյ�Օ���"g���=�.���A�,Bյ�Օ����I�,2յ��Ղv��������J�(��<��&��7�������EZ�YW�C]��ʤ%��7Qշ�Ta�E�L��DU�v�?14@�`j�z)��#�Ӣ�<�'i�'	Z6Ńh�D�~�?��n�.�R+�[��uZ�D0uV��Oҟu�2Ѕ\�l��T��{�$2'�?h�T��{�$ha� �5S}��}���:TH��F�L�I��I�PB'l��$��$A3< ���j�to�d=�ӟ�w�%��%	Z֣B"u"��㘲P'�.�Q� ��L?�~��L?�(ӏg�>7C �:'13e��Z ]0�$h�L?��A#<0�$j�L?���!A����2�p�-�.�~6S�n�Ȝ���􋰙2�p�-����q�F'�`����<�c%�KAq�ypTuR�©����!%B�Ia�-������q|�*C�Hɕ(�:��-�.t�A3�Q�s�Ȝ��y���)�:��-3Γ\�����~Y�@]�f�f��N�A#<�f�f��N�A�,��$�y�u:G�<��$W!��8�z�D	��/G]��F�d��/�G]ϸI�!	Z�����9jX ��Wbf�����a��+A3�Q�sԠe�@*hU����%�fI����)�����o��o��H]R#t�l悖�!,�!1t�Z��������m�G���N�@9�b�&����������ϸ��݄l��d��� �+O�K/�Ak;�Ar�y�l��"!��3$=H���!�k5=K��/<����$+��<����$j0�B�
�[��Y�758a���A�A�׃�}�O�"j o0K]U'��y���;�<J���*z�H���1�b�B��%v&�_dW|�;���$]��̢���-:�C�r��_f�>��~Q"|&�_g1�7���Q"|&�_h�������T~j����}�SC�4>�t�/5�j�B�45�B~���L3A� �C+��1� b�A��VF�w�A(����WF���A(���GWF5�c�A8�D��O���_�5<��|��ʨ����A�����X���pD��>�2��QYx�3� d���� 4�j��S}#<x�5[���G���A't�f+����o-<�ȁ���"    J���CЉ�E����`	�@_$&�Y7�w���"W���M���0��E��;Hcd< ;Qdk%;��&gd�;�P�'���o1��W�?Fr��Fx`�9HK8��s����%-a������Z��*��b�߰��/*��)�JKݎ�?1��oL=Kٟ%}�����W�^���g)���O���؄��Գ�E�8y�L��ߙz��?K����U�mT�R�gI����(K�Kݙ��;3���1�FZ�Y����?Jǔ&i��e��Z�
ǔө��_��A�@ݘr%1�,�@�ucʃ֊?e�HA�/P7��x-�y9���t!F�
)()b0��T:��.��wg�p��T��.�ڗg*1XEc�d��׾=S���S=����\�����
.'T��N�
���ݟ��`ԋ�%�
���]�i��# ����UO���־AS��/2��tf��`?�z�/�zQݡ����@�"�`Lg��.�\�M%��2���?3���oѴ�$����"��y_�M%�!����Gs�{4ML�2
�t��"��]����ԋ��M��IS}�����& �?�y��o�tF�� t���F"�᷏R:#H�L�U_ ������3�������~�!�3����#�n��G
)-�E�t?��OÃYa�Eƈ�n�Ò�Lg��Db���|#��a�f���ͨ�K^�q�J��YF��%��w%3Oв� ����1����|�s�r*�Vduk����8�(�Nb��?~|�S�rZ�V��{%��b�s&1��T���/p�Q����n�S����C�r�$&*��T?A�/��ċ�{%�`�a��aup��NV��8�(�AZ��c�?h�8�(ח���ǶЂ/pzQ���R�n�0S_��\;�	��oA�|�?1ؿ.�n������2�	��3_�\�ϓ����k���$�����E� �PVbb��yv�:Ay���؀����j#1|#f������)+����V���]'�M����%����ESn$��H-�'���)7�7a|����yr�	���QVb�N.���ESn$�o$�|����yr�:Iy퓔���/ptQ>�.RG)�}���1pvQ>�.Rg)�}��R�(�����E�0�SVb�F��Ϧ�9�����>�3�,gOp�����SVZ0Z��l	.��X{#��t��T*�}�����:������>QY�����#��T^�H奂Q&��`9[��L��TVb�z���	�C��>TY-�1�,gSP�����J�@S��MAu��ڇ*+1XM�r4����b������GSP��k71XM�r4��?���+h
��)(U��}�@T�7�,GWP�lj���@[�mAy�����܁�`9���Pe�oj�:����C�M�X�:���r��ʦ�oj0�����C�Mm�
Ճ�h��&�C��>TY�5�}<���SBf/BC��t6Tra�[7Ղ�>�T_"��@��%BCC���PSBf/��h�D@M��Dt�c`h�%"
*gP�|�BG���(��Ay�'�3�9H�x�z��g޴>��Y&���iſ������	��WZ�o� _�q�2�4�F+����4R!��^hſ���_���Y�o� c�s�
5��^�[=�(�������V/���>�W"
�?R�t��@� U
�?Rw$h���J<A�G�3nZ ������	<�4R#���#��t��t�����m�S�*I�؜j�To�ğ����_���� �����D�T�z�&�}tf�߯��T�܄�����:�T�z�&�����F��T�z�&�}t� ���v<��q���H���z0��`��MFO#:��l��uT�����`60����`N�9�����Zi�Q�R�g)��hi�E<Gٿ���|��F:[�е�]�4}p�?[�е�Ubpz�%��������g������U�y�2�}|M����j\���9���F~���e�M�@O#':�qٟu���:z�x�j\vo\�_��������{)��hi�L<G5.��J�!�CG�li����'�������3U���$,�1��ȅ��j\vߕ18-�\�h��e��e���_�(���o/@�\��(���ߴ`�3r%���?�92 ���ȕx���p�1���\��(��X _����e���b�:��9����g���`�F$O���iB��g�4����?��a��S�D4����?	<�wB:�q9�|�B?1�܉訾�|��st�rʃ�����g޴>8��9�o?}������ �����w��4��9�I<Gm$�o$�|�T|>S�jJ�)��N���'�Lշ���b0r�y�T;��;�� �@0>/�j�?}��><�/B:j#��tӂ3��ϋ���H���X����i����Q��������~�稍��Ē�G�O��x��H�oA��k�D<Gm$�o$��gk�TIL�nbB;�T��� c�d͒�g����D Mp�,����H,�H���d�9�����R�DC8'�Q�������5K!�#�'|�q[�!<�`�<��ݏ@T�7p�f)s������8W�T�9��w?4�8W��Jj�uS����JTS�Q���@�5<�~+��w?Q����ה���A�+H�7 E�9ꯐ�MH�w�:7��[]���� �P���|{���~<'������;��ԟ ��(,@Go����@�7Q�:7���:ڱ<���o���D@A�X�	�hG��S&���v,Ϻi}]�L4M�X|Qږ�p�b�ŷaA���;�n1e�y[�10ؿPSl��6,�}�>�!���aŷaA���;jjV|���w���6��6,�}���Et��?Wwr'��S���چէݴ`��a�ګmX}������h�چU߆�o���!l�6;����4���8r8u�Vj�S}��
�`�N�Imv�ov��-8r8�Cj�S}�|<&�W&k���h����Ӡ�2Y;L�G-88�&! ��j��W���4�ߨZ]�߱A��	�GN�G�VW�wl`hb� ��j��b���E@����c�4p��EL�c��c��]p:+)u��ڷX���@/10��m��bP@�%��ߟ|ӂ3PH�������r"�ޱ��7�o	=�D@�c��c�4pz@��juuou1��T�D T��{�+,�Ɛ��D �����R�}8=�L L��������J*�����r��,�`��_��������_(����+K��B*b ���i7-uT�� ���3o�CH�%��?��A��	�%��?��A�@!� e���l�C�� e���bN��0e�����@���d���r�-��7��wB`����|@��T�k>�Yt�P��N@u��1�&���
/B ��;' ��EA�� ����bN�� ��e"}�/O" ��;��ľ1$�P��������	��$ �:���+A��@w>���k�q�ľ1$�S����� '>� �/����L��1X�yP�|=����e���b���7�o	�ϗ��H�g�>�pz�/ ��X��b�B�%P��� ��!�� ����D`N H��Fb�F"���e��C��$`{#�� �	�����D�p@&�6�7a��\v� ����.���\v)��W���K%��!�(��W���KE&>��'�P�_�+�m�J�@0�T���~��R�A�@��jX��.����T�`�c�o�T+`��ˑΖ�].��R�}�Hx�05ϱo�Tj��A#��\~ۥ�&jx�P���r��.�X��#-o�\��K[��Q��.GZ�v��m�JcH�A�#-o�\~ۥZԔ>Ff�7b���8��*��0�Qp˳��>Z�}�׎�[������s��.G�-    φ^�lh%s��.��&�E��E�5Xm���(��(�}���yM������
�ewd6�.J�.
j���r���l��gC+5��w9
oy6��m�.����Qy˳���������(����k��ԍ�Ãp���l�φVb�J�r���l�φV`���(�����φVj���z��l��gC+5��w=�oy6��mEW�@^�\���lh�{��g$C�X&�W�BmB���z|�2�� ���Q�˳����V�!(��W��W���ǿ�����~58�����nZpJ������뎟��ϥ7P�ׯ�������B�b�*��U��k��@:x�*p���71x�*p[f6�O���(��W�c����]����~�7��}A�X���(��W~c����-_�v-�w�������~]O�i���kˤ%�agC�se��ʻ�FZ�v6��jЂ��<�B�����mA����	_���ib���V�9*)f�h��k$&|�(_4��u��X�Q��~}>)�!��Bb⽈��J� b��ċ9*)k`����bb?��ؗ���@�3���W�ľԂ10�Xg#-�,������9O-��/���-��u%�x��/0XW%1���ãM�u�SL������|�����$�������-v] c`���:�v)�obp���I�o����M�� b{�����bbߴ�1<�-e�����i՛��Ėi�mf������[��V�<�o|ob��[N$���ib���[�{�&�ob��[$&|Q�������b������?��`��RH�o7���M���a+���v�Ml�5 �0���a1�_��K-8��f��o���s��6��o��A���a���R�on� _`���Db���_�'Q _`���Jk����?��/:�[$&����1O1ؿ����s��1ؿ�on�����1�z'1a���bb�'���+�&6 ����b.>�������m4�ΰ�x�c` ��IZ�6�ϥ/0�f:���i�|�/�l����������6�	_`.^���^���br��r����^�UHL�1�jί#z�V'1�b�\��3�lk�br�c_S�~����s���\�Ԃ3���o#-a���>�1����$-a�����$/{J����p�1��˞*�	��8<�@���Ab�������o��Pw���Qo�I)0�N@�g���F�ۿtB r0/�`^PC	��r̟�ا�Ԏ�Ŋ���`^�����V�� &��E�5P�A8L�%�jh3�[�L������ya����&�09��|0/��!�(�(�<Or���`|�E@>����u>|�a�¾�-���(��|��7A������'}�[b���=�MP_Z+��+`|ԗh�||:2���6�/�0� �xdT�?�}P�0� �|d�:�B3(��HF58�5у c�c#A��L0 ��_˽ܴ>|�fh&`�O��>�;�ů�P@`�?�uӂ7ůy�Z���7��^�!(D�)5���3ů�PX �&6ob0�������A<�/Ư�XX��&Vob��P��Jjb� �@�Vba��cߛ��4~mT�<?����+ؿP]��8
x�1���
P]��̛KHնN-�%��%��9��;3 I�v�<����dP��T�<{�<,@k	ɠډ��.9���b�-!T�0�H�wɃ؇�`�A,L1��]��u�Ă� �i�.y�5�
��`�z����\Ee2AuPo������DP���ۿ<��9|�<P���Ro��o� ��+�	So��o� _ T�0��/��\�@�.ba��_����ā�K,쟇�o��G)��z���{�
�q�3j/�0��(��`d�Z"&��~����A�X@���i����PK��$�O�I����!����7z�nb�B+4	�p&V}���7�Z&&�Ll����Z&&��O����B,,L���}�
�/���$������ P+��#���`�@�U�����7��^���X��{��H�'�%��ߞyӂ/�jg
H��i�$�|�
�oD���?���Pk�$
K�&��#�@�S�on��u�sD�uba�����>|�wba����)P�߉�)�7�C3A�6(Fڟt���W�� �iߌ4h���A(@1����|�P;S@��O�7:	���wĀ�$�)��K_ �&�0�H�3�H� �OBa��vg�A�@�-ba��vg�a���`�E,L1��4���E,L1��4���3$��4��Z����P?s@��ϟV�i���3$���i�\%d:R@�L�;?�����>x��)���X _ ��0e���b��@=
S�n� _ �3�0e����|���!�$o�J~�W`'%B�}r�7{%��+�}C,h�bN�f/��%;A+o�r���D�j��Q"0�I�I���f��j@(��&1'y�W򛽂�yxٖI�v9엏�-�xٖE�v9엏��-�xٖE�v9엟y��X ����_�a��N`�m�K�I>����Q"�Z^BN�A�� DV>�n�K�I>���{��[����̧v]�Q"4\�O�!��Ծ1t\1'� d���nM�pW~�]`'�޺5S�]M�H��������j� =�m�۩�@�1S�]M$�b��lR�?|��@!ڤ&���o��@!ܤ&��1���z�/�7�qPi�/k%ޤ&��A�c��+�&5a�����b�%�i �:ak Y5�U':?��?B�7귫Nt~�M�c����U':?릅��lR�����N>B�w�M���ľ1ؿnR������1��_�yM#�&�!"�oR2{':,��X`�A�Iq��� g zS5��ۿ<�g xS'���ۿ2���������_�q���X��I�v��/����b��"ؤ��L�T�!tS�Uo��o���c���&��/��b�27�_������:��7����o���b����o�-��xӿ���71X�����Uĺ��?���咨�2�������MK�oW������.���*cZ�uӂ/��i�`�ʘV����ߘ�6��i��`'���p�ʘV�1�a�v�m��XW�GR1ؿoR��o� �ͱ���x��XW��p�6�oR�:�b��6�R�]ٿ=������������v��V�7��Wj�+��gݴ�$mZ#ؤ������@�oD�����?�}c,�#ܤ����a�z۴3l#�c6B�nb"��;�&e���b��߉7)�7�`'��!l�:�&e���b��"l�5�����側Y�6�߮8d�M�c������ϼ}_ i�&�&�!�s� �"�mR�;�b��?	�(ٝCv_ l�ΰ�8�����M�CD��"ޤ8dwI쿈7)ٝC18a���7)ٝC���6������8�/�����^C���=i7�o��'/�e����L�t$mz"ؤ�?��A�#D�M�h���p�GRBܔ7)���/��g�F��l����CD�M�x���p�1a���7)���3��x���p��k.a�m���1�Ol>�g k�3�L}���� ��a�L6S߾ÿ}����g���������{&��o��߾A�slv�������?ߴ`���,��ş?����7T�����ş?�yӂ/P`�JS��鯟x`6�`����X���(��Yb��?Ml�����Yc��?�O����������ş&v�O7c������ş&�}�ږ������ş&�nbb��Yc/��Y�;�o�ôPb���^�CЪ7�-������A����'h��g��dby/�U���g��db��9|���%��1��m���a�/Pc���^2������������    �?��Ƌf�j�~����Ok7185v���U)��m�� �@�ݏ[]�����O)k���G����ϲ��M�@�ݏ[]�ib��#Fj�q����O�3ߛ��*{U���j�
581Pg���VB����T���OV$��OA\{��G��.�4��1�j�j�q����O����b{Ŷ��j�W����j{dz$�|wC;��!(��Qn�Ә����X �r{�:����M�@�=�r[��lb� �@�=�l�:��ľ�^T�=nG�]���vS�=�nG�]����+�=�oG�]��lj��"��H��#�Nc�Z��DɁ��82��4f������8B��4fX���0�L��ǑrW�1��;�Y�U��A8R��4f�7�1<G�]��lb��C%'R��H��ӘMl?A��1sG�]����+Ա�9�q���i�P�7�5<G�]��lj�A+`d0ǑuW�1C����d0ǑvW�1Cm��`d0�wW�1ú���|�Ds�{ҧ1'��,��$0ǎ�'}s�i��\�̱��I�Ɯ�Ә������a��OcN�4f� �@�r�{ҧ1�}��3��;��i�i�Ƭ�`�/�#���i�Ɯ�X?|����q��OcN�4f%c {9w�=�Ә�>�9�4���s�ݓ>�9�Ә�����L���i��;�Y}g w9�$-��Ƭ�`�.gN�%��Ә�|�����Ԋ���OcNb��@�r�Ab���˥/���%1��4��d��K!1��4f%_ x9K?��#�Ә���Y����w��3���~�q{��i�J�@�r���j�>}����:�j"w9�$-��Ġ�҂1��-���[b��>WgQM�.g��V����Wb担��l��ğ��W�`�����S~��J�B����Pڃ�J�|������x��?�@%����/ﲂ�G�u���#�b�1�=hob�������ՠ}��������B/-}���s��9i�VZ��|�?�D�U�����.�@���ث����E�1�E����Q��Q� ��,�Ea�U���s�
��{!*��J��7-�
��{!(��J�Y7�c�)Z	������R <�Xx��JLLe��g��|�w��TVizV)�$����)i�tZ�>��7�b��N��a�Jx��FTL���4�����?c�S���4�} ��-]�;�ϳ��^��P�t��:Jx����EBgq�`�AHL���4����W��-]NK����>�)Z���1�/�~����7�d��������ii <0b�}S�t9-bpb����/IK���ȓ �/����}�M�@�/��R��i��b�}��J�ϼ�} ���`��V�ݏ@T�7��/a1y�Ի��x`��K\L^,�� ��Hޏ#y�jh0�����A�D`L^-��� ��HߏD`L�-��� ��A��G6��Z��}(m�L<@�~��J�`��F& �i��i<��A#��t�F��c�A($7��O�� Q� �b�����=����>W���J?YrS�j�P	�In�3�Q�@HhTc���h<0RB�H	�s��6oj�Ј�a߳&x0
�F8@>�x�q�1�ш�aߴ|B' �j-�������D�䃐��?�%D�F',&�l-��GXH���uS�P�A`L>~ݚ J@2x�1� �}kQA^hy!u.3��mŇ�� Lzd� {� ��!H�IX@5=?����$*���q( /s���EP@5ӳnZ��BcS����U�q������a���&牸�|�I(��m���}����a���牰�|����a���牬��Y���eN�\fEx>���h"*qi��2+1XI��(Z���u���h"*�hi~�M��X����.К���d�f&$�hivZ��d�f&&�hivZ��d�fI$&�Xr*��/�������߹�J�@Dh�b��f����b�}ILR��obȂ�+a8˓n����JT@βgЂ1������7��b�������g <�H�FHLN��*��^ؿS��8��<	b�O$&�XZ7�d�������gX ^�`��D��,8��rAs�$&�Gq��>���cEƐ�q 
��H�q�_��� ���L���B/-}�H�-�f�
��������$$C����E�fe����1x��
���c�޻<�ϸi
�����X�i����E�=V"Oj�`��O��[�{��������� ^�wl�Ğ������ R>^��{#����o���F�IA��P2b��e�~�
JN��A��d�y�p��1��n>^��{�����o����|WPrP�7x����%��z���*_�a� ��r(ľ��zRPr9���b�� ����r(�>^�O�O
J.��a�7��O�O
J.��A��^������ˡd�3���!�KB��P2�����������}�M�n��u�e��}���w?����l��Xu$����Z�?�b��o��y[�8T�];��!�%�k�🵺达�6/���:�$C֯��Ê��B��u�I��_Y5�A�r�?ɐ�k!렶�U����Y��e��PgI�?ɐ�k!렆?H_����Y����5�����?m7�?��Km#��ٕ��sN�R�a�nn�ؘ]�]����/1�Ag\�?ku�}~�m^�F(>I<�O�2�nma#G�$�L�'�� �3��OO�6����OORۭ-l����ē��dX�?�����ē��dP� �q��Q3�Q[_j���+�ˍ��� g�N�8�������r8�$�3�4��������������F��͢�nma#tG��F����
�8$rFw�In{�,�mb�F�ɍ`ϛE����F�?ɍ`�E��?H�������YT� �r��Q3�Q3��/�A��0]�]�������>�����r����q��qR9I�hN{F��ڬ�]�\�]�咕��nna,�TYγ�B9c9��r��r/'OB9�u�I�咕�>N�dr��ؓ*�%+�}��<���ױ'U�KV��x6y�ș������de��W�'�����#�LgF���-T�+�+&������qf~�����/���=��dC����&�83;�d��\�Dqfv�I1�lL2,ظ�����]�Jl7�`��ؓb�٘d�qfq�I1�lL2p�Ag���${��Kl�"�_]�]a�r�h�HgVW{W�<�Kc���uZ�!e~�|�"��\�]a�b1�����yR�Fb08�9��0b1�8��Eؿ;��0by��%��[�w�Ia�b1Rİw�Ia�b1��H�̑��@Ś.Â������_�p����Kk��`�1�V(��Ѫ_Z��͜��
��?Z�~�&N.b7s�[+"������ u3�O1�������͜�<E��W��m\���CO1�[_����{����16�a�7s��m����38b��\��y`T��a��s9��n�tUb��l9��n�t��B����|��y`T�a�s9��n�tU�5~>[����T��1��!{݇l��h��*-��{�gl��h��&1Ccp�^�[=0���J_p�^�	[=0����j��ℽ��z`4�F������#�z`4�F�|�{�gl��h:�*1|�!{݇l��h:�*1��!{݇l��h:�&1Egp�^�![=0���Jkp�^�![=0�����h��{�gl��h��*-��{�Gl��h�����N��>a�F�y`T�����>b�F����9�����3�z`4�F����/8d����M�Q%���吽���P�~����r���İ�}�V�����k�a����M�Q� ��8d����M��Q�U����[=0���Jk����#�z`4�F���]����	[=0���J_p�^�[=0��@�>��3������<0�����u����<0����>d�F�y`T�a    ��>d���t�������C��O��>�)�X�C�Z��*7��İ��u��U�}�]�IqF���{��U�}�]�Jc�����W��Ƙ��~�/~�����v�u�N׽��h{y�h��O��^��_����
]b��Jo!M�/~�����v�u�N׽��l{y�l��O��>�)Έ���nW]��t�+1��K���N����t�����K���N��������������������ζ������Ȓዉ��h��O��^�ዉ��h��O��>�)Έa�;ڮ����Wb�ba�;ۮ����W����w�]uݧ�u��0���w�]uݧ�u��~�H/������>���$�d1���e�}:]�J�#���t��O��>�)Έ��t��O��^����;�J�ˮ�d]�jEB�-p��e�}��{�VQc\�v�u���^���&���>Y�}y2��W�]v�'�Wj�#�����O�u���Za\1w�u���^���F�_ʮ�t���R���K�u�N׽���p���]��t�+1�Q���K�u���>�8��e0K�f_ʮ��$�7!��a��ߤKM�Ø���S��0K��_ʮ�d]�J{�B�%]�/e�}��{��B�%]�/e�}��{��A~!̒����>Y׽R�!�fI�L�u�N�}q2��`���S!_!�����bՉ��p&j�!�?�_��k��O�u�԰�`#\S0e�}z��{6�5Sv�'�Wj�c��9���>Y׽R���p]�ɺ�ȓ��F��oEn���0�b#\�0e�}�����8��铛��y��y��P$�?�Y��!�tBUbe_��b�W��GB�s9.��y��yA��4���:.��y��y�(!Fi�u\L�����i2��u`@�9���s*�$��븀*s��im�Ea(9,���Y_Z��4�J��2G�2G`<��0�J��)�7��d���{@>���C��(!Fe4;.�����A_�_�q1e�f�0Q�US�of� �Q�/��)�7��$�W�xC�����E�T��_�T\��WuX@�9�cT@\d�WuPL�9��9���뿪�b��ѭ���랅�BM�!T%�Q�o���2�~U�Qf"����b��ѭ�u&��;.����Al�,��Se�ne�H��)ؿ;0��?���E�����(���}�|�,�?P���Ң�D�~G����?����k8*��?�����r�랅�BM�!T%�Q����)��P%Q�`�鰗��0�1�A(h-�Ŕ���?,�(�/�Ŕ���?�aBAk90�x�|>y� �������K�� ���밀��_Z��QzP�t/�@	1�A��b��zj&}Ѩݙ 5 �� j�FYT���b��N�A_t�A�q1�K��� �1:U�츘��xi`<eQ͎�)^:��1�1��fg�K���H��$�P�u��"rT�����qu�XO��9Ƙ��8,�.�Y_Z�bb�⠘�H,�H1|1���	R���FYؿ:,�.�.A_,�_S�e�H����q1u�Xv�bea�渘�H,�H���^��S�e� F5����9=�}>��o����r|��P�sJl��x���>�K�RRbt��� ��l��Pc\� 9 �@ ��a{`82&G�g��#�	�Ccr��{vAT��]0�C߳�چYl��И�"��})��И#����pHa#LG�k�1 �:��'�FXHrz�]�b������������Q��q1IN��Ӡ�=�+ $$��6����Ir���ă=	�ס1IN�񵨆=H	��И$����@J�A�Cc����kQ��Jɡ1IN�����J�����, ��!_�1�AP(e��F835#���Rv\Ln�հQ�tE��@�d$RB��P���jF5�A\(���F���q� /��Ccr#�`ͨ�a�:4&7�M֌j��P��ɍ�m#`�C���z @���FY�)��'u��v�
T��/3��ˬ�2U�2@��E�_^W}W����/���B��u�wUKhW�.��8�����ZB{ƗֆE_�+��ZB�ZBX��[(�$G�T-��ǟF��+9��j	�j	Al�"��ٱ'UKhVK e��P~��B�����`���>)�7��6�a�;�٤���?�m^������%4�%����W}W���|�a8�����⻪%�J�ႋy���ڻ�%��J�r��b檎<�ZB�ZB���\ա'UK�VK��1��{R��n�� ��[�s�I����j9/�o>�ZB�ZB���8�u�Э��6/����'UK�VK$e��`������)_Z�r����+�+���j�j�����p�we��/��߂��#O������a��Г��0��͋��t�I������o����'e�a� _0sM�����?�a�7�N���,3��")�����'e�a�b���/W}WPr^��tI��u�w%��z�Jc��|_W{WPr>�Kk��Psy]�]A�iP2�|A�}zRPr�b�QrI�=)(9JFl���|RP��_ؗ� ��&ǖ��%��A�7SB�iP2�m^D�1;����4(�v������"��O(�3�_����Eb]P�������q�wu�X�����M���ŕ��Eb�E"����oq�I]$�k��Eؿ:��.�.Al��`��ؓ�H,�H1|��u�I]$�]$H���ɛ%/�.Al�"��|R�e��m`ؿ�������%��wWv�9���Â͋� �U�e��}Ɨ��natWt�9��r�A��MbtG�d����Iq�Sc��d����uP��-l�����Y�����5v�p J�_�Y5���WG��l���b##��t J�_�Y����F�n#�A��RG5R�	���%�Lϵ@���+�K>y�7�b�����\�]������6����O�O&�Am#���O�O&�a��n���:�$�d2>԰Q��: %��=rհY����$��W�"H�Ȉ�{r J�I{�,������(�'�3nP��]�]n�|m��61��]�]n�3T3.��-Tݳ��ˍp�jF1�A'eG��F���Qm#6Bq�In��A��na#ǟ�F���Q{�I�(�l�� 7���TNғ5��֌j��Pr#�l͸���I�(��m���C���a�����l_Z�N.���G��ϕ;2��tb9�����VG�]�z�p�/zJ�@Y#��)�M�B��9��aN������>�����<��F�~nTiU�+1�9g��h�ύ*����b�#��s����u����Q%�18~��L?A�<7�[�:�2��ԝ��(��F�XC���w�ύ��ܨZ�3F����;��F�ynT�������~n4��F�����e������,�h���iV�%����OQ��̩;�ᴄ1���������{k��O���~*�b�'&|��j��̝Vwb�;���g��-s�<7���G��f'&>�;��m���;�͉���E(1���;����s�y?7��Rה�q;���?&ύ*-��a;��Ŀ%ύ�����9�[+V%�ynT��N�9�NL�S���_�/8i���ƚD>ύ��Hl椝swb�w�~nT��N�9�[,V$�yn��@3�\���B=B���ٹ4'�r�<7�`�ٹ8�G���s�Jkp����zn4��F�����kuZ�b��s��������'��u8�P����Q��/8_��|������5s2s���[5���t��~�(���}�VM��4ݫ	1��U�}>M�J�"��{vb�W��t��~�(�soN, �|����ɒ���X$��4�+�����U�}�M�YMqF��괄�۱��d��NKؿ�����y����3�1|A�=��Ą���?����yv'&����!L�/���n1e�f�b���{^ى	�7���#�Wsb�����pq���-�����a� �^�����>�{��3Ⱥ    ��]Z��i_Z��{y�������d���{I�>M�J_s���Ą/�����)�����v�b���{I���?��{� _r/9;1�Y�v�b��{�͉��b�����K�NL|w�}a2�Aƽ�����>�{��3H��R����8��S�Z��KNK��-|A�����R�f�� _n/�81a�a�b��l{�݉	���D��mWM��4�g&�L�,-;1a�a�b?cT�a�֜���0��1Έa�6����0������U�}�M���	-�߫�Θ��~ƨ��,}8-a�y��Ak����{k�|K>M�Yd�
b�'&|1��r鋌�Gwb����q�3b�,'&|1���S0�̷X̷��t�`�`�ٜ��.N�G1���2�߯�GO�G1��̲���=z�=:�ɰ30˺�����n�WZ8��e�%���E"NqF�����NKc��D���.�[n-u�Xv�����v'&|��"�����.'&|��"��Ş}�\�_����E^*���\�_��3��("��O�U�UI0٧,,��ķ?u�TI0�ǟ�Ie�*	&��1�H|�Sw�K��}�á���?ǽTI0٧,�mTE�8�J��>e��J(�ǽbD)��N�����^���ԩZ�Q����xh~>�0���?MW�W<4_<�-���?��,yh>����^�|��r�K��l�� �I�_�z)��S���/����)b���~�R<4[M$,ب���븗��j"Ac��ϯ�^��f��1���?���fy�󟽶I�����
a��}iaB�9���B�屪�F�d�srU�0���� s���^
a�ǅUQ��{)�Y�������R�������sq�K!�b���p6����q/�0���� v���^�W��bؿ�¿����mR������{\=���s�A�>WW�W����/-|A�>WW�W��j�� �/H��栗��9��O�a�*���ZI�R���D�'7���=���'#İw�K��~��FUؿ;��q�?au$B?�;��q�?A�:���]�_ٿ=�Kk�*�?\�_ٿ��C��O���ߞ�/H���������b�:������ف��O��z)�7�X�/���鰗�3�1|A�'/ǽ����?�mT����^����� ����^����İ�����U���?#�(�������rv`!�S^W�We�����c"?�ueU������D~Jr�K�1�����&U�}��^������ �S��^�����������R<���?#Ĩ|fǽ�v�b��OɎ{)����B?%;�xh7�6�����������g��)������ce��)D~Jqee��/-|A�T�����?#İu�K����� �S��^�����B?�9��?��Al�*���R�f� F}��Oi�{)��`8ԝ_���R�f� �Q���x�|����IV�����+:���E��O���UК_?��L�W�W<t�=:�mR����^��N�G1|A����v�_�)�q/�Cw��ۨ
�Oǽ���Y#H	���{):��p��2�R��i��`�*��~T����Jg��)w�G����ﯴ0��rG~T����Y0|A�މ��O��۠j!栗�Hx.#}A槾�z��Ĳ�D��~jr�K]$�]$���^�q/u�Xv�bc���.��[�OF`%�E��zwxI�ޒ}2��5|eSw|I���tQ%F���l��[�OF�H��p|I�ޒ}2+�=*؇�Kq��_��%F��l����Z���]6/MW_W�1_���ݣ�˦+�+��s|�76��X������Kl!��rpIq����w�
�_�.)��X	��+���K�;f�d1|�g6��/)���b�X^Ǘw�V{b�I�������ja��3��+�+TX��?l!*,���*,O���=*X�+�+TX��kTH�2'�*,v_
b�Q_̎.)TX��D�cvxI��b�� �/V����B���Ka� X���K
�/����q|Iݗ�ݗ���Q����%u_*v_
�k������}�>�Kk!�_]}]ݗ�c�u��$+su�uu_�����+supIݗ�ݗM��stIݗ�~��nQ����%u_�v�	bTk������/U;�VB��pM�/��R��O�H�wǗ�}���'����/��R��O�^C�&W`W�oW��X������������њ<\y]ٿ=�K_����Uו���?��M���ttIٿ����nQ���Ae�f��d1�?_R�of� �/������3��	a�����3��ݣ����K����İ���*�瓻l"D��u�uU.�w��њ��*�Ǫ�r<`!YS^W]W�ng� �������*��X�[T(�$G�T����?���5%9������A_�)��%U.�v��d#!*���%�������Q�_Rܱ��?�İqve��/�M��q�ue�q�~�{T�q�ue��/-|A��W]W�f� ����.)�{��R'�lM��.)����kJuxI���#�A�7Ǘ����?�m$����K��������߯��0�1�x�kJw�W�}vb	���
�;Ϋ{�UΨdkJw�u��ӿ�(��)ݕ�w��U��=i�����K�;N�G�ݢ����K�;N�G���pM/)�8����2_R�q�=:�m$����K�;N�GV�[T��t|Iݣ�ݣ�� \S��K�=��b����H��;f�G�dkʝ���1?���s�A��,�/�Eb=�Kk��ppI]$�]$��nQystI]$�]$+�dk���H,�H1|A��&Ǘ�Eb�E"���K��%u�Xv�b�pMM�/��Ĳ�DX�3������H,�H����KW���|aդ�>�Kk����L}�}�����]����,��1��!�&�3��Y����B���|��?˾?Al[�]�l�dh>O��X�Cv�����|�UbX�Cv�����|�Ub���8��!���ga����:g�'C�=��0'�z��員ٞ��P���v������lO�*5��Y�^gm�dh�'C�
��a�^�m�dh�'C��]�Ӷ|24ۓ�J�pܮ�q[>�ϓ�Y����qܮ�q[>�ϓ�J�#�F������|��-P�h��uܖO�f{2T����8p���-���d�Z�Pc#\Gn�dh�'C�ZE��p�員ٞUj?{4N��:u�'C�=��,l����^�n�dh�'C���]�s�|24ۓ��j,`��]���|24�'C���]���|24�'C�����^o�dh>O�*1����^o�dh�'C����]���|24ۓ�Y�����u��O�f{2T�a���:~�'C�=�SS����v��員ٞUj��x�����lO���x�N����lO�*5���#x�O���d������9��X_vc}s�q�v�E7֗�X�����v��E7֗�X_�$���v��E7֗�X��p��v��E7֗�X�`���ۋn�/��^������ۋn�/��^�a����ۋn�/����4� �ު����r�� �ު�l�/����Q�?1���^���Qvc�����[{��p�����t{k�i	c�X��~���[�V�c��X��bؿ-'&|��H�İ�NL�b7�+��/:����-/�4�5�1�ߧ���X��b�$'&>���^-H�a�q�_5֗�X��p��6����4�+-�A���i�K�?WϦwb�m�[+���i�Wb���e�݉���X�[���t��m.'&�)wc��/�ʷX< ��X����m5'&�d���/ۚN,��i�Wb8��e���r��|�N���wh������� w���B)���������N첧�i�JZٍ�J_���2��8�i�W��˞���������˞�[+|Q�����˞���v�	i2|A��v�E�YNc    ��/{�N, �r�T���%9�@,�i�WbX��e/�?�j�/��^�g���e8-a�v��0��^_�%�ߎ��� v�k������?�����^��o����u���.'&����q3bؿe'&����A��A�7�_�����aAB���Ą���?�UİONLؿ����@�wg�H��i�/"M��� x����X_vc���h���:-�~��q3Z��%����?hዼѓC�*���2U��R4_��{Ua�ea� x6Ǣz���S��<e��@|�kv8@�|wZI�$�(�fG���_b�
���8 '�'�Wl�E�8*&G����*�P��brF�{KQw�+�V�'k.���)��_���˧L�=e����ju`L�	|�>@	5�Au`L�	|�F�je���rP�{bKq�~��x������(�6�$7M7���jw4@r��xZ<d���b����iQ���	jwXLrS{>M %���q1�M�����Q�J�˧L�=e�V`���`80&������I�:��ԞP�je��(�|�4�S������u: 7��0Y�:���<	16�r4@n�353�m��FX��ɍ�m#�؃0~]�ɍ�m#5�A����ɍ�m#���(
��ɍ`�3#��$������6:3��2��u`Ln��)�jԅ���|�4�S�J�j�aU0LO��9� /Ԓ��`�����;��졋��Kkc,���1U0LV0�|�i��S�d� �3H�⠘*&+F��[��[Lwr@���B�8*�
��
�a� +Ԋ�b���3@�m���OT��q �PbX��P�(Z��OZ�3�	�ꨀ�����E��)��P�4?������o��R�4[�$�Qb"#ԚCb����X@���P뎉)Z��b�6����81	�����DD�uG�-�V1	��*	��S�t�Pbda���~-�V1��m@)�8,� gyʗ� Ԇ�
p���c�j�A8˳��6����!18�� �/H�阘�� g <��dP[�)�Yp����*���� g�Ip�S���b�\P[���q9� Ԃ������1�r�(1�A*���6���(-�A&���
�6���(ă1H��@lc({�����h� G#�d�T�N �'��bC9� �� Գ�b����q j�Y�E�H�P�8 %�/���Xlc(g��D�zvTL��j��@x6���w$H�(g��D�z�pCc����I�⨀�{ڗ� ԫ����_?��W�����?���@�:&�����A_��A1e�f��g�,�'��8�r�(1p���S�of�ȓ���Q1e�f�bda�;���3@- d	�w$H�({�҂c��w"H�({��c�w H�({�"<�ba�;���3@��A}8$�hiw�/�n�rEw��~�f�W��*�ؚ]�]f��g~�m\D��)��{����7*P������X���j� >��8�$3֯e��
��Z~������F��O2c�Z�:�������'��~-c0
�c[��O2c�Z�:�m`D���.�T��W�?br�`�k[�+�K:�.:)�6������������`�"6�5�2}�_f�E����F�=I:���<�>��;�$�=a1
�>�u�?Y�I{�,�m`�F?I:i��	l�`#��$��W̢ٟ��𓤓��Y\�� �T��W��۽-l���r#�y�QŬ����F85#Fٴ��p��L�����|��vga9�$7���a̺|�!�Fj؃4f{}�!�F+60���:�$7�MՌj��������6V3�a"�-9�$7��Ռe#�/�m��a����[(�$W|We�t��mТ��\�]���ӿ�6,��xg2�����~��[(=f�TY.YY.�aB9-;��r��rAg�iš'U�KV��{6.bǞTY.YY.���v@q�I�咕�"�A�P{R}��rAl�"��2�����k�no�������,*��H��j�I�I�ajdqڝ�T�����H����b���A�B΋��#O�If�K�_9�a��Гb���Al�"��{RLr7q����wǞ��V�b�r���ؓb���Al�"�?\�]a���?fV�N�W{W�<�Kc�iÕ�F,�U�%F�p�̷��J	Al7�`�����?��7m:�0b1������zR�Fba��ؓ�0b�(���/ǞF,��� }�_ǞT�F��1�����R��b�� ��[�>���������9� y�_W{W����/���=��d�}}i��J�Ɂ�8Z�/���Q���N�'G��h��b�K_���١�8Z������ֈQ}̎=��F?d�Kl7�P}̎=��F����A�Ǟ��v�	ba�;xS%��v�	b���W|W�oW߁�,�����j�����_Za�;v߫�iY�]N�nzu�Iٿ���� vӫ#O�����r7�9������Al�"��{R�of� ��[�s�Iٿ��G��ݱ'e�f�ba�;x��ıƞ�d�A�w��������~�nb[�O�}�|�"��n�d��������M<)&�������>yRL���?@|A�O����v�ba��ؓb����q��O��M��=)&����0F��X�ɩ���_pg�>�������'�mk`��l��?ݾ?Akp����L}�}�����ݧ���t��1��!�/�3������z����ݗ���t��1��!�߇l��h��������>c�E�~PTia���>b�E�~PTi�N��>a�E�yP��)���#�����A�rUb��3�����A�r�-P���!{܇l��h9�*1|�!{܇l��h9���C����A�rUb8�C����A�rUbX�C����AѲ-b�6���=�3�zP��E����=�#�zP��E?����=��zP��E����=�#�zP��E�|�{�gl��h9�*1|�!{܇l��h9�*1|�!{܇l��h9�1Ecp��![=(Z΃�Jgp��![=(Z΃���b29d����-�AQ������[=(Z�����	-��Ճ�e?(��~�����}�V����a����-�_�|19c����-�AQ%����=�C�zP��E�/8d����-�AQ%�18d��������Wp��q�U�}9]�Jkp��!�����n���1��!{\�v��X��-���Ǖn��^��/1�A�}\�v�u_�뾨)Ψ��x��/�u��0��y��e�}��{�wp�W�]v��Wj؃���"��X׽R����r�]�ź��ab��ˮ�b]�J��s��m9E�=m1���N�W�]vݗ�u��0A����KL� �� t�W�]vݗ�u�İ!�y�e�}��{��=Ha�+�.��u�(��0�u�]�ź�� �9����/�u_�g��W�]v��Wj�����X׽Z�AHa�+�.��u�+5B
s^�w�u_N׽� �0�y�]��t��'��cW�]vݗ�u��:bl�+�.��u�5�56y�]�ź�����B��X׽Z�Pc#\�w�u_��^�U��W�]v��Wj56�}�]�ź��aR��ʾˮ�b]�J��'�Yu�}�]�UqF�}p2�Uw���u��p�y"�Uw���u�~�7H`Γ���뾞�{%�5H`Γ���뾞�{%�3`����뾞��*�d���<�˪����Wb����:�˪���麯j�3b�������{%�3_����뾞�{� k��\鲿���u��p�˿��KK8�а���.W�NK��pa2|A�r�uk�KF=]�J_�\9;1��@�����ͭ�؁a%�/H^�<����������*���z��� y�Jub⻸��Jg��\e81�a�a�*�dXc�ü�!��P�y	UA�=��zOCV/����Z@��    ���:G�:G� �/�>Su�nu� �Y`l90�����P��@_��2�xҗ�G��}90��|��"PB���븀*�g|im�Ea�uX@������|������2���?_���a1e�a�b�eQJŉI.���1����H�)����Ɂ1e�a��H	1J�ف1e�a�bX�_ #;���ް�^X�5�0�#
�����|�Gq`@�y��6����qL�cX�����?��b
�N�A_���a1L�ӈ���w�^��Z�K�J_��Ձ1L�Ӱ _�Ձ1L�� �Y�o�)`:�U.�Q8 z?�c
�N���PXz�sd@���/-�J$�Gw`@����WZؿ;.���z�%%r��;*���2`PQ"w?��b
�.�Al�,����K�弄�����1S�t��� � 4��^
�.�Al�,�?S�t0�H	����c
�.�Ak�
�!���_���Z�5H������%�Y`9  �������r<@N|���o����Ar��{�@T�4��ϕ�#���L	�B�ulL|�.�j؃p�|�S߳�M�(%�����샨�A���ؘ�#����p����Ϯ��a�A3;" �]K:��'��������Q��P͎HtjO�E5�ABh�$:M��b�,6�#��Pj؃��,�Itj��E5�ALh��$:���"��4��P����_�j��Ь��Itj�	���:$ 7���0I�����Ԍ6�b#4�F8C5��%�B�9 7�MՌj���
�������wZi�y���H�b#��G�B�;4&7��L	56BwlLn���6�b#��"7��֌+(?�ñ1�l�fT�!d��pAf�e�!44�#��=@Q�Ͳ�Ӂ�HN�	��p��9��� �(��.X��EnZ�H %�Q��$�v�b�k� 14��b���3@�aCs90�i=#��fY��ׁ��L�	� � .�^�"2�g$�������X$����H	1�@rd@�|Ӭ"V���J(`����s�APh%�0�����ĄVvTL�l���i�ELh���$;�4@|ALhe��0�L�� &��c
�� )!����^
�f�AcZŁ1L�ӏW��US�t?�İ�U/���/����v���O��Э�l`}��wYL�VLb����\�]��Ɠ��(����U�U-m\�r��;^W|W����/���B��u�wUKVK��1�/�cO��6��Ĩ����'UKVK60��rO��6��~���/��%UKVKb���Ȏ>)�� )Q��J��ח��q���]�]Q��|R��GvdW}WTr^T�����q�wE%�3�~�;\�q�wE%�Q� �/�Ď�Г���?���>��:����4*H�Fؿ:����4*�v����>)*9�JFn��o�>)*9�J����=u8�� 6���ߜ���F%��"���򻢒���_�y������z���*cL◣�⻢��Y_Z�m��=)*��JFn���=)*��J����p�IQ�eT2,�.�8����2*����1}RTr�ba�;z�$�\F%I�.�:����2*İћ1]����I���m��˕���_��/����X��.��ﳾ`�7c9�$�֯��� }3_��d����uP�Ȉ"����Z�� e��Pfy��A�ׂ�A{����!I�_ZGp���+��g�Py|���J-�(�~-hV�B83���|�,]|R���pfvew��Y���&8	����O��"H��pfv�I�I{�,�ab8�x����ܠ�F(�?I>i��E����F(@I>i���؃,ά@I>iϜE����W'}<sf�E����F�@I>i�E��C������r#���Ql#6Bsew��TM�m�l���r#���Q���Fh��.7��Ռ+��ș��'�l�fT�Ȉ����&kF����F�@ɍ`�5#H��G*g��F�ٚQm##6���Yn5P��pa8 %7B���p��9\�]������� �3�+��ރt����r�t�w�{���7H���J�� Y�A��5H���ȓ�=�hJ:�T�\ՉI���=�{�}��cO�� Y�A��r�����=H�{l^D��u�I�$�=b�Å������=�x^�a9�u��T�/���ټ��{r�wU����*ƴ����
J��j���Eg%W{WP2?�K_��Yّ'%�Aɰ`�"�S�NL��Ծ�v��);���d6(��Q�U|RP2� e�"�_����@� �1������٠���ɋ�*������'}im\��kvZ⿲���9� ��jsZ�?�����$pV�������1|Ag5G��׿�2x@g���W��T�����m�Ǫ�s�-����wa�ڝ��I�Pܠ�+8h�����c�����X�9�)�[�����(/�՜��-Fq��@�5g2Eq˓�d���?1L֝��-Fq�XG����B���X�",]^N٫'��֗XC�o��_��S�L_?Oha�Q�V(d�Ѫ_Z���i�:����/8^��x_��51�������U ��b�K_p�^��
��W���N��>aWx���/1|�	{�'�* ����� cp�^���D��W�}��N��>aWx���/1��;a��>a��D�������5��;`��>`7i�v��-��;_��>_7i�v��h�U�Z���3�1|�;^��>^7i�����|]���
�7���v}�v��of� �/~'���'����O��?<n�1~'���'�&����Ag�N���O�Mڿ���mİq��|�عy1�1��}�������ϟ㌉��v|�V�������.������/&����jJs=S��x�_,��Ք�z�4+1|���}�VS���\�mİ�}�VS��Ҭ������:1�]�v�
~�H/�oÉ�c��W��a���b�o�3�Y�İ�쯦4�=�����3R���;-a�q��:Zؿ/�%�?��c�-�?��?��A�狔��hNL����|����NL����������)��LiVb�"c�;ٮ�4�3����Q��mWS��Ҭ�pF��w�]Mi�gJsUQ2İ��mWS��Ҭ�pF��w�]Mi�{J��9ƨ��N��)�uOiVZ�������)��LiVb�◺����)��Li���_�R�5��v5���)�J_�R�5��v5���)�UE�[�U'&>����Ac�R�5��v5���)�j���.k���jJs=S�����.k���jJs�S�����.k���jJs�S�������eMw�]Mi�{J������v5���)�U%�~b���v5��>������w�]Mi�gJ�Z�/&����jJs=S����ؿ�[L]$�]$��Xؿ'&���.��g,��^'&>��.Ak,����Li�WlOi�*J�W,���u'&���4+���-'��w@\�c�|�I���-�~�ȉ-ЛSS�����5�@�NMa��l���_Pc����|�.�j5v�������"L�S�l�1��"���Q�d��t�e�g#�8$����e�)�J�v�5�RNi�gJ�� ��p��S���\E�?�(�k����\ϔf%�=*�~)�4W��\U�56�5�RNi�6�Y�a�_��k����\mJ�Z�=�����A���1����_�q �OP����"����`�_���."$�� ��7��R��z@5������]X@Y�4�Q.v�b�]A�a�bW�b�(,�_݁0u�+v�P��R�t��Ů��.�QX"���#�bW���G�_���� �}ia2�k8�.v��_?�D��tL]�]��FW�:�.v�.vA_�_�q0u��v�P_�_Ӂ0u�����6���ˁ0u��v��	v���a�bW�b�p��S�j�� k��_G���e��6���:���.����1���q     e������/���0��3����(%������?"$�	���8��3�1|�)%���?,��Rhv Lٿ�����B�a�����pƠ�S�of� u����ő u���' ��
��ӏ����s�� 	���� ��џ�/&����F��FX��������F��?_,�_�Z��R���W��T]�[]#@�ͮ�s L�5��5�Ճ�7�T]�[]#"$İs L�5��5����wG��Ǔ�~����C@j*s�S��e����� ���_ZT��(���:�\a��(����_��1)c��0���0�G�����)����
�O���?,��O���?�ጂ��a����İF����_��)fD�����S@j*s�S��Ψ�9� �|��{�B���8���Y_Z�\Q�yS�t�=:,�����0�����A_�J��`
�N�G�ͮ��$� �v�P_�JɁ0u��v�b�PJ��{��{tDH�Q���{��{t���RS��ʬ~�3��@��H��}ia2@�8�.�_Z�\a��(��H,�H��/� ��0��H,�H1|A(G��Eb�E""$İu L]$�Tf%�/H��@��H,�H��P����Ĳ�D���Rs L]$�]$��fW��Jѐ��؞�\ԡ�L
(5G ���Tf%F��P��h `��b������l��F�Pꎄ�'�޳�
��$�Rw(L�1��M�6�b���#S��Q8A(���+S������@i8&��z�>�j�8P����w�޳CB��p��T�z�2+1B(]y 9�����j� ��<���\�Tf%����ɩ�զ2+5�A"(-�$*��FڃLPZ��ITj-�Qmӫ!r(L�R���F,(���ITjM�Q쁗w�����b7��bv�怓�-v���1J��'��Y��6$���qR7�b7��`��Pr�8�T�T���l��qR7�b7� �!%��J��U���*b�2XxWqW7���/-��X�5\�]ݠ�c�v1}*���M�U��6#�7����>�X�Z��X��t�Iݠ�ݠ��`��Z�8�T�Tې�/G����*Г�Ƃ��#N�U��p#/�r�Iݠ�ݠ"�A����J���������|f��Uܕ��ӿ~�1_��+�+��g}i���or�Iٿ����fDT\��e��of�@Ov%�䀓�3�1|A��͎8)�7�d5�Qs̎8)�7��],��#N�����җov�Iٿ���؆Dؿ����A�'i�>�_\�]]��cw5��Zؿ���* �g~i���ou�I�"�A��a�.�
Alw�`�ꀓ* t+ ������qR�?ߞ/���s�I����b���'U@�V@�
΋��#N��Э��6$��ݕܕ���` s(����]�]�<�K��M���ܕ��3�~N����;\�]�����fD��ۨI��LbVb����m����?�|A��8)��ې�OG�����?����8)���.�鈓��0��a��J�D����>�\�]��y�H�CI�-��
�D������Y���z�"��Hdۈ�:��p�"��gF���MzoR$r�=:���6)9�H�{tX�!u�䈓"����Alw�PfI�8�{��{t��mRr�Iݣ�ݣ=ِ�jcv�W��i�� �Y(6fWrW��\?�� m�������z��� l��+����z���7"��w�FMb�g��],ؿ8ޤ.�.A_�I�'u�Xv��dC"�_qR�e� ��X�u�I]$�]$"�A�WG��Eb�E"�mH���#N�"��"�.��\�]�ObVb�y�ۤ�J����6@Q�L�&uWi�]�c��J�������\m�R�-,l��*x�� ����1'�U�ZWAPۘ�M0t��7�g����]0t��7�gD5�A�&���M��Qmc"��t�I>������nba#LWkW���$f%�Aޤ+x#'1�3�Y������$�3��6$b#\�9���$f�b����CN�I&c�A{�ɯcN�I&c�Amc����N�I�I�
�`�7�u�I2�dL2��8�u�I2�dL2N�D�t�L2�j8�N�"8rs=���B'��n�kd��ſ6��;��n�kd��E5��;'g7�5����_�6vK�n�kd��E5��;_��'��3�T�+!�ۮ�wңKә]Ŷ=0�u�Nzvi:�K����;g�5�k٦�F5���;_�蠟�&_հ�|�ū�[m�
1�j�z�ɍ`L�����3x�L�M0�Qc#\��'�&a�0��|����+�6B��V����������!G�}i�N����Z��ڗ����!��wCZ�~��Q8��s��6�N�������:bl�s��k���@9�p���[��Wl|�5����wm����������<�#�om�@����*bl�s��ȿb�Kl �����gC[�@�[
��<.��ת����/-���;�崄3x���i�ha����0OU+-|��;�vk�t�����k����tb��?�4|��;���
_�w�����Wub����&^1����XL���C�_b�swy_'&������e#6+NL|��Jkp�.�e��h������]NK�c�n��0'�����+-|�y��vk�3P;������풦����^��"�%''&�)w��o�
�"��B&@���+1|A����Bq��v{� cz/�ub�8�N�����K)�X,ε�n�İ��R.�W�9�n���a*�U����V(۶�n��0��R��
U۶��?W�%��Rۭ1g;��J_y/u:1�j��� _y/-91�j�� �/���Vo��9�i�Wb?_T"�'������(cT"勵N,@�v��XG�����h����@��*���/��v����VC��崄�۱�yB��촄�۱�����u/��Z������Q�2��of��(�$��LNLؿ���� �^f�Ŕ���?Nl��t/s81a�f�b��{Y��of�� gt/�81a�f�bX��{Y��U�}���Jg�r/k9-�~��!O�1�^�7;-a�~��A_��o��"�o�ݾ��͈Ħ�����/kJNL����?,��/k�NL����?��5�[,R�v��� |Y����w���?$�p�˚��ng� �5_�|�c�v����،VEk9-a�q�_�D/k�NK���������[K����� {Y�tb���?����&'&�?��!Q�/_�Z����0�1|A��V�_��?��qb3bؿ�NL����� |Y[qb�������_���C.���+���o��U�}���Jk���{vZ��ܣC��g�F���洄1�G���FM���I���]\Aݙ��-dr��j�6����\�_���'}�Qz����+��>�|��΁K������e�_~ƗئV�>�+��>�l}~��L�}f��d���(��rvL��e��+6���Yܟ,�����5����\�}~�������@.�ɍ�m#��A�E���`r#d�Am�+6BuA�D�65�# ;�:�ʃ邤�h�~���*���|C+�As@�ӳ��(�{ 7�Ty0Yy0�QP��@n����`��`�9[��C`�<��<�()� ߿	TP�/5�H��Eٿ
�c`���_bԔ����X����ׂ������X���~�ar�y8��h~�� ���c �����+�A
?O� ��������t L��l���;1�?Sl4[}$�ml���I��� _����10�F�c�J_���10�F��G�� �_^���V	<gc+�@�e��i�ϛ*-�A���(�YΝ.�#�(%� �,����̊Pr@��bw�� _�*�0�3��O��JrL��bw� ��E�����t���r@%;�pf�;]�ĀJvL����"=B���ԝ�؝.�ml�������    �ӅX�P)�;]}>�0�A�T� ԝ�^l����u@���c��*� �S�`�q�� J_�)��ظ�� ���bؿ9� ��( *�1�ظ��  �����Sl���'�QS" T�c`��V;������ R � �С�D �t���S��()��)�1 e���+�2P�o������p Lٿ���|A��G�����?�ml���C`�������r�� �v 4�s��2S�of� �1 ����3�Gz���@j @; ��  T�� ���'�g����c ����}imhE�u@����/-|A����(6���x� �S_G��v�b[QM�)6����Ԅ"hrL��= @��@59��h��X�1 ���b����Alc+ � R � �İ��=���h����O-�(����r~`%�S�C ���1 �1��O-� (����jqL���Â���uL�����  T�c`�������ZS�f��s0��S�f� ����@j @; ��G0��� �� (�����?j @� ��7���w�G h{ �҂Y���w�G hg �Z���0�F�[�|���rv�ݗ�F�
s�������벻/?�Kl�!ʋٕ�ew_�Lv�
���@�������(���ő&�ݗ��/"Ԩ1��dw߮�)�ݳB��8�$���u��������P�������6�mա&�ݗ��/���
����U��d�?�������.YT�8���U�U.=Vd�Ϡ�.�?�j������Klw��	�cL���c5���;Ȥ*p�*pAl�!�@w�IU��U����Zat��T.Y. �6|msw�I5$���M���p�I5$��E@�����?�ǿ�峡k�����~����qi�<]�]����/�ͅ���T-��֗��Z���1&��� 2�d-�r�I��l%� ���_�2)���� &��r�I��l%� �/[��0��Ja�&CTZ^��~�V�b�o�J�����'i�Җ�uevE��P��!i��\�]���/�ͅ(��Y��:�O+]�&���)�A&E�]��� kS��L��6��Qg��(bX��~���
��a&um*vm
b��M�3�kS�kS@&�a��0��6�6�ݷ������kS}>�� eS�+��kS��cQ��BƦTWeWצ����o,���+��kS��O�]+ؿ:Ƥ�M�?���6�9Ȥ"��?�l2����L*RZ���v�
�o3�Hi��O4�a��0��?Al�!��fR����',�}+ؿ�:��{җU"6��2��;�ZmHؔ������"�X	ؔ;`Ӥ���?����?cR���;j8\%aS��L�����6���Q&e�f�v�
��3)�7��dl�t�Iٿ����&C�9̤��������?������Ak��)���~���s�"6�uev��ӿ�6����*��Y_?�]+T_ǘ~�v�b���MM2)�����6�ΘeR����? �ݵB�19̤�c���dljr�I��ng�h�ΞfR����?�����w�&�����k� cS���+�����Dljqeve�q�_�$lꝰ���"��T6�8Ƥ�?��A_����A&e�a���1�_eR�f� ��V�u�I����|AƦV������?�m2����L�����v�
��36C���3� ������瓿��[!bS�M|��������M�6S��y��A.D��vǘ~�v� C$l�p�I��i�� ����2)�8����:fR���_��I_����a&u��v�b#�F+������'��w�ˆs���L���ml6����g��',���p>Sߟiߟ �58d��|��?Ӿ?Al[�M�3�����	#����:����g��'�a��>d��C�~?��s����>c��C�~?Tia���>b��C�~?T�_p®�	[�����J_p�n�[�����J_p�n�[�����M�����}�V�~����}�V�~�o���4��>d��C�y?T����>d��C�y?T-���uȖ�~����u�����r�ڗ���ݮC�|?���C���58d��-�m�~�R���u̖�6{?��BuL4��:h��C����pG�v������U+�g�v�������Uj���v�����f�*5�i�]�m�~h��C���C8n��-�m��P%�A8n��-�m������q�]�m�~h;�*���:n��C���V$��ׁ[�ڞ���ϫ���#�|?����J�g�Ρ�]�n�~h��C��]Pc#\�n�~h��C�ZG��p�e�}����3��8w���-�5�+5���]o�`�N��Z�A8x�+�.��i�Wb��p{�������{%�=��+�.�5�7'���ەn���I�oB�4����o���웚��S#�ޮ|�l�o�`�԰	�~%�e�}�{��q��Y���F���Q��r�W�]6�7k�Wj8��{�F��|��1O�Cȹ����u�}��Js�'��u�}��]MgF��5�VpG��Jo��'��u�}?�j� ��O ���~�� �O����~�� ~�O����~컈��җ��/�n���^�a��/�n������̈��������{%�5�^�z�_5���`�~�3^�ڜ�p�a��1^�:��0�a��/^��n�x�����4� y�[ub�;0��~�$/{NL�b煻ό���-o�4�+����ŉ���N�?c���w'&��;,��*bؿ_�W�}7�+����i�L�?Wc���>����4�+-|A첏yk�CP?�?15dh���391�OY��r5ch��:1�O���|A�������`����˾�[����k���Kc�������9��f�[�3H^�՝ؔb�Kk�����?"�~����A�r���U�}��Jg�osZ���w���9� x9��B)��{��/^��n���i�Wb����HՉ�Jr?��j�� y9�pb���O���$/G~o���i��-�� y9rqb���O���$/G�N,Ԓ�i�Wp�ˑ�-C?�Jk�9�w�^=s��3��m��s���v�9�H	1��p`L啦啂�G~�����+M�+��eƦc*�4-��(<��N�T^iZ^)�Qw�@]����z����7��u90���_Z��]����z�K�Ђ�-G�0]L��FY�^��0]L�|��ݹ{��i;Ϝ*1|�����)`��1|�/��S�t0�g�,J@Ɂ1L�� �3�Вc
�.�)!F%4;$�쿟9Ub�eQ͎�Q��ӿ`~�쀀��>�Kk��e����l���a[�82&��gDƃ9߷+|/�9m�̩R���[qlL�|�.L	5vAulL|�6�j�f��ccrb�{�A\�A���ؘ����p!���贈'�m��Fh�Ht����o��NϓjQ����Fh�Itjo�	���;2&ѩ=�ը*�oW_>s��S���Rb#t��$:�gբ�%bBm8�%ѩ���6�b#��$:���"�� ��plL�S{Y-���Bm:$ 7�)�bl�鈀�g|f�$��t@@n�3?3.�$��t<@n��6�b#,ǃ�F�	�Q{�jWZHNh6@1�A^�-���F��Q{�ccr#�M��P�0�:6&7�Mьj��P�!�F+p���P%��|�Ͳ�%�T�0]��-�Ab�'�T�0=F^�C=9*�J��J�Al�,��A1U2�O�I�0zC]O�g"���zvXL����|A^��_�i?��FYl��XD��LPb8��P/��Eb��D �x�a�^��#0�g"��(�W/���s��B�:.�xi~��� '��rZ���?�l�ĄzsPL��l%Ï'�1�ޚ�    T,�/1�/�o�)^��d��`� %Ի�b��f+~��<	���J��52B�;.�xi����k̓�P(�Y����M�p��D�c��}ia�A}8,�gy�� ԇ�
qC���l�����b
qC�A_�91�Œq1�8	�鸘B����� ԗ�b�P�-��`�,���	b�Kg���q��$�g"������@l��{"�b<�d�^�bKt��� 4^�bKt�$OB*�:*[�����6��%�bKt�,�D��	R������������� J_
�q������FYp���J"b�g"����Fv\,"�~&H����CAMڿ=�Kk�,�g���;�?�{��t�I�Lk=��\{��O�z0�� �Q��#[�+��
�I_?���7�.W{W3֙��6,�<-WzW3�3��v�i�ʻ���l�B�(�}�¶ׁ'5C��2ɖ8>��u�I1�eL2Rhu�ס'�$�1� �/�ȶ��W(&��I�QfI�=)&��I���B��/�$�\�$���#ے+�+��)'�����ȶ������_bQk̮�.s��c5w9A��m���e����uP�|e[q�I��k�F����Y���j���MP~�9��r�A{��l��'��~-g8�&Fl�����Y���j���}pM���V�l�IlD0[uA�_�Y5B�5Wv��Y�:,�����\�]���Y��-���O��̢�B��;�$�=f9�Fl���ē��YT��-l���ē����6����OO�{fQm#6�p�I�I{�,���-l�+��>4�͢!�ӆ�OOړfQ���iӕ��F835#H����0]�]n�3T3���6�tEw��TM�mc#,��F���Qm#6�r�In��W��6�r�In�հ�����&kF�M�(���?ɍ`�5#G��-T_�TNң5��֌j�XN�!�F��5�/�U�U].]t��͋(�$W|Wu�������/���U].=�Ko��ٕ�U].Y].�m\D�1;���r��r���o���{Ru�du� �1�������m@/�b����j=HV�b���p"9
ml��� g������H%���/1�A �WW}WP2?�Pf�"�_]�]A�|
�%w�8��ڻ���_Z��(Noﭥ�d����cɝ(No�<)(�{�dQ��zRP2[]���A�7Ǟ��V��x)y�����W((��.��P� ��{sb>e�O��A�w���V��x&y���U�G,W�䈃N���8by�����uvٱ�<�}�o.���s����}���8�TɊ�RhKb7�`��r�#��z�_P�ӧ#O�#�Al�"�?zR�Gb���OǞG,�H��������8bۼ�/���?�^k���_l����9�!�ƛΠ��/�T�A�փ� kP|3�}��]~s�oZ�|\�=�7���޴v�������x�Z�z�R�e7#9�����&�q����So�+f-)���
�Sr�)�7�ob��ʛ�|��~���ۂ͋�O���8��W��_��-����
��+���p�7#;���d��'��A�͸+o����7�����]xӤ�۱�6P���4i�v���e7�:�����a��Eؿ:������A_Pw3������>����-��`7����wo���
��q��M������p����a����wo�� �Ū��j�k�������c����woX�/��Gs&Sm;{���&k�d����wo�ca�;�V���hc�b��w����aQ%�㌽#�.�~��GN�q�]>�>A��������ç��'|����wx���aQ%V��w|���aQ%�/��`��E�yX��1���{��zX���E�� �w����a��5Zpa�;�V����D�㎰�â�<,�`"�qG��aѾUZ8� {��zX��E�� �w|���a�.�h���y���a�~Ub���z��zX���E�T�9	��`��E�yXT��"�yG��a�~U���#l��h?�*1�A�=�[=,��âJga�;�V���hc����#l��h��*-�A�=� [=,��â�ϥ1���_��E�~XTi���y���a�~U�����k��h��������l�r�O˽�D��U�}?-�]���D��U�}?-�Jcaϻ�]����r��gİ�]ڮZ��i�WbX���ٜ����i� a�����y׶����[�VE�ߥ����{�5���we�j��律R�����U�}?-�J��Ea���U�}?-�]MqF�߅��徟�{%���we�j���^-���ϻ�]����r��0���mW-����+1�Am��k�U�}?-�]Ԓa�.�U�.[��i�WbX���yն˖�~Z��m�-����+1�A��j�e�}��{�oPz9��v�r߭�^�aj/�U�.[�+5�A����e�}���.�ɰ՗�p�-��Z����r]5��[�}Wc�Q��u�˖�n-�J�P���*w�r�O˽Z�A(�\W��l���^��
0�U�.[��i�Wb؃�uU�˖�n-�]Ԓa*0�U�.[�+5�A���e�}�����8��F�*�e�}��{��=��\��K�r߭�^��T`�k��l���r��0���)[�+5B�F`ʖ�~Z%� `�k�l���^���/�5S����r��g���L�r߭�^��ڣ>`�k
�l���r�V$���L�r߭�^�U���L�r߭�^������)[�wQLVPc#\�0e�}��{��Qc#\�0e�}�����8ը�\�s���[����r��ˡ[��n�W���68՗C�܏�r���ŗ�_�r?N˽�_�S|9t�����<IgP|�N���-���+1�A��:��C�܏�r?��X���Q��h�2*�
�FqP@e9�e9���XdE�cb*��@ן�" ���Q�Z	�R�d�50��b*��,��bp�氘�r4�r�M���a1��h��H3�-0��b*��,��H3�%0��b*��,��6ɂt��5��ϕ3&� ���e����I&���PY��1( NN�1SY�nY� F����T��[�#,���c8*��ݲA_p��鰘�rt�r�M���tXLe9�e9����c:,��ݲAgp��尘�rt�rD���_�(����r�����=
Y=���C��s�A��X�
(���z�����㘘��0�1|A��|S�f��x�5��qTL�������~&�Ŕ���?%�H%�Ŕ���?�a��grXL�����A����)���$��hv\@����oZ8����c�ҒX���#�A��̎
(\:?�Mks,�_P�t.�@	�����b
�NåA_P4�gK���� _P4��b
��P��&Yؿ:,�p�4\�05A�:,�p�4\Π&h6��.��K��&Yؿ9.�p����"��ͻ$HM�{��"��`�樀�H��x�|c,��P�e� FB����S�����'Q4��b�"��"�$j��pTL]$�]$��&Y�8,�.�.(Ae��pXL]$�]$�Π&hN���Eb�E",�$�OG���4 %�5�	�WM��i �t�obX���9����� 9=pQ4��rz�s�@T�T�帘豍��X��������M�p�A�qdL|�.�+6�"�84&'>gD5�Am�z�#����8h�߱�!���φYd���r��s��Q�P��� 9��i �(!F49  ��yw-�m�E4; ��yx-.���츘$���ZT�T����$���ZT����Ș$���ZD<f��Cc����kQ{P%��Cc����k)��F��IrjϯE���ա1IN�����P(��B!9��i J�P(��r#�k#��(�����LԌ���4�B�9.&7��Ԍjd�)Ź1�l��@J���#cr#�    Pͨ�a�;4&7�MՌ+����И�6V3�,(Zá1�l�fT�0��0�!�F��P2�N���� ��*���bh������=@%���`h�i cOPZx�z�5��t�i j֠^hMG�"5g�������bi��m��X��Ef:�4 ���Bk9.��8� ��س0��&�	Ͳ	��@�8mGu�Ie�'~J��lpڎ���&4�&���B��9���	Ͳ	� F��9���	Ͳ	A�tg��.���S���>����{w�w�M��2�v�����*��?�M�\��.���	ݲ	�l^D�}8���	(I_pƎ�֪lB�lB7�a����&t�&�M���t�Ie�e������O*��-��p��?�lB�lB��c�������/GNNٱ\�]�\���'��X.���?>�|��x'g�|\�]������E�_Ǟ���,�.�_��C������s>�>)���Ĉ�Kr�I���J�.d_��O�����pŘ39���?��� F2;�+*?���M�H@f�WXr~^?�-.��K�+,9�ރG�B�Y\�]a��YoZ�a��ؓӰd@)���ߥ7Sb�iX2��jofq�Ia�iX2�İu�Ia�iX2���_~RXr�0�7�:����4,�p�7�9����4,�61������\sFQE)�қ�\�]a�uaɢ�R�7����c���_5ha��ؓ˰d�.������5�շ�m(���1u�Xv�b�a���H,�H�������O�"��"P
Ơ�f���Eb�E"��jo�t�I]$�]$"�A�O�xW��c����?]�]Z?��� kP{3�K��B��3��61b,�u��֏Z������o��i�t
�I����� �,�~��:�mfD��qJZ?gr� ��8%�+�j����8%�+�+0E8+9%�+�j��lI.�.�6�J� �\H�$�w��2�KE$)��*��]�]��Y���dcvYw	(�}3n�$�:�������geǟ$����͌��(	(퉳���[��(	(퍳��?��Y�(	(푳HR0�8��߱���YT�̈�P]�]n�3PS������������8�����g�f\�������6S3���6�U���L͔��'�KM�j�?ɍ`S5#I�̈��ݿ,7��Ռj���������j
r��;%7�֌jp
s�pJn��Wlf�Fn#HR�������N.�忄��ώ?��Y�2�%�R�+��0g��Zٕ�޴v�������%�#�i�r�t�)��_��&��{`9����|[�1(�Y�ᧈ&s��M_P����O�L���71��-�i���S��b����e�[�9���c�71��-�i�s�_5t��J�ϥ3vA�r6�G�8ύ�_� �^��,�@�<7�lg�/���4�s�Jg|c��<�f���Q%�3��w{��~����<B��1F�e)9-q��s��~�0Y�NK?�?����t<��������/%����X~���E��G?��#6+NL�"���I��7�nO:~�?������rb���v��W~İ�NL?َ�HB}&�/���s�c?7��\�������B���1&��i��e9��s|1q���*d(V������u81�,V�������qb�OY��!�����r��B��y��"=ؿu'&N�b�E���#���rb�(+$$�XC����Bbn��FՂ�5R�����znt��F�VE���B�v��F��@���B�v��F�����?Z��[+"�q�Ub�"c�;�Vύ�������1�G���q�Ub�"c�;�Vύ��ܨZ�/
��cl���8ύ*1�Q��c��F�ynT�ጂ��[=7:�s��b�dM��1�znt��F�Ψ����s�c?7:�g���Ow������WZ�� ;�����^-����U���������7�n)=n��3�1|�xo���%&������_|�[J�S�of� �1��-��Ą���?rF�k����of� �5��-e�Ǌ���{� k|��[ʗ�{��?��y��p���%9-���oZc��R��0F?�(&���qkE�?N߽���ǉ	_t����.�#��kqb��b� �/�������{� _,�_��b��?�a���[vb�`����3��[��"���~�j���o�������7�����i	��c�* ����:-a�q�����	��qk)��X����qb�����*b�'&�?��A_d�����q�&�������~��{%�12����U��8}�Cr���׷���q���(���oW}�c�ݫ�qF��wy����^ia�����v�w?v߽��������~���!���ŷ���qb����A_|/[~���v�����b��˖�~���q����^��,'&��i�� c|/[Nى�sq�=:��o�e˩91q0N�G1��-�l9]�W}�c��QL�3�u�-�䴄3֧�ia�o�e˹:-a�u.q��W�[v�r���H,�H1|1�y�������b`�R�Z�e� �/&�/݉	_,�H1|1�q��"��"��0���5;1q..�H1���mNL��.q�3bؿ��e��8}�Jk,�ߒS��� .��ЪS���; �}�Qv@��!��-�jd�WUV0�i�L���� k,S�S%F�o��q�52���$��x��W�|N���Y���2�ꏙ?�M��3��s��2c��N��8��9��丗�r�����d��8�l�Y�F���̎|�q��N� �/�x�C_
�f;����7�S�RH4�i�6���š/�D��fAk����W�|��%���).��(f��7�ͪ�u�E1����br�?�q/E1�]�����_�b�ʅ����i�|)�Y�*�6���͡/E1�]��$���9��(f��\�8������R��U.�mZ���C_�*W�*���w��WW�z!Q5A�G�w��WW��io�oV�������\��7-�H�ǽ�U��U.�ዌ��_�*W�*0���:�rծrAl�*�?�RW��11鋂��C_�*W�*�0F��ˡ/u�����Va��З��U~�֨��ܿ���7-�Q��r�e���̿� ��E��q�e���oZ�����xJ���%���1R?�_������U?)9�����a��U$�C_������u?)9������AcP���C_����0ΦU$?�C_����İu?)�ܿ����+�����R�*��/$�&�ha��2�*��?��s|A�O*.�2�b� �/��I�q/�������~Ru�Ke2����lZ���#_*��-�b����T�R��n��F�a��З�dt���ئUؿ9��2�b���|u?��ܿ����7-2I�o.���?����fUؿ�̿���X�_�d�~Rw�e�a�b䑨�I�q/e���F�a������0��M���p�K����|A�O��B����Ơ�'M������?�mZ���C_����0֠�'MgU0�" �a�~�t��D���\:����\�_!���oZ����\�_!��Yo���~�r�K!�i�� �/(�ɏ_
�N�G�M��|>�|)$:�0���'?})$:���u?99����{t�F���O})$:��pu?99�������a֠�''��W�u!ѢJ�2e?9�Կ�H��U)�����e��Eb},�^n��"��R�e� �/���Ł/u�Xv���1�_�R�e� �/���š/u��=�j���'W���Eb�E"�mZ���C_�"��"�pu?�:��.�.�`�~�U�#{����Wb�V����G�����/���p��Ȟ�qz��XC����S��⊄[�;�%�>gD�ͫvۋK���Z�X�]7$p�>�e��/-���Q�Kr|I�β�A�/��`R��l�F�T�cv�F5$d;5.ٍ*$�CL�!a?F��H�s�>�!&Ր���    �p1���!&���AlS!\V\�]��r�hZ�A��bW��\=�r�>�e�-,�񦵑�.��ha�+S�%�Q�WǗ-t�����Ou�I��bW�g���&E�]���nT���!&E�]��R6�Os�I��bW� FʆS��1�+S�+S�T�wgue*ve
�d�����r���T/����h���R���T?�a�U����g���2��z�ڍ*�8���LծLa����0�+S�+S�T�OG�ԕ�ڕ)��F�?bRW�jW��K���t�I]��]��Ơ��Y1�+S�+S�3�a����2U�2�ݫ���˱+�����8�������zԔ�-r,�˰+���z�ڍ*�XǗ����?�|AuMz`R�of� ��9����3�G8� ɒbR�of� �/��I�!&e�f�0�5);Ĥ����AlS!���!&e�f�b�U�$cv9vue�s�������K���A�У������˰��A�X�]M	���TQ�n��Tפ� ��t��ÂM��u�Ie���Al7�`����t������&U��TƠ[�p	Ơ�&5��TƠ[��6���!&�1�1�pƁ��˱+��O~�"cCyM�.Ů�?>���̈́�wve��oZ�Q�w�`W�f� F����`R�f��K6���&e�a�b�Q�������?�İ�p�I����Ơ�&M������?,�T�O������?��V�?]�]���yE/8��\�]��y�<�Tפ�2�
=��x�ڍ*���B���ё� ����K
=��$��k�� �B����a�nT!��8¤��{t������_(�8��0�599Ĥ��{t�%�
�cO1�{��{tۭ*�ؓ���GO�GG8�9��r��"�.�XTIR��&g�bW���o��N2��e��Eb}֛���&gǗ�Eb�E"�m(���L�"��"p�nT���&u�Xv�b����\bR�e�g���!&u�Xv�b�
a����H,�H��Q�W���Eb�E"�a�k�U_�`�1����G�T�_�5��T�ʳ7@�%$���k��U}*��Q�#�h1�I����Π��1�Q���Q.D�M�2�Y���q\�*��e�� ���\�2�<e�� ���}L����̦��ɯP�`;w�6��>�*5B�����Jh��C��	5�֝��H��|G���6���L��|�8��;�79�9_�Q�r���&�>��8��b�|�����q�b,6!��W�-���P%�?���s��C�y?��@ڃ�;_A�|?t���J{v�+��{?T����
������Uj؃�;_��|?t���J{z�+���{?t�����ػ\��|?t���J�|�+���{?��&&���}7B��o�~�8�*1B�]��[�:���j� �.W�-���P%�=���}��C���԰�w��o�~��C����=������C���԰1x�bp�~��C�+��56����C�����Qx��p�~��C�
B^�0\�:��P��C��ˉç~?t��C�� /'���й��b&6� 
/'
���й�UZx� �� |��C�y?��@Z� �� |��C�y?T�}�Q	��	§~?t��CՂ�[��S�:���J�"�81�����~������O�`?O��S�b��D�S7���`��:b�\�W�s7�O5�-�?��Π�^ia���NK�{�9��Ƚ��֊%3�4�+1|A�{�ŉ	_�����E�ev'&|��()��������n�Wb��*����E�`��`?�T�e�e5'&���`��pu�eM'&��`�`���s�_]�{������C����,����1�r��pZ����?4����kzn-u�;����������/v�ǒ��՗5u'&6y��?���/kZ��:����a��������./v�1�A�e�͉���<C��Π�����B�v�����2�R}Y�e5ty��JgP|YKuZ!�9�����d�R|Y�pZ!�9��e��/(�����"�g�Z�/����8��͟����������
_T;��������Ą/�����_P}Y[��"�g���Q}Y[sb!�?����5]�=ؿM'��]Vb1��/����s]V�'���NKؿ���1����%�ߎ���@����R�of���_���81a��~r5[�Q}YGwb����K���c91a�f�b����:�-�����aƠ��N�+Q�of� �3���s:1a�f�bX��˺��#�g����X��˺.����s]VZ8��˺���`��Teh}�ߞ�i	c0tYi��/�Sn��9�����/�ӝ�������՗�YNL�b]Vb���˖�-9�<C��h��T_�Ԝ�8��e%�1��li:1q0��S��!������s���Jk��W��|�tأ�
m����壦�5Ux�T_y8�vΣ�Jm�,h�pXL|Nݒ�I0h�pXLN|N�RT#�ȷ@������Z�9Tl: �?�3�1��f�[ O�����ob؃o�<
���)^�x{�5��cb��zj&���@^�Ij���F��a#\e��Q�a��*5��wAy���^R�+6�"�8,&��=��0_�qXLRS{K-�����h�������X䂒�r#�k#��|��X��gt��I��Jȍ`�3����d���F���bs,���A1�lzfT�䗫 _>j:�QS��=(�/�a1�l~f�;d���br#� ͨ�A(�/�a1�l���I�����| [�@P� ��P��t�GM������R��t�GM��,�T�"3��QS��7��/���L�y�T�M����HL�y�T��a�*�����5��QSI�ct��"/��QS%�1;�;&q�<���䘨*�1�HK�y�T��c�P�t��",��QS%�1�mh(`��*��T	�ᘀʖ狕U;S�*�!�-�#�s����1�-ϖ-b�ba�鈘ʖg˖���
�2��H,�71|A�PY���l����6����11�-ϖ-|cPT�cb��f˖1�AyPY��)V�-[�m#-�8(�N��)oZ8�ڠ�8&�N���o�c*��㐀:��g�i��jr@L���N� �)9�䈘:��������jNL"�4���uA5;&�N�b��I��͎��ӿ���0UA5;&�R�N�� gPT�cb*�Q��bca��@l��{���T��@l��{�<�z�Z�MqsOcVZ��j�Z�Mq�Lc�4	1�_=�D��A_PT�z 5�y�i�j�� �6��bS�<Ә���Xؿ9&���Ƭ��=RT�cb��V;��!�HAPm��)VZ��bca������(ؿ{L"�@{�"�H9P�	(���|���4�@u8"�����AlS,�?S�of� �/��w=���<�4f�w�Au:&�����Alc,�?S�of�H��(�:&�����AgPT�cb����l���������++���嘀b��b��}�F9P]	(V�?F�8�F5P{P��+bb-�S�� ���]��1�3�Y��
�ZrHL��n�4,�&�S��+b����ܯD��n�4��
�ZrLL��n�4𝍱`bwAА�����3�jw=А����o��1���ḓ,�~��:���B���-���Fs�򼩑���ӥ�c���Ҷ�'�c6O�m�sӧ�����t�v9w1}��y�y:�$�.�3I!�mPuZ�:ɹ���.���vZ;I,�K�����q'�%w��R����qTIb�dX2��H�<�;I,i��E���B��2,Zi��z[�C8pKr�v����mPD�%�l�����vGɖ��r#�a���`ܒ\�]n���6("٘=k���l��k`���Nr#�<ͨ�=8uKv�In�W`�0Kq�In���6)b#ǝ�F���Qm����1�I%оjƝ�|�j1KuIw�m`x>hmN�>�.箺��m�7[�`T�rW��3޴������    ��6HD��	�N�� �ǿ�[Z��'�m�,�bdp�@s�Iu$"�W)
1Kw��� Y�6&btǜT�A� 2����K1���ob�p(�)��?��_��m�1�.鮲��������?\�]e���"�*N�����R�*�?�q�/(�)�'��Ζ�b���OG�T6:[6:~� ���CN*�-��8e9椲�ٲ�a��D�9椲�ٲ�Al��`��Sun���71�A�M}\�]���s�_���J���1tiɜ{}��=-$]�rW��X�]V�T
o��2���/v���ȹ$���_�c�ni!�qR���?��
ojr�I���N� �/����1'u�;�?٘��cv�I���N� �{Z�:���D
���ibؿ8��r�b�ۘ��tW������nj�����U�u��7-�A�M-.�ʭ�g�imH���N�ܺ����ni���'Un]��b��z�ZrR���N�Hk���1'Un]��ba�易*��v������7j<�<㙕�=
njw�I��j,2�mL���K�+�����O�n7�`��r�����ߴH�QnS�K�+���e������p�Iٿ����ni���'e�f���6u8�����A_PpS�cN�����6&���1'e�f��d��`���F�g�g<����嘓�3�GZ��_.�Xd�X�|�QoS�˹+�?��s�A�M].�Xd��7��ȸ?8)ٍE���B��q�I��n,2�|A�M{rR,��b�����sR,r�g��1�Sr�I��n,2����]p��3�3�Y-�ܴ옓b��Xdۘ�tܨ��s�gVZ8�z�v�ۨ��s�gV0cPn��r5�y���JkC"�_pR�f��+Q�6�8��?��A_Po��;⩯���؂ ����߽�|�-\A|���z���q�{��v+�a�w�wo��a��V���w��� �/�[qS߽þ{�=v��d�w�wo�Dح:����a߽a� �nw�=�w��� �3���a��;�7�a"�vG�S>�cΐO#t�v�S>�:|�����������<���O#t��v��S>�� ��E'�nw|=��3��	b���������*b���������ľ��D�펰�S��]�1���aO��;��7��"�vG�S~�N��ӳ��w��d!���7-�A��� �GK8c�$^�c_�;�^�h�$^��������Z��b������u|*�k��v[~��Ų$^�D������Z�ċӳ�bD������Z��b�����u@˒xa� ��w��doY/�a"�~E���B��~�^��s�İv�"l&L�j�[�5���a�[;��x�D�����5�+���- �gՈ��c˹������v��~E�r.��j� ��W�-�2O�ˬ԰�v�m9�y�\f��?���U�.�2O��<Ek?���_��r.��J�P�ޫ��e>'�-�ɾjT����]�e�g.�� T����]�e�g.�Z�?�n�Wu���<�\f%��Ǡ��_��r.��Jm��F����\�is��h�/����v9�y�\f���Ǡ½_�r.��S���F�j��\�is��ZC��pU�˹���2�	56�U�.�2O�ˬ�p���s�s��ˬ�0���s�s���<Eg?�� �_u�r.�<s���� �_u�r.��S���F�
��\�is�����_��r.��j���_��r.��J{P�ٯjw9�y�\f��?��W����<m.����
��c���Fȶ��s�
̥�2�=�y�R2���`��b��k�eVZ�����#��
�X{.��oP}9N���s�יˬİ՗�T_.=�y���JgP|9N���s�י˼Dc?Ơ�r��˥�2�3�Y��J/��K,���e^��16���\z.�:s��Π�r��˥�2�3�Y-��]�r�_pY{.���T]��8-�Ʒ(-�A���i	c0�e��~|A���֊��u�2+1|A��ˉ	_d�@������Z�=�E�}}1)��91�=�E-H�a�6o�x�Xg.���a����8��%6���:1q0�-K4��1)����j�_��^iu���x���c�j��\ͣ�]�Q���[�j���E�c�[+�@�ګ����1���j���e�cf'&����^���.�l�X��i����QT�l�䰀��Q9�q��⨀����d�-��,���^��ߊ_+�X�ob�
N�VSY�aY��x6�"3ZSY�aY� ���o�q1����D	12�w���Y�aY� �Q`�9.�J����d8�[s`@���y���/q����~J^:/^�G����(^:?F���ߺ�b��N�A���뎊)^:��F����)^:�������p\L��i�4,���m8.�x�4^�0������xi�(�O��/��K����m:0�x���7-������~I^�>��%���rX@����oZda�堘��xiX�/��o�Q1�K��� �/����b��.�Al�,R@��b���;/LL�����8.�x�2^�0e��.�_��.㥑(!F(9.�x�2^İe�=9"�������1�`���Uv�om�b�MkPv߳���3��6�"��OL=gDă7(�ف1���s�@T�����|d�9�@ %��š1���svAT����И|f�9� ����И|g�9� �m��>��ɇ�����<�WGd�g���"ByP�ʃ�l�yf3+1�AyPo������)�bl��p�$�����)Q ԛ�b����XAR������:@�چYl��Ș$���H,Q%ԻCc��ZhD<��(�ݡ1IN�	4�m��F�Irj]�)R���ΛkQ�P(ԯB!9�y���j��P�O��F8��E�M���� ��ٵ��=(��q1�<�Q3&�B}90&7�=��6�b#,G��F���R���Ccr#��kQP0ԗCcr#��kqņY$��;��_�j8���� K��5B��85CK�f^{6��<�����P)���oZd�M��a���:
�FrPL���_�u�쨘J&K���<(�a1�2L�2|y�yP/4��b*e�,e���\h���$��PO:��Fq\,�uf3+1�A��(��E`��lfI���岿�1��lf��3��q�K�}�A��(^�?�M_P%4��b��f�A_P%4��b��f㥁�l�����b��f�A`A��h��)^���H���o��)^�������w\L��l�4, YP"4�
q�OzӂXP 4�tZ�Y>�M`Ay��i��e9�30�ͱp����B��g���᠘B��NI�9��Q1�8�!� �Q����X,����ڠ1S���b�Ҡ1��a�q Jl��ݓ��J�K��#�V~Rɴ��ϛ�&F$ ��O*�6,��v�	���J�K��1�m��'�L�Lb��o.���������ͥ�U����0��"��!ۚ˾+,9?���0Yw�w�%�a� �;\H�wǞ������mݭUXr�(��l�>),9K�M���p�Ia�iX2���?),9K1��1ۦ�O
KNÒa�&F�:�+,9K�����˿+,�>�?9���mӥ��\˾?���].������7�����cO
K.Ò� ���I�Kb�eX2��J/���˰dX������'�%�a� �;\ȴ<?),�K1�A�eO?),�K���y���˰d�.�Y�K����@)ׂ?�1�,�����_��7�M��6f�v����g�-��-$��O����B렆7(��W��?5ݐ�ڛ� ��d��c�ց�lf�&(�@�B��
���noaG�d��c�֑ܠ�6��@�B��
���fF���,�~��:��.l����Q�=�Y�a�pzuyw��ӞҬ�61b#4�v��2},�.���pzs�I�d�2���y�W���<mJ�$7���g8@�񦶙�;%宷V+v{�;%e2@    ���P�Ӈ#PP&�Am3#6�pJ�d�2��v�a�Ļ��y�(�A�������F8�	p�a����灳(��[��e��F���
�AEN�*r��iS����&�/��F�7΢�fFl������Y$)��������^9�j�����8%7�=s&�j�_G��F�w΢�nq!���J̥��@>�<(��˾��\�z�ʃ���\�]%��g�i������Ub.Yb���AY�8e9KOi^ϓ�3(�٭U��d�����e9#;��s�s/�'�rFv�I%�%�^^O����=H��{y<yP�3��O�� Y����Ƀ��Q��#�\gJ�B)X���Q\�]Q�|QI�t�gT�}WT2,�.�8�6�%�R֛��g�yk)*��J���b��{RT2�ba������٨d�.ؿ9���d6*H
`�R��}RT2�ba��蓢�٨d��Y`����
$�O~ӂP�3�˾+�X>���p��NK6��7������CO
$�A_P�3�tb�=�H
��gL�H,��F�:��@b�d�O$R�3��O
$�AcP�3��O1����a���SD�b�MkP~3�e�*ÿ�D�MgP|3�rZ!��O���j��ܥ7ӹL�������c9�Ŵ�:��ʿb�l9�Ŵ�:��*1�A�=�p����]��Q�9� ƞ������	Z���B�v�GF�� ����X�X�ѯ�R� ����X�X�Q%�/���a�GF�yd��@��{�!�zdt�GF�� Ğw��]�Q� cb�;�V����Ȩ������#��<2�İ!��Cl���ڏ��j��k8�{��zdt�GF�� ��w��]�����j��$��w|�]�Q%�/���_�GF�ydT-�����#��<2�����#l���:��*1|A�=�[=2��#�KL�������#��<2��p!��Cl���:��~�!r�{�!�zdt�GF�VC���zdt�GF��	-���ѵUZ__,��y����uUb1����������"w��]�Q%���"Ğw��]����B�y����uUb�{�!�zdt�GF��A�=�[=2��#�Jkb�;�V����Ȩ��D���#�k?2��m�A�=� [uݯ�u�������k�u�N��Rc���w�������Fռ�E����Ą���?,�Զ��91a�a�b����u�����u��Ơ�}ݵ���~���%j�p���.nW]��t�+1�Au�J��[��_j�3b_����]uݯ�u��p���.nW]�kwݫ�1���mW]�kw�+-|Ai��Kۧ(oY��^��J��]�>Ey�:]�KԒ�J��]�>Ey�:]�J_Pھ��v�u�N��Rs���wm��_��^�a�.�]ܮ����Wpe��nW]��t�+1�A�庫ۗ�H�O~��T]���}ɋ�:��w���=T]���}ɋ�:������wi��_��~�9Έa���]uݯ�u���W���u�����u��Ղ���k�U��:]�J�"����v�u�N׽�a���]uݯ�u�D-Π�r�����~��{%�5(�\Wu;�V�v���s��5(�\Wu;]�B���a�.�U�.����W�u��n�]�˺�ޠ�r����}��j���˵�SS��9� V���/ך���!��]հǷ��?Orj
�>g�AΨ-ԪSS��9� �a�o�e�����~Y׽Z�C����F_ʮ�u���`���S94?��of�ᗲ�~���%jɰǷ �?��K�u���^�a�of�闲�~}� Zr��}K0�s���]�˺����`�'O���aH?����P���D�����l�k��_�u��0�d#\#0e�����%��p�d#\C0e��:]�J�L6�5Svݯ�u����b#\c0e��:]�J{,6�5Sv�/�W+�Ǟ��sU׻b׻�v6��.]�����.��v��`,����~��� h�zP׻��oZ�_�zP׻�Yo����>����]��]#M%�L���]��]���Pr4L]�]���T���p���U��1|A%��� ��O�y�TјM�H�f�������.��*�gv8L]�]���A!�̎(����?�3(ß�� e�v�����Wؿ8���>�L�I	�,��)�7��T���`��3�G������)�7������p��3������yOAV�����7�Ô���?��D��~6�Ô���?��K�o���]��7-�K���p������ 9SpQz?��*��?�M�����;��ݲa�%���p0Le7�e7��&X�8��ݲA_Pu?�T*���?]�����=Y�����Jl,�?Sٍnٍ�@(�:��ݲAkPt?������>����p�����7�ͯ��r4@�|���h.����?�|A%�zS�f� �	���0e�a�� 	�B:�q8L������hݵ@j
�:S ԂM��%�Ô���?��j�Vr8L����֠h%�&��WL�3(Z�� �I�Ie�̢heG&��-h���`�¤�0i�T��X�¤�?l�����a
�NäA_P���a
�NäA_P��Z 5`�) K��M��u8La�i�4��j�Vu8Lݣ�ݣ#HB�W��R��i�� �5�Z�� u�X���7����� u�X���E*�J��P��YoZ$��Zݱ0u�Xv�hg,��S�e� F�Z��S�e����w-���� %�	����Ĳ�DX@�Z�5S�e� �3�Z��0u�Xv�bX�Z�5P��S ���O���� %�5�Z�a 96��Ps����097�9[ �m��X�������q� h-�����l���;�ZWE���l
�R��8"&g>gD��? �qDL|�>�j�G�����lA�Px�!�[K0U��� �q ���yp-.�������ŰG�d��$0�'ע�FX`��x����Z$;�c��b�ڣkQ{@�U$� ,� Ijl�∘���ZT���P����]�+0�d#G�$0��ע�l��>HNXg
����p��) �LPh,6�U$� �3@�a��Fh�ɍ`�4IB������iF��=ҳ�c\�]ݣ�ǲ��tR�9�uW��j��l#��8��Q�E��R�9��N�U�lTD�%�Xݣ�ݣ���h!��wR��j�� �sfǝ�=��=*0����<fǝ�=��=*��l�]�]��ǰ��6�Tb����%���Mk�"�ťݕ��g�}�;Z�qYwe�f�b��:�YtR�o����0gu�Iٿ��C٨�W������?���_wR�of�Hl���q'e�f�ba�渓�3�����7g�Fh�Fb�q��bvy��ן|�"��]�]]�����r��sv�vWi��YoZ$q��:�4B�4B$6�a�ᨓJ#tK#�����p�I����т���N*��-���u�s:����Al�"�?wRi�ni��PvO���;�4B�4B��a�{�pxv�Wl\��eQ�9�˻+��O��--�����������7s9��?��A_Pr�G�����?�mTD��q�I���C�-�]ǝ����?���nVr�I���#�A��Kr�I�����ni!�wR�f�� kPt�)y�x��FY�ܬ���G΋G�j�E���.��x��X������fe�H4tJob����UuR<r���1�_vR<r�b���ǝ���{[�/(�Y�q'�#��� �Q���;)9�G��҂���N�GN㑁�`�n�]t��Eb}^y�&Eؿ����H�s��c��`�����"�>�M��7�����H,�H�dl(�Y�A'u�X��mR����N�"��"�vG��;��Ĳ�D`($l(�Y�q'u�Xv�ba�ḓ�H,�HDb����q'u�Xv�bX���u݈V���ۂ����tw����&�Z� �%    �ee��obX���5]�]VV?VY�ȑ�?jl����l1�-Lbf��{`9�$[k1����&X=���Z���d��![k1+6-"��8�$[k1j������ؓl1x�� ��F��qA|Ε:B�M�H�'�r�M�с��dܓ˸��΋f� F�=���D��I�(�=:�����D���Y\�a	��ȓD���YT��,dܳCOMګfQ{6Bq�I�I{�,2�M��ű'�&�]���Z�ű'�&�a3�lPc#\�8��a3{�,�mZ�F�*qD/���vG��Iz�f:C4��Xl��'�!��Lьb�c��Or#���P6,b#4G��F�9�Q�Cd�͡'�l���܌�;�$7�MҌj���cOr#�(͸�돔�͙M~/�b���φۚs��^����jح9����l����VP�o��M~/g�^j�!��;����l�����_�u�7����{9�ᐄ߆��^���Vl����G�3�����k�#������Z�Mwd������Z�>����;
��gѯ��Q$ŰFa�(�����5[ �Q�;
g�_g|���(l��׆��W����Ea���ϡ�X}���Cp���>���71�A�v�]����}LL]\xz.������Ψ������NK8�[�����YNK�[!���wJ��
��Z)�-���)5'&|Ai����)M'&|��R_z��n�P"��S>&&}A�rub�X�u)�1�SNL��<��u]I�ݩ\��wF�� �N�8-����3*?��ܩt�%���wF�� �Ne�Z!9��|���w�ى�?��-���["�N����O�;�R_p�:�����Q���D��Z��B �+��� �N�:��鹯X{[�uF&�Nm8��鹯�|��a���8��XIob1�߯��h�/m�|�ʥ3�v��i�M��j�7�����i����j-�\�����#�Zt�j��'�}}�3�͉	_T~�|����NL��Z���E��3�bt����'�ዌ�gubӶ_�jĸɖ��É��_��&�3
�_�-@�ױ����1�.������v/�pF���;-a�v�>���崄�۱��Լ�'�Z������%��iNLؿ��CM���=?Ӊ	�7����n1e�f���[�U'&����AcP��pb�����
�s~n1e�f�bX�z��/������v/�p��9w�%��O�*�0��9/�%��O������[+p�_�����_1
�siNL��[���u�L'&|�-��e[,p���y����Z��8���AcP��pb�\����2�A�{n�#m�RkP��e�v_���\�,�o�i	��c������m9-a�q�>Oha��o-e�a�b__���{sb�����bؿO'&�?����� ��G�Ŕ���?�uİ��NL������X��c81a�a�b8#c��81a�a��F���h�/m�Rg�?��Θ����1
���i	c�s�e��`��o�P���|���E���91��H_T��Z�i�� �/�Y��Ą/�ݣ�|����c��B�˯عG1�����'&��i�� �3~Y�����8�jʰ�/�!S��i�� �5��˫�^>t��S��L_ �U}/:]�ЩR�Њ�w�K��e��j$��x�C`��/[�_@9d��x�C`��/[�_P#�ķ�3\�_em6jGh��.��2�65h�L�;�.��2��3�>�|<�%�Uf0ى�6��}MǾTf0��O�3�x��_*3��D(c�%�LG�Tf0ى�6�b,��Tf0ى�����
d�+���p��r�+�ѯ�|[�5�H��c.��B�Ml+2@���+,�?�?9��K =.���h�X�����; ���F�Wk�im^E�'9���h��HG �?��/�E��F��`�qJ�~),�-5lbE4;���h��H�L?N��/�E��F��`�q�),�-5X�`�q*.��Hf��7��pq�E2�ǲ��d2�8��W$�|��`�q�.��Hf��\X�����H�u�sA_0�8UG��,v�b���ǩ:��Hf�d�_�d.���R$��u.��3�(5���u��u.�#İs�K]�]��$�Rw�u������Vؿ������s�Z$���I�e��u�~ƛ�$*�p�u�����y��}���-��-S����_�:W-���1�?�R׹j�O��
�O���u�Z�`j�t�K]�?AgP����_�:W-�	bX�ڟ�\�_ٿ]����6���˥����e�?Z�ʟ�\�_ٿ},����h��y\�_ٿ�����U�Ǿ���,�T����/e�f�b��ҟ�8������Al+2@��/e�f�(cP�����(�7�������3�Gp�	��쯲�b� ��	����
�����8�ҟ�]�_a���oZ�ʟ\\�_a��YoZ�Wa��ؗ¢�b��r��?�8���h��?��jrq�Ka�n�G�a���¢�b� �/�����/�E���aƠ�'W����1�A�On),���M��s�e��>WE1�ҟ�\�_�|��IF*rw�e���,�)���ؗ��0�1��T�������0����)����/e�a�b�Xa����0�1��������0���1�����/e�a�b8�ڟ<�R�f���������E1�ҟ<]�_a��io�c*�r��E�g�im^���K�+,:����?y9����{t@9��ҟ��RXt�=:�mb5�/),J�?b������/�E�ݣ�Ơ��<�{��{tX�3��)��/u��v�b�X������_���Π��ܥ?���W����{�ew�I��ek��9�5��Ow�I��ek�j
�`.��Ro6l4��ݫB~}���J�٬ѠE�C�.��Ro�c���`-��t�u�zKvd�M��K��%�zKvd��S�4^R��dGF����r|I�ޒAl#!��r|I�ޒ���N��r|I5$;2����}��K<~Ō/�%3��by\�]q��y�.�W�����;�sd��1�lz\z]q��oZ��36�g�x�������m D�%9����u��N2,��%�������M��%���"�A�cv|Iq�l�� �[U�0fǗw̖{p�);���c��C�H��`W��|^�ݫ���˯+TX>�^ר��T\z]���YoZ����T\R���})�İutI��b�� �;U�uxI��b��� _P_���K
�/����s|Iݗ�ݗ���T����%u_*v_
��|6�9���K��KAl#!��]�]ݗ��j/Qe����]~]ݗꧽi����&u�^W����o�����&��}�Z��6���qu_���ݩ����K�T-�	�_P\���K�T-�	b	a�����/U~"�I`�����/U~�Π�&MǗ�}�Z�l$���K�+������4S[��˯+������4SZ��K�+���e�հ�-�+�ˮ+�7��D����蒲3�G2� ��8������A_P[���K����l$D�%9������Alw��bI�/)�7��������3�V�����*]�?��e���`�.�������ˠE~1�����3޴��5�����b��`!�_\Rܱ�ǿ�;U�qtIq�n��������b��J6����%����Alw�`��~%�;v��#�A�WǗw������s	ve�q5Ȫ�BmMn.���?�&YuR(��ͥו��g�i�ţ�&w�]W�f��J6����%eO�T�I��&w�V���#�A�������?�m$����K�����N�?_R�f� �3(����%e�a�b	a��쯰�0�`�nV���%�w�w�e'�ښ<]~]q������H-��\z]q��YoZa��������a��T����%��ݣ�����</)�8��6���q|Iq�i���Jv�JB��%u��v�b���8������ё� _J�/�{��{t �  �ה��&��_�u.�s�AmM�kk��H�s�Z�Қr��,y�X�"�6.e��Eb�Eb�W�[���dG��Eb�E"�ዱ{���������u���cw��������+��_�����縂��d�0u�,;|�� �.�YL>�� �/��KqS�ϲ�'L�޾�dřL>�� �/��Kq&S�ϲ�g�'~�0�a��C�b�Mga�;��~��-�D�劰�á���J1�A�]���á��71�A�]�[=�[�@����
��á_���ZG�-p���PԚ�P}�0�\a�z8����Pc\q�z8���wA\�G%�.W��E���U��W��Em����W��ź���n�J�]�X[=�O-}�!�.W����5[ �A�]�X[=��ob؃X�\��z8�+����
�A�]�h[=�Z}S���劷�á��75�A�]��[=��15iB�r����P�ʛ� �W̭E��
5�t�+�V�����pQw��n�phy�ár!�Wԭ���71�A�]��[=��ob؃��^Q�z8�+v6B��������á��75�A�]��[uգ6l��b^���{��z��ϛ� ��W��Q{]�?����k��6!3�aj��Uۮ��Q[oj8���r�D�gg~�,����?�<�U��l*��,��}�����+�J��{�,H�"�d�V�Җ��}�૪�K�J�-K�1�IJ"Jq��J[�JbD��D��n-*��,�"p.E��n-*��,���E���6�I���4�5U]��R�<;#ŰE��pM�ox>�m��h��������l���N�*�4wm���g�?���-r��s6A���]�M���E�px�.�j|PQ������"�G�m���Eqx�>�j|PQ����)��qžk���r��s��Q�PQ���x��y��1�媏P��|�,\��Y���2]�&/�g�}��G��-�bk#�Eďa�{���ڌ����l��..�bkC��
�A�DY��"/�6�>�a�$�r7y��1�QP'Qws�[�s#�}� `{��E^lm�}T�!TJ��lr#��&"�G�x�>U�D�tF�D�}� \K.\���4���5�k��6�$�a2�5�{��6�$�����..r#�X��c��5����6�$�aҹ5����6�DD������ȍ`�M�ھk����ȍ�m#�8�dt]<�J����P�H�C���^��3����r�Ы��e%Ca�m����^�-+
b;��.�W%C�J�����r�W�(Е��t�	N��i�-�E2�t��B]Ĉ�i�-�22��|,��3�6��\#3�e�������"z�Yx,�V�h�-W+���:�O�MmG�l��bz�Yx�.�j;��.�.�����2!6唤ѫt����c�����p��p1��,<�Y��0 a�PF��K��@���U��d�����o��^e�@F^��Ⱦ(�Cp6�tq����̾���l��zy���ciڽ���^���Ծ���p6�r!�����>���������E5�A�WY.��W>�W�(�P�q1����侨�3��2�e�F8dQ���U�ȍpZ�bl�?h���2r#��(�Cp������L��D����r#�D�R���^YN��j�mŎ�	���F�>���������r#X#YT�d:kv1���Ic�����ˍ`�dQ����m��Ȗ���0j�v���������?���|      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     