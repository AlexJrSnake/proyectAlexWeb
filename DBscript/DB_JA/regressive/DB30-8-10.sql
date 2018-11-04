PGDMP                         v            planning    10.3    10.3 �   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    78626    planning    DATABASE     �   CREATE DATABASE planning WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Uruguay.1252' LC_CTYPE = 'Spanish_Uruguay.1252';
    DROP DATABASE planning;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    78627    abaTimeUnit_id_seq    SEQUENCE     �   CREATE SEQUENCE public."abaTimeUnit_id_seq"
    START WITH 2
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 +   DROP SEQUENCE public."abaTimeUnit_id_seq";
       public       postgres    false    3            �            1259    78629    aba_breeds_and_stages_id_seq    SEQUENCE     �   CREATE SEQUENCE public.aba_breeds_and_stages_id_seq
    START WITH 8
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 3   DROP SEQUENCE public.aba_breeds_and_stages_id_seq;
       public       postgres    false    3            �            1259    78631    aba_breeds_and_stages    TABLE       CREATE TABLE public.aba_breeds_and_stages (
    id integer DEFAULT nextval('public.aba_breeds_and_stages_id_seq'::regclass) NOT NULL,
    code character varying(100),
    name character varying(100),
    id_aba_consumption_and_mortality integer,
    id_process integer
);
 )   DROP TABLE public.aba_breeds_and_stages;
       public         postgres    false    197    3            �            1259    78635 $   aba_consumption_and_mortality_id_seq    SEQUENCE     �   CREATE SEQUENCE public.aba_consumption_and_mortality_id_seq
    START WITH 8
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 ;   DROP SEQUENCE public.aba_consumption_and_mortality_id_seq;
       public       postgres    false    3            �            1259    78637    aba_consumption_and_mortality    TABLE     $  CREATE TABLE public.aba_consumption_and_mortality (
    id integer DEFAULT nextval('public.aba_consumption_and_mortality_id_seq'::regclass) NOT NULL,
    code character varying(100),
    name character varying(100),
    id_breed integer,
    id_stage integer,
    id_aba_time_unit integer
);
 1   DROP TABLE public.aba_consumption_and_mortality;
       public         postgres    false    199    3            �            1259    78641 +   aba_consumption_and_mortality_detail_id_seq    SEQUENCE     �   CREATE SEQUENCE public.aba_consumption_and_mortality_detail_id_seq
    START WITH 203
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 B   DROP SEQUENCE public.aba_consumption_and_mortality_detail_id_seq;
       public       postgres    false    3            �            1259    78643 $   aba_consumption_and_mortality_detail    TABLE     =  CREATE TABLE public.aba_consumption_and_mortality_detail (
    id integer DEFAULT nextval('public.aba_consumption_and_mortality_detail_id_seq'::regclass) NOT NULL,
    id_aba_consumption_and_mortality integer NOT NULL,
    time_unit_number integer,
    consumption double precision,
    mortality double precision
);
 8   DROP TABLE public.aba_consumption_and_mortality_detail;
       public         postgres    false    201    3            �            1259    78647    aba_elements_id_seq    SEQUENCE     �   CREATE SEQUENCE public.aba_elements_id_seq
    START WITH 22
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 *   DROP SEQUENCE public.aba_elements_id_seq;
       public       postgres    false    3            �            1259    78649    aba_elements    TABLE     �   CREATE TABLE public.aba_elements (
    id integer DEFAULT nextval('public.aba_elements_id_seq'::regclass) NOT NULL,
    code character varying(100),
    name character varying(100)
);
     DROP TABLE public.aba_elements;
       public         postgres    false    203    3            �            1259    78653 &   aba_elements_and_concentrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.aba_elements_and_concentrations_id_seq
    START WITH 105
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 =   DROP SEQUENCE public.aba_elements_and_concentrations_id_seq;
       public       postgres    false    3            �            1259    78655    aba_elements_and_concentrations    TABLE     k  CREATE TABLE public.aba_elements_and_concentrations (
    id integer DEFAULT nextval('public.aba_elements_and_concentrations_id_seq'::regclass) NOT NULL,
    id_aba_element integer,
    id_aba_formulation integer,
    proportion double precision,
    id_element_equivalent integer,
    id_aba_element_property integer,
    equivalent_quantity double precision
);
 3   DROP TABLE public.aba_elements_and_concentrations;
       public         postgres    false    205    3            �            1259    78659    aba_elements_properties_id_seq    SEQUENCE     �   CREATE SEQUENCE public.aba_elements_properties_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 5   DROP SEQUENCE public.aba_elements_properties_id_seq;
       public       postgres    false    3            �            1259    78661    aba_elements_properties    TABLE     �   CREATE TABLE public.aba_elements_properties (
    id integer DEFAULT nextval('public.aba_elements_properties_id_seq'::regclass) NOT NULL,
    code character varying(100),
    name character varying(100)
);
 +   DROP TABLE public.aba_elements_properties;
       public         postgres    false    207    3            �            1259    78665    aba_formulation_id_seq    SEQUENCE     �   CREATE SEQUENCE public.aba_formulation_id_seq
    START WITH 68
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 -   DROP SEQUENCE public.aba_formulation_id_seq;
       public       postgres    false    3            �            1259    78667    aba_formulation    TABLE     �   CREATE TABLE public.aba_formulation (
    id integer DEFAULT nextval('public.aba_formulation_id_seq'::regclass) NOT NULL,
    code character varying(100),
    name character varying(100)
);
 #   DROP TABLE public.aba_formulation;
       public         postgres    false    209    3            �            1259    78671    aba_results_id_seq    SEQUENCE     �   CREATE SEQUENCE public.aba_results_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 )   DROP SEQUENCE public.aba_results_id_seq;
       public       postgres    false    3            �            1259    78673    aba_results    TABLE     �   CREATE TABLE public.aba_results (
    id integer DEFAULT nextval('public.aba_results_id_seq'::regclass) NOT NULL,
    id_aba_element integer,
    quantity double precision
);
    DROP TABLE public.aba_results;
       public         postgres    false    211    3            �            1259    78677 &   aba_stages_of_breeds_and_stages_id_seq    SEQUENCE     �   CREATE SEQUENCE public.aba_stages_of_breeds_and_stages_id_seq
    START WITH 24
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 =   DROP SEQUENCE public.aba_stages_of_breeds_and_stages_id_seq;
       public       postgres    false    3            �            1259    78679    aba_stages_of_breeds_and_stages    TABLE       CREATE TABLE public.aba_stages_of_breeds_and_stages (
    id integer DEFAULT nextval('public.aba_stages_of_breeds_and_stages_id_seq'::regclass) NOT NULL,
    id_aba_breeds_and_stages integer,
    id_formulation integer,
    name character varying(100),
    duration integer
);
 3   DROP TABLE public.aba_stages_of_breeds_and_stages;
       public         postgres    false    213    3            �            1259    78683    aba_time_unit    TABLE     �   CREATE TABLE public.aba_time_unit (
    id integer DEFAULT nextval('public."abaTimeUnit_id_seq"'::regclass) NOT NULL,
    singular_name character varying(100),
    plural_name character varying(100)
);
 !   DROP TABLE public.aba_time_unit;
       public         postgres    false    196    3            �            1259    78687    availability_shed_id_seq    SEQUENCE     �   CREATE SEQUENCE public.availability_shed_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.availability_shed_id_seq;
       public       postgres    false    3            �            1259    78689    base_day_id_seq    SEQUENCE     x   CREATE SEQUENCE public.base_day_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.base_day_id_seq;
       public       postgres    false    3            �            1259    78691    breed_id_seq    SEQUENCE     u   CREATE SEQUENCE public.breed_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.breed_id_seq;
       public       postgres    false    3            �            1259    78693    broiler_detail_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.broiler_detail_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.broiler_detail_id_seq;
       public       postgres    false    3            �            1259    78695    broiler_id_seq    SEQUENCE     w   CREATE SEQUENCE public.broiler_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.broiler_id_seq;
       public       postgres    false    3            �            1259    78697    broiler_product_detail_id_seq    SEQUENCE     �   CREATE SEQUENCE public.broiler_product_detail_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.broiler_product_detail_id_seq;
       public       postgres    false    3            �            1259    78699    broiler_product_id_seq    SEQUENCE        CREATE SEQUENCE public.broiler_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.broiler_product_id_seq;
       public       postgres    false    3            �            1259    78701    broilereviction_detail_id_seq    SEQUENCE     �   CREATE SEQUENCE public.broilereviction_detail_id_seq
    START WITH 124
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.broilereviction_detail_id_seq;
       public       postgres    false    3            �            1259    78703    broilereviction_id_seq    SEQUENCE     �   CREATE SEQUENCE public.broilereviction_id_seq
    START WITH 70
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.broilereviction_id_seq;
       public       postgres    false    3            �            1259    78705    brooder_id_seq    SEQUENCE     w   CREATE SEQUENCE public.brooder_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.brooder_id_seq;
       public       postgres    false    3            �            1259    78707    brooder_machines_id_seq    SEQUENCE     �   CREATE SEQUENCE public.brooder_machines_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.brooder_machines_id_seq;
       public       postgres    false    3            �            1259    78709    calendar_day_id_seq    SEQUENCE     |   CREATE SEQUENCE public.calendar_day_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.calendar_day_id_seq;
       public       postgres    false    3            �            1259    78711    calendar_id_seq    SEQUENCE     x   CREATE SEQUENCE public.calendar_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.calendar_id_seq;
       public       postgres    false    3            �            1259    78713    center_id_seq    SEQUENCE     v   CREATE SEQUENCE public.center_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.center_id_seq;
       public       postgres    false    3            �            1259    78715    egg_planning_id_seq    SEQUENCE     |   CREATE SEQUENCE public.egg_planning_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.egg_planning_id_seq;
       public       postgres    false    3            �            1259    78717    egg_required_id_seq    SEQUENCE     |   CREATE SEQUENCE public.egg_required_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.egg_required_id_seq;
       public       postgres    false    3            �            1259    78719    eggs_storage_id_seq    SEQUENCE     |   CREATE SEQUENCE public.eggs_storage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.eggs_storage_id_seq;
       public       postgres    false    3            �            1259    78721    farm_id_seq    SEQUENCE     t   CREATE SEQUENCE public.farm_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.farm_id_seq;
       public       postgres    false    3            �            1259    78723    farm_type_id_seq    SEQUENCE     y   CREATE SEQUENCE public.farm_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.farm_type_id_seq;
       public       postgres    false    3            �            1259    78725    holiday_id_seq    SEQUENCE     w   CREATE SEQUENCE public.holiday_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.holiday_id_seq;
       public       postgres    false    3            �            1259    78727    housing_way_detail_id_seq    SEQUENCE     �   CREATE SEQUENCE public.housing_way_detail_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.housing_way_detail_id_seq;
       public       postgres    false    3            �            1259    78729    housing_way_id_seq    SEQUENCE     {   CREATE SEQUENCE public.housing_way_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.housing_way_id_seq;
       public       postgres    false    3            �            1259    78731    incubator_id_seq    SEQUENCE     y   CREATE SEQUENCE public.incubator_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.incubator_id_seq;
       public       postgres    false    3            �            1259    78733    incubator_plant_id_seq    SEQUENCE        CREATE SEQUENCE public.incubator_plant_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.incubator_plant_id_seq;
       public       postgres    false    3            �            1259    78735    industry_id_seq    SEQUENCE     x   CREATE SEQUENCE public.industry_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.industry_id_seq;
       public       postgres    false    3            �            1259    78737    line_id_seq    SEQUENCE     t   CREATE SEQUENCE public.line_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.line_id_seq;
       public       postgres    false    3            �            1259    78739    lot_eggs_id_seq    SEQUENCE     x   CREATE SEQUENCE public.lot_eggs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.lot_eggs_id_seq;
       public       postgres    false    3            �            1259    78741    lot_fattening_id_seq    SEQUENCE     }   CREATE SEQUENCE public.lot_fattening_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.lot_fattening_id_seq;
       public       postgres    false    3            �            1259    78743 
   lot_id_seq    SEQUENCE     s   CREATE SEQUENCE public.lot_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.lot_id_seq;
       public       postgres    false    3            �            1259    78745    lot_liftbreeding_id_seq    SEQUENCE     �   CREATE SEQUENCE public.lot_liftbreeding_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.lot_liftbreeding_id_seq;
       public       postgres    false    3            �            1259    78747     mdapplication_application_id_seq    SEQUENCE     �   CREATE SEQUENCE public.mdapplication_application_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999999999999
    CACHE 1;
 7   DROP SEQUENCE public.mdapplication_application_id_seq;
       public       postgres    false    3            �            1259    78749    mdapplication    TABLE     �   CREATE TABLE public.mdapplication (
    application_id integer DEFAULT nextval('public.mdapplication_application_id_seq'::regclass) NOT NULL,
    application_name character varying(30) NOT NULL,
    type character varying
);
 !   DROP TABLE public.mdapplication;
       public         postgres    false    246    3            �            1259    78756    mdapplication_rol_id_seq    SEQUENCE     �   CREATE SEQUENCE public.mdapplication_rol_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 9999999999999
    CACHE 1;
 /   DROP SEQUENCE public.mdapplication_rol_id_seq;
       public       postgres    false    3            �            1259    78758    mdapplication_rol    TABLE     �   CREATE TABLE public.mdapplication_rol (
    application_id integer NOT NULL,
    id integer DEFAULT nextval('public.mdapplication_rol_id_seq'::regclass) NOT NULL,
    rol_id integer NOT NULL
);
 %   DROP TABLE public.mdapplication_rol;
       public         postgres    false    248    3            �            1259    78762    mdbreed    TABLE     �   CREATE TABLE public.mdbreed (
    breed_id integer DEFAULT nextval('public.breed_id_seq'::regclass) NOT NULL,
    code character varying(20) NOT NULL,
    name character varying(45) NOT NULL
);
    DROP TABLE public.mdbreed;
       public         postgres    false    218    3            �           0    0    TABLE mdbreed    COMMENT     U   COMMENT ON TABLE public.mdbreed IS 'Tabla donde se almacenan las razas de las aves';
            public       postgres    false    250            �           0    0    COLUMN mdbreed.breed_id    COMMENT     >   COMMENT ON COLUMN public.mdbreed.breed_id IS 'Id de la raza';
            public       postgres    false    250            �           0    0    COLUMN mdbreed.code    COMMENT     >   COMMENT ON COLUMN public.mdbreed.code IS 'Codigo de la raza';
            public       postgres    false    250            �           0    0    COLUMN mdbreed.name    COMMENT     >   COMMENT ON COLUMN public.mdbreed.name IS 'Nombre de la Raza';
            public       postgres    false    250            �            1259    78766    mdbroiler_product    TABLE     �   CREATE TABLE public.mdbroiler_product (
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
            public       postgres    false    251            �            1259    78770 
   mdfarmtype    TABLE     �   CREATE TABLE public.mdfarmtype (
    farm_type_id integer DEFAULT nextval('public.farm_type_id_seq'::regclass) NOT NULL,
    name character varying(45) NOT NULL
);
    DROP TABLE public.mdfarmtype;
       public         postgres    false    234    3            �           0    0    TABLE mdfarmtype    COMMENT     D   COMMENT ON TABLE public.mdfarmtype IS 'Define los tipos de granja';
            public       postgres    false    252            �           0    0    COLUMN mdfarmtype.farm_type_id    COMMENT     L   COMMENT ON COLUMN public.mdfarmtype.farm_type_id IS 'Id de tipo de granja';
            public       postgres    false    252            �           0    0    COLUMN mdfarmtype.name    COMMENT     O   COMMENT ON COLUMN public.mdfarmtype.name IS 'Nombre de la etapa de la granja';
            public       postgres    false    252            �            1259    78774 
   mdindustry    TABLE     �   CREATE TABLE public.mdindustry (
    industry_id integer DEFAULT nextval('public.industry_id_seq'::regclass) NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.mdindustry;
       public         postgres    false    240    3            �           0    0    TABLE mdindustry    COMMENT     L   COMMENT ON TABLE public.mdindustry IS 'Almacena los datos de la industria';
            public       postgres    false    253            �           0    0    COLUMN mdindustry.industry_id    COMMENT     I   COMMENT ON COLUMN public.mdindustry.industry_id IS 'Id de la industria';
            public       postgres    false    253            �           0    0    COLUMN mdindustry.name    COMMENT     F   COMMENT ON COLUMN public.mdindustry.name IS 'Nombre de la industria';
            public       postgres    false    253            �            1259    78778    measure_id_seq    SEQUENCE     w   CREATE SEQUENCE public.measure_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.measure_id_seq;
       public       postgres    false    3            �            1259    78780 	   mdmeasure    TABLE     $  CREATE TABLE public.mdmeasure (
    measure_id integer DEFAULT nextval('public.measure_id_seq'::regclass) NOT NULL,
    name character varying(10) NOT NULL,
    abbreviation character varying(5) NOT NULL,
    originvalue double precision,
    valuekg double precision,
    is_unit boolean
);
    DROP TABLE public.mdmeasure;
       public         postgres    false    254    3            �           0    0    TABLE mdmeasure    COMMENT     _   COMMENT ON TABLE public.mdmeasure IS 'Almacena las medidas a utilizar en las planificaciones';
            public       postgres    false    255            �           0    0    COLUMN mdmeasure.measure_id    COMMENT     D   COMMENT ON COLUMN public.mdmeasure.measure_id IS 'Id de la medida';
            public       postgres    false    255            �           0    0    COLUMN mdmeasure.name    COMMENT     B   COMMENT ON COLUMN public.mdmeasure.name IS 'Nombre de la medida';
            public       postgres    false    255            �           0    0    COLUMN mdmeasure.abbreviation    COMMENT     O   COMMENT ON COLUMN public.mdmeasure.abbreviation IS 'Abreviatura de la medida';
            public       postgres    false    255            �           0    0    COLUMN mdmeasure.originvalue    COMMENT     Q   COMMENT ON COLUMN public.mdmeasure.originvalue IS 'Valor original de la medida';
            public       postgres    false    255            �           0    0    COLUMN mdmeasure.valuekg    COMMENT     R   COMMENT ON COLUMN public.mdmeasure.valuekg IS 'Valor en Kilogramos de la medida';
            public       postgres    false    255                        1259    78784    parameter_id_seq    SEQUENCE     y   CREATE SEQUENCE public.parameter_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.parameter_id_seq;
       public       postgres    false    3                       1259    78786    mdparameter    TABLE     '  CREATE TABLE public.mdparameter (
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
            public       postgres    false    257                       1259    78793    process_id_seq    SEQUENCE     w   CREATE SEQUENCE public.process_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.process_id_seq;
       public       postgres    false    3                       1259    78795 	   mdprocess    TABLE     B  CREATE TABLE public.mdprocess (
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
            public       postgres    false    259            �           0    0 "   COLUMN mdprocess.biological_active    COMMENT     h   COMMENT ON COLUMN public.mdprocess.biological_active IS 'Define si el proceso es un activo biológico';
            public       postgres    false    259                       1259    78799    process_class_id_seq    SEQUENCE     }   CREATE SEQUENCE public.process_class_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.process_class_id_seq;
       public       postgres    false    3                       1259    78801    mdprocessclass    TABLE     �   CREATE TABLE public.mdprocessclass (
    process_class_id integer DEFAULT nextval('public.process_class_id_seq'::regclass) NOT NULL,
    name character varying(45) NOT NULL,
    industry_id integer
);
 "   DROP TABLE public.mdprocessclass;
       public         postgres    false    260    3            �           0    0 &   COLUMN mdprocessclass.process_class_id    COMMENT     W   COMMENT ON COLUMN public.mdprocessclass.process_class_id IS 'Id del proceso de clase';
            public       postgres    false    261            �           0    0    COLUMN mdprocessclass.name    COMMENT     F   COMMENT ON COLUMN public.mdprocessclass.name IS 'Nombre del proceso';
            public       postgres    false    261            �           0    0 !   COLUMN mdprocessclass.industry_id    COMMENT     M   COMMENT ON COLUMN public.mdprocessclass.industry_id IS 'Id de la industria';
            public       postgres    false    261                       1259    78805    product_id_seq    SEQUENCE     w   CREATE SEQUENCE public.product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.product_id_seq;
       public       postgres    false    3                       1259    78807 	   mdproduct    TABLE     �   CREATE TABLE public.mdproduct (
    product_id integer DEFAULT nextval('public.product_id_seq'::regclass) NOT NULL,
    code character varying(20) NOT NULL,
    name character varying(45) NOT NULL
);
    DROP TABLE public.mdproduct;
       public         postgres    false    262    3            �           0    0    TABLE mdproduct    COMMENT     Z   COMMENT ON TABLE public.mdproduct IS 'Almacena los productos utilizados en los procesos';
            public       postgres    false    263            �           0    0    COLUMN mdproduct.product_id    COMMENT     D   COMMENT ON COLUMN public.mdproduct.product_id IS 'Id del producto';
            public       postgres    false    263            �           0    0    COLUMN mdproduct.code    COMMENT     B   COMMENT ON COLUMN public.mdproduct.code IS 'Codigo del producto';
            public       postgres    false    263            �           0    0    COLUMN mdproduct.name    COMMENT     B   COMMENT ON COLUMN public.mdproduct.name IS 'Nombre del producto';
            public       postgres    false    263                       1259    78811    mdrol_rol_id_seq    SEQUENCE        CREATE SEQUENCE public.mdrol_rol_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 10000000
    CACHE 1;
 '   DROP SEQUENCE public.mdrol_rol_id_seq;
       public       postgres    false    3            	           1259    78813    mdrol    TABLE     	  CREATE TABLE public.mdrol (
    rol_id integer DEFAULT nextval('public.mdrol_rol_id_seq'::regclass) NOT NULL,
    rol_name character varying(80) NOT NULL,
    admin_user_creator character varying(80) NOT NULL,
    creation_date timestamp with time zone NOT NULL
);
    DROP TABLE public.mdrol;
       public         postgres    false    264    3            
           1259    78817    scenario_id_seq    SEQUENCE     x   CREATE SEQUENCE public.scenario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.scenario_id_seq;
       public       postgres    false    3                       1259    78819 
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
            public       postgres    false    267                       1259    78827    status_shed_id_seq    SEQUENCE     {   CREATE SEQUENCE public.status_shed_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.status_shed_id_seq;
       public       postgres    false    3                       1259    78829    mdshedstatus    TABLE     �   CREATE TABLE public.mdshedstatus (
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
            public       postgres    false    269                       1259    78833    stage_id_seq    SEQUENCE     u   CREATE SEQUENCE public.stage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.stage_id_seq;
       public       postgres    false    3                       1259    78835    mdstage    TABLE     �   CREATE TABLE public.mdstage (
    stage_id integer DEFAULT nextval('public.stage_id_seq'::regclass) NOT NULL,
    order_ integer,
    name character varying(250) NOT NULL
);
    DROP TABLE public.mdstage;
       public         postgres    false    270    3            �           0    0    TABLE mdstage    COMMENT     d   COMMENT ON TABLE public.mdstage IS 'Almacena las etapas a utilizar en el proceso de planificacion';
            public       postgres    false    271            �           0    0    COLUMN mdstage.stage_id    COMMENT     ?   COMMENT ON COLUMN public.mdstage.stage_id IS 'Id de la etapa';
            public       postgres    false    271            �           0    0    COLUMN mdstage.order_    COMMENT     U   COMMENT ON COLUMN public.mdstage.order_ IS 'Orden en el que se muestras las etapas';
            public       postgres    false    271            �           0    0    COLUMN mdstage.name    COMMENT     ?   COMMENT ON COLUMN public.mdstage.name IS 'Nombre de la etapa';
            public       postgres    false    271                       1259    78839    mduser_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.mduser_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 9999999999
    CACHE 1;
 )   DROP SEQUENCE public.mduser_user_id_seq;
       public       postgres    false    3                       1259    78841    mduser    TABLE     �  CREATE TABLE public.mduser (
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
       public         postgres    false    272    3                       1259    78845    oscenter    TABLE       CREATE TABLE public.oscenter (
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
            public       postgres    false    274                       1259    78849    oscenter_oswarehouse    TABLE     �   CREATE TABLE public.oscenter_oswarehouse (
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
            public       postgres    false    275            �           0    0 #   COLUMN oscenter_oswarehouse.farm_id    COMMENT     L   COMMENT ON COLUMN public.oscenter_oswarehouse.farm_id IS 'Id de la granja';
            public       postgres    false    275            �           0    0 %   COLUMN oscenter_oswarehouse.center_id    COMMENT     L   COMMENT ON COLUMN public.oscenter_oswarehouse.center_id IS 'Id del nucleo';
            public       postgres    false    275            �           0    0 (   COLUMN oscenter_oswarehouse.warehouse_id    COMMENT     P   COMMENT ON COLUMN public.oscenter_oswarehouse.warehouse_id IS 'Id del almacen';
            public       postgres    false    275            �           0    0 '   COLUMN oscenter_oswarehouse.delete_mark    COMMENT     Q   COMMENT ON COLUMN public.oscenter_oswarehouse.delete_mark IS 'Marca de borrado';
            public       postgres    false    275                       1259    78852    osfarm    TABLE     �   CREATE TABLE public.osfarm (
    farm_id integer DEFAULT nextval('public.farm_id_seq'::regclass) NOT NULL,
    partnership_id integer,
    code character varying(20) NOT NULL,
    name character varying(45) NOT NULL,
    farm_type_id integer NOT NULL
);
    DROP TABLE public.osfarm;
       public         postgres    false    233    3            �           0    0    TABLE osfarm    COMMENT     p   COMMENT ON TABLE public.osfarm IS 'Almacena la información de la granja con sus respectivas características';
            public       postgres    false    276                        0    0    COLUMN osfarm.farm_id    COMMENT     >   COMMENT ON COLUMN public.osfarm.farm_id IS 'Id de la granja';
            public       postgres    false    276                       0    0    COLUMN osfarm.partnership_id    COMMENT     F   COMMENT ON COLUMN public.osfarm.partnership_id IS 'Id de la empresa';
            public       postgres    false    276                       0    0    COLUMN osfarm.code    COMMENT     ?   COMMENT ON COLUMN public.osfarm.code IS 'Codigo de la granja';
            public       postgres    false    276                       0    0    COLUMN osfarm.name    COMMENT     ?   COMMENT ON COLUMN public.osfarm.name IS 'Nombre de la granja';
            public       postgres    false    276                       0    0    COLUMN osfarm.farm_type_id    COMMENT     I   COMMENT ON COLUMN public.osfarm.farm_type_id IS 'Id del tipo de granja';
            public       postgres    false    276                       1259    78856    osincubator    TABLE     �  CREATE TABLE public.osincubator (
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
       public         postgres    false    238    3                       0    0    TABLE osincubator    COMMENT     y   COMMENT ON TABLE public.osincubator IS 'Almacena las máquinas de incubación pertenecientes a cada una de las plantas';
            public       postgres    false    277                       0    0    COLUMN osincubator.incubator_id    COMMENT     L   COMMENT ON COLUMN public.osincubator.incubator_id IS 'Id de la incubadora';
            public       postgres    false    277                       0    0 %   COLUMN osincubator.incubator_plant_id    COMMENT     Y   COMMENT ON COLUMN public.osincubator.incubator_plant_id IS 'Id de la planta incubadora';
            public       postgres    false    277                       0    0    COLUMN osincubator.name    COMMENT     H   COMMENT ON COLUMN public.osincubator.name IS 'Nombre de la incubadora';
            public       postgres    false    277            	           0    0    COLUMN osincubator.code    COMMENT     H   COMMENT ON COLUMN public.osincubator.code IS 'Codigo de la incubadora';
            public       postgres    false    277            
           0    0    COLUMN osincubator.description    COMMENT     T   COMMENT ON COLUMN public.osincubator.description IS 'Descripcion de la incubadora';
            public       postgres    false    277                       0    0    COLUMN osincubator.capacity    COMMENT     O   COMMENT ON COLUMN public.osincubator.capacity IS 'Capacidad de la incubadora';
            public       postgres    false    277                       0    0    COLUMN osincubator.sunday    COMMENT     ]   COMMENT ON COLUMN public.osincubator.sunday IS 'Marca los dias de trabajo de la incubadora';
            public       postgres    false    277                       0    0    COLUMN osincubator.monday    COMMENT     ^   COMMENT ON COLUMN public.osincubator.monday IS 'Marca los días de trabajo de la incubadora';
            public       postgres    false    277                       0    0    COLUMN osincubator.tuesday    COMMENT     _   COMMENT ON COLUMN public.osincubator.tuesday IS 'Marca los días de trabajo de la incubadora';
            public       postgres    false    277                       0    0    COLUMN osincubator.wednesday    COMMENT     a   COMMENT ON COLUMN public.osincubator.wednesday IS 'Marca los días de trabajo de la incubadora';
            public       postgres    false    277                       0    0    COLUMN osincubator.thursday    COMMENT     `   COMMENT ON COLUMN public.osincubator.thursday IS 'Marca los días de trabajo de la incubadora';
            public       postgres    false    277                       0    0    COLUMN osincubator.friday    COMMENT     ^   COMMENT ON COLUMN public.osincubator.friday IS 'Marca los días de trabajo de la incubadora';
            public       postgres    false    277                       0    0    COLUMN osincubator.saturday    COMMENT     `   COMMENT ON COLUMN public.osincubator.saturday IS 'Marca los días de trabajo de la incubadora';
            public       postgres    false    277                       1259    78860    osincubatorplant    TABLE     U  CREATE TABLE public.osincubatorplant (
    incubator_plant_id integer DEFAULT nextval('public.incubator_plant_id_seq'::regclass) NOT NULL,
    name character varying(45) NOT NULL,
    code character varying(20) NOT NULL,
    description character varying(250),
    partnership_id integer,
    max_storage integer,
    min_storage integer
);
 $   DROP TABLE public.osincubatorplant;
       public         postgres    false    239    3                       0    0    TABLE osincubatorplant    COMMENT     }   COMMENT ON TABLE public.osincubatorplant IS 'Almacena la información de la planta incubadora perteneciente a cada empresa';
            public       postgres    false    278                       0    0 *   COLUMN osincubatorplant.incubator_plant_id    COMMENT     ^   COMMENT ON COLUMN public.osincubatorplant.incubator_plant_id IS 'Id de la planta incubadora';
            public       postgres    false    278                       0    0    COLUMN osincubatorplant.name    COMMENT     T   COMMENT ON COLUMN public.osincubatorplant.name IS 'Nombre de la planta incubadora';
            public       postgres    false    278                       0    0    COLUMN osincubatorplant.code    COMMENT     T   COMMENT ON COLUMN public.osincubatorplant.code IS 'Codigo de la planta incubadora';
            public       postgres    false    278                       0    0 #   COLUMN osincubatorplant.description    COMMENT     a   COMMENT ON COLUMN public.osincubatorplant.description IS 'Descripción de la planta incubadora';
            public       postgres    false    278                       0    0 &   COLUMN osincubatorplant.partnership_id    COMMENT     P   COMMENT ON COLUMN public.osincubatorplant.partnership_id IS 'Id de la empresa';
            public       postgres    false    278                       0    0 #   COLUMN osincubatorplant.max_storage    COMMENT     ]   COMMENT ON COLUMN public.osincubatorplant.max_storage IS 'Numero máximo de almacenamiento';
            public       postgres    false    278                       0    0 #   COLUMN osincubatorplant.min_storage    COMMENT     \   COMMENT ON COLUMN public.osincubatorplant.min_storage IS 'Numero minimo de almacenamiento';
            public       postgres    false    278                       1259    78864    partnership_id_seq    SEQUENCE     {   CREATE SEQUENCE public.partnership_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.partnership_id_seq;
       public       postgres    false    3                       1259    78866    ospartnership    TABLE     2  CREATE TABLE public.ospartnership (
    partnership_id integer DEFAULT nextval('public.partnership_id_seq'::regclass) NOT NULL,
    name character varying(45) NOT NULL,
    address character varying(250) NOT NULL,
    description character varying(250) NOT NULL,
    code character varying(20) NOT NULL
);
 !   DROP TABLE public.ospartnership;
       public         postgres    false    279    3                       0    0    TABLE ospartnership    COMMENT     j   COMMENT ON TABLE public.ospartnership IS 'Almacena la información referente a las empresas registradas';
            public       postgres    false    280                       0    0 #   COLUMN ospartnership.partnership_id    COMMENT     M   COMMENT ON COLUMN public.ospartnership.partnership_id IS 'Id de la empresa';
            public       postgres    false    280                       0    0    COLUMN ospartnership.name    COMMENT     G   COMMENT ON COLUMN public.ospartnership.name IS 'Nombre de la empresa';
            public       postgres    false    280                       0    0    COLUMN ospartnership.address    COMMENT     M   COMMENT ON COLUMN public.ospartnership.address IS 'Direccion de la empresa';
            public       postgres    false    280                       0    0     COLUMN ospartnership.description    COMMENT     T   COMMENT ON COLUMN public.ospartnership.description IS 'Descripción de la empresa';
            public       postgres    false    280                        0    0    COLUMN ospartnership.code    COMMENT     G   COMMENT ON COLUMN public.ospartnership.code IS 'Codigo de la empresa';
            public       postgres    false    280                       1259    78873    shed_id_seq    SEQUENCE     t   CREATE SEQUENCE public.shed_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.shed_id_seq;
       public       postgres    false    3                       1259    78875    osshed    TABLE     �  CREATE TABLE public.osshed (
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
       public         postgres    false    281    3            !           0    0    TABLE osshed    COMMENT     d   COMMENT ON TABLE public.osshed IS 'Almacena la informacion de los galpones asociados a la empresa';
            public       postgres    false    282            "           0    0    COLUMN osshed.shed_id    COMMENT     <   COMMENT ON COLUMN public.osshed.shed_id IS 'Id del galpon';
            public       postgres    false    282            #           0    0    COLUMN osshed.partnership_id    COMMENT     F   COMMENT ON COLUMN public.osshed.partnership_id IS 'Id de la empresa';
            public       postgres    false    282            $           0    0    COLUMN osshed.farm_id    COMMENT     >   COMMENT ON COLUMN public.osshed.farm_id IS 'Id de la granja';
            public       postgres    false    282            %           0    0    COLUMN osshed.center_id    COMMENT     >   COMMENT ON COLUMN public.osshed.center_id IS 'Id del nucleo';
            public       postgres    false    282            &           0    0    COLUMN osshed.code    COMMENT     =   COMMENT ON COLUMN public.osshed.code IS 'Codigo del galpon';
            public       postgres    false    282            '           0    0    COLUMN osshed.statusshed_id    COMMENT     _   COMMENT ON COLUMN public.osshed.statusshed_id IS 'Identificador del estado actual del galpon';
            public       postgres    false    282            (           0    0    COLUMN osshed.type_id    COMMENT     D   COMMENT ON COLUMN public.osshed.type_id IS 'Id del tipo de galpon';
            public       postgres    false    282            )           0    0    COLUMN osshed.building_date    COMMENT     c   COMMENT ON COLUMN public.osshed.building_date IS 'Almacena la fecha de construccion del edificio';
            public       postgres    false    282            *           0    0    COLUMN osshed.stall_width    COMMENT     M   COMMENT ON COLUMN public.osshed.stall_width IS 'Indica el ancho del galpon';
            public       postgres    false    282            +           0    0    COLUMN osshed.stall_height    COMMENT     M   COMMENT ON COLUMN public.osshed.stall_height IS 'Indica el alto del galpon';
            public       postgres    false    282            ,           0    0    COLUMN osshed.capacity_min    COMMENT     D   COMMENT ON COLUMN public.osshed.capacity_min IS 'Capacidad minima';
            public       postgres    false    282            -           0    0    COLUMN osshed.capacity_max    COMMENT     F   COMMENT ON COLUMN public.osshed.capacity_max IS 'Capacidad máxima ';
            public       postgres    false    282            .           0    0    COLUMN osshed.environment_id    COMMENT     E   COMMENT ON COLUMN public.osshed.environment_id IS 'Id del ambiente';
            public       postgres    false    282            /           0    0    COLUMN osshed.rotation_days    COMMENT     H   COMMENT ON COLUMN public.osshed.rotation_days IS 'Días de rotación
';
            public       postgres    false    282            0           0    0    COLUMN osshed.nests_quantity    COMMENT     I   COMMENT ON COLUMN public.osshed.nests_quantity IS 'Cantidad de nidales';
            public       postgres    false    282            1           0    0    COLUMN osshed.cages_quantity    COMMENT     H   COMMENT ON COLUMN public.osshed.cages_quantity IS 'Cantidad de jaulas';
            public       postgres    false    282            2           0    0    COLUMN osshed.birds_quantity    COMMENT     F   COMMENT ON COLUMN public.osshed.birds_quantity IS 'Cantidad de aves';
            public       postgres    false    282            3           0    0 "   COLUMN osshed.capacity_theoretical    COMMENT     O   COMMENT ON COLUMN public.osshed.capacity_theoretical IS '	Capacidad teórica';
            public       postgres    false    282                       1259    78884    silo_id_seq    SEQUENCE     t   CREATE SEQUENCE public.silo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.silo_id_seq;
       public       postgres    false    3                       1259    78886    ossilo    TABLE     �  CREATE TABLE public.ossilo (
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
       public         postgres    false    283    3            4           0    0    TABLE ossilo    COMMENT     E   COMMENT ON TABLE public.ossilo IS 'Almacena los datos de los silos';
            public       postgres    false    284            5           0    0    COLUMN ossilo.silo_id    COMMENT     :   COMMENT ON COLUMN public.ossilo.silo_id IS 'Id del silo';
            public       postgres    false    284            6           0    0    COLUMN ossilo.client_id    COMMENT     ?   COMMENT ON COLUMN public.ossilo.client_id IS 'Id del cliente';
            public       postgres    false    284            7           0    0    COLUMN ossilo.partnership_id    COMMENT     F   COMMENT ON COLUMN public.ossilo.partnership_id IS 'Id de la empresa';
            public       postgres    false    284            8           0    0    COLUMN ossilo.farm_id    COMMENT     >   COMMENT ON COLUMN public.ossilo.farm_id IS 'Id de la granja';
            public       postgres    false    284            9           0    0    COLUMN ossilo.center_id    COMMENT     >   COMMENT ON COLUMN public.ossilo.center_id IS 'Id del nucleo';
            public       postgres    false    284            :           0    0    COLUMN ossilo.name    COMMENT     ;   COMMENT ON COLUMN public.ossilo.name IS 'Nombre del silo';
            public       postgres    false    284            ;           0    0    COLUMN ossilo.rings_height    COMMENT     E   COMMENT ON COLUMN public.ossilo.rings_height IS 'Numero de anillos';
            public       postgres    false    284            <           0    0    COLUMN ossilo.rings_height_id    COMMENT     R   COMMENT ON COLUMN public.ossilo.rings_height_id IS 'Unidad de medida del anillo';
            public       postgres    false    284            =           0    0    COLUMN ossilo.height    COMMENT     =   COMMENT ON COLUMN public.ossilo.height IS 'Altura del silo';
            public       postgres    false    284            >           0    0    COLUMN ossilo.height_unit_id    COMMENT     R   COMMENT ON COLUMN public.ossilo.height_unit_id IS 'Unidad de media de la altura';
            public       postgres    false    284            ?           0    0    COLUMN ossilo.diameter    COMMENT     A   COMMENT ON COLUMN public.ossilo.diameter IS 'Diametro del silo';
            public       postgres    false    284            @           0    0    COLUMN ossilo.diameter_unit_id    COMMENT     T   COMMENT ON COLUMN public.ossilo.diameter_unit_id IS 'Unidad de media del diametro';
            public       postgres    false    284            A           0    0 "   COLUMN ossilo.total_rings_quantity    COMMENT     U   COMMENT ON COLUMN public.ossilo.total_rings_quantity IS 'Total de anillos del silo';
            public       postgres    false    284            B           0    0 !   COLUMN ossilo.measuring_mechanism    COMMENT     Y   COMMENT ON COLUMN public.ossilo.measuring_mechanism IS 'Mecanismo de medidad del silo
';
            public       postgres    false    284            C           0    0    COLUMN ossilo.cone_degrees    COMMENT     C   COMMENT ON COLUMN public.ossilo.cone_degrees IS 'Grados del cono';
            public       postgres    false    284            D           0    0    COLUMN ossilo.total_capacity_1    COMMENT     L   COMMENT ON COLUMN public.ossilo.total_capacity_1 IS 'Total de capacidad 1';
            public       postgres    false    284            E           0    0    COLUMN ossilo.total_capacity_2    COMMENT     L   COMMENT ON COLUMN public.ossilo.total_capacity_2 IS 'Total de capacidad 2';
            public       postgres    false    284            F           0    0     COLUMN ossilo.capacity_unit_id_1    COMMENT     X   COMMENT ON COLUMN public.ossilo.capacity_unit_id_1 IS 'Id de Capacidad de la unidad 1';
            public       postgres    false    284            G           0    0     COLUMN ossilo.capacity_unit_id_2    COMMENT     X   COMMENT ON COLUMN public.ossilo.capacity_unit_id_2 IS 'Id de Capacidad de la unidad 2';
            public       postgres    false    284            H           0    0    COLUMN ossilo.central    COMMENT     6   COMMENT ON COLUMN public.ossilo.central IS 'Central';
            public       postgres    false    284                       1259    78890    ossilo_osshed    TABLE     �   CREATE TABLE public.ossilo_osshed (
    silo_id integer NOT NULL,
    shed_id integer NOT NULL,
    center_id integer NOT NULL,
    farm_id integer NOT NULL,
    partnership_id integer NOT NULL,
    client_id integer NOT NULL,
    deleted_mark integer
);
 !   DROP TABLE public.ossilo_osshed;
       public         postgres    false    3            I           0    0    TABLE ossilo_osshed    COMMENT     R   COMMENT ON TABLE public.ossilo_osshed IS 'Tabla union de las tablas silo y shed';
            public       postgres    false    285            J           0    0    COLUMN ossilo_osshed.silo_id    COMMENT     A   COMMENT ON COLUMN public.ossilo_osshed.silo_id IS 'Id del silo';
            public       postgres    false    285            K           0    0    COLUMN ossilo_osshed.shed_id    COMMENT     C   COMMENT ON COLUMN public.ossilo_osshed.shed_id IS 'Id del galpon';
            public       postgres    false    285            L           0    0    COLUMN ossilo_osshed.center_id    COMMENT     E   COMMENT ON COLUMN public.ossilo_osshed.center_id IS 'Id del nucleo';
            public       postgres    false    285            M           0    0    COLUMN ossilo_osshed.farm_id    COMMENT     E   COMMENT ON COLUMN public.ossilo_osshed.farm_id IS 'Id de la granja';
            public       postgres    false    285            N           0    0 #   COLUMN ossilo_osshed.partnership_id    COMMENT     M   COMMENT ON COLUMN public.ossilo_osshed.partnership_id IS 'Id de la empresa';
            public       postgres    false    285            O           0    0    COLUMN ossilo_osshed.client_id    COMMENT     F   COMMENT ON COLUMN public.ossilo_osshed.client_id IS 'Id del cliente';
            public       postgres    false    285            P           0    0 !   COLUMN ossilo_osshed.deleted_mark    COMMENT     K   COMMENT ON COLUMN public.ossilo_osshed.deleted_mark IS 'Marca de borrado';
            public       postgres    false    285                       1259    78893    slaughterhouse_id_seq    SEQUENCE        CREATE SEQUENCE public.slaughterhouse_id_seq
    START WITH 33
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.slaughterhouse_id_seq;
       public       postgres    false    3                       1259    78895    osslaughterhouse    TABLE     Z  CREATE TABLE public.osslaughterhouse (
    slaughterhouse_id integer DEFAULT nextval('public.slaughterhouse_id_seq'::regclass) NOT NULL,
    name character varying(45) NOT NULL,
    address character varying(250) NOT NULL,
    description character varying(250) NOT NULL,
    code character varying(20) NOT NULL,
    capacity double precision
);
 $   DROP TABLE public.osslaughterhouse;
       public         postgres    false    286    3                        1259    78902    warehouse_id_seq    SEQUENCE     y   CREATE SEQUENCE public.warehouse_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.warehouse_id_seq;
       public       postgres    false    3            !           1259    78904    oswarehouse    TABLE       CREATE TABLE public.oswarehouse (
    warehouse_id integer DEFAULT nextval('public.warehouse_id_seq'::regclass) NOT NULL,
    partnership_id integer NOT NULL,
    farm_id integer NOT NULL,
    name character varying(45) NOT NULL,
    code character varying(20) NOT NULL
);
    DROP TABLE public.oswarehouse;
       public         postgres    false    288    3            Q           0    0    TABLE oswarehouse    COMMENT     \   COMMENT ON TABLE public.oswarehouse IS 'Almacena la informacion referente a los almacenes';
            public       postgres    false    289            R           0    0    COLUMN oswarehouse.warehouse_id    COMMENT     G   COMMENT ON COLUMN public.oswarehouse.warehouse_id IS 'Id del almacen';
            public       postgres    false    289            S           0    0 !   COLUMN oswarehouse.partnership_id    COMMENT     ^   COMMENT ON COLUMN public.oswarehouse.partnership_id IS 'Id de la empresa dueña del almacen';
            public       postgres    false    289            T           0    0    COLUMN oswarehouse.farm_id    COMMENT     C   COMMENT ON COLUMN public.oswarehouse.farm_id IS 'Id de la granja';
            public       postgres    false    289            U           0    0    COLUMN oswarehouse.name    COMMENT     C   COMMENT ON COLUMN public.oswarehouse.name IS 'Nombre del almacen';
            public       postgres    false    289            V           0    0    COLUMN oswarehouse.code    COMMENT     C   COMMENT ON COLUMN public.oswarehouse.code IS 'Codigo del almacen';
            public       postgres    false    289            "           1259    78908    posture_curve_id_seq    SEQUENCE     }   CREATE SEQUENCE public.posture_curve_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.posture_curve_id_seq;
       public       postgres    false    3            #           1259    78910    predecessor_id_seq    SEQUENCE     {   CREATE SEQUENCE public.predecessor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.predecessor_id_seq;
       public       postgres    false    3            $           1259    78912    programmed_eggs_id_seq    SEQUENCE        CREATE SEQUENCE public.programmed_eggs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.programmed_eggs_id_seq;
       public       postgres    false    3            %           1259    78914    raspberry_id_seq    SEQUENCE     y   CREATE SEQUENCE public.raspberry_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.raspberry_id_seq;
       public       postgres    false    3            &           1259    78916    scenario_formula_id_seq    SEQUENCE     �   CREATE SEQUENCE public.scenario_formula_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.scenario_formula_id_seq;
       public       postgres    false    3            '           1259    78918    scenario_parameter_day_seq    SEQUENCE     �   CREATE SEQUENCE public.scenario_parameter_day_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.scenario_parameter_day_seq;
       public       postgres    false    3            (           1259    78920    scenario_parameter_id_seq    SEQUENCE     �   CREATE SEQUENCE public.scenario_parameter_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.scenario_parameter_id_seq;
       public       postgres    false    3            )           1259    78922    scenario_posture_id_seq    SEQUENCE     �   CREATE SEQUENCE public.scenario_posture_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.scenario_posture_id_seq;
       public       postgres    false    3            *           1259    78924    scenario_process_id_seq    SEQUENCE     �   CREATE SEQUENCE public.scenario_process_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.scenario_process_id_seq;
       public       postgres    false    3            +           1259    78926    txavailabilitysheds    TABLE       CREATE TABLE public.txavailabilitysheds (
    availability_shed_id integer DEFAULT nextval('public.availability_shed_id_seq'::regclass) NOT NULL,
    shed_id integer NOT NULL,
    init_date date,
    end_date date,
    lot_code character varying(20) NOT NULL
);
 '   DROP TABLE public.txavailabilitysheds;
       public         postgres    false    216    3            W           0    0    TABLE txavailabilitysheds    COMMENT     �   COMMENT ON TABLE public.txavailabilitysheds IS 'Almacena la disponibilidad en fechas de los galpones de acuerdo a la programación establecida';
            public       postgres    false    299            X           0    0 /   COLUMN txavailabilitysheds.availability_shed_id    COMMENT     �   COMMENT ON COLUMN public.txavailabilitysheds.availability_shed_id IS 'Id de la disponibilidad del almacen, indicando si este esta disponible';
            public       postgres    false    299            Y           0    0 "   COLUMN txavailabilitysheds.shed_id    COMMENT     I   COMMENT ON COLUMN public.txavailabilitysheds.shed_id IS 'Id del galpon';
            public       postgres    false    299            Z           0    0 $   COLUMN txavailabilitysheds.init_date    COMMENT     r   COMMENT ON COLUMN public.txavailabilitysheds.init_date IS 'Fecha de inicio de la programacion de uso del galpon';
            public       postgres    false    299            [           0    0 #   COLUMN txavailabilitysheds.end_date    COMMENT     r   COMMENT ON COLUMN public.txavailabilitysheds.end_date IS 'Fecha de cerrado de la programacion de uso del galpon';
            public       postgres    false    299            \           0    0 #   COLUMN txavailabilitysheds.lot_code    COMMENT     W   COMMENT ON COLUMN public.txavailabilitysheds.lot_code IS 'codigo del lote del galpon';
            public       postgres    false    299            ,           1259    78930 	   txbroiler    TABLE     L  CREATE TABLE public.txbroiler (
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
       public         postgres    false    220    3            ]           0    0    TABLE txbroiler    COMMENT     c   COMMENT ON TABLE public.txbroiler IS 'Almacena la proyeccion realizada para el modulo de engorde';
            public       postgres    false    300            ^           0    0    COLUMN txbroiler.broiler_id    COMMENT     U   COMMENT ON COLUMN public.txbroiler.broiler_id IS 'Id de la programacion de engorde';
            public       postgres    false    300            _           0    0    COLUMN txbroiler.projected_date    COMMENT     X   COMMENT ON COLUMN public.txbroiler.projected_date IS 'Fecha de proyección de engorde';
            public       postgres    false    300            `           0    0 #   COLUMN txbroiler.projected_quantity    COMMENT     `   COMMENT ON COLUMN public.txbroiler.projected_quantity IS 'Cantidad proyectada para el engorde';
            public       postgres    false    300            a           0    0    COLUMN txbroiler.partnership_id    COMMENT     I   COMMENT ON COLUMN public.txbroiler.partnership_id IS 'Id de la empresa';
            public       postgres    false    300            b           0    0    COLUMN txbroiler.scenario_id    COMMENT     G   COMMENT ON COLUMN public.txbroiler.scenario_id IS 'Id edl escenario ';
            public       postgres    false    300            c           0    0    COLUMN txbroiler.breed_id    COMMENT     K   COMMENT ON COLUMN public.txbroiler.breed_id IS 'Id de la raza a engordar';
            public       postgres    false    300            d           0    0    COLUMN txbroiler.lot_incubator    COMMENT     u   COMMENT ON COLUMN public.txbroiler.lot_incubator IS 'Lote de incubación de donde provienen los huevos proyectados';
            public       postgres    false    300            e           0    0 #   COLUMN txbroiler.programmed_eggs_id    COMMENT     Y   COMMENT ON COLUMN public.txbroiler.programmed_eggs_id IS 'Id de los huevos programados';
            public       postgres    false    300            -           1259    78934    txbroiler_detail    TABLE     �  CREATE TABLE public.txbroiler_detail (
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
       public         postgres    false    219    3            f           0    0    TABLE txbroiler_detail    COMMENT     l   COMMENT ON TABLE public.txbroiler_detail IS 'Almacena la programacion y ejecuccion del proceso de engorde';
            public       postgres    false    301            g           0    0 )   COLUMN txbroiler_detail.broiler_detail_id    COMMENT     `   COMMENT ON COLUMN public.txbroiler_detail.broiler_detail_id IS 'Id de los detalles de engorde';
            public       postgres    false    301            h           0    0 "   COLUMN txbroiler_detail.broiler_id    COMMENT     \   COMMENT ON COLUMN public.txbroiler_detail.broiler_id IS 'Id de la programacion de engorde';
            public       postgres    false    301            i           0    0 &   COLUMN txbroiler_detail.scheduled_date    COMMENT     k   COMMENT ON COLUMN public.txbroiler_detail.scheduled_date IS 'Fecha programada para el proceso de engorde';
            public       postgres    false    301            j           0    0 *   COLUMN txbroiler_detail.scheduled_quantity    COMMENT     r   COMMENT ON COLUMN public.txbroiler_detail.scheduled_quantity IS 'Cantidad programada para el proceso de engorde';
            public       postgres    false    301            k           0    0    COLUMN txbroiler_detail.farm_id    COMMENT     H   COMMENT ON COLUMN public.txbroiler_detail.farm_id IS 'Id de la granja';
            public       postgres    false    301            l           0    0    COLUMN txbroiler_detail.shed_id    COMMENT     F   COMMENT ON COLUMN public.txbroiler_detail.shed_id IS 'Id del galpon';
            public       postgres    false    301            m           0    0    COLUMN txbroiler_detail.confirm    COMMENT     E   COMMENT ON COLUMN public.txbroiler_detail.confirm IS 'Confirmacion';
            public       postgres    false    301            n           0    0 &   COLUMN txbroiler_detail.execution_date    COMMENT     p   COMMENT ON COLUMN public.txbroiler_detail.execution_date IS 'Fecha de ejeccion de la planificacion de engorde';
            public       postgres    false    301            o           0    0 *   COLUMN txbroiler_detail.execution_quantity    COMMENT     u   COMMENT ON COLUMN public.txbroiler_detail.execution_quantity IS 'Cantidad ejecutada de la programación de engorde';
            public       postgres    false    301            p           0    0    COLUMN txbroiler_detail.lot    COMMENT     D   COMMENT ON COLUMN public.txbroiler_detail.lot IS 'Lote de engorde';
            public       postgres    false    301            q           0    0 *   COLUMN txbroiler_detail.broiler_product_id    COMMENT     ^   COMMENT ON COLUMN public.txbroiler_detail.broiler_product_id IS 'Id del producto de engorde';
            public       postgres    false    301            .           1259    78938    txbroilereviction    TABLE     _  CREATE TABLE public.txbroilereviction (
    broilereviction_id integer DEFAULT nextval('public.broilereviction_id_seq'::regclass) NOT NULL,
    projected_date date,
    projected_quantity integer,
    partnership_id integer NOT NULL,
    scenario_id integer NOT NULL,
    breed_id integer NOT NULL,
    lot_incubator character varying(45) NOT NULL
);
 %   DROP TABLE public.txbroilereviction;
       public         postgres    false    224    3            r           0    0    TABLE txbroilereviction    COMMENT     _   COMMENT ON TABLE public.txbroilereviction IS 'Almacena las proyeccion del modula de desalojo';
            public       postgres    false    302            s           0    0 +   COLUMN txbroilereviction.broilereviction_id    COMMENT     ^   COMMENT ON COLUMN public.txbroilereviction.broilereviction_id IS 'Id del modulo de desalojo';
            public       postgres    false    302            t           0    0 '   COLUMN txbroilereviction.projected_date    COMMENT     b   COMMENT ON COLUMN public.txbroilereviction.projected_date IS 'Fecha proyectada para el desalojo';
            public       postgres    false    302            u           0    0 +   COLUMN txbroilereviction.projected_quantity    COMMENT     i   COMMENT ON COLUMN public.txbroilereviction.projected_quantity IS 'Cantidad proyectada para el desalojo';
            public       postgres    false    302            v           0    0 '   COLUMN txbroilereviction.partnership_id    COMMENT     Q   COMMENT ON COLUMN public.txbroilereviction.partnership_id IS 'Id de la empresa';
            public       postgres    false    302            w           0    0 $   COLUMN txbroilereviction.scenario_id    COMMENT     N   COMMENT ON COLUMN public.txbroilereviction.scenario_id IS 'Id del escenario';
            public       postgres    false    302            x           0    0 !   COLUMN txbroilereviction.breed_id    COMMENT     H   COMMENT ON COLUMN public.txbroilereviction.breed_id IS 'Id de la raza';
            public       postgres    false    302            y           0    0 &   COLUMN txbroilereviction.lot_incubator    COMMENT     R   COMMENT ON COLUMN public.txbroilereviction.lot_incubator IS 'Lote de incubacion';
            public       postgres    false    302            /           1259    78942    txbroilereviction_detail    TABLE     �  CREATE TABLE public.txbroilereviction_detail (
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
       public         postgres    false    223    3            z           0    0    TABLE txbroilereviction_detail    COMMENT     v   COMMENT ON TABLE public.txbroilereviction_detail IS 'Almacena la programación y ejecución del módulo de desalojo';
            public       postgres    false    303            {           0    0 9   COLUMN txbroilereviction_detail.broilereviction_detail_id    COMMENT     ~   COMMENT ON COLUMN public.txbroilereviction_detail.broilereviction_detail_id IS 'Id de los detalles del modulo de desarrollo';
            public       postgres    false    303            |           0    0 2   COLUMN txbroilereviction_detail.broilereviction_id    COMMENT     e   COMMENT ON COLUMN public.txbroilereviction_detail.broilereviction_id IS 'Id del modulo de desalojo';
            public       postgres    false    303            }           0    0 .   COLUMN txbroilereviction_detail.scheduled_date    COMMENT     i   COMMENT ON COLUMN public.txbroilereviction_detail.scheduled_date IS 'Fecha programada para el desalojo';
            public       postgres    false    303            ~           0    0 2   COLUMN txbroilereviction_detail.scheduled_quantity    COMMENT     p   COMMENT ON COLUMN public.txbroilereviction_detail.scheduled_quantity IS 'Cantidad programada para el desalojo';
            public       postgres    false    303                       0    0 '   COLUMN txbroilereviction_detail.farm_id    COMMENT     P   COMMENT ON COLUMN public.txbroilereviction_detail.farm_id IS 'Id de la granja';
            public       postgres    false    303            �           0    0 '   COLUMN txbroilereviction_detail.shed_id    COMMENT     N   COMMENT ON COLUMN public.txbroilereviction_detail.shed_id IS 'Id del galpon';
            public       postgres    false    303            �           0    0 '   COLUMN txbroilereviction_detail.confirm    COMMENT     M   COMMENT ON COLUMN public.txbroilereviction_detail.confirm IS 'Confirmacion';
            public       postgres    false    303            �           0    0 .   COLUMN txbroilereviction_detail.execution_date    COMMENT     \   COMMENT ON COLUMN public.txbroilereviction_detail.execution_date IS 'Fecha de ejecución ';
            public       postgres    false    303            �           0    0 2   COLUMN txbroilereviction_detail.execution_quantity    COMMENT     c   COMMENT ON COLUMN public.txbroilereviction_detail.execution_quantity IS 'Cantidad de ejecución ';
            public       postgres    false    303            �           0    0 #   COLUMN txbroilereviction_detail.lot    COMMENT     X   COMMENT ON COLUMN public.txbroilereviction_detail.lot IS 'Lote del modulo de desalojo';
            public       postgres    false    303            �           0    0 2   COLUMN txbroilereviction_detail.broiler_product_id    COMMENT     f   COMMENT ON COLUMN public.txbroilereviction_detail.broiler_product_id IS 'Id del producto de engorde';
            public       postgres    false    303            �           0    0 1   COLUMN txbroilereviction_detail.slaughterhouse_id    COMMENT     g   COMMENT ON COLUMN public.txbroilereviction_detail.slaughterhouse_id IS 'Id de la planta de beneficio';
            public       postgres    false    303            0           1259    78946    txbroilerproduct_detail    TABLE     �   CREATE TABLE public.txbroilerproduct_detail (
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
            public       postgres    false    304            1           1259    78950    txbroodermachine    TABLE     �  CREATE TABLE public.txbroodermachine (
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
            public       postgres    false    305            2           1259    78954 
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
            public       postgres    false    306            3           1259    78958    txcalendarday    TABLE     �  CREATE TABLE public.txcalendarday (
    calendar_day_id integer DEFAULT nextval('public.calendar_day_id_seq'::regclass) NOT NULL,
    calendar_id integer NOT NULL,
    use_date timestamp with time zone NOT NULL,
    use_year integer NOT NULL,
    use_month integer NOT NULL,
    use_day integer NOT NULL,
    use_week timestamp with time zone NOT NULL,
    week_day integer NOT NULL,
    sequence integer NOT NULL,
    working_day integer NOT NULL
);
 !   DROP TABLE public.txcalendarday;
       public         postgres    false    227    3            �           0    0    TABLE txcalendarday    COMMENT     _   COMMENT ON TABLE public.txcalendarday IS 'Almacena los datos de los dias que son laborables ';
            public       postgres    false    307            �           0    0 $   COLUMN txcalendarday.calendar_day_id    COMMENT     W   COMMENT ON COLUMN public.txcalendarday.calendar_day_id IS 'Id del dia del calendario';
            public       postgres    false    307            �           0    0     COLUMN txcalendarday.calendar_id    COMMENT     K   COMMENT ON COLUMN public.txcalendarday.calendar_id IS 'Id del calendario';
            public       postgres    false    307            �           0    0    COLUMN txcalendarday.use_date    COMMENT     d   COMMENT ON COLUMN public.txcalendarday.use_date IS 'Fecha en el que se encuentra el dia laborable';
            public       postgres    false    307            �           0    0    COLUMN txcalendarday.use_year    COMMENT     c   COMMENT ON COLUMN public.txcalendarday.use_year IS 'Año en el que se encuentra el dia laborable';
            public       postgres    false    307            �           0    0    COLUMN txcalendarday.use_month    COMMENT     c   COMMENT ON COLUMN public.txcalendarday.use_month IS 'Mes en el que se encuentra el dia laborable';
            public       postgres    false    307            �           0    0    COLUMN txcalendarday.use_day    COMMENT     a   COMMENT ON COLUMN public.txcalendarday.use_day IS 'Dia en el que se encuentra el dia laborable';
            public       postgres    false    307            �           0    0    COLUMN txcalendarday.use_week    COMMENT     e   COMMENT ON COLUMN public.txcalendarday.use_week IS 'Semana en el que se encuentra el dia laborable';
            public       postgres    false    307            �           0    0    COLUMN txcalendarday.week_day    COMMENT     l   COMMENT ON COLUMN public.txcalendarday.week_day IS 'Dia de semana en el que se encuentra el dia laborable';
            public       postgres    false    307            �           0    0     COLUMN txcalendarday.working_day    COMMENT     Z   COMMENT ON COLUMN public.txcalendarday.working_day IS 'Indica si el dia es laboral o no';
            public       postgres    false    307            4           1259    78962    txeggs_planning    TABLE       CREATE TABLE public.txeggs_planning (
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
            public       postgres    false    308            5           1259    78966    txeggs_required    TABLE     
  CREATE TABLE public.txeggs_required (
    egg_required_id integer DEFAULT nextval('public.egg_required_id_seq'::regclass) NOT NULL,
    use_month integer,
    use_year integer,
    scenario_id integer NOT NULL,
    required double precision,
    breed_id integer
);
 #   DROP TABLE public.txeggs_required;
       public         postgres    false    231    3            �           0    0    TABLE txeggs_required    COMMENT     V   COMMENT ON TABLE public.txeggs_required IS 'Almacena los datos de huevos requeridos';
            public       postgres    false    309            �           0    0 &   COLUMN txeggs_required.egg_required_id    COMMENT     [   COMMENT ON COLUMN public.txeggs_required.egg_required_id IS 'Id de los huevos requeridos';
            public       postgres    false    309            �           0    0     COLUMN txeggs_required.use_month    COMMENT     =   COMMENT ON COLUMN public.txeggs_required.use_month IS 'Mes';
            public       postgres    false    309            �           0    0    COLUMN txeggs_required.use_year    COMMENT     =   COMMENT ON COLUMN public.txeggs_required.use_year IS 'Año';
            public       postgres    false    309            �           0    0 "   COLUMN txeggs_required.scenario_id    COMMENT     L   COMMENT ON COLUMN public.txeggs_required.scenario_id IS 'Id del escenario';
            public       postgres    false    309            �           0    0    COLUMN txeggs_required.required    COMMENT     K   COMMENT ON COLUMN public.txeggs_required.required IS 'Cantidad requerida';
            public       postgres    false    309            �           0    0    COLUMN txeggs_required.breed_id    COMMENT     F   COMMENT ON COLUMN public.txeggs_required.breed_id IS 'Id de la raza';
            public       postgres    false    309            6           1259    78970    txeggs_storage    TABLE     G  CREATE TABLE public.txeggs_storage (
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
            public       postgres    false    310            7           1259    78974    txgoals_erp    TABLE     �   CREATE TABLE public.txgoals_erp (
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
            public       postgres    false    311            8           1259    78977    txgoals_erp_goals_erp_id_seq    SEQUENCE     �   CREATE SEQUENCE public.txgoals_erp_goals_erp_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.txgoals_erp_goals_erp_id_seq;
       public       postgres    false    3    311            �           0    0    txgoals_erp_goals_erp_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.txgoals_erp_goals_erp_id_seq OWNED BY public.txgoals_erp.goals_erp_id;
            public       postgres    false    312            9           1259    78979 	   txholiday    TABLE       CREATE TABLE public.txholiday (
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
            public       postgres    false    313            :           1259    78983    txhousingway    TABLE     d  CREATE TABLE public.txhousingway (
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
            public       postgres    false    314            ;           1259    78987    txhousingway_detail    TABLE     �  CREATE TABLE public.txhousingway_detail (
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
            public       postgres    false    315            <           1259    78991    txlot    TABLE     n  CREATE TABLE public.txlot (
    lot_id integer DEFAULT nextval('public.lot_id_seq'::regclass) NOT NULL,
    lot_code character varying(20) NOT NULL,
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
            public       postgres    false    316            =           1259    78995 
   txlot_eggs    TABLE     �   CREATE TABLE public.txlot_eggs (
    lot_eggs_id integer DEFAULT nextval('public.lot_eggs_id_seq'::regclass) NOT NULL,
    theorical_performance double precision,
    week_date date,
    week integer
);
    DROP TABLE public.txlot_eggs;
       public         postgres    false    242    3            �           0    0    TABLE txlot_eggs    COMMENT     S   COMMENT ON TABLE public.txlot_eggs IS 'Almacena los datos de los lotes de huevos';
            public       postgres    false    317            �           0    0    COLUMN txlot_eggs.lot_eggs_id    COMMENT     L   COMMENT ON COLUMN public.txlot_eggs.lot_eggs_id IS 'Id del lote de huevos';
            public       postgres    false    317            �           0    0 '   COLUMN txlot_eggs.theorical_performance    COMMENT     T   COMMENT ON COLUMN public.txlot_eggs.theorical_performance IS 'Rendimiento teorico';
            public       postgres    false    317            �           0    0    COLUMN txlot_eggs.week_date    COMMENT     G   COMMENT ON COLUMN public.txlot_eggs.week_date IS 'Fecha de la semana';
            public       postgres    false    317            �           0    0    COLUMN txlot_eggs.week    COMMENT     6   COMMENT ON COLUMN public.txlot_eggs.week IS 'Semana';
            public       postgres    false    317            H           1259    79871    txposturecurve    TABLE     �  CREATE TABLE public.txposturecurve (
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
       public         postgres    false    290    3            �           0    0    TABLE txposturecurve    COMMENT        COMMENT ON TABLE public.txposturecurve IS 'Almacena la información de la curva de postura por cada raza separada por semana';
            public       postgres    false    328            �           0    0 &   COLUMN txposturecurve.posture_curve_id    COMMENT     Y   COMMENT ON COLUMN public.txposturecurve.posture_curve_id IS 'Id de la curva de postura';
            public       postgres    false    328                        0    0    COLUMN txposturecurve.week    COMMENT     _   COMMENT ON COLUMN public.txposturecurve.week IS 'Semana en la que inicia la curva de postura';
            public       postgres    false    328                       0    0    COLUMN txposturecurve.breed_id    COMMENT     E   COMMENT ON COLUMN public.txposturecurve.breed_id IS 'Id de la raza';
            public       postgres    false    328                       0    0 +   COLUMN txposturecurve.theorical_performance    COMMENT     X   COMMENT ON COLUMN public.txposturecurve.theorical_performance IS 'Desempeño teórico';
            public       postgres    false    328                       0    0 ,   COLUMN txposturecurve.historical_performance    COMMENT     [   COMMENT ON COLUMN public.txposturecurve.historical_performance IS 'Desempeño histórico';
            public       postgres    false    328                       0    0 /   COLUMN txposturecurve.theorical_accum_mortality    COMMENT     h   COMMENT ON COLUMN public.txposturecurve.theorical_accum_mortality IS 'Acumulado de mortalidad teorico';
            public       postgres    false    328                       0    0 0   COLUMN txposturecurve.historical_accum_mortality    COMMENT     k   COMMENT ON COLUMN public.txposturecurve.historical_accum_mortality IS 'Acumulado de mortalidad historico';
            public       postgres    false    328                       0    0 *   COLUMN txposturecurve.theorical_uniformity    COMMENT     W   COMMENT ON COLUMN public.txposturecurve.theorical_uniformity IS 'Uniformidad teorica';
            public       postgres    false    328                       0    0 +   COLUMN txposturecurve.historical_uniformity    COMMENT     Z   COMMENT ON COLUMN public.txposturecurve.historical_uniformity IS 'Uniformidad historica';
            public       postgres    false    328                       0    0 "   COLUMN txposturecurve.type_posture    COMMENT     K   COMMENT ON COLUMN public.txposturecurve.type_posture IS 'Tipo de postura';
            public       postgres    false    328            >           1259    79003    txprogrammed_eggs    TABLE     �  CREATE TABLE public.txprogrammed_eggs (
    programmed_eggs_id integer DEFAULT nextval('public.programmed_eggs_id_seq'::regclass) NOT NULL,
    incubator_id integer NOT NULL,
    lot_breed character varying(45),
    lot_incubator character varying(45),
    use_date date,
    eggs integer,
    breed_id integer NOT NULL,
    execution_quantity integer,
    eggs_storage_id integer NOT NULL,
    confirm integer
);
 %   DROP TABLE public.txprogrammed_eggs;
       public         postgres    false    292    3            	           0    0    TABLE txprogrammed_eggs    COMMENT        COMMENT ON TABLE public.txprogrammed_eggs IS 'Almacena la proyección, programación y ejecución del módulo de incubadoras';
            public       postgres    false    318            
           0    0 +   COLUMN txprogrammed_eggs.programmed_eggs_id    COMMENT     j   COMMENT ON COLUMN public.txprogrammed_eggs.programmed_eggs_id IS 'Id de las programacion de incubadoras';
            public       postgres    false    318                       0    0 %   COLUMN txprogrammed_eggs.incubator_id    COMMENT     O   COMMENT ON COLUMN public.txprogrammed_eggs.incubator_id IS 'Id de incubadora';
            public       postgres    false    318                       0    0 "   COLUMN txprogrammed_eggs.lot_breed    COMMENT     I   COMMENT ON COLUMN public.txprogrammed_eggs.lot_breed IS 'Lote por raza';
            public       postgres    false    318                       0    0 &   COLUMN txprogrammed_eggs.lot_incubator    COMMENT     S   COMMENT ON COLUMN public.txprogrammed_eggs.lot_incubator IS 'Lote de incubadoras';
            public       postgres    false    318                       0    0    COLUMN txprogrammed_eggs.eggs    COMMENT     I   COMMENT ON COLUMN public.txprogrammed_eggs.eggs IS 'Cantidad de huevos';
            public       postgres    false    318                       0    0 !   COLUMN txprogrammed_eggs.breed_id    COMMENT     E   COMMENT ON COLUMN public.txprogrammed_eggs.breed_id IS 'Id de raza';
            public       postgres    false    318                       0    0 +   COLUMN txprogrammed_eggs.execution_quantity    COMMENT     [   COMMENT ON COLUMN public.txprogrammed_eggs.execution_quantity IS 'Cantidad de ejecución';
            public       postgres    false    318            ?           1259    79007    txscenarioformula    TABLE     �  CREATE TABLE public.txscenarioformula (
    scenario_formula_id integer DEFAULT nextval('public.scenario_formula_id_seq'::regclass) NOT NULL,
    process_id integer NOT NULL,
    predecessor_id integer NOT NULL,
    parameter_id integer NOT NULL,
    sign integer,
    divider double precision,
    duration integer,
    scenario_id integer NOT NULL,
    measure_id integer NOT NULL
);
 %   DROP TABLE public.txscenarioformula;
       public         postgres    false    294    3                       0    0    TABLE txscenarioformula    COMMENT     �   COMMENT ON TABLE public.txscenarioformula IS 'Almacena los datos para la formulación de salida de la planificación regresiva';
            public       postgres    false    319                       0    0 ,   COLUMN txscenarioformula.scenario_formula_id    COMMENT     d   COMMENT ON COLUMN public.txscenarioformula.scenario_formula_id IS 'Id de la formula del escenario';
            public       postgres    false    319                       0    0 #   COLUMN txscenarioformula.process_id    COMMENT     K   COMMENT ON COLUMN public.txscenarioformula.process_id IS 'Id del proceso';
            public       postgres    false    319                       0    0 '   COLUMN txscenarioformula.predecessor_id    COMMENT     R   COMMENT ON COLUMN public.txscenarioformula.predecessor_id IS 'Id del predecesor';
            public       postgres    false    319                       0    0 %   COLUMN txscenarioformula.parameter_id    COMMENT     O   COMMENT ON COLUMN public.txscenarioformula.parameter_id IS 'Id del parametro';
            public       postgres    false    319                       0    0    COLUMN txscenarioformula.sign    COMMENT     E   COMMENT ON COLUMN public.txscenarioformula.sign IS 'Firma de datos';
            public       postgres    false    319                       0    0     COLUMN txscenarioformula.divider    COMMENT     J   COMMENT ON COLUMN public.txscenarioformula.divider IS 'divisor de datos';
            public       postgres    false    319                       0    0 !   COLUMN txscenarioformula.duration    COMMENT     Q   COMMENT ON COLUMN public.txscenarioformula.duration IS 'Duracion de la formula';
            public       postgres    false    319                       0    0 $   COLUMN txscenarioformula.scenario_id    COMMENT     N   COMMENT ON COLUMN public.txscenarioformula.scenario_id IS 'Id del escenario';
            public       postgres    false    319                       0    0 #   COLUMN txscenarioformula.measure_id    COMMENT     M   COMMENT ON COLUMN public.txscenarioformula.measure_id IS 'Id de la medida
';
            public       postgres    false    319            @           1259    79011    txscenariohen    TABLE     �   CREATE TABLE public.txscenariohen (
    use_week integer NOT NULL,
    use_year integer NOT NULL,
    scenario_id integer NOT NULL,
    quantity_hen integer,
    breed_id integer NOT NULL
);
 !   DROP TABLE public.txscenariohen;
       public         postgres    false    3            A           1259    79014    txscenarioparameter    TABLE     _  CREATE TABLE public.txscenarioparameter (
    scenario_parameter_id integer DEFAULT nextval('public.scenario_parameter_id_seq'::regclass) NOT NULL,
    process_id integer NOT NULL,
    parameter_id integer NOT NULL,
    use_year integer,
    use_month integer,
    scenario_id integer NOT NULL,
    value_units integer DEFAULT 0,
    value integer
);
 '   DROP TABLE public.txscenarioparameter;
       public         postgres    false    296    3                       0    0    TABLE txscenarioparameter    COMMENT     s   COMMENT ON TABLE public.txscenarioparameter IS 'Almacena las metas de producción ingresadas para los escenarios';
            public       postgres    false    321                       0    0 0   COLUMN txscenarioparameter.scenario_parameter_id    COMMENT     l   COMMENT ON COLUMN public.txscenarioparameter.scenario_parameter_id IS 'Id de los parametros del escenario';
            public       postgres    false    321                       0    0 %   COLUMN txscenarioparameter.process_id    COMMENT     M   COMMENT ON COLUMN public.txscenarioparameter.process_id IS 'Id del proceso';
            public       postgres    false    321                       0    0 '   COLUMN txscenarioparameter.parameter_id    COMMENT     Q   COMMENT ON COLUMN public.txscenarioparameter.parameter_id IS 'Id del parametro';
            public       postgres    false    321                       0    0 #   COLUMN txscenarioparameter.use_year    COMMENT     O   COMMENT ON COLUMN public.txscenarioparameter.use_year IS 'Año del parametro';
            public       postgres    false    321                        0    0 $   COLUMN txscenarioparameter.use_month    COMMENT     O   COMMENT ON COLUMN public.txscenarioparameter.use_month IS 'Mes del parametro';
            public       postgres    false    321            !           0    0 &   COLUMN txscenarioparameter.scenario_id    COMMENT     P   COMMENT ON COLUMN public.txscenarioparameter.scenario_id IS 'Id del escenario';
            public       postgres    false    321            "           0    0 &   COLUMN txscenarioparameter.value_units    COMMENT     U   COMMENT ON COLUMN public.txscenarioparameter.value_units IS 'Valor de las unidades';
            public       postgres    false    321            B           1259    79019    txscenarioparameterday    TABLE     {  CREATE TABLE public.txscenarioparameterday (
    scenario_parameter_day_id integer DEFAULT nextval('public.scenario_parameter_day_seq'::regclass) NOT NULL,
    use_day integer,
    parameter_id integer NOT NULL,
    units_day integer,
    scenario_id integer NOT NULL,
    sequence integer,
    use_month integer,
    use_year integer,
    week_day integer,
    use_week date
);
 *   DROP TABLE public.txscenarioparameterday;
       public         postgres    false    295    3            #           0    0    TABLE txscenarioparameterday    COMMENT     V   COMMENT ON TABLE public.txscenarioparameterday IS 'Almcacena los parametros por dia';
            public       postgres    false    322            $           0    0 7   COLUMN txscenarioparameterday.scenario_parameter_day_id    COMMENT     m   COMMENT ON COLUMN public.txscenarioparameterday.scenario_parameter_day_id IS 'Id de los parametros del dia';
            public       postgres    false    322            %           0    0 %   COLUMN txscenarioparameterday.use_day    COMMENT     B   COMMENT ON COLUMN public.txscenarioparameterday.use_day IS 'Dia';
            public       postgres    false    322            &           0    0 *   COLUMN txscenarioparameterday.parameter_id    COMMENT     c   COMMENT ON COLUMN public.txscenarioparameterday.parameter_id IS 'Id de los parametros necesarios';
            public       postgres    false    322            '           0    0 '   COLUMN txscenarioparameterday.units_day    COMMENT     U   COMMENT ON COLUMN public.txscenarioparameterday.units_day IS 'Cantidad de material';
            public       postgres    false    322            (           0    0 )   COLUMN txscenarioparameterday.scenario_id    COMMENT     u   COMMENT ON COLUMN public.txscenarioparameterday.scenario_id IS 'Escenario al cual pertenece el scanrioparameterday';
            public       postgres    false    322            )           0    0 &   COLUMN txscenarioparameterday.sequence    COMMENT     R   COMMENT ON COLUMN public.txscenarioparameterday.sequence IS 'Secuencia del dia
';
            public       postgres    false    322            *           0    0 '   COLUMN txscenarioparameterday.use_month    COMMENT     ]   COMMENT ON COLUMN public.txscenarioparameterday.use_month IS 'Mes en que se ubica el día ';
            public       postgres    false    322            +           0    0 &   COLUMN txscenarioparameterday.use_year    COMMENT     ]   COMMENT ON COLUMN public.txscenarioparameterday.use_year IS 'Año en que se ubica el día ';
            public       postgres    false    322            ,           0    0 &   COLUMN txscenarioparameterday.week_day    COMMENT     P   COMMENT ON COLUMN public.txscenarioparameterday.week_day IS 'Dia de la semana';
            public       postgres    false    322            -           0    0 &   COLUMN txscenarioparameterday.use_week    COMMENT     F   COMMENT ON COLUMN public.txscenarioparameterday.use_week IS 'Semana';
            public       postgres    false    322            C           1259    79023    txscenarioposturecurve    TABLE     3  CREATE TABLE public.txscenarioposturecurve (
    scenario_posture_id integer DEFAULT nextval('public.scenario_posture_id_seq'::regclass) NOT NULL,
    posture_date date,
    eggs double precision,
    scenario_id integer NOT NULL,
    housingway_detail_id integer NOT NULL,
    breed_id integer NOT NULL
);
 *   DROP TABLE public.txscenarioposturecurve;
       public         postgres    false    297    3            .           0    0    TABLE txscenarioposturecurve    COMMENT     o   COMMENT ON TABLE public.txscenarioposturecurve IS 'Almacena los datos que se utilizan en la curva de postura';
            public       postgres    false    323            /           0    0 1   COLUMN txscenarioposturecurve.scenario_posture_id    COMMENT     i   COMMENT ON COLUMN public.txscenarioposturecurve.scenario_posture_id IS 'Id de la postura del escenario';
            public       postgres    false    323            0           0    0 *   COLUMN txscenarioposturecurve.posture_date    COMMENT     W   COMMENT ON COLUMN public.txscenarioposturecurve.posture_date IS 'Fecha de la postura';
            public       postgres    false    323            1           0    0 "   COLUMN txscenarioposturecurve.eggs    COMMENT     N   COMMENT ON COLUMN public.txscenarioposturecurve.eggs IS 'Cantidad de huevos';
            public       postgres    false    323            2           0    0 )   COLUMN txscenarioposturecurve.scenario_id    COMMENT     R   COMMENT ON COLUMN public.txscenarioposturecurve.scenario_id IS 'Id del scenario';
            public       postgres    false    323            3           0    0 2   COLUMN txscenarioposturecurve.housingway_detail_id    COMMENT     �   COMMENT ON COLUMN public.txscenarioposturecurve.housingway_detail_id IS 'Id de la programación y ejecución de los modelos de levante y cría y reproductora';
            public       postgres    false    323            4           0    0 &   COLUMN txscenarioposturecurve.breed_id    COMMENT     M   COMMENT ON COLUMN public.txscenarioposturecurve.breed_id IS 'Id de la raza';
            public       postgres    false    323            D           1259    79027    txscenarioprocess    TABLE     4  CREATE TABLE public.txscenarioprocess (
    scenario_process_id integer DEFAULT nextval('public.scenario_process_id_seq'::regclass) NOT NULL,
    process_id integer NOT NULL,
    decrease_goal double precision,
    weight_goal double precision,
    duration_goal integer,
    scenario_id integer NOT NULL
);
 %   DROP TABLE public.txscenarioprocess;
       public         postgres    false    298    3            5           0    0    TABLE txscenarioprocess    COMMENT     m   COMMENT ON TABLE public.txscenarioprocess IS 'Almacena los procesos asociados a cada uno de los escenarios';
            public       postgres    false    324            6           0    0 ,   COLUMN txscenarioprocess.scenario_process_id    COMMENT     a   COMMENT ON COLUMN public.txscenarioprocess.scenario_process_id IS 'Id del proceso de escenario';
            public       postgres    false    324            7           0    0 #   COLUMN txscenarioprocess.process_id    COMMENT     V   COMMENT ON COLUMN public.txscenarioprocess.process_id IS 'Id del proceso a utilizar';
            public       postgres    false    324            8           0    0 &   COLUMN txscenarioprocess.decrease_goal    COMMENT     v   COMMENT ON COLUMN public.txscenarioprocess.decrease_goal IS 'Guarda los datos de la merma historia en dicho proceso';
            public       postgres    false    324            9           0    0 $   COLUMN txscenarioprocess.weight_goal    COMMENT     q   COMMENT ON COLUMN public.txscenarioprocess.weight_goal IS 'Guarda los datos del peso historio en dicho proceso';
            public       postgres    false    324            :           0    0 &   COLUMN txscenarioprocess.duration_goal    COMMENT     y   COMMENT ON COLUMN public.txscenarioprocess.duration_goal IS 'Guarda los datos de la duracion historia en dicho proceso';
            public       postgres    false    324            ;           0    0 $   COLUMN txscenarioprocess.scenario_id    COMMENT     X   COMMENT ON COLUMN public.txscenarioprocess.scenario_id IS 'Id del escenario utilizado';
            public       postgres    false    324            E           1259    79031 #   user_application_application_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_application_application_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 :   DROP SEQUENCE public.user_application_application_id_seq;
       public       postgres    false    3            F           1259    79033     user_application_user_app_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_application_user_app_id_seq
    START WITH 215
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 7   DROP SEQUENCE public.user_application_user_app_id_seq;
       public       postgres    false    3            G           1259    79035    user_application_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_application_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 3   DROP SEQUENCE public.user_application_user_id_seq;
       public       postgres    false    3            *           2604    79037    txgoals_erp goals_erp_id    DEFAULT     �   ALTER TABLE ONLY public.txgoals_erp ALTER COLUMN goals_erp_id SET DEFAULT nextval('public.txgoals_erp_goals_erp_id_seq'::regclass);
 G   ALTER TABLE public.txgoals_erp ALTER COLUMN goals_erp_id DROP DEFAULT;
       public       postgres    false    312    311                       0    78631    aba_breeds_and_stages 
   TABLE DATA               m   COPY public.aba_breeds_and_stages (id, code, name, id_aba_consumption_and_mortality, id_process) FROM stdin;
    public       postgres    false    198   >w      "          0    78637    aba_consumption_and_mortality 
   TABLE DATA               m   COPY public.aba_consumption_and_mortality (id, code, name, id_breed, id_stage, id_aba_time_unit) FROM stdin;
    public       postgres    false    200   [w      $          0    78643 $   aba_consumption_and_mortality_detail 
   TABLE DATA               �   COPY public.aba_consumption_and_mortality_detail (id, id_aba_consumption_and_mortality, time_unit_number, consumption, mortality) FROM stdin;
    public       postgres    false    202   xw      &          0    78649    aba_elements 
   TABLE DATA               6   COPY public.aba_elements (id, code, name) FROM stdin;
    public       postgres    false    204   �w      (          0    78655    aba_elements_and_concentrations 
   TABLE DATA               �   COPY public.aba_elements_and_concentrations (id, id_aba_element, id_aba_formulation, proportion, id_element_equivalent, id_aba_element_property, equivalent_quantity) FROM stdin;
    public       postgres    false    206   �w      *          0    78661    aba_elements_properties 
   TABLE DATA               A   COPY public.aba_elements_properties (id, code, name) FROM stdin;
    public       postgres    false    208   �w      ,          0    78667    aba_formulation 
   TABLE DATA               9   COPY public.aba_formulation (id, code, name) FROM stdin;
    public       postgres    false    210   x      .          0    78673    aba_results 
   TABLE DATA               C   COPY public.aba_results (id, id_aba_element, quantity) FROM stdin;
    public       postgres    false    212   (x      0          0    78679    aba_stages_of_breeds_and_stages 
   TABLE DATA               w   COPY public.aba_stages_of_breeds_and_stages (id, id_aba_breeds_and_stages, id_formulation, name, duration) FROM stdin;
    public       postgres    false    214   Ex      1          0    78683    aba_time_unit 
   TABLE DATA               G   COPY public.aba_time_unit (id, singular_name, plural_name) FROM stdin;
    public       postgres    false    215   bx      Q          0    78749    mdapplication 
   TABLE DATA               O   COPY public.mdapplication (application_id, application_name, type) FROM stdin;
    public       postgres    false    247   x      S          0    78758    mdapplication_rol 
   TABLE DATA               G   COPY public.mdapplication_rol (application_id, id, rol_id) FROM stdin;
    public       postgres    false    249   by      T          0    78762    mdbreed 
   TABLE DATA               7   COPY public.mdbreed (breed_id, code, name) FROM stdin;
    public       postgres    false    250   �y      U          0    78766    mdbroiler_product 
   TABLE DATA               \   COPY public.mdbroiler_product (broiler_product_id, name, days_eviction, weight) FROM stdin;
    public       postgres    false    251   	z      V          0    78770 
   mdfarmtype 
   TABLE DATA               8   COPY public.mdfarmtype (farm_type_id, name) FROM stdin;
    public       postgres    false    252   >z      W          0    78774 
   mdindustry 
   TABLE DATA               7   COPY public.mdindustry (industry_id, name) FROM stdin;
    public       postgres    false    253   �z      Y          0    78780 	   mdmeasure 
   TABLE DATA               b   COPY public.mdmeasure (measure_id, name, abbreviation, originvalue, valuekg, is_unit) FROM stdin;
    public       postgres    false    255   �z      [          0    78786    mdparameter 
   TABLE DATA               d   COPY public.mdparameter (parameter_id, description, type, measure_id, process_id, name) FROM stdin;
    public       postgres    false    257   �z      ]          0    78795 	   mdprocess 
   TABLE DATA               J  COPY public.mdprocess (process_id, process_order, product_id, stage_id, historical_decrease, theoretical_decrease, historical_weight, theoretical_weight, historical_duration, theoretical_duration, calendar_id, visible, name, predecessor_id, capacity, breed_id, gender, fattening_goal, type_posture, biological_active) FROM stdin;
    public       postgres    false    259   {      _          0    78801    mdprocessclass 
   TABLE DATA               M   COPY public.mdprocessclass (process_class_id, name, industry_id) FROM stdin;
    public       postgres    false    261   �{      a          0    78807 	   mdproduct 
   TABLE DATA               ;   COPY public.mdproduct (product_id, code, name) FROM stdin;
    public       postgres    false    263   =|      c          0    78813    mdrol 
   TABLE DATA               T   COPY public.mdrol (rol_id, rol_name, admin_user_creator, creation_date) FROM stdin;
    public       postgres    false    265   �|      e          0    78819 
   mdscenario 
   TABLE DATA               o   COPY public.mdscenario (scenario_id, description, date_start, date_end, name, status, calendar_id) FROM stdin;
    public       postgres    false    267   �}      g          0    78829    mdshedstatus 
   TABLE DATA               I   COPY public.mdshedstatus (shed_status_id, name, description) FROM stdin;
    public       postgres    false    269   �}      i          0    78835    mdstage 
   TABLE DATA               9   COPY public.mdstage (stage_id, order_, name) FROM stdin;
    public       postgres    false    271   }~      k          0    78841    mduser 
   TABLE DATA                  COPY public.mduser (username, password, name, lastname, active, admi_user_creator, rol_id, creation_date, user_id) FROM stdin;
    public       postgres    false    273   �~      l          0    78845    oscenter 
   TABLE DATA               R   COPY public.oscenter (center_id, partnership_id, farm_id, name, code) FROM stdin;
    public       postgres    false    274   ��      m          0    78849    oscenter_oswarehouse 
   TABLE DATA               x   COPY public.oscenter_oswarehouse (client_id, partnership_id, farm_id, center_id, warehouse_id, delete_mark) FROM stdin;
    public       postgres    false    275   ��      n          0    78852    osfarm 
   TABLE DATA               S   COPY public.osfarm (farm_id, partnership_id, code, name, farm_type_id) FROM stdin;
    public       postgres    false    276   ��      o          0    78856    osincubator 
   TABLE DATA               �   COPY public.osincubator (incubator_id, incubator_plant_id, name, code, description, capacity, sunday, monday, tuesday, wednesday, thursday, friday, saturday) FROM stdin;
    public       postgres    false    277   w�      p          0    78860    osincubatorplant 
   TABLE DATA               �   COPY public.osincubatorplant (incubator_plant_id, name, code, description, partnership_id, max_storage, min_storage) FROM stdin;
    public       postgres    false    278   Ѓ      r          0    78866    ospartnership 
   TABLE DATA               Y   COPY public.ospartnership (partnership_id, name, address, description, code) FROM stdin;
    public       postgres    false    280   �      t          0    78875    osshed 
   TABLE DATA                 COPY public.osshed (shed_id, partnership_id, farm_id, center_id, code, statusshed_id, type_id, building_date, stall_width, stall_height, capacity_min, capacity_max, environment_id, rotation_days, nests_quantity, cages_quantity, birds_quantity, capacity_theoretical) FROM stdin;
    public       postgres    false    282   ۄ      v          0    78886    ossilo 
   TABLE DATA               ?  COPY public.ossilo (silo_id, client_id, partnership_id, farm_id, center_id, name, rings_height, rings_height_id, height, height_unit_id, diameter, diameter_unit_id, total_rings_quantity, measuring_mechanism, cone_degrees, total_capacity_1, total_capacity_2, capacity_unit_id_1, capacity_unit_id_2, central) FROM stdin;
    public       postgres    false    284   ��      w          0    78890    ossilo_osshed 
   TABLE DATA               v   COPY public.ossilo_osshed (silo_id, shed_id, center_id, farm_id, partnership_id, client_id, deleted_mark) FROM stdin;
    public       postgres    false    285   ��      y          0    78895    osslaughterhouse 
   TABLE DATA               i   COPY public.osslaughterhouse (slaughterhouse_id, name, address, description, code, capacity) FROM stdin;
    public       postgres    false    287   Ʌ      {          0    78904    oswarehouse 
   TABLE DATA               X   COPY public.oswarehouse (warehouse_id, partnership_id, farm_id, name, code) FROM stdin;
    public       postgres    false    289   :�      �          0    78926    txavailabilitysheds 
   TABLE DATA               k   COPY public.txavailabilitysheds (availability_shed_id, shed_id, init_date, end_date, lot_code) FROM stdin;
    public       postgres    false    299   ��      �          0    78930 	   txbroiler 
   TABLE DATA               �   COPY public.txbroiler (broiler_id, projected_date, projected_quantity, partnership_id, scenario_id, breed_id, lot_incubator, programmed_eggs_id) FROM stdin;
    public       postgres    false    300   ݆      �          0    78934    txbroiler_detail 
   TABLE DATA               �   COPY public.txbroiler_detail (broiler_detail_id, broiler_id, scheduled_date, scheduled_quantity, farm_id, shed_id, confirm, execution_date, execution_quantity, lot, broiler_product_id) FROM stdin;
    public       postgres    false    301   ��      �          0    78938    txbroilereviction 
   TABLE DATA               �   COPY public.txbroilereviction (broilereviction_id, projected_date, projected_quantity, partnership_id, scenario_id, breed_id, lot_incubator) FROM stdin;
    public       postgres    false    302   �      �          0    78942    txbroilereviction_detail 
   TABLE DATA               �   COPY public.txbroilereviction_detail (broilereviction_detail_id, broilereviction_id, scheduled_date, scheduled_quantity, farm_id, shed_id, confirm, execution_date, execution_quantity, lot, broiler_product_id, slaughterhouse_id) FROM stdin;
    public       postgres    false    303   4�      �          0    78946    txbroilerproduct_detail 
   TABLE DATA               y   COPY public.txbroilerproduct_detail (broilerproduct_detail_id, broiler_detail, broiler_product_id, quantity) FROM stdin;
    public       postgres    false    304   Q�      �          0    78950    txbroodermachine 
   TABLE DATA               �   COPY public.txbroodermachine (brooder_machine_id_seq, partnership_id, farm_id, capacity, sunday, monday, tuesday, wednesday, thursday, friday, saturday, name) FROM stdin;
    public       postgres    false    305   n�      �          0    78954 
   txcalendar 
   TABLE DATA               �   COPY public.txcalendar (calendar_id, description, saturday, sunday, week_start, code, year_start, year_end, generated) FROM stdin;
    public       postgres    false    306   ��      �          0    78958    txcalendarday 
   TABLE DATA               �   COPY public.txcalendarday (calendar_day_id, calendar_id, use_date, use_year, use_month, use_day, use_week, week_day, sequence, working_day) FROM stdin;
    public       postgres    false    307   �      �          0    78962    txeggs_planning 
   TABLE DATA               y   COPY public.txeggs_planning (egg_planning_id, month_planning, year_planning, scenario_id, planned, breed_id) FROM stdin;
    public       postgres    false    308   ��      �          0    78966    txeggs_required 
   TABLE DATA               p   COPY public.txeggs_required (egg_required_id, use_month, use_year, scenario_id, required, breed_id) FROM stdin;
    public       postgres    false    309   ��      �          0    78970    txeggs_storage 
   TABLE DATA               �   COPY public.txeggs_storage (eggs_storage_id, incubator_plant_id, scenario_id, breed_id, init_date, end_date, lot, eggs) FROM stdin;
    public       postgres    false    310   I�      �          0    78974    txgoals_erp 
   TABLE DATA               _   COPY public.txgoals_erp (goals_erp_id, week, value, product_id, code, scenario_id) FROM stdin;
    public       postgres    false    311   f�      �          0    78979 	   txholiday 
   TABLE DATA               [   COPY public.txholiday (holiday_id, calendar_id, year, month, day, description) FROM stdin;
    public       postgres    false    313   ��      �          0    78983    txhousingway 
   TABLE DATA               �   COPY public.txhousingway (housing_way_id, projected_quantity, projected_date, stage_id, partnership_id, scenario_id, breed_id, predecessor_id) FROM stdin;
    public       postgres    false    314   ��      �          0    78987    txhousingway_detail 
   TABLE DATA               �   COPY public.txhousingway_detail (housingway_detail_id, housing_way_id, scheduled_date, scheduled_quantity, farm_id, shed_id, confirm, execution_date, execution_quantity, lot, incubator_plant_id) FROM stdin;
    public       postgres    false    315   ��      �          0    78991    txlot 
   TABLE DATA               �   COPY public.txlot (lot_id, lot_code, lot_origin, status, proyected_date, sheduled_date, proyected_quantity, sheduled_quantity, released_quantity, product_id, breed_id, gender, type_posture, shed_id, origin, farm_id, housing_way_id) FROM stdin;
    public       postgres    false    316   ��      �          0    78995 
   txlot_eggs 
   TABLE DATA               Y   COPY public.txlot_eggs (lot_eggs_id, theorical_performance, week_date, week) FROM stdin;
    public       postgres    false    317   ��      �          0    79871    txposturecurve 
   TABLE DATA               �   COPY public.txposturecurve (posture_curve_id, week, breed_id, theorical_performance, historical_performance, theorical_accum_mortality, historical_accum_mortality, theorical_uniformity, historical_uniformity, type_posture) FROM stdin;
    public       postgres    false    328   �      �          0    79003    txprogrammed_eggs 
   TABLE DATA               �   COPY public.txprogrammed_eggs (programmed_eggs_id, incubator_id, lot_breed, lot_incubator, use_date, eggs, breed_id, execution_quantity, eggs_storage_id, confirm) FROM stdin;
    public       postgres    false    318   1�      �          0    79007    txscenarioformula 
   TABLE DATA               �   COPY public.txscenarioformula (scenario_formula_id, process_id, predecessor_id, parameter_id, sign, divider, duration, scenario_id, measure_id) FROM stdin;
    public       postgres    false    319   N�      �          0    79011    txscenariohen 
   TABLE DATA               `   COPY public.txscenariohen (use_week, use_year, scenario_id, quantity_hen, breed_id) FROM stdin;
    public       postgres    false    320   ��      �          0    79014    txscenarioparameter 
   TABLE DATA               �   COPY public.txscenarioparameter (scenario_parameter_id, process_id, parameter_id, use_year, use_month, scenario_id, value_units, value) FROM stdin;
    public       postgres    false    321   ��      �          0    79019    txscenarioparameterday 
   TABLE DATA               �   COPY public.txscenarioparameterday (scenario_parameter_day_id, use_day, parameter_id, units_day, scenario_id, sequence, use_month, use_year, week_day, use_week) FROM stdin;
    public       postgres    false    322   c�      �          0    79023    txscenarioposturecurve 
   TABLE DATA               �   COPY public.txscenarioposturecurve (scenario_posture_id, posture_date, eggs, scenario_id, housingway_detail_id, breed_id) FROM stdin;
    public       postgres    false    323   ��      �          0    79027    txscenarioprocess 
   TABLE DATA               �   COPY public.txscenarioprocess (scenario_process_id, process_id, decrease_goal, weight_goal, duration_goal, scenario_id) FROM stdin;
    public       postgres    false    324   ��      <           0    0    abaTimeUnit_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."abaTimeUnit_id_seq"', 2, false);
            public       postgres    false    196            =           0    0    aba_breeds_and_stages_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.aba_breeds_and_stages_id_seq', 8, false);
            public       postgres    false    197            >           0    0 +   aba_consumption_and_mortality_detail_id_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public.aba_consumption_and_mortality_detail_id_seq', 203, false);
            public       postgres    false    201            ?           0    0 $   aba_consumption_and_mortality_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.aba_consumption_and_mortality_id_seq', 8, false);
            public       postgres    false    199            @           0    0 &   aba_elements_and_concentrations_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.aba_elements_and_concentrations_id_seq', 105, true);
            public       postgres    false    205            A           0    0    aba_elements_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.aba_elements_id_seq', 22, true);
            public       postgres    false    203            B           0    0    aba_elements_properties_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.aba_elements_properties_id_seq', 1, false);
            public       postgres    false    207            C           0    0    aba_formulation_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.aba_formulation_id_seq', 68, true);
            public       postgres    false    209            D           0    0    aba_results_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.aba_results_id_seq', 1, false);
            public       postgres    false    211            E           0    0 &   aba_stages_of_breeds_and_stages_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.aba_stages_of_breeds_and_stages_id_seq', 24, false);
            public       postgres    false    213            F           0    0    availability_shed_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.availability_shed_id_seq', 301, true);
            public       postgres    false    216            G           0    0    base_day_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.base_day_id_seq', 3, true);
            public       postgres    false    217            H           0    0    breed_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.breed_id_seq', 20, true);
            public       postgres    false    218            I           0    0    broiler_detail_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.broiler_detail_id_seq', 56, true);
            public       postgres    false    219            J           0    0    broiler_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.broiler_id_seq', 84, true);
            public       postgres    false    220            K           0    0    broiler_product_detail_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.broiler_product_detail_id_seq', 2, true);
            public       postgres    false    221            L           0    0    broiler_product_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.broiler_product_id_seq', 21, true);
            public       postgres    false    222            M           0    0    broilereviction_detail_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.broilereviction_detail_id_seq', 133, true);
            public       postgres    false    223            N           0    0    broilereviction_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.broilereviction_id_seq', 84, true);
            public       postgres    false    224            O           0    0    brooder_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.brooder_id_seq', 52, true);
            public       postgres    false    225            P           0    0    brooder_machines_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.brooder_machines_id_seq', 7, true);
            public       postgres    false    226            Q           0    0    calendar_day_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.calendar_day_id_seq', 33245, true);
            public       postgres    false    227            R           0    0    calendar_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.calendar_id_seq', 20, true);
            public       postgres    false    228            S           0    0    center_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.center_id_seq', 159, true);
            public       postgres    false    229            T           0    0    egg_planning_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.egg_planning_id_seq', 2910, true);
            public       postgres    false    230            U           0    0    egg_required_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.egg_required_id_seq', 3528, true);
            public       postgres    false    231            V           0    0    eggs_storage_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.eggs_storage_id_seq', 28127, true);
            public       postgres    false    232            W           0    0    farm_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.farm_id_seq', 165, true);
            public       postgres    false    233            X           0    0    farm_type_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.farm_type_id_seq', 3, true);
            public       postgres    false    234            Y           0    0    holiday_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.holiday_id_seq', 297, true);
            public       postgres    false    235            Z           0    0    housing_way_detail_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.housing_way_detail_id_seq', 576, true);
            public       postgres    false    236            [           0    0    housing_way_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.housing_way_id_seq', 787, true);
            public       postgres    false    237            \           0    0    incubator_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.incubator_id_seq', 23, true);
            public       postgres    false    238            ]           0    0    incubator_plant_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.incubator_plant_id_seq', 19, true);
            public       postgres    false    239            ^           0    0    industry_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.industry_id_seq', 1, true);
            public       postgres    false    240            _           0    0    line_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.line_id_seq', 1, true);
            public       postgres    false    241            `           0    0    lot_eggs_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.lot_eggs_id_seq', 108, true);
            public       postgres    false    242            a           0    0    lot_fattening_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.lot_fattening_id_seq', 1, false);
            public       postgres    false    243            b           0    0 
   lot_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.lot_id_seq', 316, true);
            public       postgres    false    244            c           0    0    lot_liftbreeding_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.lot_liftbreeding_id_seq', 4, true);
            public       postgres    false    245            d           0    0     mdapplication_application_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.mdapplication_application_id_seq', 1, false);
            public       postgres    false    246            e           0    0    mdapplication_rol_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.mdapplication_rol_id_seq', 1, false);
            public       postgres    false    248            f           0    0    mdrol_rol_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.mdrol_rol_id_seq', 1, false);
            public       postgres    false    264            g           0    0    mduser_user_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.mduser_user_id_seq', 1, false);
            public       postgres    false    272            h           0    0    measure_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.measure_id_seq', 20, true);
            public       postgres    false    254            i           0    0    parameter_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.parameter_id_seq', 62, true);
            public       postgres    false    256            j           0    0    partnership_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.partnership_id_seq', 31, true);
            public       postgres    false    279            k           0    0    posture_curve_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.posture_curve_id_seq', 325, true);
            public       postgres    false    290            l           0    0    predecessor_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.predecessor_id_seq', 13, true);
            public       postgres    false    291            m           0    0    process_class_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.process_class_id_seq', 5, true);
            public       postgres    false    260            n           0    0    process_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.process_id_seq', 98, true);
            public       postgres    false    258            o           0    0    product_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.product_id_seq', 102, true);
            public       postgres    false    262            p           0    0    programmed_eggs_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.programmed_eggs_id_seq', 270, true);
            public       postgres    false    292            q           0    0    raspberry_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.raspberry_id_seq', 5, true);
            public       postgres    false    293            r           0    0    scenario_formula_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.scenario_formula_id_seq', 1363, true);
            public       postgres    false    294            s           0    0    scenario_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.scenario_id_seq', 182, true);
            public       postgres    false    266            t           0    0    scenario_parameter_day_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.scenario_parameter_day_seq', 55231, true);
            public       postgres    false    295            u           0    0    scenario_parameter_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.scenario_parameter_id_seq', 9524, true);
            public       postgres    false    296            v           0    0    scenario_posture_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.scenario_posture_id_seq', 53234, true);
            public       postgres    false    297            w           0    0    scenario_process_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.scenario_process_id_seq', 883, true);
            public       postgres    false    298            x           0    0    shed_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.shed_id_seq', 364, true);
            public       postgres    false    281            y           0    0    silo_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.silo_id_seq', 4, true);
            public       postgres    false    283            z           0    0    slaughterhouse_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.slaughterhouse_id_seq', 36, true);
            public       postgres    false    286            {           0    0    stage_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.stage_id_seq', 27, true);
            public       postgres    false    270            |           0    0    status_shed_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.status_shed_id_seq', 10, true);
            public       postgres    false    268            }           0    0    txgoals_erp_goals_erp_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.txgoals_erp_goals_erp_id_seq', 1920, true);
            public       postgres    false    312            ~           0    0 #   user_application_application_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.user_application_application_id_seq', 1, false);
            public       postgres    false    325                       0    0     user_application_user_app_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.user_application_user_app_id_seq', 215, true);
            public       postgres    false    326            �           0    0    user_application_user_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.user_application_user_id_seq', 1, false);
            public       postgres    false    327            �           0    0    warehouse_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.warehouse_id_seq', 124, true);
            public       postgres    false    288            W           2606    79039    aba_time_unit abaTimeUnit_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.aba_time_unit
    ADD CONSTRAINT "abaTimeUnit_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.aba_time_unit DROP CONSTRAINT "abaTimeUnit_pkey";
       public         postgres    false    215            9           2606    79041 0   aba_breeds_and_stages aba_breeds_and_stages_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.aba_breeds_and_stages
    ADD CONSTRAINT aba_breeds_and_stages_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.aba_breeds_and_stages DROP CONSTRAINT aba_breeds_and_stages_pkey;
       public         postgres    false    198            B           2606    79043 N   aba_consumption_and_mortality_detail aba_consumption_and_mortality_detail_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.aba_consumption_and_mortality_detail
    ADD CONSTRAINT aba_consumption_and_mortality_detail_pkey PRIMARY KEY (id);
 x   ALTER TABLE ONLY public.aba_consumption_and_mortality_detail DROP CONSTRAINT aba_consumption_and_mortality_detail_pkey;
       public         postgres    false    202            =           2606    79045 @   aba_consumption_and_mortality aba_consumption_and_mortality_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.aba_consumption_and_mortality
    ADD CONSTRAINT aba_consumption_and_mortality_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.aba_consumption_and_mortality DROP CONSTRAINT aba_consumption_and_mortality_pkey;
       public         postgres    false    200            G           2606    79047 D   aba_elements_and_concentrations aba_elements_and_concentrations_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.aba_elements_and_concentrations
    ADD CONSTRAINT aba_elements_and_concentrations_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.aba_elements_and_concentrations DROP CONSTRAINT aba_elements_and_concentrations_pkey;
       public         postgres    false    206            E           2606    79049    aba_elements aba_elements_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.aba_elements
    ADD CONSTRAINT aba_elements_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.aba_elements DROP CONSTRAINT aba_elements_pkey;
       public         postgres    false    204            L           2606    79051 4   aba_elements_properties aba_elements_properties_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.aba_elements_properties
    ADD CONSTRAINT aba_elements_properties_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.aba_elements_properties DROP CONSTRAINT aba_elements_properties_pkey;
       public         postgres    false    208            N           2606    79053 $   aba_formulation aba_formulation_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.aba_formulation
    ADD CONSTRAINT aba_formulation_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.aba_formulation DROP CONSTRAINT aba_formulation_pkey;
       public         postgres    false    210            P           2606    79055    aba_results aba_results_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.aba_results
    ADD CONSTRAINT aba_results_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.aba_results DROP CONSTRAINT aba_results_pkey;
       public         postgres    false    212            S           2606    79057 D   aba_stages_of_breeds_and_stages aba_stages_of_breeds_and_stages_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.aba_stages_of_breeds_and_stages
    ADD CONSTRAINT aba_stages_of_breeds_and_stages_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.aba_stages_of_breeds_and_stages DROP CONSTRAINT aba_stages_of_breeds_and_stages_pkey;
       public         postgres    false    214            Y           2606    79059    mdapplication application_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.mdapplication
    ADD CONSTRAINT application_pkey PRIMARY KEY (application_id);
 H   ALTER TABLE ONLY public.mdapplication DROP CONSTRAINT application_pkey;
       public         postgres    false    247            [           2606    79061 &   mdapplication_rol application_rol_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.mdapplication_rol
    ADD CONSTRAINT application_rol_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.mdapplication_rol DROP CONSTRAINT application_rol_pkey;
       public         postgres    false    249            ]           2606    79063    mdbreed mdbreed_code_key 
   CONSTRAINT     S   ALTER TABLE ONLY public.mdbreed
    ADD CONSTRAINT mdbreed_code_key UNIQUE (code);
 B   ALTER TABLE ONLY public.mdbreed DROP CONSTRAINT mdbreed_code_key;
       public         postgres    false    250            _           2606    79065    mdbreed mdbreed_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.mdbreed
    ADD CONSTRAINT mdbreed_pkey PRIMARY KEY (breed_id);
 >   ALTER TABLE ONLY public.mdbreed DROP CONSTRAINT mdbreed_pkey;
       public         postgres    false    250            a           2606    79067 (   mdbroiler_product mdbroiler_product_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.mdbroiler_product
    ADD CONSTRAINT mdbroiler_product_pkey PRIMARY KEY (broiler_product_id);
 R   ALTER TABLE ONLY public.mdbroiler_product DROP CONSTRAINT mdbroiler_product_pkey;
       public         postgres    false    251            c           2606    79069    mdfarmtype mdfarmtype_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.mdfarmtype
    ADD CONSTRAINT mdfarmtype_pkey PRIMARY KEY (farm_type_id);
 D   ALTER TABLE ONLY public.mdfarmtype DROP CONSTRAINT mdfarmtype_pkey;
       public         postgres    false    252            e           2606    79071 !   mdindustry mdindustry_name_unique 
   CONSTRAINT     \   ALTER TABLE ONLY public.mdindustry
    ADD CONSTRAINT mdindustry_name_unique UNIQUE (name);
 K   ALTER TABLE ONLY public.mdindustry DROP CONSTRAINT mdindustry_name_unique;
       public         postgres    false    253            g           2606    79073    mdindustry mdindustry_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.mdindustry
    ADD CONSTRAINT mdindustry_pkey PRIMARY KEY (industry_id);
 D   ALTER TABLE ONLY public.mdindustry DROP CONSTRAINT mdindustry_pkey;
       public         postgres    false    253            i           2606    79075    mdmeasure mdmeasure_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.mdmeasure
    ADD CONSTRAINT mdmeasure_pkey PRIMARY KEY (measure_id);
 B   ALTER TABLE ONLY public.mdmeasure DROP CONSTRAINT mdmeasure_pkey;
       public         postgres    false    255            m           2606    79077    mdparameter mdparameter_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.mdparameter
    ADD CONSTRAINT mdparameter_pkey PRIMARY KEY (parameter_id);
 F   ALTER TABLE ONLY public.mdparameter DROP CONSTRAINT mdparameter_pkey;
       public         postgres    false    257            s           2606    79079    mdprocess mdprocess_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.mdprocess
    ADD CONSTRAINT mdprocess_pkey PRIMARY KEY (process_id);
 B   ALTER TABLE ONLY public.mdprocess DROP CONSTRAINT mdprocess_pkey;
       public         postgres    false    259            v           2606    79081 "   mdprocessclass mdprocessclass_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.mdprocessclass
    ADD CONSTRAINT mdprocessclass_pkey PRIMARY KEY (process_class_id);
 L   ALTER TABLE ONLY public.mdprocessclass DROP CONSTRAINT mdprocessclass_pkey;
       public         postgres    false    261            x           2606    79083    mdproduct mdproduct_code_unique 
   CONSTRAINT     Z   ALTER TABLE ONLY public.mdproduct
    ADD CONSTRAINT mdproduct_code_unique UNIQUE (code);
 I   ALTER TABLE ONLY public.mdproduct DROP CONSTRAINT mdproduct_code_unique;
       public         postgres    false    263            z           2606    79085    mdproduct mdproduct_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.mdproduct
    ADD CONSTRAINT mdproduct_pkey PRIMARY KEY (product_id);
 B   ALTER TABLE ONLY public.mdproduct DROP CONSTRAINT mdproduct_pkey;
       public         postgres    false    263            �           2606    79087 !   mdscenario mdscenario_name_unique 
   CONSTRAINT     \   ALTER TABLE ONLY public.mdscenario
    ADD CONSTRAINT mdscenario_name_unique UNIQUE (name);
 K   ALTER TABLE ONLY public.mdscenario DROP CONSTRAINT mdscenario_name_unique;
       public         postgres    false    267            �           2606    79089    mdscenario mdscenario_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.mdscenario
    ADD CONSTRAINT mdscenario_pkey PRIMARY KEY (scenario_id);
 D   ALTER TABLE ONLY public.mdscenario DROP CONSTRAINT mdscenario_pkey;
       public         postgres    false    267            �           2606    79091    mdshedstatus mdshedstatus_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.mdshedstatus
    ADD CONSTRAINT mdshedstatus_pkey PRIMARY KEY (shed_status_id);
 H   ALTER TABLE ONLY public.mdshedstatus DROP CONSTRAINT mdshedstatus_pkey;
       public         postgres    false    269            �           2606    79093    mdstage mdstage_name_unique 
   CONSTRAINT     V   ALTER TABLE ONLY public.mdstage
    ADD CONSTRAINT mdstage_name_unique UNIQUE (name);
 E   ALTER TABLE ONLY public.mdstage DROP CONSTRAINT mdstage_name_unique;
       public         postgres    false    271            �           2606    79095    mdstage mdstage_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.mdstage
    ADD CONSTRAINT mdstage_pkey PRIMARY KEY (stage_id);
 >   ALTER TABLE ONLY public.mdstage DROP CONSTRAINT mdstage_pkey;
       public         postgres    false    271            �           2606    79097 .   oscenter_oswarehouse oscenter_oswarehouse_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.oscenter_oswarehouse
    ADD CONSTRAINT oscenter_oswarehouse_pkey PRIMARY KEY (client_id, partnership_id, farm_id, center_id, warehouse_id);
 X   ALTER TABLE ONLY public.oscenter_oswarehouse DROP CONSTRAINT oscenter_oswarehouse_pkey;
       public         postgres    false    275    275    275    275    275            �           2606    79099    oscenter oscenter_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.oscenter
    ADD CONSTRAINT oscenter_pkey PRIMARY KEY (center_id);
 @   ALTER TABLE ONLY public.oscenter DROP CONSTRAINT oscenter_pkey;
       public         postgres    false    274            �           2606    79101    osfarm osfarm_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.osfarm
    ADD CONSTRAINT osfarm_pkey PRIMARY KEY (farm_id);
 <   ALTER TABLE ONLY public.osfarm DROP CONSTRAINT osfarm_pkey;
       public         postgres    false    276            �           2606    79103    osshed oshed_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.osshed
    ADD CONSTRAINT oshed_pkey PRIMARY KEY (shed_id);
 ;   ALTER TABLE ONLY public.osshed DROP CONSTRAINT oshed_pkey;
       public         postgres    false    282            �           2606    79105    osincubator osincubator_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.osincubator
    ADD CONSTRAINT osincubator_pkey PRIMARY KEY (incubator_id);
 F   ALTER TABLE ONLY public.osincubator DROP CONSTRAINT osincubator_pkey;
       public         postgres    false    277            �           2606    79107 &   osincubatorplant osincubatorplant_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.osincubatorplant
    ADD CONSTRAINT osincubatorplant_pkey PRIMARY KEY (incubator_plant_id);
 P   ALTER TABLE ONLY public.osincubatorplant DROP CONSTRAINT osincubatorplant_pkey;
       public         postgres    false    278            �           2606    79109 '   ospartnership ospartnership_code_unique 
   CONSTRAINT     b   ALTER TABLE ONLY public.ospartnership
    ADD CONSTRAINT ospartnership_code_unique UNIQUE (code);
 Q   ALTER TABLE ONLY public.ospartnership DROP CONSTRAINT ospartnership_code_unique;
       public         postgres    false    280            �           2606    79111     ospartnership ospartnership_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.ospartnership
    ADD CONSTRAINT ospartnership_pkey PRIMARY KEY (partnership_id);
 J   ALTER TABLE ONLY public.ospartnership DROP CONSTRAINT ospartnership_pkey;
       public         postgres    false    280            �           2606    79113     ossilo_osshed ossilo_osshed_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.ossilo_osshed
    ADD CONSTRAINT ossilo_osshed_pkey PRIMARY KEY (silo_id, shed_id);
 J   ALTER TABLE ONLY public.ossilo_osshed DROP CONSTRAINT ossilo_osshed_pkey;
       public         postgres    false    285    285            �           2606    79115    ossilo ossilo_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.ossilo
    ADD CONSTRAINT ossilo_pkey PRIMARY KEY (silo_id);
 <   ALTER TABLE ONLY public.ossilo DROP CONSTRAINT ossilo_pkey;
       public         postgres    false    284            �           2606    79117 &   osslaughterhouse osslaughterhouse_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.osslaughterhouse
    ADD CONSTRAINT osslaughterhouse_pkey PRIMARY KEY (slaughterhouse_id);
 P   ALTER TABLE ONLY public.osslaughterhouse DROP CONSTRAINT osslaughterhouse_pkey;
       public         postgres    false    287            �           2606    79119    oswarehouse oswarehouse_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.oswarehouse
    ADD CONSTRAINT oswarehouse_pkey PRIMARY KEY (warehouse_id);
 F   ALTER TABLE ONLY public.oswarehouse DROP CONSTRAINT oswarehouse_pkey;
       public         postgres    false    289            |           2606    79121    mdrol rol_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.mdrol
    ADD CONSTRAINT rol_pkey PRIMARY KEY (rol_id);
 8   ALTER TABLE ONLY public.mdrol DROP CONSTRAINT rol_pkey;
       public         postgres    false    265            �           2606    79123 ,   txavailabilitysheds txavailabilitysheds_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.txavailabilitysheds
    ADD CONSTRAINT txavailabilitysheds_pkey PRIMARY KEY (availability_shed_id);
 V   ALTER TABLE ONLY public.txavailabilitysheds DROP CONSTRAINT txavailabilitysheds_pkey;
       public         postgres    false    299            �           2606    79125 &   txbroiler_detail txbroiler_detail_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.txbroiler_detail
    ADD CONSTRAINT txbroiler_detail_pkey PRIMARY KEY (broiler_detail_id);
 P   ALTER TABLE ONLY public.txbroiler_detail DROP CONSTRAINT txbroiler_detail_pkey;
       public         postgres    false    301            �           2606    79127    txbroiler txbroiler_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.txbroiler
    ADD CONSTRAINT txbroiler_pkey PRIMARY KEY (broiler_id);
 B   ALTER TABLE ONLY public.txbroiler DROP CONSTRAINT txbroiler_pkey;
       public         postgres    false    300            �           2606    79129 6   txbroilereviction_detail txbroilereviction_detail_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.txbroilereviction_detail
    ADD CONSTRAINT txbroilereviction_detail_pkey PRIMARY KEY (broilereviction_detail_id);
 `   ALTER TABLE ONLY public.txbroilereviction_detail DROP CONSTRAINT txbroilereviction_detail_pkey;
       public         postgres    false    303            �           2606    79131 (   txbroilereviction txbroilereviction_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.txbroilereviction
    ADD CONSTRAINT txbroilereviction_pkey PRIMARY KEY (broilereviction_id);
 R   ALTER TABLE ONLY public.txbroilereviction DROP CONSTRAINT txbroilereviction_pkey;
       public         postgres    false    302            �           2606    79133 4   txbroilerproduct_detail txbroilerproduct_detail_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.txbroilerproduct_detail
    ADD CONSTRAINT txbroilerproduct_detail_pkey PRIMARY KEY (broilerproduct_detail_id);
 ^   ALTER TABLE ONLY public.txbroilerproduct_detail DROP CONSTRAINT txbroilerproduct_detail_pkey;
       public         postgres    false    304            �           2606    79135 &   txbroodermachine txbroodermachine_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.txbroodermachine
    ADD CONSTRAINT txbroodermachine_pkey PRIMARY KEY (brooder_machine_id_seq);
 P   ALTER TABLE ONLY public.txbroodermachine DROP CONSTRAINT txbroodermachine_pkey;
       public         postgres    false    305            �           2606    79137    txcalendar txcalendar_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.txcalendar
    ADD CONSTRAINT txcalendar_pkey PRIMARY KEY (calendar_id);
 D   ALTER TABLE ONLY public.txcalendar DROP CONSTRAINT txcalendar_pkey;
       public         postgres    false    306            �           2606    79139     txcalendarday txcalendarday_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.txcalendarday
    ADD CONSTRAINT txcalendarday_pkey PRIMARY KEY (calendar_day_id);
 J   ALTER TABLE ONLY public.txcalendarday DROP CONSTRAINT txcalendarday_pkey;
       public         postgres    false    307            �           2606    79141 $   txeggs_planning txeggs_planning_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.txeggs_planning
    ADD CONSTRAINT txeggs_planning_pkey PRIMARY KEY (egg_planning_id);
 N   ALTER TABLE ONLY public.txeggs_planning DROP CONSTRAINT txeggs_planning_pkey;
       public         postgres    false    308            �           2606    79143 $   txeggs_required txeggs_required_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.txeggs_required
    ADD CONSTRAINT txeggs_required_pkey PRIMARY KEY (egg_required_id);
 N   ALTER TABLE ONLY public.txeggs_required DROP CONSTRAINT txeggs_required_pkey;
       public         postgres    false    309            �           2606    79145 "   txeggs_storage txeggs_storage_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.txeggs_storage
    ADD CONSTRAINT txeggs_storage_pkey PRIMARY KEY (eggs_storage_id);
 L   ALTER TABLE ONLY public.txeggs_storage DROP CONSTRAINT txeggs_storage_pkey;
       public         postgres    false    310            �           2606    79147    txgoals_erp txgoals_erp_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.txgoals_erp
    ADD CONSTRAINT txgoals_erp_pkey PRIMARY KEY (goals_erp_id);
 F   ALTER TABLE ONLY public.txgoals_erp DROP CONSTRAINT txgoals_erp_pkey;
       public         postgres    false    311            �           2606    79149    txholiday txholiday_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.txholiday
    ADD CONSTRAINT txholiday_pkey PRIMARY KEY (holiday_id);
 B   ALTER TABLE ONLY public.txholiday DROP CONSTRAINT txholiday_pkey;
       public         postgres    false    313                       2606    79151 ,   txhousingway_detail txhousingway_detail_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.txhousingway_detail
    ADD CONSTRAINT txhousingway_detail_pkey PRIMARY KEY (housingway_detail_id);
 V   ALTER TABLE ONLY public.txhousingway_detail DROP CONSTRAINT txhousingway_detail_pkey;
       public         postgres    false    315                        2606    79153    txhousingway txhousingway_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.txhousingway
    ADD CONSTRAINT txhousingway_pkey PRIMARY KEY (housing_way_id);
 H   ALTER TABLE ONLY public.txhousingway DROP CONSTRAINT txhousingway_pkey;
       public         postgres    false    314                       2606    79155    txlot_eggs txlot_eggs_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.txlot_eggs
    ADD CONSTRAINT txlot_eggs_pkey PRIMARY KEY (lot_eggs_id);
 D   ALTER TABLE ONLY public.txlot_eggs DROP CONSTRAINT txlot_eggs_pkey;
       public         postgres    false    317                       2606    79157    txlot txlot_lot_code_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.txlot
    ADD CONSTRAINT txlot_lot_code_key UNIQUE (lot_code);
 B   ALTER TABLE ONLY public.txlot DROP CONSTRAINT txlot_lot_code_key;
       public         postgres    false    316                       2606    79159    txlot txlot_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.txlot
    ADD CONSTRAINT txlot_pkey PRIMARY KEY (lot_id);
 :   ALTER TABLE ONLY public.txlot DROP CONSTRAINT txlot_pkey;
       public         postgres    false    316            6           2606    79876 "   txposturecurve txposturecurve_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.txposturecurve
    ADD CONSTRAINT txposturecurve_pkey PRIMARY KEY (posture_curve_id);
 L   ALTER TABLE ONLY public.txposturecurve DROP CONSTRAINT txposturecurve_pkey;
       public         postgres    false    328                       2606    79163 (   txprogrammed_eggs txprogrammed_eggs_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.txprogrammed_eggs
    ADD CONSTRAINT txprogrammed_eggs_pkey PRIMARY KEY (programmed_eggs_id);
 R   ALTER TABLE ONLY public.txprogrammed_eggs DROP CONSTRAINT txprogrammed_eggs_pkey;
       public         postgres    false    318                       2606    79165 (   txscenarioformula txscenarioformula_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.txscenarioformula
    ADD CONSTRAINT txscenarioformula_pkey PRIMARY KEY (scenario_formula_id);
 R   ALTER TABLE ONLY public.txscenarioformula DROP CONSTRAINT txscenarioformula_pkey;
       public         postgres    false    319                        2606    79167     txscenariohen txscenariohen_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.txscenariohen
    ADD CONSTRAINT txscenariohen_pkey PRIMARY KEY (use_week, use_year);
 J   ALTER TABLE ONLY public.txscenariohen DROP CONSTRAINT txscenariohen_pkey;
       public         postgres    false    320    320            %           2606    79169 ,   txscenarioparameter txscenarioparameter_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public.txscenarioparameter
    ADD CONSTRAINT txscenarioparameter_pkey PRIMARY KEY (scenario_parameter_id);
 V   ALTER TABLE ONLY public.txscenarioparameter DROP CONSTRAINT txscenarioparameter_pkey;
       public         postgres    false    321            )           2606    79171 2   txscenarioparameterday txscenarioparameterday_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.txscenarioparameterday
    ADD CONSTRAINT txscenarioparameterday_pkey PRIMARY KEY (scenario_parameter_day_id);
 \   ALTER TABLE ONLY public.txscenarioparameterday DROP CONSTRAINT txscenarioparameterday_pkey;
       public         postgres    false    322            /           2606    79173 2   txscenarioposturecurve txscenarioposturecurve_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.txscenarioposturecurve
    ADD CONSTRAINT txscenarioposturecurve_pkey PRIMARY KEY (scenario_posture_id);
 \   ALTER TABLE ONLY public.txscenarioposturecurve DROP CONSTRAINT txscenarioposturecurve_pkey;
       public         postgres    false    323            3           2606    79175 (   txscenarioprocess txscenarioprocess_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.txscenarioprocess
    ADD CONSTRAINT txscenarioprocess_pkey PRIMARY KEY (scenario_process_id);
 R   ALTER TABLE ONLY public.txscenarioprocess DROP CONSTRAINT txscenarioprocess_pkey;
       public         postgres    false    324            ~           2606    79177    mdrol uniqueRolName 
   CONSTRAINT     T   ALTER TABLE ONLY public.mdrol
    ADD CONSTRAINT "uniqueRolName" UNIQUE (rol_name);
 ?   ALTER TABLE ONLY public.mdrol DROP CONSTRAINT "uniqueRolName";
       public         postgres    false    265            �           2606    79179    mduser user_id 
   CONSTRAINT     Q   ALTER TABLE ONLY public.mduser
    ADD CONSTRAINT user_id PRIMARY KEY (user_id);
 8   ALTER TABLE ONLY public.mduser DROP CONSTRAINT user_id;
       public         postgres    false    273            �           2606    79181    mduser username unique 
   CONSTRAINT     W   ALTER TABLE ONLY public.mduser
    ADD CONSTRAINT "username unique" UNIQUE (username);
 B   ALTER TABLE ONLY public.mduser DROP CONSTRAINT "username unique";
       public         postgres    false    273            �           1259    79182    calendar_index    INDEX     N   CREATE INDEX calendar_index ON public.txcalendarday USING hash (calendar_id);
 "   DROP INDEX public.calendar_index;
       public         postgres    false    307            n           1259    79183    calendarid_index    INDEX     L   CREATE INDEX calendarid_index ON public.mdprocess USING hash (calendar_id);
 $   DROP INDEX public.calendarid_index;
       public         postgres    false    259            �           1259    79184 
   code_index    INDEX     H   CREATE UNIQUE INDEX code_index ON public.txcalendar USING btree (code);
    DROP INDEX public.code_index;
       public         postgres    false    306            �           1259    79185 
   date_index    INDEX     G   CREATE INDEX date_index ON public.txcalendarday USING hash (use_date);
    DROP INDEX public.date_index;
       public         postgres    false    307            >           1259    79186    fki_FK_ id_aba_time_unit    INDEX     p   CREATE INDEX "fki_FK_ id_aba_time_unit" ON public.aba_consumption_and_mortality USING btree (id_aba_time_unit);
 .   DROP INDEX public."fki_FK_ id_aba_time_unit";
       public         postgres    false    200            T           1259    79187    fki_FK_id_aba_breeds_and_stages    INDEX     �   CREATE INDEX "fki_FK_id_aba_breeds_and_stages" ON public.aba_stages_of_breeds_and_stages USING btree (id_aba_breeds_and_stages);
 5   DROP INDEX public."fki_FK_id_aba_breeds_and_stages";
       public         postgres    false    214            :           1259    79188 '   fki_FK_id_aba_consumption_and_mortality    INDEX     �   CREATE INDEX "fki_FK_id_aba_consumption_and_mortality" ON public.aba_breeds_and_stages USING btree (id_aba_consumption_and_mortality);
 =   DROP INDEX public."fki_FK_id_aba_consumption_and_mortality";
       public         postgres    false    198            C           1259    79189 (   fki_FK_id_aba_consumption_and_mortality2    INDEX     �   CREATE INDEX "fki_FK_id_aba_consumption_and_mortality2" ON public.aba_consumption_and_mortality_detail USING btree (id_aba_consumption_and_mortality);
 >   DROP INDEX public."fki_FK_id_aba_consumption_and_mortality2";
       public         postgres    false    202            H           1259    79190    fki_FK_id_aba_element    INDEX     m   CREATE INDEX "fki_FK_id_aba_element" ON public.aba_elements_and_concentrations USING btree (id_aba_element);
 +   DROP INDEX public."fki_FK_id_aba_element";
       public         postgres    false    206            Q           1259    79191    fki_FK_id_aba_element2    INDEX     Z   CREATE INDEX "fki_FK_id_aba_element2" ON public.aba_results USING btree (id_aba_element);
 ,   DROP INDEX public."fki_FK_id_aba_element2";
       public         postgres    false    212            I           1259    79192    fki_FK_id_aba_element_property    INDEX        CREATE INDEX "fki_FK_id_aba_element_property" ON public.aba_elements_and_concentrations USING btree (id_aba_element_property);
 4   DROP INDEX public."fki_FK_id_aba_element_property";
       public         postgres    false    206            J           1259    79193    fki_FK_id_aba_formulation    INDEX     u   CREATE INDEX "fki_FK_id_aba_formulation" ON public.aba_elements_and_concentrations USING btree (id_aba_formulation);
 /   DROP INDEX public."fki_FK_id_aba_formulation";
       public         postgres    false    206            ?           1259    79194    fki_FK_id_breed    INDEX     _   CREATE INDEX "fki_FK_id_breed" ON public.aba_consumption_and_mortality USING btree (id_breed);
 %   DROP INDEX public."fki_FK_id_breed";
       public         postgres    false    200            U           1259    79195    fki_FK_id_formulation    INDEX     m   CREATE INDEX "fki_FK_id_formulation" ON public.aba_stages_of_breeds_and_stages USING btree (id_formulation);
 +   DROP INDEX public."fki_FK_id_formulation";
       public         postgres    false    214            ;           1259    79196    fki_FK_id_process    INDEX     [   CREATE INDEX "fki_FK_id_process" ON public.aba_breeds_and_stages USING btree (id_process);
 '   DROP INDEX public."fki_FK_id_process";
       public         postgres    false    198            @           1259    79197    fki_FK_id_stage    INDEX     _   CREATE INDEX "fki_FK_id_stage" ON public.aba_consumption_and_mortality USING btree (id_stage);
 %   DROP INDEX public."fki_FK_id_stage";
       public         postgres    false    200            j           1259    79198    fki_mdparameter_measure_id_fkey    INDEX     ]   CREATE INDEX fki_mdparameter_measure_id_fkey ON public.mdparameter USING btree (measure_id);
 3   DROP INDEX public.fki_mdparameter_measure_id_fkey;
       public         postgres    false    257            k           1259    79199    fki_mdparameter_process_id_fkey    INDEX     ]   CREATE INDEX fki_mdparameter_process_id_fkey ON public.mdparameter USING btree (process_id);
 3   DROP INDEX public.fki_mdparameter_process_id_fkey;
       public         postgres    false    257            o           1259    79200    fki_mdprocess_breed_id_fkey    INDEX     U   CREATE INDEX fki_mdprocess_breed_id_fkey ON public.mdprocess USING btree (breed_id);
 /   DROP INDEX public.fki_mdprocess_breed_id_fkey;
       public         postgres    false    259            t           1259    79202 #   fki_mdprocessclass_industry_id_fkey    INDEX     e   CREATE INDEX fki_mdprocessclass_industry_id_fkey ON public.mdprocessclass USING btree (industry_id);
 7   DROP INDEX public.fki_mdprocessclass_industry_id_fkey;
       public         postgres    false    261            �           1259    79203    fki_oscenter_farm_id_fkey    INDEX     Q   CREATE INDEX fki_oscenter_farm_id_fkey ON public.oscenter USING btree (farm_id);
 -   DROP INDEX public.fki_oscenter_farm_id_fkey;
       public         postgres    false    274            �           1259    79204 '   fki_oscenter_oswarehouse_center_id_fkey    INDEX     m   CREATE INDEX fki_oscenter_oswarehouse_center_id_fkey ON public.oscenter_oswarehouse USING btree (center_id);
 ;   DROP INDEX public.fki_oscenter_oswarehouse_center_id_fkey;
       public         postgres    false    275            �           1259    79205 %   fki_oscenter_oswarehouse_farm_id_fkey    INDEX     i   CREATE INDEX fki_oscenter_oswarehouse_farm_id_fkey ON public.oscenter_oswarehouse USING btree (farm_id);
 9   DROP INDEX public.fki_oscenter_oswarehouse_farm_id_fkey;
       public         postgres    false    275            �           1259    79206 ,   fki_oscenter_oswarehouse_partnership_id_fkey    INDEX     w   CREATE INDEX fki_oscenter_oswarehouse_partnership_id_fkey ON public.oscenter_oswarehouse USING btree (partnership_id);
 @   DROP INDEX public.fki_oscenter_oswarehouse_partnership_id_fkey;
       public         postgres    false    275            �           1259    79207 *   fki_oscenter_oswarehouse_warehouse_id_fkey    INDEX     s   CREATE INDEX fki_oscenter_oswarehouse_warehouse_id_fkey ON public.oscenter_oswarehouse USING btree (warehouse_id);
 >   DROP INDEX public.fki_oscenter_oswarehouse_warehouse_id_fkey;
       public         postgres    false    275            �           1259    79208     fki_oscenter_partnership_id_fkey    INDEX     _   CREATE INDEX fki_oscenter_partnership_id_fkey ON public.oscenter USING btree (partnership_id);
 4   DROP INDEX public.fki_oscenter_partnership_id_fkey;
       public         postgres    false    274            �           1259    79209    fki_osfarm_farm_type_id_fkey    INDEX     W   CREATE INDEX fki_osfarm_farm_type_id_fkey ON public.osfarm USING btree (farm_type_id);
 0   DROP INDEX public.fki_osfarm_farm_type_id_fkey;
       public         postgres    false    276            �           1259    79210    fki_osfarm_partnership_id_fkey    INDEX     [   CREATE INDEX fki_osfarm_partnership_id_fkey ON public.osfarm USING btree (partnership_id);
 2   DROP INDEX public.fki_osfarm_partnership_id_fkey;
       public         postgres    false    276            �           1259    79211 '   fki_osincubator_incubator_plant_id_fkey    INDEX     m   CREATE INDEX fki_osincubator_incubator_plant_id_fkey ON public.osincubator USING btree (incubator_plant_id);
 ;   DROP INDEX public.fki_osincubator_incubator_plant_id_fkey;
       public         postgres    false    277            �           1259    79212 (   fki_osincubatorplant_partnership_id_fkey    INDEX     o   CREATE INDEX fki_osincubatorplant_partnership_id_fkey ON public.osincubatorplant USING btree (partnership_id);
 <   DROP INDEX public.fki_osincubatorplant_partnership_id_fkey;
       public         postgres    false    278            �           1259    79213    fki_osshed_center_id_fkey    INDEX     Q   CREATE INDEX fki_osshed_center_id_fkey ON public.osshed USING btree (center_id);
 -   DROP INDEX public.fki_osshed_center_id_fkey;
       public         postgres    false    282            �           1259    79214    fki_osshed_farm_id_fkey    INDEX     M   CREATE INDEX fki_osshed_farm_id_fkey ON public.osshed USING btree (farm_id);
 +   DROP INDEX public.fki_osshed_farm_id_fkey;
       public         postgres    false    282            �           1259    79215    fki_osshed_partnership_id_fkey    INDEX     [   CREATE INDEX fki_osshed_partnership_id_fkey ON public.osshed USING btree (partnership_id);
 2   DROP INDEX public.fki_osshed_partnership_id_fkey;
       public         postgres    false    282            �           1259    79216    fki_osshed_statusshed_id_fkey    INDEX     Y   CREATE INDEX fki_osshed_statusshed_id_fkey ON public.osshed USING btree (statusshed_id);
 1   DROP INDEX public.fki_osshed_statusshed_id_fkey;
       public         postgres    false    282            �           1259    79217    fki_ossilo_center_id_fkey    INDEX     Q   CREATE INDEX fki_ossilo_center_id_fkey ON public.ossilo USING btree (center_id);
 -   DROP INDEX public.fki_ossilo_center_id_fkey;
       public         postgres    false    284            �           1259    79218    fki_ossilo_farm_id_fkey    INDEX     M   CREATE INDEX fki_ossilo_farm_id_fkey ON public.ossilo USING btree (farm_id);
 +   DROP INDEX public.fki_ossilo_farm_id_fkey;
       public         postgres    false    284            �           1259    79219     fki_ossilo_osshed_center_id_fkey    INDEX     _   CREATE INDEX fki_ossilo_osshed_center_id_fkey ON public.ossilo_osshed USING btree (center_id);
 4   DROP INDEX public.fki_ossilo_osshed_center_id_fkey;
       public         postgres    false    285            �           1259    79220    fki_ossilo_osshed_farm_id_fkey    INDEX     [   CREATE INDEX fki_ossilo_osshed_farm_id_fkey ON public.ossilo_osshed USING btree (farm_id);
 2   DROP INDEX public.fki_ossilo_osshed_farm_id_fkey;
       public         postgres    false    285            �           1259    79221 %   fki_ossilo_osshed_partnership_id_fkey    INDEX     i   CREATE INDEX fki_ossilo_osshed_partnership_id_fkey ON public.ossilo_osshed USING btree (partnership_id);
 9   DROP INDEX public.fki_ossilo_osshed_partnership_id_fkey;
       public         postgres    false    285            �           1259    79222    fki_ossilo_osshed_shed_id_fkey    INDEX     [   CREATE INDEX fki_ossilo_osshed_shed_id_fkey ON public.ossilo_osshed USING btree (shed_id);
 2   DROP INDEX public.fki_ossilo_osshed_shed_id_fkey;
       public         postgres    false    285            �           1259    79223    fki_ossilo_osshed_silo_id_fkey    INDEX     [   CREATE INDEX fki_ossilo_osshed_silo_id_fkey ON public.ossilo_osshed USING btree (silo_id);
 2   DROP INDEX public.fki_ossilo_osshed_silo_id_fkey;
       public         postgres    false    285            �           1259    79224    fki_ossilo_partnership_id_fkey    INDEX     [   CREATE INDEX fki_ossilo_partnership_id_fkey ON public.ossilo USING btree (partnership_id);
 2   DROP INDEX public.fki_ossilo_partnership_id_fkey;
       public         postgres    false    284            �           1259    79225    fki_oswarehouse_farm_id_fkey    INDEX     W   CREATE INDEX fki_oswarehouse_farm_id_fkey ON public.oswarehouse USING btree (farm_id);
 0   DROP INDEX public.fki_oswarehouse_farm_id_fkey;
       public         postgres    false    289            �           1259    79226 #   fki_oswarehouse_partnership_id_fkey    INDEX     e   CREATE INDEX fki_oswarehouse_partnership_id_fkey ON public.oswarehouse USING btree (partnership_id);
 7   DROP INDEX public.fki_oswarehouse_partnership_id_fkey;
       public         postgres    false    289            p           1259    79227    fki_process_product_id_fkey    INDEX     W   CREATE INDEX fki_process_product_id_fkey ON public.mdprocess USING btree (product_id);
 /   DROP INDEX public.fki_process_product_id_fkey;
       public         postgres    false    259            q           1259    79228    fki_process_stage_id_fkey    INDEX     S   CREATE INDEX fki_process_stage_id_fkey ON public.mdprocess USING btree (stage_id);
 -   DROP INDEX public.fki_process_stage_id_fkey;
       public         postgres    false    259            �           1259    79229 %   fki_txavailabilitysheds_lot_code_fkey    INDEX     i   CREATE INDEX fki_txavailabilitysheds_lot_code_fkey ON public.txavailabilitysheds USING btree (lot_code);
 9   DROP INDEX public.fki_txavailabilitysheds_lot_code_fkey;
       public         postgres    false    299            �           1259    79230 $   fki_txavailabilitysheds_shed_id_fkey    INDEX     g   CREATE INDEX fki_txavailabilitysheds_shed_id_fkey ON public.txavailabilitysheds USING btree (shed_id);
 8   DROP INDEX public.fki_txavailabilitysheds_shed_id_fkey;
       public         postgres    false    299            �           1259    79231 $   fki_txbroiler_detail_broiler_id_fkey    INDEX     g   CREATE INDEX fki_txbroiler_detail_broiler_id_fkey ON public.txbroiler_detail USING btree (broiler_id);
 8   DROP INDEX public.fki_txbroiler_detail_broiler_id_fkey;
       public         postgres    false    301            �           1259    79232 !   fki_txbroiler_detail_farm_id_fkey    INDEX     a   CREATE INDEX fki_txbroiler_detail_farm_id_fkey ON public.txbroiler_detail USING btree (farm_id);
 5   DROP INDEX public.fki_txbroiler_detail_farm_id_fkey;
       public         postgres    false    301            �           1259    79233 !   fki_txbroiler_detail_shed_id_fkey    INDEX     a   CREATE INDEX fki_txbroiler_detail_shed_id_fkey ON public.txbroiler_detail USING btree (shed_id);
 5   DROP INDEX public.fki_txbroiler_detail_shed_id_fkey;
       public         postgres    false    301            �           1259    79234 %   fki_txbroiler_programmed_eggs_id_fkey    INDEX     i   CREATE INDEX fki_txbroiler_programmed_eggs_id_fkey ON public.txbroiler USING btree (programmed_eggs_id);
 9   DROP INDEX public.fki_txbroiler_programmed_eggs_id_fkey;
       public         postgres    false    300            �           1259    79235 #   fki_txbroilereviction_breed_id_fkey    INDEX     e   CREATE INDEX fki_txbroilereviction_breed_id_fkey ON public.txbroilereviction USING btree (breed_id);
 7   DROP INDEX public.fki_txbroilereviction_breed_id_fkey;
       public         postgres    false    302            �           1259    79236 ,   fki_txbroilereviction_detail_broiler_id_fkey    INDEX        CREATE INDEX fki_txbroilereviction_detail_broiler_id_fkey ON public.txbroilereviction_detail USING btree (broilereviction_id);
 @   DROP INDEX public.fki_txbroilereviction_detail_broiler_id_fkey;
       public         postgres    false    303            �           1259    79237 4   fki_txbroilereviction_detail_broiler_product_id_fkey    INDEX     �   CREATE INDEX fki_txbroilereviction_detail_broiler_product_id_fkey ON public.txbroilereviction_detail USING btree (broiler_product_id);
 H   DROP INDEX public.fki_txbroilereviction_detail_broiler_product_id_fkey;
       public         postgres    false    303            �           1259    79238 )   fki_txbroilereviction_detail_farm_id_fkey    INDEX     q   CREATE INDEX fki_txbroilereviction_detail_farm_id_fkey ON public.txbroilereviction_detail USING btree (farm_id);
 =   DROP INDEX public.fki_txbroilereviction_detail_farm_id_fkey;
       public         postgres    false    303            �           1259    79239 )   fki_txbroilereviction_detail_shed_id_fkey    INDEX     q   CREATE INDEX fki_txbroilereviction_detail_shed_id_fkey ON public.txbroilereviction_detail USING btree (shed_id);
 =   DROP INDEX public.fki_txbroilereviction_detail_shed_id_fkey;
       public         postgres    false    303            �           1259    79240 3   fki_txbroilereviction_detail_slaughterhouse_id_fkey    INDEX     �   CREATE INDEX fki_txbroilereviction_detail_slaughterhouse_id_fkey ON public.txbroilereviction_detail USING btree (slaughterhouse_id);
 G   DROP INDEX public.fki_txbroilereviction_detail_slaughterhouse_id_fkey;
       public         postgres    false    303            �           1259    79241 )   fki_txbroilereviction_partnership_id_fkey    INDEX     q   CREATE INDEX fki_txbroilereviction_partnership_id_fkey ON public.txbroilereviction USING btree (partnership_id);
 =   DROP INDEX public.fki_txbroilereviction_partnership_id_fkey;
       public         postgres    false    302            �           1259    79242 &   fki_txbroilereviction_scenario_id_fkey    INDEX     k   CREATE INDEX fki_txbroilereviction_scenario_id_fkey ON public.txbroilereviction USING btree (scenario_id);
 :   DROP INDEX public.fki_txbroilereviction_scenario_id_fkey;
       public         postgres    false    302            �           1259    79243 /   fki_txbroilerproduct_detail_broiler_detail_fkey    INDEX     }   CREATE INDEX fki_txbroilerproduct_detail_broiler_detail_fkey ON public.txbroilerproduct_detail USING btree (broiler_detail);
 C   DROP INDEX public.fki_txbroilerproduct_detail_broiler_detail_fkey;
       public         postgres    false    304            �           1259    79244 "   fki_txbroodermachines_farm_id_fkey    INDEX     b   CREATE INDEX fki_txbroodermachines_farm_id_fkey ON public.txbroodermachine USING btree (farm_id);
 6   DROP INDEX public.fki_txbroodermachines_farm_id_fkey;
       public         postgres    false    305            �           1259    79245 )   fki_txbroodermachines_partnership_id_fkey    INDEX     p   CREATE INDEX fki_txbroodermachines_partnership_id_fkey ON public.txbroodermachine USING btree (partnership_id);
 =   DROP INDEX public.fki_txbroodermachines_partnership_id_fkey;
       public         postgres    false    305            �           1259    79246 !   fki_txeggs_planning_breed_id_fkey    INDEX     a   CREATE INDEX fki_txeggs_planning_breed_id_fkey ON public.txeggs_planning USING btree (breed_id);
 5   DROP INDEX public.fki_txeggs_planning_breed_id_fkey;
       public         postgres    false    308            �           1259    79247 $   fki_txeggs_planning_scenario_id_fkey    INDEX     g   CREATE INDEX fki_txeggs_planning_scenario_id_fkey ON public.txeggs_planning USING btree (scenario_id);
 8   DROP INDEX public.fki_txeggs_planning_scenario_id_fkey;
       public         postgres    false    308            �           1259    79248 !   fki_txeggs_required_breed_id_fkey    INDEX     a   CREATE INDEX fki_txeggs_required_breed_id_fkey ON public.txeggs_required USING btree (breed_id);
 5   DROP INDEX public.fki_txeggs_required_breed_id_fkey;
       public         postgres    false    309            �           1259    79249 $   fki_txeggs_required_scenario_id_fkey    INDEX     g   CREATE INDEX fki_txeggs_required_scenario_id_fkey ON public.txeggs_required USING btree (scenario_id);
 8   DROP INDEX public.fki_txeggs_required_scenario_id_fkey;
       public         postgres    false    309            �           1259    79250     fki_txeggs_storage_breed_id_fkey    INDEX     _   CREATE INDEX fki_txeggs_storage_breed_id_fkey ON public.txeggs_storage USING btree (breed_id);
 4   DROP INDEX public.fki_txeggs_storage_breed_id_fkey;
       public         postgres    false    310            �           1259    79251 *   fki_txeggs_storage_incubator_plant_id_fkey    INDEX     s   CREATE INDEX fki_txeggs_storage_incubator_plant_id_fkey ON public.txeggs_storage USING btree (incubator_plant_id);
 >   DROP INDEX public.fki_txeggs_storage_incubator_plant_id_fkey;
       public         postgres    false    310            �           1259    79252 #   fki_txeggs_storage_scenario_id_fkey    INDEX     e   CREATE INDEX fki_txeggs_storage_scenario_id_fkey ON public.txeggs_storage USING btree (scenario_id);
 7   DROP INDEX public.fki_txeggs_storage_scenario_id_fkey;
       public         postgres    false    310            �           1259    79253    fki_txfattening_breed_id_fkey    INDEX     W   CREATE INDEX fki_txfattening_breed_id_fkey ON public.txbroiler USING btree (breed_id);
 1   DROP INDEX public.fki_txfattening_breed_id_fkey;
       public         postgres    false    300            �           1259    79254 #   fki_txfattening_partnership_id_fkey    INDEX     c   CREATE INDEX fki_txfattening_partnership_id_fkey ON public.txbroiler USING btree (partnership_id);
 7   DROP INDEX public.fki_txfattening_partnership_id_fkey;
       public         postgres    false    300            �           1259    79255     fki_txfattening_scenario_id_fkey    INDEX     ]   CREATE INDEX fki_txfattening_scenario_id_fkey ON public.txbroiler USING btree (scenario_id);
 4   DROP INDEX public.fki_txfattening_scenario_id_fkey;
       public         postgres    false    300            �           1259    79256    fki_txgoals_erp_product_id_fkey    INDEX     ]   CREATE INDEX fki_txgoals_erp_product_id_fkey ON public.txgoals_erp USING btree (product_id);
 3   DROP INDEX public.fki_txgoals_erp_product_id_fkey;
       public         postgres    false    311            �           1259    79257     fki_txgoals_erp_scenario_id_fkey    INDEX     _   CREATE INDEX fki_txgoals_erp_scenario_id_fkey ON public.txgoals_erp USING btree (scenario_id);
 4   DROP INDEX public.fki_txgoals_erp_scenario_id_fkey;
       public         postgres    false    311            �           1259    79258    fki_txholiday_calendar_id_fkey    INDEX     [   CREATE INDEX fki_txholiday_calendar_id_fkey ON public.txholiday USING btree (calendar_id);
 2   DROP INDEX public.fki_txholiday_calendar_id_fkey;
       public         postgres    false    313            �           1259    79259    fki_txhousingway_breed_id_fkey    INDEX     [   CREATE INDEX fki_txhousingway_breed_id_fkey ON public.txhousingway USING btree (breed_id);
 2   DROP INDEX public.fki_txhousingway_breed_id_fkey;
       public         postgres    false    314                       1259    79260 $   fki_txhousingway_detail_farm_id_fkey    INDEX     g   CREATE INDEX fki_txhousingway_detail_farm_id_fkey ON public.txhousingway_detail USING btree (farm_id);
 8   DROP INDEX public.fki_txhousingway_detail_farm_id_fkey;
       public         postgres    false    315                       1259    79261 +   fki_txhousingway_detail_housing_way_id_fkey    INDEX     u   CREATE INDEX fki_txhousingway_detail_housing_way_id_fkey ON public.txhousingway_detail USING btree (housing_way_id);
 ?   DROP INDEX public.fki_txhousingway_detail_housing_way_id_fkey;
       public         postgres    false    315                       1259    79262 /   fki_txhousingway_detail_incubator_plant_id_fkey    INDEX     }   CREATE INDEX fki_txhousingway_detail_incubator_plant_id_fkey ON public.txhousingway_detail USING btree (incubator_plant_id);
 C   DROP INDEX public.fki_txhousingway_detail_incubator_plant_id_fkey;
       public         postgres    false    315                       1259    79263 $   fki_txhousingway_detail_shed_id_fkey    INDEX     g   CREATE INDEX fki_txhousingway_detail_shed_id_fkey ON public.txhousingway_detail USING btree (shed_id);
 8   DROP INDEX public.fki_txhousingway_detail_shed_id_fkey;
       public         postgres    false    315            �           1259    79264 $   fki_txhousingway_partnership_id_fkey    INDEX     g   CREATE INDEX fki_txhousingway_partnership_id_fkey ON public.txhousingway USING btree (partnership_id);
 8   DROP INDEX public.fki_txhousingway_partnership_id_fkey;
       public         postgres    false    314            �           1259    79265 !   fki_txhousingway_scenario_id_fkey    INDEX     a   CREATE INDEX fki_txhousingway_scenario_id_fkey ON public.txhousingway USING btree (scenario_id);
 5   DROP INDEX public.fki_txhousingway_scenario_id_fkey;
       public         postgres    false    314            �           1259    79266    fki_txhousingway_stage_id_fkey    INDEX     [   CREATE INDEX fki_txhousingway_stage_id_fkey ON public.txhousingway USING btree (stage_id);
 2   DROP INDEX public.fki_txhousingway_stage_id_fkey;
       public         postgres    false    314                       1259    79267    fki_txlot_breed_id_fkey    INDEX     M   CREATE INDEX fki_txlot_breed_id_fkey ON public.txlot USING btree (breed_id);
 +   DROP INDEX public.fki_txlot_breed_id_fkey;
       public         postgres    false    316                       1259    79268    fki_txlot_farm_id_fkey    INDEX     K   CREATE INDEX fki_txlot_farm_id_fkey ON public.txlot USING btree (farm_id);
 *   DROP INDEX public.fki_txlot_farm_id_fkey;
       public         postgres    false    316            	           1259    79269    fki_txlot_housin_way_id_fkey    INDEX     X   CREATE INDEX fki_txlot_housin_way_id_fkey ON public.txlot USING btree (housing_way_id);
 0   DROP INDEX public.fki_txlot_housin_way_id_fkey;
       public         postgres    false    316            
           1259    79271    fki_txlot_product_id_fkey    INDEX     Q   CREATE INDEX fki_txlot_product_id_fkey ON public.txlot USING btree (product_id);
 -   DROP INDEX public.fki_txlot_product_id_fkey;
       public         postgres    false    316                       1259    79272    fki_txlot_shed_id_fkey    INDEX     K   CREATE INDEX fki_txlot_shed_id_fkey ON public.txlot USING btree (shed_id);
 *   DROP INDEX public.fki_txlot_shed_id_fkey;
       public         postgres    false    316            4           1259    79877     fki_txposturecurve_breed_id_fkey    INDEX     _   CREATE INDEX fki_txposturecurve_breed_id_fkey ON public.txposturecurve USING btree (breed_id);
 4   DROP INDEX public.fki_txposturecurve_breed_id_fkey;
       public         postgres    false    328                       1259    79274 #   fki_txprogrammed_eggs_breed_id_fkey    INDEX     e   CREATE INDEX fki_txprogrammed_eggs_breed_id_fkey ON public.txprogrammed_eggs USING btree (breed_id);
 7   DROP INDEX public.fki_txprogrammed_eggs_breed_id_fkey;
       public         postgres    false    318                       1259    79275 *   fki_txprogrammed_eggs_eggs_storage_id_fkey    INDEX     s   CREATE INDEX fki_txprogrammed_eggs_eggs_storage_id_fkey ON public.txprogrammed_eggs USING btree (eggs_storage_id);
 >   DROP INDEX public.fki_txprogrammed_eggs_eggs_storage_id_fkey;
       public         postgres    false    318                       1259    79276 '   fki_txprogrammed_eggs_incubator_id_fkey    INDEX     m   CREATE INDEX fki_txprogrammed_eggs_incubator_id_fkey ON public.txprogrammed_eggs USING btree (incubator_id);
 ;   DROP INDEX public.fki_txprogrammed_eggs_incubator_id_fkey;
       public         postgres    false    318                       1259    79277 %   fki_txscenarioformula_measure_id_fkey    INDEX     i   CREATE INDEX fki_txscenarioformula_measure_id_fkey ON public.txscenarioformula USING btree (measure_id);
 9   DROP INDEX public.fki_txscenarioformula_measure_id_fkey;
       public         postgres    false    319                       1259    79278 '   fki_txscenarioformula_parameter_id_fkey    INDEX     m   CREATE INDEX fki_txscenarioformula_parameter_id_fkey ON public.txscenarioformula USING btree (parameter_id);
 ;   DROP INDEX public.fki_txscenarioformula_parameter_id_fkey;
       public         postgres    false    319                       1259    79279 %   fki_txscenarioformula_process_id_fkey    INDEX     i   CREATE INDEX fki_txscenarioformula_process_id_fkey ON public.txscenarioformula USING btree (process_id);
 9   DROP INDEX public.fki_txscenarioformula_process_id_fkey;
       public         postgres    false    319                       1259    79280 &   fki_txscenarioformula_scenario_id_fkey    INDEX     k   CREATE INDEX fki_txscenarioformula_scenario_id_fkey ON public.txscenarioformula USING btree (scenario_id);
 :   DROP INDEX public.fki_txscenarioformula_scenario_id_fkey;
       public         postgres    false    319                       1259    79281    fki_txscenariohen_breed_id_fkey    INDEX     ]   CREATE INDEX fki_txscenariohen_breed_id_fkey ON public.txscenariohen USING btree (breed_id);
 3   DROP INDEX public.fki_txscenariohen_breed_id_fkey;
       public         postgres    false    320                       1259    79282 "   fki_txscenariohen_scenario_id_fkey    INDEX     c   CREATE INDEX fki_txscenariohen_scenario_id_fkey ON public.txscenariohen USING btree (scenario_id);
 6   DROP INDEX public.fki_txscenariohen_scenario_id_fkey;
       public         postgres    false    320            !           1259    79283 )   fki_txscenarioparameter_parameter_id_fkey    INDEX     q   CREATE INDEX fki_txscenarioparameter_parameter_id_fkey ON public.txscenarioparameter USING btree (parameter_id);
 =   DROP INDEX public.fki_txscenarioparameter_parameter_id_fkey;
       public         postgres    false    321            "           1259    79284 '   fki_txscenarioparameter_process_id_fkey    INDEX     m   CREATE INDEX fki_txscenarioparameter_process_id_fkey ON public.txscenarioparameter USING btree (process_id);
 ;   DROP INDEX public.fki_txscenarioparameter_process_id_fkey;
       public         postgres    false    321            #           1259    79285 (   fki_txscenarioparameter_scenario_id_fkey    INDEX     o   CREATE INDEX fki_txscenarioparameter_scenario_id_fkey ON public.txscenarioparameter USING btree (scenario_id);
 <   DROP INDEX public.fki_txscenarioparameter_scenario_id_fkey;
       public         postgres    false    321            &           1259    79286 ,   fki_txscenarioparameterday_parameter_id_fkey    INDEX     w   CREATE INDEX fki_txscenarioparameterday_parameter_id_fkey ON public.txscenarioparameterday USING btree (parameter_id);
 @   DROP INDEX public.fki_txscenarioparameterday_parameter_id_fkey;
       public         postgres    false    322            '           1259    79287 +   fki_txscenarioparameterday_scenario_id_fkey    INDEX     u   CREATE INDEX fki_txscenarioparameterday_scenario_id_fkey ON public.txscenarioparameterday USING btree (scenario_id);
 ?   DROP INDEX public.fki_txscenarioparameterday_scenario_id_fkey;
       public         postgres    false    322            *           1259    79288 (   fki_txscenarioposturecurve_breed_id_fkey    INDEX     o   CREATE INDEX fki_txscenarioposturecurve_breed_id_fkey ON public.txscenarioposturecurve USING btree (breed_id);
 <   DROP INDEX public.fki_txscenarioposturecurve_breed_id_fkey;
       public         postgres    false    323            +           1259    79289 4   fki_txscenarioposturecurve_housingway_detail_id_fkey    INDEX     �   CREATE INDEX fki_txscenarioposturecurve_housingway_detail_id_fkey ON public.txscenarioposturecurve USING btree (housingway_detail_id);
 H   DROP INDEX public.fki_txscenarioposturecurve_housingway_detail_id_fkey;
       public         postgres    false    323            ,           1259    79290 +   fki_txscenarioposturecurve_scenario_id_fkey    INDEX     u   CREATE INDEX fki_txscenarioposturecurve_scenario_id_fkey ON public.txscenarioposturecurve USING btree (scenario_id);
 ?   DROP INDEX public.fki_txscenarioposturecurve_scenario_id_fkey;
       public         postgres    false    323            0           1259    79291 %   fki_txscenarioprocess_process_id_fkey    INDEX     i   CREATE INDEX fki_txscenarioprocess_process_id_fkey ON public.txscenarioprocess USING btree (process_id);
 9   DROP INDEX public.fki_txscenarioprocess_process_id_fkey;
       public         postgres    false    324            1           1259    79292 &   fki_txscenarioprocess_scenario_id_fkey    INDEX     k   CREATE INDEX fki_txscenarioprocess_scenario_id_fkey ON public.txscenarioprocess USING btree (scenario_id);
 :   DROP INDEX public.fki_txscenarioprocess_scenario_id_fkey;
       public         postgres    false    324            -           1259    79293    posturedate_index    INDEX     [   CREATE INDEX posturedate_index ON public.txscenarioposturecurve USING hash (posture_date);
 %   DROP INDEX public.posturedate_index;
       public         postgres    false    323            �           1259    79294    sequence_index    INDEX     L   CREATE INDEX sequence_index ON public.txcalendarday USING btree (sequence);
 "   DROP INDEX public.sequence_index;
       public         postgres    false    307            A           2606    79295 ;   aba_stages_of_breeds_and_stages FK_id_aba_breeds_and_stages    FK CONSTRAINT     �   ALTER TABLE ONLY public.aba_stages_of_breeds_and_stages
    ADD CONSTRAINT "FK_id_aba_breeds_and_stages" FOREIGN KEY (id_aba_breeds_and_stages) REFERENCES public.aba_breeds_and_stages(id) ON DELETE CASCADE;
 g   ALTER TABLE ONLY public.aba_stages_of_breeds_and_stages DROP CONSTRAINT "FK_id_aba_breeds_and_stages";
       public       postgres    false    214    198    3129            7           2606    79300 9   aba_breeds_and_stages FK_id_aba_consumption_and_mortality    FK CONSTRAINT     �   ALTER TABLE ONLY public.aba_breeds_and_stages
    ADD CONSTRAINT "FK_id_aba_consumption_and_mortality" FOREIGN KEY (id_aba_consumption_and_mortality) REFERENCES public.aba_consumption_and_mortality(id);
 e   ALTER TABLE ONLY public.aba_breeds_and_stages DROP CONSTRAINT "FK_id_aba_consumption_and_mortality";
       public       postgres    false    3133    198    200            <           2606    79305 I   aba_consumption_and_mortality_detail FK_id_aba_consumption_and_mortality2    FK CONSTRAINT     �   ALTER TABLE ONLY public.aba_consumption_and_mortality_detail
    ADD CONSTRAINT "FK_id_aba_consumption_and_mortality2" FOREIGN KEY (id_aba_consumption_and_mortality) REFERENCES public.aba_consumption_and_mortality(id) ON DELETE CASCADE;
 u   ALTER TABLE ONLY public.aba_consumption_and_mortality_detail DROP CONSTRAINT "FK_id_aba_consumption_and_mortality2";
       public       postgres    false    200    3133    202            =           2606    79310 1   aba_elements_and_concentrations FK_id_aba_element    FK CONSTRAINT     �   ALTER TABLE ONLY public.aba_elements_and_concentrations
    ADD CONSTRAINT "FK_id_aba_element" FOREIGN KEY (id_aba_element) REFERENCES public.aba_elements(id);
 ]   ALTER TABLE ONLY public.aba_elements_and_concentrations DROP CONSTRAINT "FK_id_aba_element";
       public       postgres    false    206    3141    204            @           2606    79315    aba_results FK_id_aba_element2    FK CONSTRAINT     �   ALTER TABLE ONLY public.aba_results
    ADD CONSTRAINT "FK_id_aba_element2" FOREIGN KEY (id_aba_element) REFERENCES public.aba_elements(id);
 J   ALTER TABLE ONLY public.aba_results DROP CONSTRAINT "FK_id_aba_element2";
       public       postgres    false    3141    204    212            >           2606    79320 :   aba_elements_and_concentrations FK_id_aba_element_property    FK CONSTRAINT     �   ALTER TABLE ONLY public.aba_elements_and_concentrations
    ADD CONSTRAINT "FK_id_aba_element_property" FOREIGN KEY (id_aba_element_property) REFERENCES public.aba_elements_properties(id);
 f   ALTER TABLE ONLY public.aba_elements_and_concentrations DROP CONSTRAINT "FK_id_aba_element_property";
       public       postgres    false    206    3148    208            ?           2606    79325 5   aba_elements_and_concentrations FK_id_aba_formulation    FK CONSTRAINT     �   ALTER TABLE ONLY public.aba_elements_and_concentrations
    ADD CONSTRAINT "FK_id_aba_formulation" FOREIGN KEY (id_aba_formulation) REFERENCES public.aba_formulation(id) ON DELETE CASCADE;
 a   ALTER TABLE ONLY public.aba_elements_and_concentrations DROP CONSTRAINT "FK_id_aba_formulation";
       public       postgres    false    206    3150    210            9           2606    79330 1   aba_consumption_and_mortality FK_id_aba_time_unit    FK CONSTRAINT     �   ALTER TABLE ONLY public.aba_consumption_and_mortality
    ADD CONSTRAINT "FK_id_aba_time_unit" FOREIGN KEY (id_aba_time_unit) REFERENCES public.aba_time_unit(id);
 ]   ALTER TABLE ONLY public.aba_consumption_and_mortality DROP CONSTRAINT "FK_id_aba_time_unit";
       public       postgres    false    200    215    3159            :           2606    79335 )   aba_consumption_and_mortality FK_id_breed    FK CONSTRAINT     �   ALTER TABLE ONLY public.aba_consumption_and_mortality
    ADD CONSTRAINT "FK_id_breed" FOREIGN KEY (id_breed) REFERENCES public.mdbreed(breed_id);
 U   ALTER TABLE ONLY public.aba_consumption_and_mortality DROP CONSTRAINT "FK_id_breed";
       public       postgres    false    3167    200    250            B           2606    79340 1   aba_stages_of_breeds_and_stages FK_id_formulation    FK CONSTRAINT     �   ALTER TABLE ONLY public.aba_stages_of_breeds_and_stages
    ADD CONSTRAINT "FK_id_formulation" FOREIGN KEY (id_formulation) REFERENCES public.aba_formulation(id);
 ]   ALTER TABLE ONLY public.aba_stages_of_breeds_and_stages DROP CONSTRAINT "FK_id_formulation";
       public       postgres    false    210    214    3150            8           2606    79345 #   aba_breeds_and_stages FK_id_process    FK CONSTRAINT     �   ALTER TABLE ONLY public.aba_breeds_and_stages
    ADD CONSTRAINT "FK_id_process" FOREIGN KEY (id_process) REFERENCES public.mdprocess(process_id);
 O   ALTER TABLE ONLY public.aba_breeds_and_stages DROP CONSTRAINT "FK_id_process";
       public       postgres    false    259    3187    198            ;           2606    79350 )   aba_consumption_and_mortality FK_id_stage    FK CONSTRAINT     �   ALTER TABLE ONLY public.aba_consumption_and_mortality
    ADD CONSTRAINT "FK_id_stage" FOREIGN KEY (id_stage) REFERENCES public.mdstage(stage_id);
 U   ALTER TABLE ONLY public.aba_consumption_and_mortality DROP CONSTRAINT "FK_id_stage";
       public       postgres    false    3208    271    200            C           2606    79355    mdapplication_rol aplication fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mdapplication_rol
    ADD CONSTRAINT "aplication fk" FOREIGN KEY (application_id) REFERENCES public.mdapplication(application_id);
 K   ALTER TABLE ONLY public.mdapplication_rol DROP CONSTRAINT "aplication fk";
       public       postgres    false    247    249    3161            L           2606    79360    mdscenario fk_calendar_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.mdscenario
    ADD CONSTRAINT fk_calendar_id FOREIGN KEY (calendar_id) REFERENCES public.txcalendar(calendar_id);
 C   ALTER TABLE ONLY public.mdscenario DROP CONSTRAINT fk_calendar_id;
       public       postgres    false    267    306    3297            E           2606    79365 '   mdparameter mdparameter_measure_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mdparameter
    ADD CONSTRAINT mdparameter_measure_id_fkey FOREIGN KEY (measure_id) REFERENCES public.mdmeasure(measure_id) ON UPDATE CASCADE ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.mdparameter DROP CONSTRAINT mdparameter_measure_id_fkey;
       public       postgres    false    3177    257    255            F           2606    79370 '   mdparameter mdparameter_process_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mdparameter
    ADD CONSTRAINT mdparameter_process_id_fkey FOREIGN KEY (process_id) REFERENCES public.mdprocess(process_id) ON UPDATE CASCADE ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.mdparameter DROP CONSTRAINT mdparameter_process_id_fkey;
       public       postgres    false    3187    259    257            G           2606    79375 !   mdprocess mdprocess_breed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mdprocess
    ADD CONSTRAINT mdprocess_breed_id_fkey FOREIGN KEY (breed_id) REFERENCES public.mdbreed(breed_id) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.mdprocess DROP CONSTRAINT mdprocess_breed_id_fkey;
       public       postgres    false    259    250    3167            H           2606    79380 $   mdprocess mdprocess_calendar_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mdprocess
    ADD CONSTRAINT mdprocess_calendar_id_fkey FOREIGN KEY (calendar_id) REFERENCES public.txcalendar(calendar_id) ON UPDATE CASCADE ON DELETE CASCADE;
 N   ALTER TABLE ONLY public.mdprocess DROP CONSTRAINT mdprocess_calendar_id_fkey;
       public       postgres    false    3297    259    306            I           2606    79390 #   mdprocess mdprocess_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mdprocess
    ADD CONSTRAINT mdprocess_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.mdproduct(product_id) ON UPDATE CASCADE ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.mdprocess DROP CONSTRAINT mdprocess_product_id_fkey;
       public       postgres    false    263    259    3194            J           2606    79395 !   mdprocess mdprocess_stage_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mdprocess
    ADD CONSTRAINT mdprocess_stage_id_fkey FOREIGN KEY (stage_id) REFERENCES public.mdstage(stage_id) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.mdprocess DROP CONSTRAINT mdprocess_stage_id_fkey;
       public       postgres    false    271    259    3208            K           2606    79400 .   mdprocessclass mdprocessclass_industry_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mdprocessclass
    ADD CONSTRAINT mdprocessclass_industry_id_fkey FOREIGN KEY (industry_id) REFERENCES public.mdindustry(industry_id) ON UPDATE CASCADE ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.mdprocessclass DROP CONSTRAINT mdprocessclass_industry_id_fkey;
       public       postgres    false    253    261    3175            N           2606    79405    oscenter oscenter_farm_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.oscenter
    ADD CONSTRAINT oscenter_farm_id_fkey FOREIGN KEY (farm_id) REFERENCES public.osfarm(farm_id) ON UPDATE CASCADE ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.oscenter DROP CONSTRAINT oscenter_farm_id_fkey;
       public       postgres    false    276    274    3226            P           2606    79410 8   oscenter_oswarehouse oscenter_oswarehouse_center_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.oscenter_oswarehouse
    ADD CONSTRAINT oscenter_oswarehouse_center_id_fkey FOREIGN KEY (center_id) REFERENCES public.oscenter(center_id) ON UPDATE CASCADE ON DELETE CASCADE;
 b   ALTER TABLE ONLY public.oscenter_oswarehouse DROP CONSTRAINT oscenter_oswarehouse_center_id_fkey;
       public       postgres    false    274    275    3216            Q           2606    79415 6   oscenter_oswarehouse oscenter_oswarehouse_farm_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.oscenter_oswarehouse
    ADD CONSTRAINT oscenter_oswarehouse_farm_id_fkey FOREIGN KEY (farm_id) REFERENCES public.osfarm(farm_id) ON UPDATE CASCADE ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.oscenter_oswarehouse DROP CONSTRAINT oscenter_oswarehouse_farm_id_fkey;
       public       postgres    false    276    275    3226            R           2606    79420 =   oscenter_oswarehouse oscenter_oswarehouse_partnership_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.oscenter_oswarehouse
    ADD CONSTRAINT oscenter_oswarehouse_partnership_id_fkey FOREIGN KEY (partnership_id) REFERENCES public.ospartnership(partnership_id) ON UPDATE CASCADE ON DELETE CASCADE;
 g   ALTER TABLE ONLY public.oscenter_oswarehouse DROP CONSTRAINT oscenter_oswarehouse_partnership_id_fkey;
       public       postgres    false    3236    275    280            S           2606    79425 ;   oscenter_oswarehouse oscenter_oswarehouse_warehouse_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.oscenter_oswarehouse
    ADD CONSTRAINT oscenter_oswarehouse_warehouse_id_fkey FOREIGN KEY (warehouse_id) REFERENCES public.oswarehouse(warehouse_id) ON UPDATE CASCADE ON DELETE CASCADE;
 e   ALTER TABLE ONLY public.oscenter_oswarehouse DROP CONSTRAINT oscenter_oswarehouse_warehouse_id_fkey;
       public       postgres    false    3260    289    275            O           2606    79430 %   oscenter oscenter_partnership_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.oscenter
    ADD CONSTRAINT oscenter_partnership_id_fkey FOREIGN KEY (partnership_id) REFERENCES public.ospartnership(partnership_id) ON UPDATE CASCADE ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.oscenter DROP CONSTRAINT oscenter_partnership_id_fkey;
       public       postgres    false    3236    280    274            T           2606    79435    osfarm osfarm_farm_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.osfarm
    ADD CONSTRAINT osfarm_farm_type_id_fkey FOREIGN KEY (farm_type_id) REFERENCES public.mdfarmtype(farm_type_id) ON UPDATE CASCADE ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.osfarm DROP CONSTRAINT osfarm_farm_type_id_fkey;
       public       postgres    false    252    3171    276            U           2606    79440 !   osfarm osfarm_partnership_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.osfarm
    ADD CONSTRAINT osfarm_partnership_id_fkey FOREIGN KEY (partnership_id) REFERENCES public.ospartnership(partnership_id) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.osfarm DROP CONSTRAINT osfarm_partnership_id_fkey;
       public       postgres    false    3236    276    280            V           2606    79445 /   osincubator osincubator_incubator_plant_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.osincubator
    ADD CONSTRAINT osincubator_incubator_plant_id_fkey FOREIGN KEY (incubator_plant_id) REFERENCES public.osincubatorplant(incubator_plant_id) ON UPDATE CASCADE ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.osincubator DROP CONSTRAINT osincubator_incubator_plant_id_fkey;
       public       postgres    false    278    277    3232            W           2606    79450 5   osincubatorplant osincubatorplant_partnership_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.osincubatorplant
    ADD CONSTRAINT osincubatorplant_partnership_id_fkey FOREIGN KEY (partnership_id) REFERENCES public.ospartnership(partnership_id) ON UPDATE CASCADE ON DELETE CASCADE;
 _   ALTER TABLE ONLY public.osincubatorplant DROP CONSTRAINT osincubatorplant_partnership_id_fkey;
       public       postgres    false    278    280    3236            X           2606    79455    osshed osshed_center_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.osshed
    ADD CONSTRAINT osshed_center_id_fkey FOREIGN KEY (center_id) REFERENCES public.oscenter(center_id) ON UPDATE CASCADE ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.osshed DROP CONSTRAINT osshed_center_id_fkey;
       public       postgres    false    282    274    3216            Y           2606    79460    osshed osshed_farm_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.osshed
    ADD CONSTRAINT osshed_farm_id_fkey FOREIGN KEY (farm_id) REFERENCES public.osfarm(farm_id) ON UPDATE CASCADE ON DELETE CASCADE;
 D   ALTER TABLE ONLY public.osshed DROP CONSTRAINT osshed_farm_id_fkey;
       public       postgres    false    282    276    3226            Z           2606    79465 !   osshed osshed_partnership_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.osshed
    ADD CONSTRAINT osshed_partnership_id_fkey FOREIGN KEY (partnership_id) REFERENCES public.ospartnership(partnership_id) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.osshed DROP CONSTRAINT osshed_partnership_id_fkey;
       public       postgres    false    280    3236    282            [           2606    79470     osshed osshed_statusshed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.osshed
    ADD CONSTRAINT osshed_statusshed_id_fkey FOREIGN KEY (statusshed_id) REFERENCES public.mdshedstatus(shed_status_id) ON UPDATE CASCADE ON DELETE CASCADE;
 J   ALTER TABLE ONLY public.osshed DROP CONSTRAINT osshed_statusshed_id_fkey;
       public       postgres    false    3204    269    282            \           2606    79475    ossilo ossilo_center_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ossilo
    ADD CONSTRAINT ossilo_center_id_fkey FOREIGN KEY (center_id) REFERENCES public.oscenter(center_id) ON UPDATE CASCADE ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.ossilo DROP CONSTRAINT ossilo_center_id_fkey;
       public       postgres    false    3216    274    284            ]           2606    79480    ossilo ossilo_farm_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ossilo
    ADD CONSTRAINT ossilo_farm_id_fkey FOREIGN KEY (farm_id) REFERENCES public.osfarm(farm_id) ON UPDATE CASCADE ON DELETE CASCADE;
 D   ALTER TABLE ONLY public.ossilo DROP CONSTRAINT ossilo_farm_id_fkey;
       public       postgres    false    276    3226    284            _           2606    79485 *   ossilo_osshed ossilo_osshed_center_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ossilo_osshed
    ADD CONSTRAINT ossilo_osshed_center_id_fkey FOREIGN KEY (center_id) REFERENCES public.oscenter(center_id) ON UPDATE CASCADE ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.ossilo_osshed DROP CONSTRAINT ossilo_osshed_center_id_fkey;
       public       postgres    false    3216    274    285            `           2606    79490 (   ossilo_osshed ossilo_osshed_farm_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ossilo_osshed
    ADD CONSTRAINT ossilo_osshed_farm_id_fkey FOREIGN KEY (farm_id) REFERENCES public.osfarm(farm_id) ON UPDATE CASCADE ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.ossilo_osshed DROP CONSTRAINT ossilo_osshed_farm_id_fkey;
       public       postgres    false    276    3226    285            a           2606    79495 /   ossilo_osshed ossilo_osshed_partnership_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ossilo_osshed
    ADD CONSTRAINT ossilo_osshed_partnership_id_fkey FOREIGN KEY (partnership_id) REFERENCES public.ospartnership(partnership_id) ON UPDATE CASCADE ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.ossilo_osshed DROP CONSTRAINT ossilo_osshed_partnership_id_fkey;
       public       postgres    false    285    3236    280            b           2606    79500 (   ossilo_osshed ossilo_osshed_shed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ossilo_osshed
    ADD CONSTRAINT ossilo_osshed_shed_id_fkey FOREIGN KEY (shed_id) REFERENCES public.osshed(shed_id) ON UPDATE CASCADE ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.ossilo_osshed DROP CONSTRAINT ossilo_osshed_shed_id_fkey;
       public       postgres    false    285    3242    282            c           2606    79505 (   ossilo_osshed ossilo_osshed_silo_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ossilo_osshed
    ADD CONSTRAINT ossilo_osshed_silo_id_fkey FOREIGN KEY (silo_id) REFERENCES public.ossilo(silo_id) ON UPDATE CASCADE ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.ossilo_osshed DROP CONSTRAINT ossilo_osshed_silo_id_fkey;
       public       postgres    false    284    285    3247            ^           2606    79510 !   ossilo ossilo_partnership_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ossilo
    ADD CONSTRAINT ossilo_partnership_id_fkey FOREIGN KEY (partnership_id) REFERENCES public.ospartnership(partnership_id) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.ossilo DROP CONSTRAINT ossilo_partnership_id_fkey;
       public       postgres    false    3236    284    280            d           2606    79515 $   oswarehouse oswarehouse_farm_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.oswarehouse
    ADD CONSTRAINT oswarehouse_farm_id_fkey FOREIGN KEY (farm_id) REFERENCES public.osfarm(farm_id) ON UPDATE CASCADE ON DELETE CASCADE;
 N   ALTER TABLE ONLY public.oswarehouse DROP CONSTRAINT oswarehouse_farm_id_fkey;
       public       postgres    false    289    276    3226            e           2606    79520 +   oswarehouse oswarehouse_partnership_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.oswarehouse
    ADD CONSTRAINT oswarehouse_partnership_id_fkey FOREIGN KEY (partnership_id) REFERENCES public.ospartnership(partnership_id) ON UPDATE CASCADE ON DELETE CASCADE;
 U   ALTER TABLE ONLY public.oswarehouse DROP CONSTRAINT oswarehouse_partnership_id_fkey;
       public       postgres    false    3236    280    289            D           2606    79525    mdapplication_rol rol fk    FK CONSTRAINT     |   ALTER TABLE ONLY public.mdapplication_rol
    ADD CONSTRAINT "rol fk" FOREIGN KEY (rol_id) REFERENCES public.mdrol(rol_id);
 D   ALTER TABLE ONLY public.mdapplication_rol DROP CONSTRAINT "rol fk";
       public       postgres    false    249    3196    265            M           2606    79530    mduser rol fk     FK CONSTRAINT     r   ALTER TABLE ONLY public.mduser
    ADD CONSTRAINT "rol fk " FOREIGN KEY (rol_id) REFERENCES public.mdrol(rol_id);
 :   ALTER TABLE ONLY public.mduser DROP CONSTRAINT "rol fk ";
       public       postgres    false    3196    273    265            f           2606    79535 5   txavailabilitysheds txavailabilitysheds_lot_code_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txavailabilitysheds
    ADD CONSTRAINT txavailabilitysheds_lot_code_fkey FOREIGN KEY (lot_code) REFERENCES public.txlot(lot_code) ON UPDATE CASCADE ON DELETE CASCADE;
 _   ALTER TABLE ONLY public.txavailabilitysheds DROP CONSTRAINT txavailabilitysheds_lot_code_fkey;
       public       postgres    false    3341    316    299            g           2606    79540 4   txavailabilitysheds txavailabilitysheds_shed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txavailabilitysheds
    ADD CONSTRAINT txavailabilitysheds_shed_id_fkey FOREIGN KEY (shed_id) REFERENCES public.osshed(shed_id) ON UPDATE CASCADE ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.txavailabilitysheds DROP CONSTRAINT txavailabilitysheds_shed_id_fkey;
       public       postgres    false    299    3242    282            h           2606    79545 !   txbroiler txbroiler_breed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroiler
    ADD CONSTRAINT txbroiler_breed_id_fkey FOREIGN KEY (breed_id) REFERENCES public.mdbreed(breed_id) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.txbroiler DROP CONSTRAINT txbroiler_breed_id_fkey;
       public       postgres    false    3167    300    250            l           2606    79550 1   txbroiler_detail txbroiler_detail_broiler_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroiler_detail
    ADD CONSTRAINT txbroiler_detail_broiler_id_fkey FOREIGN KEY (broiler_id) REFERENCES public.txbroiler(broiler_id) ON UPDATE CASCADE ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.txbroiler_detail DROP CONSTRAINT txbroiler_detail_broiler_id_fkey;
       public       postgres    false    3270    300    301            m           2606    79555 .   txbroiler_detail txbroiler_detail_farm_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroiler_detail
    ADD CONSTRAINT txbroiler_detail_farm_id_fkey FOREIGN KEY (farm_id) REFERENCES public.osfarm(farm_id) ON UPDATE CASCADE ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.txbroiler_detail DROP CONSTRAINT txbroiler_detail_farm_id_fkey;
       public       postgres    false    276    301    3226            n           2606    79560 .   txbroiler_detail txbroiler_detail_shed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroiler_detail
    ADD CONSTRAINT txbroiler_detail_shed_id_fkey FOREIGN KEY (shed_id) REFERENCES public.osshed(shed_id) ON UPDATE CASCADE ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.txbroiler_detail DROP CONSTRAINT txbroiler_detail_shed_id_fkey;
       public       postgres    false    3242    282    301            i           2606    79565 '   txbroiler txbroiler_partnership_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroiler
    ADD CONSTRAINT txbroiler_partnership_id_fkey FOREIGN KEY (partnership_id) REFERENCES public.ospartnership(partnership_id) ON UPDATE CASCADE ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.txbroiler DROP CONSTRAINT txbroiler_partnership_id_fkey;
       public       postgres    false    3236    300    280            j           2606    79570 +   txbroiler txbroiler_programmed_eggs_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroiler
    ADD CONSTRAINT txbroiler_programmed_eggs_id_fkey FOREIGN KEY (programmed_eggs_id) REFERENCES public.txprogrammed_eggs(programmed_eggs_id) ON UPDATE CASCADE ON DELETE CASCADE;
 U   ALTER TABLE ONLY public.txbroiler DROP CONSTRAINT txbroiler_programmed_eggs_id_fkey;
       public       postgres    false    3350    318    300            k           2606    79575 $   txbroiler txbroiler_scenario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroiler
    ADD CONSTRAINT txbroiler_scenario_id_fkey FOREIGN KEY (scenario_id) REFERENCES public.mdscenario(scenario_id) ON UPDATE CASCADE ON DELETE CASCADE;
 N   ALTER TABLE ONLY public.txbroiler DROP CONSTRAINT txbroiler_scenario_id_fkey;
       public       postgres    false    3202    300    267            o           2606    79580 1   txbroilereviction txbroilereviction_breed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroilereviction
    ADD CONSTRAINT txbroilereviction_breed_id_fkey FOREIGN KEY (breed_id) REFERENCES public.mdbreed(breed_id) ON UPDATE CASCADE ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.txbroilereviction DROP CONSTRAINT txbroilereviction_breed_id_fkey;
       public       postgres    false    302    250    3167            r           2606    79585 A   txbroilereviction_detail txbroilereviction_detail_broiler_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroilereviction_detail
    ADD CONSTRAINT txbroilereviction_detail_broiler_id_fkey FOREIGN KEY (broilereviction_id) REFERENCES public.txbroilereviction(broilereviction_id) ON UPDATE CASCADE ON DELETE CASCADE;
 k   ALTER TABLE ONLY public.txbroilereviction_detail DROP CONSTRAINT txbroilereviction_detail_broiler_id_fkey;
       public       postgres    false    302    3280    303            s           2606    79590 I   txbroilereviction_detail txbroilereviction_detail_broiler_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroilereviction_detail
    ADD CONSTRAINT txbroilereviction_detail_broiler_product_id_fkey FOREIGN KEY (broiler_product_id) REFERENCES public.mdbroiler_product(broiler_product_id) ON UPDATE CASCADE ON DELETE CASCADE;
 s   ALTER TABLE ONLY public.txbroilereviction_detail DROP CONSTRAINT txbroilereviction_detail_broiler_product_id_fkey;
       public       postgres    false    303    251    3169            t           2606    79595 >   txbroilereviction_detail txbroilereviction_detail_farm_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroilereviction_detail
    ADD CONSTRAINT txbroilereviction_detail_farm_id_fkey FOREIGN KEY (farm_id) REFERENCES public.osfarm(farm_id) ON UPDATE CASCADE ON DELETE CASCADE;
 h   ALTER TABLE ONLY public.txbroilereviction_detail DROP CONSTRAINT txbroilereviction_detail_farm_id_fkey;
       public       postgres    false    3226    303    276            u           2606    79600 >   txbroilereviction_detail txbroilereviction_detail_shed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroilereviction_detail
    ADD CONSTRAINT txbroilereviction_detail_shed_id_fkey FOREIGN KEY (shed_id) REFERENCES public.osshed(shed_id) ON UPDATE CASCADE ON DELETE CASCADE;
 h   ALTER TABLE ONLY public.txbroilereviction_detail DROP CONSTRAINT txbroilereviction_detail_shed_id_fkey;
       public       postgres    false    282    303    3242            v           2606    79605 H   txbroilereviction_detail txbroilereviction_detail_slaughterhouse_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroilereviction_detail
    ADD CONSTRAINT txbroilereviction_detail_slaughterhouse_id_fkey FOREIGN KEY (slaughterhouse_id) REFERENCES public.osslaughterhouse(slaughterhouse_id) ON UPDATE CASCADE ON DELETE CASCADE;
 r   ALTER TABLE ONLY public.txbroilereviction_detail DROP CONSTRAINT txbroilereviction_detail_slaughterhouse_id_fkey;
       public       postgres    false    3256    303    287            p           2606    79610 7   txbroilereviction txbroilereviction_partnership_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroilereviction
    ADD CONSTRAINT txbroilereviction_partnership_id_fkey FOREIGN KEY (partnership_id) REFERENCES public.ospartnership(partnership_id) ON UPDATE CASCADE ON DELETE CASCADE;
 a   ALTER TABLE ONLY public.txbroilereviction DROP CONSTRAINT txbroilereviction_partnership_id_fkey;
       public       postgres    false    302    280    3236            q           2606    79615 4   txbroilereviction txbroilereviction_scenario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroilereviction
    ADD CONSTRAINT txbroilereviction_scenario_id_fkey FOREIGN KEY (scenario_id) REFERENCES public.mdscenario(scenario_id) ON UPDATE CASCADE ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.txbroilereviction DROP CONSTRAINT txbroilereviction_scenario_id_fkey;
       public       postgres    false    3202    302    267            w           2606    79620 C   txbroilerproduct_detail txbroilerproduct_detail_broiler_detail_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroilerproduct_detail
    ADD CONSTRAINT txbroilerproduct_detail_broiler_detail_fkey FOREIGN KEY (broiler_detail) REFERENCES public.txbroiler_detail(broiler_detail_id) ON UPDATE CASCADE ON DELETE CASCADE;
 m   ALTER TABLE ONLY public.txbroilerproduct_detail DROP CONSTRAINT txbroilerproduct_detail_broiler_detail_fkey;
       public       postgres    false    3275    301    304            x           2606    79625 .   txbroodermachine txbroodermachine_farm_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroodermachine
    ADD CONSTRAINT txbroodermachine_farm_id_fkey FOREIGN KEY (farm_id) REFERENCES public.osfarm(farm_id) ON UPDATE CASCADE ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.txbroodermachine DROP CONSTRAINT txbroodermachine_farm_id_fkey;
       public       postgres    false    276    305    3226            y           2606    79630 5   txbroodermachine txbroodermachine_partnership_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroodermachine
    ADD CONSTRAINT txbroodermachine_partnership_id_fkey FOREIGN KEY (partnership_id) REFERENCES public.ospartnership(partnership_id) ON UPDATE CASCADE ON DELETE CASCADE;
 _   ALTER TABLE ONLY public.txbroodermachine DROP CONSTRAINT txbroodermachine_partnership_id_fkey;
       public       postgres    false    305    3236    280            z           2606    79635 ,   txcalendarday txcalendarday_calendar_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txcalendarday
    ADD CONSTRAINT txcalendarday_calendar_id_fkey FOREIGN KEY (calendar_id) REFERENCES public.txcalendar(calendar_id) ON UPDATE CASCADE ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.txcalendarday DROP CONSTRAINT txcalendarday_calendar_id_fkey;
       public       postgres    false    306    3297    307            {           2606    79640 -   txeggs_planning txeggs_planning_breed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txeggs_planning
    ADD CONSTRAINT txeggs_planning_breed_id_fkey FOREIGN KEY (breed_id) REFERENCES public.mdbreed(breed_id) ON UPDATE CASCADE ON DELETE CASCADE;
 W   ALTER TABLE ONLY public.txeggs_planning DROP CONSTRAINT txeggs_planning_breed_id_fkey;
       public       postgres    false    3167    308    250            |           2606    79645 0   txeggs_planning txeggs_planning_scenario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txeggs_planning
    ADD CONSTRAINT txeggs_planning_scenario_id_fkey FOREIGN KEY (scenario_id) REFERENCES public.mdscenario(scenario_id);
 Z   ALTER TABLE ONLY public.txeggs_planning DROP CONSTRAINT txeggs_planning_scenario_id_fkey;
       public       postgres    false    267    3202    308            }           2606    79650 -   txeggs_required txeggs_required_breed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txeggs_required
    ADD CONSTRAINT txeggs_required_breed_id_fkey FOREIGN KEY (breed_id) REFERENCES public.mdbreed(breed_id);
 W   ALTER TABLE ONLY public.txeggs_required DROP CONSTRAINT txeggs_required_breed_id_fkey;
       public       postgres    false    250    309    3167            ~           2606    79655 0   txeggs_required txeggs_required_scenario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txeggs_required
    ADD CONSTRAINT txeggs_required_scenario_id_fkey FOREIGN KEY (scenario_id) REFERENCES public.mdscenario(scenario_id);
 Z   ALTER TABLE ONLY public.txeggs_required DROP CONSTRAINT txeggs_required_scenario_id_fkey;
       public       postgres    false    3202    309    267                       2606    79660 +   txeggs_storage txeggs_storage_breed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txeggs_storage
    ADD CONSTRAINT txeggs_storage_breed_id_fkey FOREIGN KEY (breed_id) REFERENCES public.mdbreed(breed_id);
 U   ALTER TABLE ONLY public.txeggs_storage DROP CONSTRAINT txeggs_storage_breed_id_fkey;
       public       postgres    false    3167    310    250            �           2606    79665 5   txeggs_storage txeggs_storage_incubator_plant_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txeggs_storage
    ADD CONSTRAINT txeggs_storage_incubator_plant_id_fkey FOREIGN KEY (incubator_plant_id) REFERENCES public.osincubatorplant(incubator_plant_id);
 _   ALTER TABLE ONLY public.txeggs_storage DROP CONSTRAINT txeggs_storage_incubator_plant_id_fkey;
       public       postgres    false    278    3232    310            �           2606    79670 .   txeggs_storage txeggs_storage_scenario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txeggs_storage
    ADD CONSTRAINT txeggs_storage_scenario_id_fkey FOREIGN KEY (scenario_id) REFERENCES public.mdscenario(scenario_id);
 X   ALTER TABLE ONLY public.txeggs_storage DROP CONSTRAINT txeggs_storage_scenario_id_fkey;
       public       postgres    false    3202    310    267            �           2606    79675 '   txgoals_erp txgoals_erp_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txgoals_erp
    ADD CONSTRAINT txgoals_erp_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.mdproduct(product_id);
 Q   ALTER TABLE ONLY public.txgoals_erp DROP CONSTRAINT txgoals_erp_product_id_fkey;
       public       postgres    false    311    3194    263            �           2606    79680 (   txgoals_erp txgoals_erp_scenario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txgoals_erp
    ADD CONSTRAINT txgoals_erp_scenario_id_fkey FOREIGN KEY (scenario_id) REFERENCES public.mdscenario(scenario_id);
 R   ALTER TABLE ONLY public.txgoals_erp DROP CONSTRAINT txgoals_erp_scenario_id_fkey;
       public       postgres    false    311    267    3202            �           2606    79685 $   txholiday txholiday_calendar_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txholiday
    ADD CONSTRAINT txholiday_calendar_id_fkey FOREIGN KEY (calendar_id) REFERENCES public.txcalendar(calendar_id);
 N   ALTER TABLE ONLY public.txholiday DROP CONSTRAINT txholiday_calendar_id_fkey;
       public       postgres    false    306    3297    313            �           2606    79690 '   txhousingway txhousingway_breed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txhousingway
    ADD CONSTRAINT txhousingway_breed_id_fkey FOREIGN KEY (breed_id) REFERENCES public.mdbreed(breed_id) ON UPDATE CASCADE ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.txhousingway DROP CONSTRAINT txhousingway_breed_id_fkey;
       public       postgres    false    3167    250    314            �           2606    79695 4   txhousingway_detail txhousingway_detail_farm_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txhousingway_detail
    ADD CONSTRAINT txhousingway_detail_farm_id_fkey FOREIGN KEY (farm_id) REFERENCES public.osfarm(farm_id) ON UPDATE CASCADE ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.txhousingway_detail DROP CONSTRAINT txhousingway_detail_farm_id_fkey;
       public       postgres    false    276    3226    315            �           2606    79700 ;   txhousingway_detail txhousingway_detail_housing_way_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txhousingway_detail
    ADD CONSTRAINT txhousingway_detail_housing_way_id_fkey FOREIGN KEY (housing_way_id) REFERENCES public.txhousingway(housing_way_id) ON UPDATE CASCADE ON DELETE CASCADE;
 e   ALTER TABLE ONLY public.txhousingway_detail DROP CONSTRAINT txhousingway_detail_housing_way_id_fkey;
       public       postgres    false    3328    314    315            �           2606    79705 4   txhousingway_detail txhousingway_detail_shed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txhousingway_detail
    ADD CONSTRAINT txhousingway_detail_shed_id_fkey FOREIGN KEY (shed_id) REFERENCES public.osshed(shed_id) ON UPDATE CASCADE ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.txhousingway_detail DROP CONSTRAINT txhousingway_detail_shed_id_fkey;
       public       postgres    false    315    282    3242            �           2606    79710 -   txhousingway txhousingway_partnership_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txhousingway
    ADD CONSTRAINT txhousingway_partnership_id_fkey FOREIGN KEY (partnership_id) REFERENCES public.ospartnership(partnership_id) ON UPDATE CASCADE ON DELETE CASCADE;
 W   ALTER TABLE ONLY public.txhousingway DROP CONSTRAINT txhousingway_partnership_id_fkey;
       public       postgres    false    3236    280    314            �           2606    79715 *   txhousingway txhousingway_scenario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txhousingway
    ADD CONSTRAINT txhousingway_scenario_id_fkey FOREIGN KEY (scenario_id) REFERENCES public.mdscenario(scenario_id) ON UPDATE CASCADE ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.txhousingway DROP CONSTRAINT txhousingway_scenario_id_fkey;
       public       postgres    false    314    267    3202            �           2606    79720 '   txhousingway txhousingway_stage_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txhousingway
    ADD CONSTRAINT txhousingway_stage_id_fkey FOREIGN KEY (stage_id) REFERENCES public.mdstage(stage_id);
 Q   ALTER TABLE ONLY public.txhousingway DROP CONSTRAINT txhousingway_stage_id_fkey;
       public       postgres    false    271    3208    314            �           2606    79725    txlot txlot_breed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txlot
    ADD CONSTRAINT txlot_breed_id_fkey FOREIGN KEY (breed_id) REFERENCES public.mdbreed(breed_id);
 C   ALTER TABLE ONLY public.txlot DROP CONSTRAINT txlot_breed_id_fkey;
       public       postgres    false    3167    316    250            �           2606    79730    txlot txlot_farm_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txlot
    ADD CONSTRAINT txlot_farm_id_fkey FOREIGN KEY (farm_id) REFERENCES public.osfarm(farm_id) ON UPDATE CASCADE ON DELETE CASCADE;
 B   ALTER TABLE ONLY public.txlot DROP CONSTRAINT txlot_farm_id_fkey;
       public       postgres    false    276    316    3226            �           2606    79735    txlot txlot_housing_way_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txlot
    ADD CONSTRAINT txlot_housing_way_id_fkey FOREIGN KEY (housing_way_id) REFERENCES public.txhousingway(housing_way_id) ON UPDATE CASCADE ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.txlot DROP CONSTRAINT txlot_housing_way_id_fkey;
       public       postgres    false    316    314    3328            �           2606    79745    txlot txlot_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txlot
    ADD CONSTRAINT txlot_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.mdproduct(product_id);
 E   ALTER TABLE ONLY public.txlot DROP CONSTRAINT txlot_product_id_fkey;
       public       postgres    false    316    263    3194            �           2606    79750    txlot txlot_shed_id_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY public.txlot
    ADD CONSTRAINT txlot_shed_id_fkey FOREIGN KEY (shed_id) REFERENCES public.osshed(shed_id);
 B   ALTER TABLE ONLY public.txlot DROP CONSTRAINT txlot_shed_id_fkey;
       public       postgres    false    316    282    3242            �           2606    79878 +   txposturecurve txposturecurve_breed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txposturecurve
    ADD CONSTRAINT txposturecurve_breed_id_fkey FOREIGN KEY (breed_id) REFERENCES public.mdbreed(breed_id) ON UPDATE CASCADE ON DELETE CASCADE;
 U   ALTER TABLE ONLY public.txposturecurve DROP CONSTRAINT txposturecurve_breed_id_fkey;
       public       postgres    false    3167    328    250            �           2606    79760 1   txprogrammed_eggs txprogrammed_eggs_breed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txprogrammed_eggs
    ADD CONSTRAINT txprogrammed_eggs_breed_id_fkey FOREIGN KEY (breed_id) REFERENCES public.mdbreed(breed_id) ON UPDATE CASCADE ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.txprogrammed_eggs DROP CONSTRAINT txprogrammed_eggs_breed_id_fkey;
       public       postgres    false    318    3167    250            �           2606    79765 8   txprogrammed_eggs txprogrammed_eggs_eggs_storage_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txprogrammed_eggs
    ADD CONSTRAINT txprogrammed_eggs_eggs_storage_id_fkey FOREIGN KEY (eggs_storage_id) REFERENCES public.txeggs_storage(eggs_storage_id) ON UPDATE CASCADE ON DELETE CASCADE;
 b   ALTER TABLE ONLY public.txprogrammed_eggs DROP CONSTRAINT txprogrammed_eggs_eggs_storage_id_fkey;
       public       postgres    false    3315    318    310            �           2606    79770 5   txprogrammed_eggs txprogrammed_eggs_incubator_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txprogrammed_eggs
    ADD CONSTRAINT txprogrammed_eggs_incubator_id_fkey FOREIGN KEY (incubator_id) REFERENCES public.osincubator(incubator_id) ON UPDATE CASCADE ON DELETE CASCADE;
 _   ALTER TABLE ONLY public.txprogrammed_eggs DROP CONSTRAINT txprogrammed_eggs_incubator_id_fkey;
       public       postgres    false    277    318    3229            �           2606    79775 3   txscenarioformula txscenarioformula_measure_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txscenarioformula
    ADD CONSTRAINT txscenarioformula_measure_id_fkey FOREIGN KEY (measure_id) REFERENCES public.mdmeasure(measure_id) ON UPDATE CASCADE ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public.txscenarioformula DROP CONSTRAINT txscenarioformula_measure_id_fkey;
       public       postgres    false    319    3177    255            �           2606    79780 5   txscenarioformula txscenarioformula_parameter_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txscenarioformula
    ADD CONSTRAINT txscenarioformula_parameter_id_fkey FOREIGN KEY (parameter_id) REFERENCES public.mdparameter(parameter_id) ON UPDATE CASCADE ON DELETE CASCADE;
 _   ALTER TABLE ONLY public.txscenarioformula DROP CONSTRAINT txscenarioformula_parameter_id_fkey;
       public       postgres    false    319    257    3181            �           2606    79785 3   txscenarioformula txscenarioformula_process_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txscenarioformula
    ADD CONSTRAINT txscenarioformula_process_id_fkey FOREIGN KEY (process_id) REFERENCES public.mdprocess(process_id) ON UPDATE CASCADE;
 ]   ALTER TABLE ONLY public.txscenarioformula DROP CONSTRAINT txscenarioformula_process_id_fkey;
       public       postgres    false    319    3187    259            �           2606    79790 4   txscenarioformula txscenarioformula_scenario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txscenarioformula
    ADD CONSTRAINT txscenarioformula_scenario_id_fkey FOREIGN KEY (scenario_id) REFERENCES public.mdscenario(scenario_id) ON UPDATE CASCADE ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.txscenarioformula DROP CONSTRAINT txscenarioformula_scenario_id_fkey;
       public       postgres    false    3202    267    319            �           2606    79795 )   txscenariohen txscenariohen_breed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txscenariohen
    ADD CONSTRAINT txscenariohen_breed_id_fkey FOREIGN KEY (breed_id) REFERENCES public.mdbreed(breed_id) ON UPDATE CASCADE ON DELETE CASCADE;
 S   ALTER TABLE ONLY public.txscenariohen DROP CONSTRAINT txscenariohen_breed_id_fkey;
       public       postgres    false    250    320    3167            �           2606    79800 ,   txscenariohen txscenariohen_scenario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txscenariohen
    ADD CONSTRAINT txscenariohen_scenario_id_fkey FOREIGN KEY (scenario_id) REFERENCES public.mdscenario(scenario_id) ON UPDATE CASCADE ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.txscenariohen DROP CONSTRAINT txscenariohen_scenario_id_fkey;
       public       postgres    false    320    267    3202            �           2606    79805 9   txscenarioparameter txscenarioparameter_parameter_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txscenarioparameter
    ADD CONSTRAINT txscenarioparameter_parameter_id_fkey FOREIGN KEY (parameter_id) REFERENCES public.mdparameter(parameter_id) ON UPDATE CASCADE ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.txscenarioparameter DROP CONSTRAINT txscenarioparameter_parameter_id_fkey;
       public       postgres    false    321    257    3181            �           2606    79810 7   txscenarioparameter txscenarioparameter_process_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txscenarioparameter
    ADD CONSTRAINT txscenarioparameter_process_id_fkey FOREIGN KEY (process_id) REFERENCES public.mdprocess(process_id) ON UPDATE CASCADE ON DELETE CASCADE;
 a   ALTER TABLE ONLY public.txscenarioparameter DROP CONSTRAINT txscenarioparameter_process_id_fkey;
       public       postgres    false    259    321    3187            �           2606    79815 8   txscenarioparameter txscenarioparameter_scenario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txscenarioparameter
    ADD CONSTRAINT txscenarioparameter_scenario_id_fkey FOREIGN KEY (scenario_id) REFERENCES public.mdscenario(scenario_id) ON UPDATE CASCADE ON DELETE CASCADE;
 b   ALTER TABLE ONLY public.txscenarioparameter DROP CONSTRAINT txscenarioparameter_scenario_id_fkey;
       public       postgres    false    3202    267    321            �           2606    79820 ?   txscenarioparameterday txscenarioparameterday_parameter_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txscenarioparameterday
    ADD CONSTRAINT txscenarioparameterday_parameter_id_fkey FOREIGN KEY (parameter_id) REFERENCES public.mdparameter(parameter_id);
 i   ALTER TABLE ONLY public.txscenarioparameterday DROP CONSTRAINT txscenarioparameterday_parameter_id_fkey;
       public       postgres    false    3181    322    257            �           2606    79825 >   txscenarioparameterday txscenarioparameterday_scenario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txscenarioparameterday
    ADD CONSTRAINT txscenarioparameterday_scenario_id_fkey FOREIGN KEY (scenario_id) REFERENCES public.mdscenario(scenario_id);
 h   ALTER TABLE ONLY public.txscenarioparameterday DROP CONSTRAINT txscenarioparameterday_scenario_id_fkey;
       public       postgres    false    267    322    3202            �           2606    79830 ;   txscenarioposturecurve txscenarioposturecurve_breed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txscenarioposturecurve
    ADD CONSTRAINT txscenarioposturecurve_breed_id_fkey FOREIGN KEY (breed_id) REFERENCES public.mdbreed(breed_id) ON UPDATE CASCADE ON DELETE CASCADE;
 e   ALTER TABLE ONLY public.txscenarioposturecurve DROP CONSTRAINT txscenarioposturecurve_breed_id_fkey;
       public       postgres    false    323    250    3167            �           2606    79835 G   txscenarioposturecurve txscenarioposturecurve_housingway_detail_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txscenarioposturecurve
    ADD CONSTRAINT txscenarioposturecurve_housingway_detail_id_fkey FOREIGN KEY (housingway_detail_id) REFERENCES public.txhousingway_detail(housingway_detail_id) ON UPDATE CASCADE ON DELETE CASCADE;
 q   ALTER TABLE ONLY public.txscenarioposturecurve DROP CONSTRAINT txscenarioposturecurve_housingway_detail_id_fkey;
       public       postgres    false    323    315    3334            �           2606    79840 >   txscenarioposturecurve txscenarioposturecurve_scenario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txscenarioposturecurve
    ADD CONSTRAINT txscenarioposturecurve_scenario_id_fkey FOREIGN KEY (scenario_id) REFERENCES public.mdscenario(scenario_id) ON UPDATE CASCADE ON DELETE CASCADE;
 h   ALTER TABLE ONLY public.txscenarioposturecurve DROP CONSTRAINT txscenarioposturecurve_scenario_id_fkey;
       public       postgres    false    323    3202    267            �           2606    79845 3   txscenarioprocess txscenarioprocess_process_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txscenarioprocess
    ADD CONSTRAINT txscenarioprocess_process_id_fkey FOREIGN KEY (process_id) REFERENCES public.mdprocess(process_id) ON UPDATE CASCADE ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public.txscenarioprocess DROP CONSTRAINT txscenarioprocess_process_id_fkey;
       public       postgres    false    324    259    3187            �           2606    79850 4   txscenarioprocess txscenarioprocess_scenario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txscenarioprocess
    ADD CONSTRAINT txscenarioprocess_scenario_id_fkey FOREIGN KEY (scenario_id) REFERENCES public.mdscenario(scenario_id) ON UPDATE CASCADE ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.txscenarioprocess DROP CONSTRAINT txscenarioprocess_scenario_id_fkey;
       public       postgres    false    324    3202    267                   x������ � �      "      x������ � �      $      x������ � �      &      x�32�4�4����� 8�      (      x�340�42�4��4�1~@����� 9�;      *      x������ � �      ,      x�3��4�4����� ��      .      x������ � �      0      x������ � �      1      x������ � �      Q   �   x�}��j�@�gݻ��i��kC��<@�8��tw���ƄL>}�%5�ċ��/D�3��0�JhV�!�[봨�մ7�<bh֎
��ZYj1�th�`4)+(/��S�������ˈ:���P�k;_ÀRHx`��/�#�Z�Ž���Qs�F�j#͇l��,c�X9��x,�����B�d-
�4���#?���#��f��k�Ɖ�      S   s   x�5��D!�C0[�>�\6�8v�(����x�yI��ߖt��J���@�f
dc��M�Qש�wz�`J���o������8�6�^�"�B�>����j�~��r`M      T      x�32���������� ��      U   %   x�32�,(�O)M.�W0�41�4�3�D\1z\\\ �	G      V   9   x�3�J-(�O)MN�<�9�ˈ�5/=�(%�˘�'�,1�$U�R�����D�=... �6>      W      x�3���K)-.)�LT0����� 9V�      Y      x�32�,��LILR)��@X����� X�      [   .   x�33�,N��LITHIUH�K�/JI��ppZZpB�b���� _5�      ]   �   x�}P1�0�/���4)��X�YBZP%���2�-���pJ�������tg�;X08��`Ph7��4�0 �mH� ;"��!<�xkS'�{6	��%
1caK��Ҳx]�=E�{��c�����V�E�����l3ļ�3��]��s�=K9��L�rx/d��/��2��d-l�oҵ�� Yv;���R_��Y�      _   F   x�3�t�K�/JI�4�2���K.MJL�<�9�7�J-(�O)M���r:^��P���Z��W����� =�s      a   U   x���� @�s;E'0E���*�Jd~����OښҪK10�ԩ�HzQ��! �𼲔n�Y���%���ӌ׆����      c   �   x���=��0�g�W�4��8M�����naa� �H\+����G�@|��y��_���r�ӱ������;��?�f�e`$W��Ȕ胶�D�ou�� $�ǟ�v{B���]��sG��g�lώ����V$��X� �������|�,�����@�,bm�@����E��j{��z��M۴Ih�5��YgɩR�;12HV�(�_��      e   D   x�3�0��420��54�50T02�2 !]���6�50R0�s�'��%e�+rq��qqq �v      g   �   x�}�M�@���N�	����wz7e��fl'��#��(���}}/msWHM��E�(���]X��a���U�9z1���3y��c���^���kj�㓝�U:���DG҆Uޏ��qmܓ��l���oҫC@>M|�R�t�p� x ��l#      i   N   x�3�4�t�K�/JI�2�4���K.MJL����2�4�J-(�O)M.�/J,�2�4�t.:�6Q�R�'�,1�$�+F��� ۏ�      k   �  x���ɒ�J�����mc&s��(@�����AR��o�˺Q�:��FddD.�����I�4m�eM=��3d���Ʊ2_B����O�n��d��h�z��@`�X�S{�đ �ߤ~ݟ�-�yC�P���� T �@��d���Ӳ���q�t'V�5��M�b!b;oH�������2�q��3�Hc��MaԘ�o{��3�D$y��c�"9�~ou�2��:Hϸ��&�<�����|�]O}��H�PFY�~����ސUx��!'xtV�>~X�&���"z=��dI�V���=s.��+u�|_���tf��s״�����k�K�!�{H`�!��@�O5���@ �bf,U^:f%�fyԀp����ͪ׉|=#����x~p�i��-U��>d~��~��W d+�H�cHt[��ŎQ;�e~�U�>��iAD�n�DZ��l��j��^\o�M|�J�Mmn
���>�H���
+( 0"'��|� �'���u�UN\];	9lnhu�[�e����騸lS�d��ES%�=,��|�X���Tx��"e��^@��os�xP������e�/����̊�ׁ�:�i�|I�k�B�X6ׁ�쳜z��S������;P|H�x�q�����>�Q�6�@ӫ4s����6ƍz��S7��K��J�	9�S�ܕhM���b��v��Z�~+!�C��On�^v      l   �   x�%Ͻ�0���2E&@>;�%TE!
�SK�F!4l� L�Ÿ������5`V��A�[��J�j8�>0�`�b����ab��ut��'��Vs�[�k&�Q5�h�r칸��p�����ʒB��%��^!��6���RrFq.�@��Sڒ�'�^��E�\�p]మ�c(�>���|�m�$�6?9      m      x������ � �      n   �   x�M�1�0Eg�=rҦ-#�PT!�X��*A!A�,܆�p1�xa�����,���@�՝&��8��(�����~F
I���}HT0�NFn�L��y�p0�/�DϚB�&ZA���z�o�F"Ғ�5BGO����[�W)K��q��Y����r�wd�APĬ�,���}�ӍJ����@�6�.�,�~v9?      o   I   x�32�4���J�M-.O�40��b��K3�`✆&&���H���E�P��V� D7�~�=... iI      p   3   x�3��H,�,��4245��I�+ITHIU(H,J	pZps��qqq &M�      r   �   x�U��j�0D��W�#;�����:E[֒i ��@9�!���X��˰;�f㍨`f4��4�)k���\�]/��9e	�|�+\�S��PsQ&(͜�@�U����#���1ߦ���nk�3�t/:�;�/<��3�#��*�W��bd�a���r��n�L�-8���^~��u�iW����> A`>O      t   �   x�}��� ��g����&ȭd�9����4A��<�����\A�q�χE����%d�d��/S����P��a׫�W>�m�)�T���PV�v�?7k���oU"*������i]�\W5݌b��M�P%��Pk{�]�P�hΉ�2����R� �dT�      v      x������ � �      w      x������ � �      y   a   x�M�1
�0@�99EO ��t<��m��J"��۱��'X�M����ʻ$1�0�'���.���5=x y8US(Gf*���ҽ_'$#9<�"���"_      {   v   x�uϻ�0���T�*{z 
���S� �ܽ�#���v��2ɲ����{x|{ۃ( ���d�� ���
3�
��r��b�BA2 
F�5�Dy�������An�ι?ݔ^V      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   O   x�32�LN�I�KI,��WHIU((*MMJ��IL�/JL�IEb���Ur:;����8���*� �����06�4����� ��b      �      x�|�[�캭D��Qx;���?0R� ����[��[j���B�������b�ӿ4��������?_1]i�Z����S��u�ϟ��{t��Ɂ���b���i�N�:�NY�=::�_��_�v��*u����C%1��K����y�d�����߭�áR�J��y�T�R�J��S�	�t�4��~��M�L>d:��d�/1��!��B����P�L=d�V��Kf}����D������\�lDp?"8���������Hc8��?芈�~Dq�Q�/��/B�#�#��X~鬗�HG$Gɱ��Y/�<�X�4�c��s���#�#������H�9�_�KA8�#�#�8��+!��ω����Z�xG<'�)��Y/�<�xN�;9��Y/�<�xN4�S���^
�y�h<��K���G�x���s��D�#���h<�����G��D�9�_:Y�H?:G<��ʭ3~�+#�����Ҟw�C�^�<�x�'�����_D�2�y��O*�N��ӯ�x�&�=��+��|�����J?̕�h!2dW�+��Y���C�l��+Nf��'d�!C�Dڧ'S� ��%�>�8�v��rȐ��q����$��C�l���+��u�ːi��iW���J�L�2츒���t�/�B�cv\Iz\q:��ޠs�1;�$=�8��;G �#��q%�q��_:"9�̎+I�+Ng����ev\Iz\q֡��XfǕ������`�G0��J���Yo��hfǕ���S��p�G8��J���Y�9�̎+�"�U��gv\Iz\q:����x�3;�$=�����xNG<��J���AWE<�#��q%�q��7�xN�kdǕ���S��xNG<��J��өWC<�#��q%�q��\�xfǕ���ӯ�xNG<��J��[��g�s2��� �����\��!C�0���Gf�Ds����l���KG0�pȐ ��x�Y�s�r����l���+G(�tȐ��x��WG$�|Ȑ��x�>�WG �rȐ ��x���ǹ2$��>8��E�fe�� ���锫#����x��x�t�����cv<�z<p:���|2;d=8��KG$�#��� ���-X�u�r9B����:b��̎Y�NgE���̎Y�N�\�\�hfǃ���S��p.G8��A���i�@<�#��� ����@<�#��� ���-��@<�#��� �����k ����x��x�t���\�xfǃ����~��z�3;d=8��{G<�#��� ����k"���k=�e��_:����z��q<P��kA�&��|�MQ���]�\�x>�['���?��z��Q�P��K�\�\M<���r����D8�y�$&�~ɬ�:���C&3��Kf���&��>��9�ގ%��VU���W�b��w9�����B�'��~[M���U�﫜���A5u��\=O-[g��髃�ܴ�z��OU��B�g�:B=�X���b��_�G艡i�Jwj՝Zϯ�[�鴙N;O�j�>�g+/d:���y�:�����#4 �!�dM����t�P6��v~Io��%�ο����O�W�����~m�oqљ�V�mخ������!D6l����Mqm�i����~�&0�i1\�_�]���߱	nZ�3�.��NW���a} �3-'�i����~5,��`K�������j|�Dh@�B�h�����n��C}�l�l~����>Y�~��F6����o�@g'?��� BB�"O6�4=��K���G����	���l~��Г�`������{)H�����A�W��<�&�� D�?B�D����:zS Y�Jϙh���R��ٲ*��Rmӻ���@���Y�)!�MW@|:/��n���B�m0s|p>z3��tg�J	�m�e| 1Q�?�=\Bx�Ȕ��pO�аc�rJ@ŇJ�Beє��5�лw�èN��p?�)ǧPΔ��HN��hJ��)��w�Ƨ�~*=��wɪ�]R�R����Ծ:O�j�]�o����{��
2�Ϊ���A�=U�܃=i��;M�o��zN���8��<mȡ�
�����s�>BBC�\��B@���҇N	��ݥ�_>�ub��}�ٻ勵��M]�}��ػ���|/�����d>B��M��?�s�By����zX:�)d��^Q�W��+z��H1B�e}E���"��:^Qy��+��=Tj�d⺜	Bȋ�[�0���1R���d:S?�NgBgX�H��omS�S�ǎT�J�>XV!�dO�o���PL(��T�BO�h�jº�� T��q3��թ5��y���M���=[���s>�o�|
E���РBC$'��&���WB��'K�ճX�H�g� �dO���!B�����7w�M+�*JU�ܣ=�#Gםnؾ7l�~3,����ҡC6l���[�:r�V�mخ��[�7rnV�mخ��[24r�V�mخ��[�0r5a=�ou�K�,7l}J�#�nu"y���q3�S詅�܊J����O�º�C�|���:��������[h^�d��U�"�zT�ɓM�W��9�B	a=�!D�l������ʈ�9�P"_E������'�Kи�4s�����/����wQ{�F��bg����:�����N�QR�B�P����΢4�ԭ=�},���Rz�	F��Pb����>y^J��hl�H}1^�p�`��9JV���b��>�;/����R��.�s�O���Cg���;Ǹ~>y�ނ %�ՏG)�[���"����
E���B���o��#|�C�e�R��l�'D�V)�l�Vzw�O�E	>�U�,�}�C�$�K�i�u7{�כr*�כ2H�t�n�Qw�c�v���ɝEhBhX��m���A��%�t���;��ېM��.�f��iqu�͌���+�� ���P�Ͷf�2k�eV�y�&PV;�#�����b�˲F ��^��k��r g����3�*�[ �VxC�Y��+��\t�C���eY���RD�g،�Agw���`Y�Kױ����"�e�><�P��@�J`Y����������sq
e��4�Π���˲O��A����e��^��k���������~�{����/'PV=P۰]7�[ B@Y�Bd�vݰn��ĵ5$:v��a���E\[���g	P��碃��bX}\���R�DT[�Cg￧�Z F(���á3m���j��/���+4-KPV<P���>KH�mhv�:1�Z �8�,�#���+4-!�,�{���6Vw�� d�f>��ҋ�~-�� 8������?W�8��7��l+�_+���ՊU�Ǉҕ_+���6�h���k��V��� ��rV��@|cnc����z�_���ic���Uz�_���j�4��l+�_+D	�p�,��� ��Z���kGc����z7�_���l�%��Շ�W�X�i����Uz��_!�>�,�l{z��à~}�t�jG�j{x���s��2��gg��5D�`	!ю&����}��k�B�M�������*H�c;X����u
��E�m�l�Π�k�n�B�M����~/XBȱ�ɱ=<{���"����b�(_���b_D�?��^Q�W�,!d�)F+�^Q�c�f�q�#�Ȭ��-XBȰS:`+��]fu�/$�),��Y��Y݂%����<�ȓ-��"�U�be֢eV�`	��j~'���BuWY��Kg�e�p�P�5~}.:@Y�[�H�O���@��^�P"��j�[��"�z�C����n�!����eY���K'!�g�:�<YS��,���H�y��X�-XBE�0���M��[ B�Y�Yl���a��K��e�lu؆��a݂%���r8�Ȇ��a����
��uúb?�*�
e�a�.��Kh fU׎��B��>���<����n���Y�Z!�Շru� ^- �{:��w�P��,�����b\}n��>��hV�q��\�-XB	q=�!D�l*Ww�z|KV�q��\�-!�Á�>��9�+�Z �Z��X!N��KM�%E+D    O�a��
Q�J�*�cq��b�b)�ͷ�j��8샱_����[�A�ة��;e�G��-eZ!v��}�l�(�d�f�عϜ����F��򱎑��O~~�J���[��7�;���-!�w?@��;��w�V��>ʡ�8tڛׯXJh�-3Z%�wڵ%D�<X��;o�)�|�ͷ�ey�>޾S���A�o���x�>v�)[����[w�/CgzNl�u@�v�����Nق%�ߺ[|�;o�)�|鼶�v�,Vf-���/X�3/�;�}��Z���1�˲s�
-�-�z��6��vp[�e֢eV��ֿ��N���{�n���xKv�y�,�^��^�o}{��S�G����%����	0���ԽTս�9�̲SU*u/Uu/y��6!`V:`s/�KY�㭿�`Yv�C��%����̲u/5u/y��� �ʉ��i�^�o}�fY�s�;�_ʲ����yZm�;���o	fYm�;���o}���6�Nwl��9��= ���vP�>.�Y_��t��Y���KY�㭿�j������C!���F;(W��=�[��~k������-!��x�,���,���X�e]��r��\�s�`Y�F;)W���-!�,k����O����@���V2N�d}9��V ȪȢ����%�@�1��:�z���<�[g�,㤕������%�V�!���6����ĶЗ㭿/��~�,z���c}1�Bl+md���_Tu�{6$���i#;?>l-�
�pȴ�q�Fv�|���N	�p�,j9��	ƻ2R�h촑A���e]��Jȵ�1�FFEP�T������62,�(u]ѾJȵc>`���5DO�L;�L�N4?�=2�h2m$&B]�'C�M��	�^h�=ǻ2��h�l�L%�(���RA�M��I�_�t)�����Ah�,��ή!���
��h�lL�B���#�*ȱ�ɱ1~�]��N*H��<`{E�R��_R���a�(�+��*ȱSLV������s�� �NqB���y��� ���X���2��xWA������2k�2��xW��6Ym�e֢eV��h���Zf-Zf��*��&룭ԾTw��xW��6�f1�R��e}1��˲.�J�KU[<ǻ*l���h+�/Um=�練�&k��ԾT���s��&��8`�/�KY��-D�u�6j_j��=ǻ*l�9d+��K�OrOm�6�F�zS��9�̊�b���1�U���E����a=ǻ*l���h;ݰ]7��xK0��h;ݰ]7��xW��6�f1�>���N�ĂeY��\}\����p�f������-!�,k������]- ���vP�>��{�w5�h���N���(��KQm]��r��\�c���F���vR�>��{�w54�k����O���-!���A�dCJ� ��&��E�A]K����|�1���Ӯ���]}��Xii�i��S
�H�����Ӯ���]��Řii�iߍ���]��Řii�i��S
�H�����Ӯ���]����ii�i��S
�N���EM�{�xKn���k�)yWG�o1�Z�xڵ񔂼��ӷO-m<��xJA����[�A�|��xO)�[:�Y�Y�����b���ͷ�6��O�n<�����)X!O��n<�o	u+��؍���]=�u���x:��S����}63�$g�0KY֧�/�����mc��Y��Y�!�,{�U�e�r���҈{��8ֱ2k�2��t2��h0�ٗ�/9L':�΃e1�RU���t�܊����R�RU���t�~f�;&*�/U�/9L'�����}�]?)��e��e1�R�e�`�?�h�F�KM�K��ɤj�,;��Q�RS���t"�e�?7j_jj_r�Nf^�eفn�~)����5�v�a�nXG�D,��h;ݰ'��n���6�N7l��(����Y������[$D�8X��C���t"���6�A��P��0�B�B�B����ӭ�g����h��C���t"��Ÿ���e�dH����N�էru��R�`}��r��\�a:ʲ>�I��T��0�B��A��k)\
�>$@j� Y�G+����]K.�Yk�e㤕u|x�v-��G�����VR>=s��\�#����K���P[��ȴqĶ��Fvz��d��e$���i#;>>���
�lȴ���Fv~|�-�
�pH����Fv�����Y�)���E=��z2�����kGc���<����UB����P/Q�Y���v4��ȰH���%��|�,ڡ�k�.l�ȴ�[y���]��My`YvlU���ZCta+B�YvnU��ZCtQ��C��ܪD����'��WA������t)�
�+H���Z�� ��5DG�r�h�V%:�(i�Q�%�;΃e�7�/C���H	v��bo(_J��B����*�C�=U�7�;��U����7� �����!Dj�Y��҉PV:P���KI֧�t�`'k�-��Z��� ���6Ym�U֢UV�D,��h����:H��`�M�`Y̽Tw灃tK.�����KU;��W��6Ym���҉���h+u/U�<p�n	�F����R�R��G��Cĵ��6�^j�����.�d]�����buG�l�9+��KM���tK6�lm��b��X�Q:ˊ�b;�_��܎�p�f��t�vݱ��-!�h���v�c��XG�l���h;ݱ]w��t"�U�Ű�����w�V�h�u���ǥ(+���6[��X}(Vw�N�����vP�>�;J��m�6�A��P��(���6��e1�>/EY��d.�l]��b��X�Q�%m�6�I���������[��vR�>�;J����[���J��C�D+�������?7t�c��}�]�N��+������v�;e�N� �����x��tK}��Xii�i�}��-!��c��}�]�N�%p,c��}�]�N�[J��-�MK�N���2H�����X�r��qxH����[�����v�;e�N���PK�N��t�f����8ji�i׾S��N����;x��x�N���p�,����;e�n	�ͷ�6���N��;e�n	�˷�.���N��;e�N�0:s7��w:v�)�tK=�u���w:޾SF��{���Y%IeY��>E���e&VI�A'g�*��t"�eVI�Agg�*��t�ވٙf`��ٙ���(��`xE�`Y̽T�miJ'l~C3�JR::s���!�Ͱ*��3�{�Q:�= f��+u/Uu/9J�Dp���9�C�8��:J':`Y�`Y̽�.EY�=���F�KM�K����,{n��%G�D,�ޮڨ{��{�Q:i�˪�b�_�����u�Ӻh;ݰ]7��t�X���v�a�nXG�d	���h;ݰ]7��t򭀰�6��}�AP���{2�h�u��ՇbuG�Damm��b��X�Q��)v�
1�>�;J�� ��`Y���'���x�,���$+�C���vR�>�;H'�)�,뢝�O���I�@�u�N�էbu�D������'�sl��Q�X�E+y���MK�-%$���h%���3���N	 �iE��ܦ%����q�Fvx|�������0�E'���=�%���Fv||�txft�L;7md�Ǉ�]��vȢ�ô-��-!��1�Zӥ�s�!`,c����<�"s\�*!Վ�PyК��9�JH��qԊ���-�҉PV>P��4���lȴ�Z��N-!:H���iG;��ǕZBt�N����Ԫ7Bh	�A�%�<;��e������o��,;ڡU��?J����$;ڙU��?JZBtY�!��ЪD�%-!�$|	!ŎvhU�o(_�}��
�dgVe���$˿!$�Ɍ�Gg�7� �B����*Agtr�~C�-!$�Ɍ�����
b�"��t"���Ŋ��R��)����_'�-��Z��� ��&�dM��YO�&�dM��Y�Y�!��z�,�]�殴�[��C����R�Rվ��U�M�C[�w�j߁�t"���&�J�KU��[B0�&k�mԻԮ��n��C��A��w�]
��{0Xh���    6�]jJ��[B��f�mԻԔ�;F�����C�(UoJ��[B���x�,�a��+�m�
m��N7l�����6[m�����[���C����a�!��r�,FՇ�	����B���vP�>��;H�����C;(UJ��!�,k�����ҭor�h�5�JՇRu�L�y(�Q�y)�
�'k	a=NtFgn�� �!���vR�>��;H����[B>����M��[B��-�D��S��%p'�!`,c��]�]�N�[J��-�FK�N�v�2H����[���v�v�:e�N� �����=,�C�%�.�R�E��i��-!t�㤥]�]�N�[J��-�KK�N�v�2H'J�X�LK�N�v�2HW���MK�N��:e�n	�˷7-�:��u� �(!����v�v�:e�n)�ͷC-�:��u� �RB�o�bW���A:��
��}�S��|k����utftO�ߺ{|�:��A�%�ߺ[|�:o�)ct���n���t�]���-����� Y��Z.Y�z�4�d�qU�i��������A�̸*�4���]du�N�09ӌ�!:9sY�\�Wd�UI�AI����Z:%3�J2:8s{����P�7��$C��3�Oj_��eFU�����K���U@Y�@Y̻��L����t�,�]j�]r�N���d�z���ۻ� ��me�d��w��w�A:�-��ʁ�雊8F': Y� Yl��KA�߰ �Zh;ݰ]7�ct�@k�
��u�:F'Bk��t�vݰ��ɭ�k���KAVpO���A��P���!���vP�>�;F'#zP��A��P���te�e1�>�H���*JȰC<H���R�܃!��B;)T�
���N�,록�O�����8���N
էBu��D��:�¥�C��R�`<��f���۱��ܣ�e\��f�ə۱��(c�(�ə۱���Bhmdg�c��}���#���6���C�c���e���8i#;=>J::3��C���6�����ttfrO�L;��Ȁ�C�Th|��iGKa���b}N�"�e���!������O.���iG㦍��<ϖUi~��iGc������l~VsJ Y� Y�=�R�ܳ!юvbՏ!���2�%�D;ڑU?�8~�{2���ά�q��]".B@Y�@Yl$辳�3�z$�ю��w����-!$�ю��W���҉B�ά�7����-!���ά������[:H�S8P{EY_��t"���Y%Btn�~E��-!d�Ɍ�vFg�W�(�B����*�t�����(�B�����X��\��>o�ʲ�B��E����-!xh���Ze-Zeu�n	�C�����*k�*��t"�U�żKu78J�t`�M�B[�w�jっt�g�C����R�R��G�DqmM��z��68J��`�M�Dۨw����F�t�M�`Y̻�.EY�=<��zh�.5��҉j��Dۨw�)Vw�n	�D����Q���;J��`���`Yl��KQ�۰ڜNvF�f��(���6[m���u�n	�D������u�:J'B`Y�`Y��K�,7l��6[��X}(Vw�n	�D���vP�>�;JW�m�&�A��P��(�!����V��OH�t���C;)V������l-��b��X�A:BX[��X}*Vw�n	����r����;H����[����A �b��!`,㡥]�]�N�[J��-�EK�N�u�Ew,nh�-�FK�N�v�2H����[����=+�C:�*ǢcAuX��tK	m��8ii�i׮SF��|���ҮӮ]��҉@V;@5�A�ի�˷3-�:���A�%�.�b̴��k�)�t�� 7vZ�uڵ�A���.�b����k�)�tK	]�5(�]���S��|k�V����N�!���!:73����=�u���u:v�)�tK-�u���u:ޮS�Df���;x��x�N�[:C!ہ�X��\J�>5)��d�aU�hб���� ��07���D����UV�Ds3Ͱ���UY�VY��2^��U%�EYJ�>o����T%����K҉j�fP�$tn�.9H'c1��̠*�s3�u�A:���J�b֥v�}~�]�d�)U� 𱙊��{����!D�fn뒃t���J�B̺�Ժ� ����j�S,�7q�Nt��ꁲ؆헒,�a'H�u�v�a�nX������v�a�nX�Dam-��nخ�A:҂��bT}\J��{28h�u�JՇRu�$�EX[��T��x�ɐak������	N˲�I��4A���(!�)XFէRuG�D(�Zh'��S���trK=P���NJէRuG����r�,F�%�П��.JȰC9@�,�K9��4/3�����V�>7s[����f�,㢕<��ܖ%G���el���gn˒�t���6>����7�>܇�-!����h#;=>lMAVp�D;'md��GI'gF�pȴ���Fv~|�������vߑ!��?���
!Վ� Y�p��p�ΐ��eܴ�A�GI'g~~%K	�v4~�Ȩȃ�*ͯr�h�������1�RB���h��,+�gC��ȪBh�a�%�L;ڙU?����tK�v�C�~\�5D��D0�0���w�{L�N�H���Y��l�+�=�[BH���Yůl��=�!��Z�ol��=�[BH��<`{Ey�"��R���^Q�W�0�B����*��3�+r�N� �b�B�e}E�-!��Ɍ��T���:gy� �Nf`�N����O�_t������2k�2��tK&�dM���Y��Y�[B0�&k�-��Z���(��eՃe1�Rݭ��-xh���V�^��z�(�J/�ښh+u/�?�~��M�E[�{�j끣t"���.����[�������ҁ�6Ym�\�a�%m�.�F�KM���t"�����6�^j���[B��fk��t���a�[:p��t�,�a��(�m�
m�&�N7l��(���6[m���u�n	�E������u�:J�����`Y��K�,7l��6[��X}(Vw�n	�E���vP�>�;J׮m�.�A��P��(�!���V��>Y�~5�h�5�N���(+���6[��X}*Vw�N���E;)V����[Bh�-�E;)V����[Bh�-� Y$��)��P�%��b\���k�)�t��e|���k�)�tK	m��ii�i׾SF��|�q�ҾӾ�N�!p,㤥}�]�N�[Jh�-�KK�N���2J����[�����v�;e�N�@��A���pO��]}�� �:�(O��|�q�ҾӮ}���-�� 7~Z�wڵ�Q:QB�C-�;��w�(�RB�o�b7���Q���6ߺ���}�c��2J'B`Y�[!O���;e�n	�˷�.���N��;e�n	�ɷf�Y�e�}��҉܆��w�ӱ�N�[B���yx��m1�m�	�c�uW!ό�Ό��+�*D��
1�bRۢ��,!T!j3a�2��f��jNQԺ�a�(�+��T!j/�yEY_Q��h�
QG�B�i�������*D&�Xf<����A�Qc�Qwb��x����y���,�g��ؙ�#4�B(B4�Yf<vf��$�d(B4�Yf<vf�,�_!!��,3of|�|�PKE�f9?ˌ�Ό�K�?BB�
��x\��I�+�*D+�r��ؙ�x��)�*D�&�Yf<��x�T��3�3��ό�Ό�K�O!T!Z��y�������N��B����ό�Όǋ�O!T!Z7q�2��f�����h�ٰ}o��7�D��lu؆��a�߰E�nge��x��x�X�#4 �!�a�n��7�D��a�,3of<^�|����l�����*�&��!D�lh���~5,!T!����2�3��b�SU�^LX��x���x��"D/��!O6w���~1��ս6��3�3��R�SE�޲��ؙ�x��!����S�S��b��k`SO�ع�x��G	��>�U�����x�,R�E���ώ�fǃ��[
�=�!��^��� pY�P�A���c�ǃ�eQBAb�d��T���H�$1�<����`ϗo�'�GjV�N���0    ��#k��y�y�,J(J�%��;=`����U������=b)�%F-V�^'��N��Y�P�-Z)z�x�[�C�[jB���婉�g�R�@ab�����ܙ�$�Y�P��21y�<w�<	e%T&ƮLL�+ϝ+O��o%���LL�,�7Y�3�
s&&ϖ�Ζ'�̢���ܥ��m�s�4'ɧo��n�|G��>�IjQBqb����G���5jN�P��3G+�^S���2�[iBiJ�5e}M.�%�'f�Vɟ���jN�T�Lȳ&��͚s�5'ɪE	.�YM�3��|ݚ�dշ��5+��_s�5'ɫ�0�=[%o��ۯ9If-J0"�%��m؜$�����D8sl�ױ9Ij-Bp"�Y��?A�mٜ$���Sz�%wМ۳9Iv}+M(����s�6'I�E�镞!�g����6'I�E�镞!�C�<l����"�4Kϐ����}��$طR�r�J�=�qs�[��v�J�J�=�ss�[��~��	pfݜ�us���V��ޮ��%٢��L�ЊUb����uiv�+u�=Jd�vݽ.Ͼ���8�o�׾9I�-B�=���͹���$ڢ��3J��^�$��(eD��V�P�vpN�k�JO��`"�Y8�k�$���qzƘ!�p�pN�k���9=c
Vȗd�6qN�m�JJ�*����.�I�mQzz�g��P"_M��s��[�����8�=dn�$	��4�4�=;�}x��H=��3�j���9?̝���@=cK�;=�}|�)�|�<�36r����9I�}+!�{�J�`�͜�d�"�#R���>��[�}+�N���9I�}K!ҧF:�s���$����z�P%���m�$����z���oʟ��$㾥�yLj�ћ��%kI�ī#3�&3�����,!����垽Ah� ݂%�����1gh���E����^Q�W��k %��B�e}En�BF^G�B�J���K	ycU�r�_���<P�Җk��|� o�M��7���k�B2�l��Co��_D(��	8���s�B*�l��co�P���ϗ2�f�z��[��D(��	8���<�,!��0�,�vt�Kix�
����::��KIx����c�؎N�@���Z;�ȓ5��nA�&r�ֳbT�)�w�R�6L\;�v�+��\t��@al��k��|� �n�X�a�nX�`	aX���z{,�Z B`vضco�?,!���@a�ʏ���|�`X���z�Φ�n��$�ngm;���D,��v���,!��ń��o���T�}�t0	��`u��J����"O6�ʻK��z+V�Q��T�-�/f��~`0��_K'[p+!��A�،��������Q��??5u�"��`}&+�]�C]�l�Ha&X��b�(l>�W�R��`t(Ȟ
��L�#f�Dǂ�\�B��[)R��t2�_qK��n��h��W���#k�So���N�@�`^�`�.r�<�+n)P�2)����~�H��<j�R�>򴷲_!Rp0�����<�+��
���0�v�0O��k�d��B�t�S���O�@�`a&��Ϲ-�l�(��<L�M=�s{<ق[	q>�i�|M��s��y�ܛ�������,���޴�u�fV��V	��*yT?w7+[ J�0�t�0���~M�s��y���ה�5�����P"�)�krn%��Ҭ+�f}Mn�(�}xVᬥu�-��sB��l�� l���k�
��lт�[ x�@<{�J� [� ��:�爇)�-Ⱥ�| ̟�����>!��Y��?B�����R'�*�3���D���y,$��j/�[p+��Ń��S�|{[��"T�R�B�=ws+[ J ,�C�<\SH��J a�[%�Bz�@�:HX1��[����>�V�vo�Ư�o!p�:�۽]w�[ J �U��vo���H#O@��t(���u����� a�я����B|�f���\�QJ�%�pC�[ J� ���PF��J�� a���+��\�
@X,�a���"T��R�B��Oe�n����Ub�~*�wD���j������Q�`�`����k�(@�2�=:�}v�+n)P�ڬ=;�}x�+Dj���|H��sاg�BN�A�5�i��ܽ�l��� ��*�s��ue+D*"�G9����}2�+D*!�g�R� �{]ي[
�>�e��s�����4�����{]�Qz�g��*�^ש��l�H�����܏����$-Y|����Ņ����&���Wiy5i��=�
u]оBH�k;Xs��KQطtd�M��^Q�W�1���
�W����}E	y�:V����<�����Q�,��'l� �΃��2m�2�ǀ�@6�v6��'+Z���H�[�V��i��i=\B�a�a�J[�y�c�k o�`a�<U/Ea_
x$�-'���SU�S^yx�&^7zB�<�1��&^7{���`|���7k�u�gn�v)
�R�k 	o���F�@gcy��X�5��3����'����5��3�X�c�k"o�al���a=\:��q�0�a�nX����Y��=�
u]�ݰ.�n]�n������p�v��u�g�Wu�w�N�x{<`���R�-b\&�nM�n�t6���p�v��u�g ����K0̺x��Wh��ф��[�t;2�0LY�7\�	o�&^7|:��{��@¬���y��.pOo�.^7|B��{(p�����l4]��6�>��F�R�R
�倢��6N^?}�U�f)�!���׏�ُ�u��x���y� �W*��= -)��p`0:UD�R�
�3�^?��Uz�
�3�^?����0����!4[���)9{G>0�=��{�P�(X9(�=�\�́�s��C�����^
��{� �Wj�=�f2p?�&��m�/6�H7���E!�`�R�!�M��gѼ���ܳE�{�ɾ�0(�B������&���h^����T��w̃�yX/�3�`���L`Ro��:w/+������L�M�Y�nf�P�8X�Vɓ���Y)%p�tp0�����&�zg�V������S@As�`%J�5e}M��@X�V��c��&O��Uᬥu�-�
�kc��r)��z"f-���u�VJ�!����u����J)��9�����ֹ�Z)6� c��z)s��%����^��:wc+����	B�J�3U���S@As�`���Z[�nm�P�������g�mD�!�@>`0k�eͭs7�R
(h�zzYw��ݭ��@�����ֹ�[)�V�vo����ݛ8X=8۽�R�wo��`���:\��p�P�����������J)�@>����׹{\)6� ��^��:�&W
E�m���u�.WJ�!�������k?�?,��ZzY���}����@8@C�s#z�Ń�1D?�{
(l�ZzY��ܭ�
���^��:w�+ŀ������J1�P>P0�饽�s��R(h�xzi���^W�E
̸zi���^W���[/�u���J9��9Dy?(;�������zi���^W���!΍����N�u�P��X{i���^W���!ҍ�������J1�(uP�f���Q�(�� ��C�mB@�`>��r�7��'�A�)_}�����f7%�A�I� ��حD'7%�A��h	!)�v�V�#��,��5��W;t+�W����H� ���-IH�����\r����W3rK�H13�+r��BF^��X���2�ˌD��L�­�^'*���ZB�Ǜ���[������ɐ�73j�&z�]�u��B6��A�X������� ���1�T���}����T��[�4��l��K��2�fm��ڧ�ڧ\N$B�a��[�}��}ʥDKyx�6�F�S�Rܓ!o��ۨ}�)�w	��Yo�����~�����6��ry�-!$�m0�mؾ7�K��R�6�6l��!BX[o���u������l�؆��a].�������;(��O�':`a�`a�ˏKQXpo�.�A��P.��%o�6    �A��P.�� �6�A��P.ﲠ%o/c\~^�{2�x�u�N��ry�-!�x���N��ry��8���N��ry��`���6>�שּJ������JI����oM|���Y���Bl/��6qK����=� ;o7v^o�+��R.)z�1�����R�c��� A80o/�`��<��xz�Չ��o�r ���w[��;���M]$R0�c���'n)��N�K
,�ӥ�����x{�����6>�H�`�����O�R:��·H�1��_�m|t�O�`�v���C1�`m�O �
��F;>/a�=\��wعZ�E�R�_Q��w��Z���ٲ.�ﰃ��5�P��G���{�	c�ҥ ,����wڹZ��u�fV��D	��ik�n�y��?2�¡D��R��|�HX:H{M�RF^����b�s7�2�'J0�N3X�v��+?ʿ&�O3X�������0�(�x����l�Y��D�ó$�Ud�Vd�R��i=���u�V��n%D�5���ֹ�Z�%�Ok�e}���ke�O��C<���5�η��a�[�m-���u��V��D	�B(V�����28�'J�����������0߭�LS�R��1U�0k�eݭsw�2�'J$�zzY{�����R
��^��:w+�|�PX9P۽}�^��Dh��YK/�p��Õq>Q� a���Z\�nqe��V
��^��:w�+�|����˚\�nre�O�""|(�Q�q)	��rD����ٟ��;�'J	nM���u�>W��D	��hM���u�FW��D	���(�ܔ�q�[$�zzY��ܭ���L�њzY��ܽ���L�њzY���ͮ���J a� a�ҿͮ��L�јzi���ͮ��\�Ѹzi���fW��n)p0��ͮS�]�){�1��fשͮ��	���~p0:�4^���ɰ�����6�Nmve��B�o/mv�W<�?�{�1��fשͮ��ܽɸ{i���ͮ���JJ��Oj|��!������{i���fW��D
-����b�?o�g��;��\�y����ޔ�
�Rw��=�7V�Ծ:Hʫ���錫|)��7�5��W3uK2:�s�!��D0�ݒ����o�a�%�����["D��Y��-!d�u0��i˥,���t��W3nK�:�3*���!P3lK����]�u�o	!of֖$#t���:̷����dº�2m5��ϟ'�Kc����)���r�f�l����S��-!���y+�OU�O9�'B�a��[����q�%�D�Ճ�1�T���d�Û��6�j
��+�Dެ��Q�TS0�8�!����o
��[BH5�v�c��.��؉�Yo�;��u�O��������c�[B0��P�۱]w��|KF����0sMݎ����x�0�ǥ0,����[�`~(�w�o	��ۭ�wP0?�;η�`����;(�
��!аr�0��0,�'���[�`~*�w�o	��ۭ�wR0�@�d0�vk��O��I�N�n���u�/����,|��b�����Q�TP�T�yn)Ķq�����R������y%��@�[�q>���w�����_T���|�K���M����(���F�z�M�<�x��c��0��93��?���{#sL=R:�ӝ��0X>05>&sM�����x{#�u4��|"{�0���g��+滥@�7�� Qǃx�'R���v�0��y��}0�4�z?Hm��R��|��ﰓ�~\t��F��n%����-5:�'J0�;Z+\�&3��}ME�{���耦t)	����v��f����q>Q��w��Z��u�vV��D	�����X?�������J@a�@a�5�KIyMp�N;Z�u�����8�(��;�h-��:wK+�|����iFkўֹ{Z绕����XE�슬�|"��i]���u�V��$F�^��:w[+�|�"��zY_��}������������6�2�'Bh"��@a�7U/%a� ������Z[�nme�O�0Q+X[/�m����q>Q�D�`m���u��V��D����1�T����C�	��^��:w{+�|�Ԁ¬�������Q��:P����׹\绕��ʁ�����8�{� 	��^��:w�+�|�4A¬��������8߭f}���u�&W���p>Dx?P������D("��A�������-'ķu��>׹�\滕����]�nte�O�`�!Jt����l���z'���R�
2K ̺zY��ܽ��l���zY���ͮ�l���zY���ݮ��J�`��`�ҿݮ�l������><{�'R0�Fc�ݮS�]�)X{����nשݮ���R�`��K�]�v�2�W��!̍��v�����8�(�����v�N�ve��B�{/�v����8�H�����v�N�ve�O�`�M��K�]��ve��V�P:�R���O�`�M��K�]�v�2�'R�1�v���>i����Ց�W;y��u�W�{�'B�a��a�i��X���WYymcC��0���@R^��-�H������[B�ɫ��%		��ߐ�|"ǣ�%w��jf�:��|Ky5#�$�4La����A>�̼-�F���]�u�O�@̴-�!��O��ܓ!o�X��E봎�-!d�-4��i�q<~~���TUT��-!���L�!:�s��[BHśu�Vj��j�r�o	!o�a�@ծ��Ot ��Ø��]�{0����x5P5���Yx�F�FTM���|"���F�F�|S0�0�Bެ����/ean�N����x;ݰ]7��|"���F�N7���v��ۭ����u�:̷�`���a̏K��m�	o�c`~(�w�O� ì�wP0?�;η������;(�
��[Bp�v�����hX9h��Rܓ��ۭ�wR0?�;η������;)��
��!�0���O��I�������E�����(xy���J�����v���["����+R| �K9�wK!���W�>tۥ�)XzG� ��.��+U��b��wOod~�[I1�;�-%`0���0�p> �1��;��72���xY�����;��72��-������8X>8u>�K1؇n�ܽø{#u6��|"��ţ�G��9�H��;��7�� Q�x�wK���ў�K��. ��p�w]h��%���õ~\u��F���Jt;]��MZjt��(��;�t-~�}�~b>��w����	M�2{��n!�;[�_f����0�(��;�p-��:w7+�|���{������/��}CEX{g:@{K�RF���ӌ֢�s7�2�'J0�N3Z�v�����(�(�{x��Z��u�VF�n%��z�0V�-�r0�g8�xZS/kj����Q�*l�m]���u�VF�n%�����ֹ�Z�%��q�0V�������AL�!�� a�6U���a>QB�^��:wg+�|�@�����ֹ[[�%L�
���z[��me�O�*HX:H�M�KA�;C/!�0��eݭsw�2�'J$��zY{�����R	��^��:w+�|�HX9H۾�R�o a���:\��pe�O�&H����׹[\��$P����׹{\滕��@a�3��o����˺\����0�%ķu��6׹�\滕�����\��se�O�`덡X%�Bz��D	��� ��������^��:w�+�|�[o��^��:�y�(�p��Fk�eͮs7�2�'J���|`0��fW��n%P�rP0zt���1�H�����6�Nmve�O�����K�]�6�2�wK���ѫ������jX{����f׹�]�%X{����fשͮ���R�sc�ͮS�]�)�{�q��fשͮ�����{i���ͮ�����{i���fWF�n) 5_��:�x���K�Z����/�OZ�t�o@��W;y�_u�7�{ʷ����z�0�3{3,�A�逅����!WY˴�k '�f����9̷���W3vK2:�s�"��D�G3tK0)ff-    �:̷���W3rK
Ô�}�H-����ےt�N��eZ��D��Lے$����eZ�����f�m���˴�-!d�-0�Ui�q<~�>-$���ْT�N���)��D0�L�!:�s���[B�ś5�V꟪�r�o	!o��ۨ�]�d�߅� ���1�T����`�Û��6�j���[?ix�F�F�SM���|"���F�F�|S.�0�B���؆헲0�a'r�f}��nخ�a�%��Y#o���u�O�@�����u�:̷�`����;ȉR�>�۰>ޞ��a\~(�w�O��¬�wP.?��;̷�`����;(����[B0��r�0������XX9X���R܃��ۭ�wR.?��;ʷ������;)�����k�����wR0?�;�w+!�����_��`��m���Xy%����m�T��E
n�nܼ�*�	���}OGK
�m��"�'�n���|"G���٥x�J��J߁�>��q����W�0���S��N u�`����c��B)*��ޑF��i;�%x{G>0u>�K)��r+��so�A���O������l���A<�)8|�q�� ���.u��@��A�h�祏��|r3,�����qم��%X|�����-5:�w+!��p�W]h��a>Q��w�����:{��D��igk����m��ܽӎ���'-5:�w+���Z��u�fV��D	�����X7�|�Y�!X{����Y����0�-f&k�~ֹ�Y�%{���EZ�nhe�O��<<�d-��:wG+�|�HX=H+ȖKA��3�><���������0�LN�o��eM��*Ǐr��A<���u�����0߭� 	c�j<��Ą�iM���u�V��D	��5���ֹ[滕 
���u�����0�(a�V��^��:��VF�D����1�T����3���^��:ws+�|�� ¬��u�����(�(u�0k�e��s��2�'J � ���~)�7p0��e�s7�2�'J ̚zY�������nM���u�WF�n%x?H����6��7Gķ���&׹�\��� ��^��:w�+�|�"ܺzY���m��\�ѺzY���}��\�1$�A�y)s��a��dot�����J a���Z]�nue�O������z]��ue�O�����K{]��ue��V3�^��:�וa>���7_/�u����0�H�������N�ue��k�W�K��������7ݗx�'J��Fc����S{]���87�^��:�וa�[
�nܽ��uj�+�|"{o
���!q�O�`�M��K{]���2�wKa��1��^ש���T}�C
W�=�KI1]�t�|zj>���N
m�-b�@�i	����E]�a<B�K�����ӡ� �5(}��Q���?��[�x���[��F��t�!HoC�|Z>���>�[��/ D�ɧ�{���ԓrA~�1����bp��P�V����]�}Iid��:-��Tu�����1)M�	�N���:+����V�U!o�h~�����/)��Q(}�����5�}I9'�3ؿķRʿH3��r<�Υ��k��@��픓y:����Ԝ~.B?�_�ó��o��-��&��Ur�����Q����vX`����(�_D	�r5����) 5���f�:��K�o�;5�n���2�v(}O�����@��پ�g��R�[io_�@�0y �$5O�9��B��~��{Rs��a�@��
�����_D	CJ�Vɥ�RJ��JJ�P������@�0s�D�$5_���{��"�[�KJV��ޮ��-%�*^ҴJl��?�JO��܎�d�vݽn�(�V�RL���<���s¥�+�R�[(�\p+(�C�<�п*n�(�J�ҊUr����ʯ��p�x��*���yM�ׂ[	�M���<���s�}�eT+�R�[h�v�Q�u�e&��R�[)�_D	���9%�݄Ԝ.����A#������'5�D	և�U����~�H��PS8��1<�s�_qKHu+E��a��
����f�r�����t�(��PK<�����(��JJ�*���Q���
����j�\j��˿V��%+�R�G*�\!�DX j�Hg�y
ojN�J�t�k���Qz7�_!RH6�I6Xj�H�;ٯ)d�d̆
��k�-�P��F�6T����}.BH7�N7"���B��-%��m��B�t���҄ҰJ>����.%T0�[����wB~mW����~�v�"R�-4~}.B�_�]��Ԇ�������m�/"���J��-%�/ڮ_�̆�"l��sB����ų����ߒ���V����o�-�������Rַ��m�C���kC�n%��0�Ml�)J?!�ڬV�u�B1�Z J0?��%�p�����C�*�^�[����JO��h��PS��~.B�۬�l��1:�6T�@�p�Y��Pr���P�[i@�[%����.%�m�K�J�_*] J�۬W�Ć�"l���[hBhX!����.%\l�[�J�_*] DxO��;F�׆JܥwDx7Nl�)J?���Y!�}�n_��~jD�̇پ]��[ J��!X%�}�n_��VP2Nl�)J?!4`�X!�p��~.Bh�)Z!���b���V�PV���g˿�:0F�VɗV�kC�D	�� '6�aC���0F�V�g�kC�n�'�GmV�g�5�X J��-�Wl�t��E���_�{����/���[%zt���W�z0�(�;;�}x�+D
M�tx$��]��B&��� ���^��s�H�� e͢<�Kw�s�_�����^@��v��-���lJ�J�1�V��@��]���J�^��k�(�� 5�#���Ү��o!�m�
1��r�H���O���_M=�� �i �����zl'J�s���&ry}
���b;�_��bє5����@Lm�:_���4ފ�Z�����p|���N���D	��lJk��y+�M�����p���=����^QV˦��=�����me�l�j���>��?[CEY-���1�Yn:j'J��eSU��[��2��v"��Zn�ce�ehG��������X���u��V���ce誻�Q;QBE-[|�̝�R�p�Q;B=-[z�̝�p�a�[	>���fS�鰝(��VB�Jn6��ۉ�i%�w�[�_�������!Dvo߻�Q;B5������u�:j'J(��|�?�{��^G�D	�����vo���ݭ�g�����V����v"�rZ��@��	��G�Q;QB=��v ���Q��PP+��n=�8jW��!��	p���������ގzZ�
1�9���ݭ� �cps*�t�N�PP+��nN���ډ
j5,hkB�7�Q;QBA��y(1j��O�n%P�x�?_U}�M
 �}�%�����e�� �.2訩�) �@_aGQ�f t�8�%��� i��E �󡪶/E��Q	�?�Z���E ��0)��v"��ھ(��Q;��ԮkC��A��|���Y��܎0k?  �}�i�d��n)��8�3�>R�V��N��mT�mx��~U� �KIpI�l��F.]��V����!�h��pްM��r�$�f�k�ʕ� ��f�k�ƕGI��p%�f�k���U�s�p���|�?V�IJ7�%T�Z9  ��$���ۉ�k���ͤt�q�[	Жל�3=D����5���lu͹=!�_�wB�P]k���ݞ��"@��p_�l�@��5e}M܉�k�׼�3�m��;H�Ƅ�oL�Ae�M��n!��< ����EJ ��g�2a�+ �(L� ����iߙ %J �@�nM���p9R������->� �
�Uюۉʏ���4J �rgMܛ0��	P�0)�i\�0��	�i����� ���90�<\S�鸝(����N��Q	�?H��N L�p�M������	�id���{��p6�� Dvo߻�a���~���ޮ��a�{	| ��    ޮ��a;YWӾ6J &�n�&\�0��	�i��Ʀ���B�#���n��������	P� 0*t�&ܙ0��	�r� &%���+�24�<�4t��VnL�������n:l'+���%��Q� ��L�u	s_� �Fছ��J �� ��nN����m�	�����9Ẅ��K I� �=;{lwK!��A ��9�ó�v"���0R� &%�����{]�[����}ߤg�B ���<q��� �/��� ���?K}�F����ʁ�ho��="%@2[�g�OةO`�P  �����'��'0D(�FI[�g�OxS���p;�������>��'0D(J�v�J�K�іKۥQ'�4�Ub���h˅�(��{� `�OxS�@�-���
�ה�59(J8��x��������|���6�H���ČY�ޏ'��&[�'S_S��W
�D�l�d��-�7���	n��{2��Vڛ���D	D�����Gi��P�϶bO&���ɯ܉
������[h���O�@�l���~}��._���}�{2��Vڛ���܁�ڊ=�����Rpw!�m�����Ԑ�=��C|�z=��zm"��x��@�L���}�-��P�/�^�&��J����@�L����M#`)�!T닩ֳ���޽ޏ'�D����[i�^��%)S�gS`����m��S�gc`S�X
�D��b*�l�-��x?�(�HՓˑ�ʓ�O����ӳI�����ޏ'�n��dl
K���J_lG�{���"���Ad��/���?J��6�i���6�z;�p;�(�D��>JS�年}F��^�L�x�� �b�J��-l�L�x�� �R�R����q�ӞHF�qH�}�L����Fe�"�Q��(?���L_K�JFE�Q�ۉ����C�=_T�y"U���0**��<�v�QM#�M�M�K��0
��k�w��훱�"�$l,�MUW��B5�^�Hm����!�M����@j���^ϸr����D9B��z���^ð�(�\�l��Q帧�0l'J(�7[�gP9��5��J�Q�^Ϧ��wz�v"�r}��z6�&��k�!T뛭֓i��k��?���V�I[��lY����r}��z2�[��K��7[�'�`o!�����b}��z2��vM��4Q�o�XO��>ϖu�{K��f��l�L�#g������z6r&�#g���޶Z�F��=r�Q;QB���j=9�r�(�p��w[�g#g�9èݭe��l�L|G�0j'B��w[�g#g�9è�(�Z�m�����{��v�p��ֳ�3q��a�N�P��\�F��w��v"�r}��z6r&�#g�!T뻭ֳ�3q��a��V���z6r&�3����wS��#g�9è�=�n��t�L|G�0j�L��P�Bl�vݽލ' �M����������7T�G��ٽ]w�w�pT0�F��w��v"�?#V+�`�P���x���)J���do�[`��H�*1�<&{;�(�G�f��Wv�W������3��p6r&�#g�!��5X!敝����x�U�Ub^٩�\ގ�>����ʡD���vry;�`;Dx��#g�9C�x����*ѣs�gg��l���bg��ď'�A>�����O��ZH�v��QNG��=r&�[!E������ P�m~�iY  �H:M7�����R��BF��K٧Z"B��������U]��	~2	~ �P�J�h��߭�n��@n�|�t�hr�� �O&��̆���ɖ�=\Ev�Lv�/s��&��J`���'��ɽW�����q�����ރ�[	��q I��5�� Q���<ف}�b�k�.[!�-���Kg���t�V1�C�l�,Q��ܕ������������O�A����a6uCI���.o!wo�J�_(��>��>\�&J�F��`���Q����5Q�WJ�_)��>��[����R��J���^/�6ݥ��(�~�TZc����ek"�/�l�P*��Wݽ.]���6�7J�5���ץk��f?�&��Wݽ.]%��m(hܶ�u�5B�0�m2p���ҥk�|l��ۦ���k��ba	�d�)�u��(�XX�	�Nwo߻ץk"�Za��
���u��t�V�I�d����u��(�XX�h�Nwo����5QB������]t��p�ڭ�igJn�����5B������ۡU\�&J��v�MFn��[���J��퀛��%�._�I(�n"|����6}��oG���d���Jn]�&J��q�MFn��[���J��y�MFn��[���ʅ5h�K�D��b؍._%��	��0ʰ�Q����V�ݤ�(��t	�H�`X�Lpɐ8���(]�&R��|�M:�2�0J���R`>f,x�����Y��5QBɰ��nR|�3K<�)���,9݆��P6��������$o)�M3<�Ÿ�=��.����7-F�Z�PR��lT�lD~�@L{'{(yK!���7�}o>M��H!ݨ�v���|�"IB��l����ͧ��� ��6٨Ũ�c�$E	����F-F-;$)J(6[:d�t��4C����a��C�O�7�fH����d姤��1IQB���!k�����1IQB���!k�����1�[	tӖ3}My�&�$E��f+�������AIiiD尙�!��@%o%Dx?�&{MY_������a3�C:P'�u�!��)ҁ:��Ø��h��7��(�uL�V�	�d�����1IQ� �}-����ۢ��1IQ� �}1;�#5۩���q1���R����I�l�fv�BJ7�@����s_�%J7��M����s_�TH�v�p����羝���M5��c4�g��zv(Q�o�ct���s_�RH�fR���	׳�}=;P!w۩���p;�ܷ�C����k�v���&��d����uL�VB��9���u�:&)J`�of���u�:&)J`4�@p6P'�u����~�7��n�%�!�������Q��`�v 8��@�$E	��a'���:��Ð�-�i���:q�aLR���v 8��@�$E	��a'���:q�aL�V�4#��@���0&)_�0D3�ԉ{�c��C�ݤg�ϞI�R��q�Mzx��왤H���>s�#9����#��)��^�q�U�~HL��9僐��å��m�N��ޭ��u|�l[�pzN�r�w`���%۷h��\����p��(�����:�ҞA��̌��9ٻu�9$�A�ݭ܏{�I_�S'<vKǿ���/��[	�&�b��@��[���؅ὰ �'B���ܲ�A ���ܵ�~�b� ��JG]9vˎ`���ˇ�������򡚮kcE����	GloA�uqr�I��(��}�?QB<^��X���j�8ҷ�}R����<m�<m�G	�̿P��6���'Jx�T�Fi4O�,O�(�R���<m�4m�G��_�������������I��q��@��v/��_(���u{x�;J d~XW��q�ޖ������uڱq|���I��x�ú��8�m�(!�~Xנ��U����t-d���@�D	�x��'}z��'���$/Ğ�iOo�G	|�7������'J�Ǜo+0��;���O���v2����..>��xkc�~}��xmǛ�*�(�_����(!o�����~��O�� o�����~���(a�ϋ�1v�?vq5<��x���7e���}���x�����m�>�����
o�� �D	�xO��%!列��'J��{����KV����G
p�u()^���q���B��ZH���Q�ڸ@�D
1ywM
��1z��Qc�"���׋��n%ڮ$ҿ�8���J�_I�"����6�G�kX�H!.�QA�Ѱ�:�D�w�@��E�h�U�,F�'i@�݅�{��#�)�����,�ִ$ҿ#���N?R�t5�?�B�����ߏ]����!��d��+���xq�6�������4�G	��O    �b�t�p��?QB����u�p:k8��(�[���X8��p�ѿ#>�u�p:k8��(�Y��Ӻ
!������n�O�*��i�+j�[�� c��~���ۄf�O�b�4���`�O|q	�O�b����W�۴ѭ`�i]�ަj�)п���.B���c���
����<�Y=����L�O�y`�z`�;J ��0��f��2�'J0O�P�y`��e�O��9��d�B����s��x�v������(�s<}?a���e�O��9���0��f��2�'J��v2ְq|���9z�s<};a���e�O�`:���0��f��2�'L���fجXF��6��{z�>����d9��o'�<�Y=������fجX���v�oP�<�Y=���L��w(`جX��D	��/B���� K��`:^�A��f��2�w�@�|����e�O�1L��w(`جX��D	���[0l~=��! 2ߡ�y`�z`�%����P�<�Y=���L�˷(`جX����ظ������?
��r=
�6���?Q��x������H�qפ�z`�y`�;Ro��&�����o~~�?1���\|������	}>���!�z2�z�����D	���}���cu������w��є���;J�Q��W�y��O�p�.��Wl�#JE���C���'�Y��>�/�Iv$�˺�$�.���M��e/�bd,QP?����I����d��d�l;J�H�Bd�$\-`� =���|]�����~J:� �&J����bd,�>���~�.Ηذq�W�|>�~쪯�a�
��+xԠ���+lظ���
����kW}�W�t\��`%��U_b���2D��-B����Bd�"u�H�% �q!2F��I�_��Ҭ?vu^E����&J����bd,=\Y
7�SWׅ�Xٰ߂ ێ6���a�
��!�/6-U��jȆ��&J��i��+H︂D`�A�"cO��!�O�@yMs�5t\A�q��6QBuMs�5t\A�q����D�k踂��
�m����.F�(�r)ŋCiM�"ciُJ�m��ʚ�/D�(�2�`�Q"s�5t\A�q���*���q�W�l!��4_����w\A"��a���1k�6kB`m�����K�ٸ���
am�����k�ٸ���
amG	� ]����1>�u%�xz���G��Q@m"O/��(?
�M�`����C�$W�Pۑ sN�X�#�]�X��>����ɓc�D(e�c������;+O��_)�c�d8a���̓c�DHd�˄��;;Of�J�˂��ϋ�Q?f����G	;}^x�2� I�H!��.�`��qy�V� �X��X��������m�}!2FG�ґ������au�YG�3�&Jp�_a��@�'__/��QҥD*	��(����\��(G�����3|��'yX���xqp�v��+8JF�r�8Xz���a�$kk� ��<=�_��ݦ� �M��q2v��ݦ�ڤv��1.B�nS��X�Q��6�ަj�)�6Q��g�6#��D	���kl�����`��a��4t�4t`m�K�L�+�4t�4t`m�K��%6lF��%�|12F���H�����Bd�"u�H���<�^��Q�n)�6Q��g�6��6I��n��kl���S�B���噾Ć��!#d���䙾��8��Y<Goy����#0ε9D�}q%��3]��qF���>G��\"cO��!O��>B!cOﴧ7��s����"d�����&Jp�,��a#0���`�M�`�Y�Bd"-�R�8�xV��H� R`m���.6#�����B,��a#0���`��(���1k���Ņ�jI�˻x�����`�M� !V� �&l�&�v� ȼ�����:��6Q�X���F`d��P�T��B�y2ztN�c��\2\<k^|�����#j;R����CG`d��P�H�ȳ������6�u�)8y�s��YG`��G�ه�	��������7�����������!�!���U� K���+>��#07b�,QB¯��ߏ�܈M��D		��~|&���A����>>�C'r�K�~��+�v��ˌ���i��.N�(i��xX J���uQ;�������#�����l��_�����g��܃C�Ư���M׵��7]��sm��)����ű�x��x������~Ź��n���!��V��c�l�����(��ڱ�x��x �����m q������ E	���_Ԏq��\+p�#h�/hǸV7�@�(�����Qh��}�Ҥe~�����<J���(J��~�W�k�۔��zT�_�c��Ǡ]��_��~Ź���F Q�����Я8��Q*F�r�8��6߻7�5�Ҳ%(�F�|��8�@��km���!�h[��{|�=��$%P�rQ;��N{|I%�h����<J���(J�Ѷva;���!����h[��[�c�.�k�����1���W%�DQ����޽q����R��	m�{�X�G���
�	m��cn������靰�6ߺ7�5x��-H�(�F��E�[���/6��{�ƱP�� ^l�=]Ԏ�����(J0�|A;ztN��7J)8�z��=;'�Z%)@;�-"S �P+�D����;wkp��'b ��wQw�"Q��Θ]l�0�.��bvtȀM�$Q�`/��^�L�1�$�F���16g ��#j7.jG��j��H�8�>/hG��Z���E
�F_���M�_(Q�ltl0,����Q
[}_؎F����x[�n727�f5�2�(J7����L�YM��$%@?���`��`I%،���L�YM��$���^�.z'�k�e$���Ջ�E���F�R�8d����N>J��$Q��u~���<J��w�B�a�۱�T?F��mB�a��ڱ�T�6�(G>����z�d�]�H�(�f4�دJS��nS �G	;|]؎����..��7lF÷�e�k���a$Q�`3��v,5�,5"������5Y{�0�(J��|a;����p�LF�\Ԏ���1h���Y.h��V7��h�{���5Y{�0�(JpM߻����ڻ��DQ��h�޽�wM~{�0�x�@��E�Xs�a��o��E���e�k�炟�]�E���e�k���a$�(a��۱�w����S���.jǞ�iOo���ߊ�/jǞ�iOo�E	΢�E�wM��5�$%0�ta;���..<�%�Y�������o�EƢU.h���2����h�E�wM��5$�?��hyg�]��w��g�j�cn������?!P�vQ;����(�X��E�[b�["ܢg���"ֻ&k�F~�Y��E���9��)�G	|^Ў����c�-R�-g-��k���a(Q��-Z�[D{�d�]�P��.w�"ڻ&[��E����ʊil�-6g+��"����<kl��"����<kl��"����<[l�V�"�U��<[l�V�g�nWZLc�l�9[!RH�lW[Lc�9[ JH�lW[Lc�l�9[q�����Լ�c�H!#�]y1�ͳ��l�H!#�5#Rxl^�؜}~�6����9[ �������c�9[ JH�lM�����QB6dk6��ؼhl�%lsM���76g���I�Ԕ4Rxl^46gD�$C��4Rxl^46g�҂Ҽ��;�hl���I��)i2��ؼ��9�\�N.�O�f/�nS������m�v��Q:ɐ?��/�pF,���t�!J��p��76g���Ʌ���B�t_46g��|�Ƹ��Ž�9[ -�v��^)����l�(e���v8�����Ϗ6���P8#�76g��P�����ؼhl��R}6xN�+�ؼhl����bl^46gD�=<g��Yl^�؜}.B��߹/c�9[ J#Ai{�����ǂ��l�\�!6/���4�����,6/ol�>����ܓbOﴧ7,8JJ�R"O�    ��7,����<�WbOﴧ7,��>�g�yycs�����"�؜}.B�{u/c�9[ J|�c�9[ J|�K����؜-8J�/�mp��76g��P{�w���ؼhl��R6x)�R"���l�QZP�^)��Ecs�@�Ƴ�K�Nc�9[ J���e�D��I�qőڐZ�;<'==�"��M^z�R�����W��~vy�K��s��s\!6Ҕ eۜ��-�W�-8J��sx%v2Ծ�l�Hel�U�;j_Y�B�
v�N�9Bk_Y��Ha�o�괯lѾ�l�(�g��ԼR�S��,[!R���5�K*����ʲGjCjy��W�X_Y�B���׫�\U�W��}e��"4��^�����+�>�� ��P��V�+��g�W�����lվ�l�(�g�W-����lվ�l�(�g�W�����l}�ʲϏЂ��B1AS��,[�4���\U��~�?�R�ג��>Um��%�p����Ѿ���+�>�����b���m
D�>����m��X J-Ai_�9�j_Y��(=;�e��Y_����e��P6x+�Erվ�l�(�g���.%rqo_Y��(-(M��U�ʲ�4�ޚ�ᬯl}�ʲ�Eh=��|	�st}�ʲϏІ��B�]��,[ J���mt���U�ʲJ3a��r)��fվ�l�(el��68�+[߾���#�������}e�Q*��^J��޾�l�(�g����R<GW�+��%��Y_����e��P{�w����w���R6x/�R"Oﴧ7,8JJ�+��w����xvx��+����}e�Q�����p�W��}e��"�����U�ʲG��������eDi?;��z)�w��W�-��uz�����d@*P@(�:�.�ƦC��1��C��:�.���C笼;b�#�/���C���0 �dTJmW�,!	nY�wĀ"�Z��j�3�+���o9J n�n�x[��E
�R�U+g�%[#��E
�R��+g�%['�����+X��QƖ��p�)L�q17U�����$��y!7Tn	P�P/���hLm�%`�����ƥ�Bj�-�
���|>p�27���_Ϥ�����M�%�t!�X�p���xq��L����9�.(��P������s���,�U��ʅ��m�v�%�z��/%r��ݦ�E	�����nS��0�(��3�����v����q����_ȍ��ǈ�G!�x�Q��k7�k
(�)a���X^�Y^;P���>�DR���ځ�R�_n��>���S�(���RݨT��G	|_ȍQ�~}U�8]+�D�2*ՍJ(JH"_�-���ۧ�Q@� �Bn�<^�O-ÀG	ȭ\�-�ǋ��eP��[�^)�ǋ��eP�&�[s;���-o�ZF��[��{z�ǈ[|z�q����w��(�(m7�
b}j���e�(�y[�S[�O-��R[����-���-o�ZFE(c��1*��J(J|]ȍQ�eT*`����]A�Om�>��lA�ۂX�����eP��
*���Ԗ�O-��G"_čY�Y%���7�>�E��2
(Jp�
b}j���e�(���ѓs�o�G�WPq� ڧ�X�ZFE
���/�F���xT��"cPq� ڧ�X�ZF��۸�;�}j��ɝ3���-֧�Q@��5�8k�S[�O-��G
ݙ�h��b}j)؃���>�E��2(J�Ug�}j���e�(F��E"U�O-��"Pu� ڧ�X�ZE
!��^x��b}j)X�l�z�}j_qK��������=�Έ[�W���V��O�!*?1�(�"d��+�S{��-����V��Om}��2(Bp�l����V�S�(`v�M>�D�[6��3!��^y���ݚ%x�l����(r30s3!����9Jܲ��x�`����M�nS��G	D"��nS��(�(�#d���B�֮��P�������͈[
1E�f�?h�7Mk
(J��l�͑�k��P�`���Ik7Kk
x��������J�!��l�z�}j���eP�`������ڧ�a@�k�������ڧ�a���>/�����S�(��d��+�S[�>����A6[��>�U��2
x�����J�]�O-���c��V��Om�>���|A6[��>���S�(�q�qcOﴧ7P@Q�)�{S�S[�O-���WP�� ֧�j�ZFE	��^/�-���S� �qkq���}j%���w�>�U��2
(Jpu�
b}j���e�(�){[�S[�>�v��o)�U6IGi'-X�P���{����s�#S�KF���۫���`�"<R�d�}I�1!__��K��_�LBx�����zA�)��LiG%0�z1�)>��Yh�Z2Z�l��$3��H-[��]�d�0ٮ�If�偀�V|�N-MLv�0Y,0=�̈́�[��	�������R2HZ�����}�+/=Q���
z�l_�êK�+�.�����u;���(m[F�41پp��j�S�!0O�n�{j�R�QD�u;�Rk�ڈ E	qy�u;�Qk�ڈ E	ay*%c���m
P��'_��FUpW��mBT�|�N����m
P��'_�S�m�v�%D���4��m��8S� (O��d,[�>ɾ�"��<���F��Ͳ�ʹAy�e;�fk�ek<J��n��lm�lm@����<�NN���$�#�+����v:9e�L)�Ԯʓ����y^'پ*L��ʳ��鴬���! @QBP�}�� �L�dvqq�vEL�K�B�0m��(�����Aӆ�� E	Ayvu;��4�(J�s�0{z�>�!P�vQ2��ΏA���V�����HDB��iOo@����<���H��;��P *b��*v$$!Oﴧ7 ����*v$$��� Y
��gW�#	��e ? @QBP�]���⮚�/Ayv�:�D^M� ~@�����$��7��cW«�!&/��d�o��%P2W�#J���� E	Ay)�+1���(J�K� �9)�P���z12ztNCd�����6�=;'=<G(R�K�^�����#)��e�K�����#<R`d�bd�&-������^���hMZ���� E
;e�K�]_���� �6�Z^�֤e=F(R��)�v:u�u�2(J�٩�bd���X}i�jD
E;6��p'l1',��G
�,/E�K�>���vlRC�N�bNXE
�;��0'l}��!`2_�Ü�U����v���aNتNXE	�;�_�0���NX�8Y�8Y����	� ��p�������ePjLv�/�a���NXE	�;���LU',��G	{�W�0'l}���
w�/�aNتNXE	���w����A����w����A@Q�����愭��1@����ʴ�1J�B�0�<n�n�9a�:a%8����aNتNX� E	����v����1@Q���Ńt}���!P2_�Ü�U���������0'l����Ys�zl�*w�Vu�2x������Xe����Ń���F5T�eP�`=�Q�;a�:a<J��{y%V�6�(J�ۨ�ʝ��u�2(Bpۤ�ʝ��u�2(Bpۜ�ʝ�U���%`�2�{z�=�����6��r'lU',c���Mi��	[_',c�G��M/��2��(�zl3*w�Vu�2(J�ۈ�ʝ�U���%���68s���	���v޼�Q�Ѩ/#t߮�8�-f�-2p'Rh7�]�q�[��[d�N��p|��(��F��)�߮�8�-f�-2pw���\�q�[��[d�N��r|���Է�ͷȸ�H���v=ǩo1�o�q�#"庎S�b6�"#w"���ۧ�X.�o��;9|����{ƕ���;J��>cϰr��_.�����{F����%��>e��i�#�!t�>c��i��#�;J@R>cϣi�#�%d����`�b�H�D	)��S��ަ��)��#$�3�̷XԷ�ȝ(!c�|ƞ����%d���3�bQ    �"#wG	Lʧ�o��o��;QB�>��=�-�׷�Н!e�|ʞ������}�){�[,�[d��(a���=�-�-2t'J��'��g�����!��O�3�bQ�"CwG	;ܧ�o��o��;QB�>��=�-�-2t'J��g��g�����;B`R>e�|���-2r'B��g��g�Ţ�EF�D	��2�ԷXԷ�ȝ(!c�]ƞ����;J`R.cO}���-2t'B��g����Ţ�E��D	�����ԷXԷ���Q�r�z�[,�[d�	��w�z�[,�o��;B�>�\=�-�-2tw����M�h7P%�݉2��e�o��o��;QB���L=�-�׷�Н!O_\�^���musrw�@�\�^pm�n�@�D	I����xe��/9�RӥDK����Q��G%~tN��9�;QB������9��9�;�B�������r��ܐ�/}]R�:�=>Gr'RH��"$����"�kB��]���cT��
��N���/�IH�1+��Drw���]���cX@68�H!Y_\�	M9�r�@��#Y_]�Qbd�(Y��(G�>!��f�J��)d�k�À�WJ�r w"�|}u�BD�W'*Y��H�H��=#�¶�}/	���,p皁ƫC¾��=��Gɺ��xqH�W��gX��h�{�#c_}ƞeh�R��R	���,A#B�>�6���>_��3��[�m __}���gεU[.n a_}¾һT�.���@���|}�w��]
��a{�t}�w��]
�N���o>]_�]�v��%����WZ�S��'p;QB¾��}�@�)�
��H�|}�@��
�N���o>_�(�j�WŋC���|}�@��
��(H��}'�hA[�>��|}���N������D	������V�t�Ɂ�% )�����N�Nn!Z���v��@j�F��=�*��r	��
�������b@j�
��(a������%t
�^J�0Q�T�v��V!=�>��;����H����;���N��*�����{Uxz'Z���/%Z��Oo�vG	@���(N^��iO�D��޺b8yN�N��(��r)�V����%�	�}{%���������^�U�/��	���n�oZS��˵Inf��H���|�@֡� J���|U�q��Ί��H���&�Y�:t�@��,傉l��`P�(Ku01$\˱��&0K�X"mu�VH1x� �i��b�N�S�h���2:�m� C�"���|��(�� �X�Oӱ��:� ��P��}��(:t�@Q�����{�Ë�jC�~���ׅi�KՆ�]�
v�OӅ�r���5<�Y��.��r=�8i ���4]JJd������!O��Y��' P���K>OB��T�6 (BH�%��cC�` �(��4:P>��Ln�tɥ��Ё�C %d���ѡ�(̈́�`�]r9::t�`;�MajxA�.��$�*�f�4 @��A�.�%�*�f�4 @QB�.�6�l��ad�MajxE~.�.�l�Yq[�]��K��/:p�"G�`��\�]|�Ё�Cg�-֮��e�ŗ8JF�`��\�]|��y��������\.��0�0L �Qh)Id�t& P�����B��ä �Rs�w�eC�;t��?Bf.�&�l�@ѡ %��~�D��N{z %��o�ˆ:� �|��\�m|�Ё�C <J�ᾍ/:Pޡ �Rs�w�eC�` P�����B���.� %��}�D�I�q�  E	ɹ������(m�IKx75��J�H"��8i ����\�Jd�t'�(���%2N���(JH���W�܏�6���rjH���W�xm�����sCr��>��8K���!=W\'_�r&j�@ E
��2.�H����#x� ]/_���hF �@��y�D
K�i#n�B���&RXzW����Hҕu�D
K�kC�#������6E�0(J���T�muj�b�-RH�UO�Y�T�6)��ӗ6�)���!@�B���Lk`S�6 �u�'�X��6�a ��ԋ$FTZ�����D]mJ���j E	���/�Ai�6 �u�'�X���l <B ��"����,=3���>O��3U�0(J��[�cP�l�6�a�(a�kǠ���6W^P�|�n^�ݦj�)�ۢ��A-],�ݦj�)�G	�%]0�YT�M!�%tj��p����l!4j�\B���j�R��r�D�&�(��Qj�Kdm���o�5�Ɨ5�����@QBà����6�m`��J�]|Y��l%tj��/k`S��#�O�1�͋%�6��ʓC�}���}_����l!4j�B���!�%tj�b���!�%tj�����!�>J@-��/k`S�6� �������Է�#�"��^.�Ȟ�iOo���X�����Tm`��(����.���M�6� �������Է�#�G(�](���e�4�ۢ���/��@��U��P~���(]JC�=�ہ%�.���M}�0 x���=�g�'����$J�����s�!�C�lV���S� �>*��m@�-�?� ���4�T���T����i9i9Z�r�x����C����iFP��H-{%
K���HbD
�-/Eai1XQ�@`��/)�Taid1� K}�Ώ��퉞[w؞�`��@��Dϭ(�����0,�-���}�Ώq�퉎[w��b��i�N���.�;�N�n���D�:I��]@�!ĭ+����p3�yi#�;J�H�`�һT�.�}+ ��Tz��ޥ��D�:���Tz��ݥ��D	�:���Tz��ݥ��0��ש��T#-�ۉ
v�/�i��4%-ۉ�u��4JZ�����8�74JZ�������z�� ���f�%p;QB�N�N�NIKw��Ϡ"��� ���n�%p;QB�N�F�NIK7���(�	���S�ҍ�n'Jp�tqRFZ��� �8�wJZ�����DF�� ���a�%p;Q� {'���ei	��(#y'���ei	�N����	0��;���N�`��0��;����(#y'�����7p;Q� {'�����7p;)� {'�����͓��������`�zҥ&�����7,ZO�̤��(�	��`�z�e&���D	N�� �֓.3)nw�@��`��[�7ۉ� �6�q��}��(�	P�`��7!�'@�N�M�7��7ۉ� �9���ay���s��8'��4>+OK�v"/@q^ Y���*`	��H 93@�*�J)`	�N��(����������P��ĸP�Qy�d��(�@B��o�"\^��8? 	q!��h�(+�}_��V�٘ b�)�t� 1nz ٰ!��pT� !.���F#��yH�)�e!��0Tg
 !�+5mE��;\՗��R�Z�}/���+vX]��v����P}�++=J�ċ�)���VUzB�f�{��P}�Nrq���w
G�@�/�a	Y=��xq0T_���3��5[.n�P}�K�<i[.n�P}ʏeg�j��3v��kvb��@�i���4`��d'F��v���3@K�+��T�6E��p;p$_��\(Y�x��4_��܇m5�<	F�� 1��s��B�0�h�	�\(Y�� P���� F�@���; �� 1�۲��9z�	м F����ʋ��#@�F�� Z�x�p4��A.��ڂpԜp4��A�T�W����y'@�rH6��pqF�� 1���� ^� �;b�n�*^� �;b��i�9z�	н F��j�yxz'� �b�p�內w�	н �P�6��靰to�A.�uʌO��{+@�r��T�;{#���;b��٬���p;�Ro�A.�"�����%�R��A.�]������	�\(YИ[]pt��Q��}.n��}K f��j�e��-k�����e��%�s����w-�ֵ�!@��@d%{�x��ֵ�!�#    DV.D�Ĭ]K�BV/B�Ĭ]K�	@��y�]K�u-aP���w-�ֵ��#F��%��	��~2Ej�y���yn�\
�W�w���aYȰ� �w����aYȰ}E�}d�U��0�B��+J�|_������.�+8:B��ީ_�ݻh2�F"��<y�>�ZR�k	#����<y�>�ZR�k	#����<勒��T�.��������T?���]BH��O�v-)ڵ�@QBH��O�v-)ڵ���H�|��kIѮ%� �B��l��kIy��0(B�ȓ3�Ӯ%E��0x� ɜG�v-)��o���*B��<��kIѮ%� �B��,��kIy��0(B��Ӻ�i��r��Q�w�|ڵ�h�F E	!yN�+���n.��B�����kIy��0 x������X���"K����Ҽ����Cl$J��s�^�UJ��!6:J`du]J��P�}��D	yn#cO��"�OoED�{�B�����H��g?̗u-)�y}U|z�g?͗u-)ڵ��* ܏�e]K�۵�@BD��4_ֵ�h�F �6���˺��Z��(!$�~�/�ZR�k	#������q��kIѮ%� %��tA2����Y�����i����m�>@QBH^J�J��o��� �B�R.T���6~�Q!�!�'��&�ţsCL^�8_�r��P'�(R�ʋ��+y5�N��H������x9�N�P��7  �h4�?v}�����y2Z-��F"<J��nB ����2(R��7"��`��`)��@m��l�� �\�e_�,⃢6XF ����@m��l�� �|�Ս	�6�b6XF E
N�Z�%ū	�G9�#HV.HƦ�eMB��+Bp�W��g6ت6XF E	N����[���Q$�V}f��j�eP�`կ��d�R�|~@�S�z�>����� `lD��,=S�� �Q���+�J�bIH���P�v�`9>)τ�j`N@U��#D�!#w	c�^�ݥjw)�?Q������]�v��%؎[ΗI�VK��w�����X��}���#؎[�^�M�jV(��(�w�j��h-�J�'J����+�lV(��Q#k#c5-�͒����q�����\ �|�m�K����! ��F6�Wb���� � ��g�J��_7�C ���q[#c���c�,�'|�m-/�*%���  E	�㶻Wb����} ���qO�R�ń�� %��{�{|�&�	�q����w�� �(�w�K��h1�>� �|���e6ت6X � Y� ���cW��;a;�~�/����� ��v��,_f��j�e �(���Y��[�� �(�v��0_f��j�e �
����|���6X E���+��� �؂@7�����<�m��>��c�g�M�����AI�q������|�<\�(������Ԩ:R���=R��W�p�&��(_g�w�F}{����W�p�&:R��H�J�����4�ˉ�Ԩg���{D
o�Q�룭���Tb������ndu�Vu�VҼGv9���>�Am������SB�3\�C�VkP[Y��ڐ�.��-���yϟB��Bڠ�Z��ʚ��}��g���6��ڠ���=O���ڠ�Z��ʚ�����?��<�Z��Jm�ܓ�$���H�%5E
����#3*�`��X�$R8�M�6>���3*�$}�Y��Y�Q�tFe#m��҆��J��>�W���D��Dk�3*�Ψl��(!�:�����J�E���r�^-S�Ϩ��)^�S�Ϩ<J�ċC�uj�����継R�:�Y��Y��ݍ�:BB�
���������b��y���l
���\���4�W��̦��Q���B7���R<�5��W}O��(-���n/�~>�n�P�s/QYS��(}e�l(��W���}��U��^]i\J��t?�G�Kp�(e���n/�~��'�K���"�n
��o��.GC(�K)�MA���{����>J����7������va�Xu]J�ٴ����;���Qj�����io����o��ܟG�g/�n��>�{�&S��K���a7|D�jM���^):���y|� kF0��{�X�����y>��jF0�澄��������Qù��B1xm���Y�mϮ5�kW��צm~����QùS�J�u9�u9���f�p�U��6?�m��|/5�fm��O�6?ςxq��4�h�m~�g]_/5�fm��O�6?ςo�y�Z�&�x�����y>��Ns�6P7��xq��4�h�uӀ���B���p󈞅�u��u�cg��Q�i�v�\�n��S�Bg�ZP�i�G)DGiق� ��0�#zF���M�V|GQ��~�L�gadO��b+���ZP�i.�g!9͉Զ�����~�|�����a�}��{��ٌ�ga��R.�"^����}��{��ϊx}�U4�U�,�Y���j؊��
�h6�h;�2��4h�Ѽ����EsrG�̃�lQK���?�猑�.�H����"� 5�[��-9:x���h6�h�u���Y����f������
�>���8F�9F���'��Y���p�fs���1�s=d[.��l��gaxQ�e
��l��~�\ru���Y�-B���=��@�r����h6�賐\ܛ��,��Sz���ga����n�K
��l��N�ܣT�6Uv��h6�h'a.��6Uv��h6�h'alA�M�e4�e��0Jz�*9H�2��2�I�{����#��*,��,����Z�y����$�}��n�=��l��N�\(=?�ςpqp�fs�v�J��0��l��N�ܣԟ���y8H�1��1�I��� �,gM8F�9F;�r��*�5����$�}��-gM8F�9F;sEi|�}/�Idfs�v�>B�}S��'���1�Y��i��=��l��΢�G�4[�p�fs�v��ԧw�s�k�ޤ�i�VgP�w�Q�H�9t�:t��Kt�U�̡[ա[�Q�%�k@]y���=z	(��z$�:��!$�ق���镨�/��/�@�BH=r��iIFZ	)�ԣ\�GIK2��x�.�\|2�N�M�`+�4�����O4r��0%a�0?g~��K�ȅQ�#���O4r��0�(R�?���K�ȅQE��j8�\�F.*%��9�\�E.�*
)�j�$.y�����c^����0WeD���E�n�qI������E
�� s�����P��� �G ������P�Q����}��}
% �� s�6u�2(J` �3 ��m�ۗ��#�� s�����H�� L54��m��e$P�`2�-{%��)��$�(�q�u)��H1�P�(�b0��F��֣�v?�s/��-���R\��b@}~n�)}op��
��5C����\n��v?�m��P��q4w�B�4{zC�t��������5{zC�$J�W�t1C�\�=�!H%��Wv;���io���xR�`C.�c��+D!ثW�^�!�n�%�H�{��׵�H���KF�ߡ�syo���@l�T��H���X�||�/!��x��v�x�oo�,C�"�������y��Y�E	/��_(�x�i�,C�C@ �����٦ų)% �y<�����]td�O����٦ų�)�^(˿PX�l��뫂# ㅲ���m�i�20EQ�e�
+�mo�,C�"�����c�k�
L�(�l��Q~����xqx�l�FaųM�gS%�Qlh|�ųM�gS%�,64������2�x������bh�44gLQ������C�9c���x��7^<۴x�1ţ~7.~]�M�gSB��g�Jo%�[��`%RȆ���Ƌg��2�x�����Ro%�[*���65���٦ų�)�R�H�cf��x�1EQj��w�m�ų�))p�<���i�,c�"Ձ�J�R1�Ѭx�1E��w�v:-�mZ<˘�Q���c�q-�eLQ�&�s���fų�)���s~#Z<۬x�1�#~�/~�Ѝ�ӑ(����c�&�	ٞ! }^����l�&${D)c����ʆnB��(a�����p�    ��4#�"T��5?�y8��p�E����<��N3�x�@7��J1��N3�(JtC�����ξ)��0=>���G��;�w�.u��r�;v��ݥ Ei ����]�v�P�	z�ʥD W5���(-�v��;���Y��]��],s�Z<ˈ�(mлQ/%J�ѻ.���0�w���(%l�y�;��� E(c�����Q���/z� W7���Q���+1��p�(J����΋g��2�(Jp���΋g�[<ˈ��gd��;/��Z<ˈ�Q�+�+�ct��YFE	6#�y�l��YFE	N��ۖG_��ʬh.}?*e�h��b�M��nk@�A�(���ʛvs��" �@Q����v�,ڨm0(H5;õ+F�A@�!�/x�P����h�Z��@�H�hg���4ڨm0(R���>��#i��S���tҒ�d%W
Hr�H�@���@�"��p�H��K��G
���C /���B��}q�����V��/7����n�_����HR��һ�k���p.ja�fadR����|Ġ�һjR�jF��.�IIu1R@�H�i0�u����c���0*DF���?,���� �(%x����f "%�����0�j"�@Q��`z�>�}��޷!��r�2�(Ce)^�����n����@Q�sz�>ۘM{�2(Jp��v�2�K����PY�På�c���U B��O�ۧ�K�ȅq@)��o:�>�\�F.�%�o�ۧ�K�ȅq@Q�m:�>�\��0(B0�Ogڧ�K�ȅq�����<�4ri�0(Jhg�F.M#�E	͝����ȥ���"�����i��4ra �(ݔ�1 � (J��z]�����(Hi��t���)jf;�BQ�m,c�u|�/!)��e���1�:>���H{ad ��1�:�m@�(፲�%:qmՔ��e�Q��D��T�W}� ���.Vƀ��*�z�^(˿P&.ӀK ���7��o�I��4�@�Q�o�I��m@�(፲�e}G�Gi}���"���*c��e�� E	o���(��&��&<J`e����mb�m"�@Q�e�"�M1����}��E!�v�?Ԣ�^�.�G��U��ȼid�8�(!^ٮ��F�M#s�E	���R"��m��%p�qq2ږ#)�p
���+ѾIA~�"�d�^�K�����o3e-{|�K�q��(?r�#�M�/PF���Ǯ��
�R�8-s�V���H�(��&�4�$�@��(��K�2�len���R��N'�4�$�8�(�(9��$�t��G	��5��d�M�aP�P�Z�R�b�싑��R/��7ͿCw�B%P�*��t�h:�G���h�k4�8�����X4�5�fP�P�|!���Fӌ%l�u��M�7�fP�P�|!���M3(B�ʾ�E�]�i��H��b�t�h�q@QB!P��@��N�0(B���Be�.Տ�2r�P�}k�ӵ��G	�̗Ur���`�q@Q�@e�z�x���`�q@QZ@e���F���.��St] e}z!V�֬�-p@Q�@e�y%V�v-���Z���R"0�Y�[��G	|^�,����`�q@��߫{�x���`�q@Q*��\J&u�:(J;|o���T�y<J@e�Be��m|~b@j e�^B��(����3�R�be��(~���҂��J�Lu��(=|$��.%��Q�n��|������6"4�;�?(���F�5����@U6]�e%s4^%���݄���궯�B�-���QBQ^�VI%��JdB�B��НY����"v�D��p�=�-��-�q2�0�7ܓ����')t�n�'��U��1Nv�@l���(��FlG���n��ԖWՖ�8Y�"5/�D9�է�+ڐ,5G�5�%��_)+��Lʆ�|x���C-߁�ុ`1'�_��x��b�ț �釰@�0^l���h�b釰�("��Ѡ��a�|�c���8��!|.B�/6���,��P/H�`1�����vQ2F �A��@�0`l�(�v�how��a���$c�Ւ�a�Q%%c�Ւ�a��ov��^�%�%�QB��\n��t��&��G|�K���_����]oYw���9�Q��f�����a��7,8J�i�����a��7,%8h�o{��Q�;���3�w�e�9�v�`D	mo�Gܱ���/%a-`ܫ^�`��7�-Q�^>�\yM]yI�ƙ`->�\y�u�1$%BHE/��f����<��D	���S�̕�ԕǐ�Q¾t�h��k��cHJn!R�˥��H����`HJ���^.MGZ4i���(!�\���h:҂!����Ol�EӑI���-�H����`HJ�p���d�FZ�w�#RG��,�H��#-�%,�?X��MGZ0"%J8Yl�`#-���`H�(����i�ޑI��,X��4�dHJ�p���`������Wŋ��b�k!+��V2��Qgq't��Vz��0$�Ia����ӬkCR"���vG�5�Y����6�;\P�h3�(CR"���v�:?�����D	9���G��K$RG	��/��"�H�D
I����G�b!K$R"�4tr'��#d��%")�B":���9�{���G$u� Z\�{��^%E��1�2�ɵ֧�t��4��&� �\o��㩔��}�&�X�OF3d*��.�+3!B�E'��f��$�M��*r���0=J�73����E'��f�� �f��U$��OFg��>��gm�(!�|2��g M�<^r���Y��aR�ċC.:�\4+�<L��͌�dt��hV3y���wTE6:�l4k���V/J!���f�^��zaPJ����>�Z�tm� �(MЖ�/%���v��:J�-���FiKsMAk8G��һb��m	PJ�6h�(�훩�%@�.(	�el��hK3���Q��n�wr��o��D(c��z	 ѕ�&%B�{'/��][�0&u�����J��vc�!��
ڒ�Wb��+�(5���n��J��� ���f��+�J���»ҽc�����6PxW˥D(%J�w�m�I�ީOo��!��6�{z�=��*J8��K�<�Ӟ����8�WbOﴧ7x@�x�p;|QV�>vq���h��տ��\\�H���f���`Jg������@Нu-ߘ�,4��]J�m�u������N6��w���F0x�Pl�F���F0(R�e3�u}t�\�s��ORS�7t��Y���1ttԋ�Q^����soY��7v���)��n�(5
V3
24y���&�R�`U� #���a9�M�F��FAF&�l'��sf�D ���������� �b�)L���B��jQ���K�z��w�������6	���=�7M��\�E�;���GK��T�(���V?z�X�.f�Mߕ߱8_�|�.�(���*�[�O�E�;�܊G��WŋCw��[� �b|/�M���V�"��1zG�i����ͭ*E�Ւ�^��kn%�P?M�Gx)l;�5��P��l�%�#����.~ǒ�����#�����K���ѻ8�+����V)�7}z#��L��ZI�C�����E`���o!K�7{z#�%`��Jb%Z�f5n�A��I�\��V�бw��"�����*�X���c�����z)����6�x���Q �l�����[A�'	���aOo ����<I�{zQ<J�8�Q�����X�(bx����Gi�6����'�+p��X�*�@�X��(LZ�9��3EQEXޤ0i�imQ%��7)LJ�����X�7),��.}|R!x��(,��.{|R%��7),J����E	&��_���e�; ţV��粑��Iϐ�����h�`P���R%�����a0C�G	�����GI�A)�l���El��$Ϝ*��r*�-n7���S�d*�R�G	;��%�T(i�@E
��v�yɔ����A
�y    ���O�P4�C���H�6�]w~�~�i���8���O��4k?Ð�H�!$מ���i�|��`;�!�tI��;�d))p2ס���i�~�!EQFH�E?m?Ӭ�C�"��\Gm:���Hz��P��M���R���H%�~�2֠Јw@�"��<I`Ļ�]F�p@�2����eD�(a�{��xwW�.#����<I`���C�EQJH%0�n��(!�qO�C��C�EQIȞ$0�nW�.#����=I`ݮ]F�P�G	,
�o̈��$dOX�5
fDQ�@�'	,
�3�(J 	ٓw��Q<J@e%�(��Q0#�"��=I`Qp�`E !{����Q0�G	�̃w��P���g�J�5Ce�(�R�_n��(��Q0#�G�{-/��8v݁(�R���+�6��@w ���v�%�K�V�)�DQ��N�$�������gD������;�Q����K����ST��(��v��+1T6��x��ʪ��l�|��3�(Bh�]Z����;��@Q��F�����;��@�(��.�l�|�1�(�HD_F"$��=A߶�$Bz���;{��?W5 bQDS�}���
��n�Z J�c3R��x���k�(�����], � �"�N6C;�04��W�8R(Q,���9g��)A����zq2�T2��3{Yp���m*��fgP���_R��eHz�������KѮ�ٺ����e!�7��dM�3�)}��.9��9���C��ԅe#�7f�J�S��!���qy�@��W�����p@�ƾH�B���
�=�/PF��X&2H��W����~���Ld��D	���{[�hAc��!�����b�ʦ�J��HY�H�D��(b�$Bhm5}k+>���P�I���j��">���P��(����">�¦P�I�PQ4}EQ�ٞ�1P�=e��h���J�=�hi��G	��U���eL�$M_PTiqC5Z0�(��h��1��\;�$��]����f�o��G	�5
�=���
�V�^���f�o�������+�:��쮒3r�����+�:���Z�0���h���N+9�Urxfޡb�^��8B��7rBQz���fc��;��}.<9��s�l�wӱ�l�Q�s�l�wӱ�l�(!g�\Ξ��n:��-��;r����������f�!T(��}dsZ�>!$�K�G4��E��Q�q`�Y��AI˂�QB�~�a�ͽJ�ׂ�(��6w��2�������t���2�@���c�\}Ds�����(J�a��AI�rX JhϿ�4����vL*ŋC���G_�!�B�>?B@R~�e sRGHX J�}����@��k���f_n?�2�9(՟� 7�(7�2���H�t�XXp�������^%)V��_n7�2��WJG��"��%��.��fV��Ha�;� �\�F�l�(!W�R�J�Gٌ�B���O�s*�~�8R�Q�$H#�f�+[!R��'���k�ȕ-%�듳	�ȵi������ك��f�ي#$�|�tpD��l�H!e��Q��h68��)$�O�3�,�����#(�s��,vW-����}Ξ����k�(!g�ֽ�V(j�j�m���͕o�_��r������P��@����>g�f���k�(!g�}�>�9(i�eXp� �|�>������sB�>��}@s�?�r�����{��G	T������ަ�@����>i��{�����}�Y� ��÷�Ϗ��O�6!�Ra�(a�e��/���R�� ����/�{�֯��ٗ�Ͼp�<|����a��ї��AH�rX J;�Ͼd�u���aD	�/�~���tm��%P)?��|�����a�e�/����|`��f_?��|�:��-8J�R~�%��u�[ J~Y��K6����@�0����l�C>��E�/��}�>t��%`W?��|�:��-%�,~�%��u�[����!U���]��+����!À����]}#��g�%$�&�*���@�)�i����Z�8�H!I7�u}�H*Y�T�w��X�b� �N�f�N^���z7Z��?܂Ӭ,4�n�He#R�jV�یv]���V9I�fea������S���YY�o3���c%WU[�0x'�<}c&�D'�X�ݑ���Q�s"�͉�NIး�u!EJL�ӰBncy���h�O����߾�M�|�/!I	�
h��Ѭ��� ���f���&E,C���ᫀ2ω�
ρ(�h�2 n�U�n�"������5�n�G	�^��%D̟��(�8x�����s͞��(�6x���1<]I�x� ������$P%�q����ՐD ���1a������$P%��^��T��(%��u�;V(���@Q�
6���b������i��O�d�T�X�ţ��q�X�i,ŀ�(a���8Y,��X�E�0��q�X�i,ň�QM�ן��[�=t��i `�b^���Q+)jy���eQ�6DaP�P̻|1/k��>�������/�eQ�6Da�	���ż�!J{�0(B��]���Xj�+<����=�.�Ȋ����%T�}!E����� E	�������(�m��8��g|���Eq�R\8�o�Pd�t.P��+������t.P��3������t.�(����M_M[_M��~ŷ���մ��@�(�W|��(2\��x����.݆KC�,J���gS(���)6�w���g�N�h6���@�����S�ַd��B�|������-���(�~ʷ�)�3�͐g$P���K�<��4<�$�(�����#<�� �@�B�.���#>� !�@�B�.�*� �"�H�h�k=��,���"	%��R��"gn�"
)$�R��"�gn�"
)��R��"hn�"
<R��>_ǒ+q�PȭԂt]��:�ʦ��ll���5_�y+���l<J��sz%6�-[ʖ�m�5c�k˟�[�tme�@�(����,���V6!��}E�K��� E���)2^�/R(J�%_/-�K���]B�yX��ae ����(��T�6��V��K�^�ݦ�9��4�[��Hھ�m
��QRln�7�K�_+�"�@{�B�v����@�(m�q�h;��ae �()�)2^ڌ���	��n�3k=���P�_��unV��ѭ`�(�!l�*�Cp{����E��n�ʁ�f�T/%J��x�n�[��କM[�0x� ��B�å�����.%J�!�x�n��[�.�K<J@��mp�ʦ��l!L�-�{!��N{z%�-�"�����(J��[����;�� �()�)2��4�C �M@ v��i$��F�n���}�߻lI�i$솋^�ſx�4���H�%�x��i$]���~��/���M#��4v���o�K��e�H�;���<\[�{���.�F�uɳ \[ǋ��/�F�uɣ//��_�lI�i$�W}�������˦��w��y�8�w��i$]��<J������˦��Ͼ�*^^�տx�4���H�%(��[݋�N#�:��Q�QiCiy�~�M#y��s�/�-^ݫ�N#�6��Y�]�Y;޽ս{�4�n�H��E����[�˗N#�:��<��]^�˗"�ȼ��J/��&�Sd��w�cW�0�����wC���=R��n9E�ݐy'=vE�`��)��wE杴�%��in9E�ݐy'=v�Ԇ��R�[�/�A
3`�DN��v�{��(A
3`�6p�tv����зc�oW&m/�CKg�o�W�	0M��^:;�t�Y/`�ւ^:;�t�Q�W��/M��/�Z:�|UxM�iZ6x��xKg����a�K�Z��Kg���>J��&ƿ4��tvh���U��&ƿ4-�tvh�� ��&ƿ4���i$R�7��p�&���]��M�nSe�	�_��^�ݦj���ۄ�m=�K��6����(-[P����m=���/�x���x��h��K�B��F�|ӈJJ�R
    ���i$ς�з���"�:��Y�m�zs;��s�x��<B!H�h��ۺ��9z��H���9z�e[���s��i$ςpԜ���G�J�=tɣ��M���^)���v���%l��68��������z��U�P<G��R�8�l��������x����l�#��C��� ��1?"������x��#���m|���}(|�)<���mz���}(|���#�5����ς���gL��p������.Ԁ��/!rq������P6��B1i8�?ⵡ l��b�p(|��š�k�t)�W�ߟ�ݴP 6��������ލ��1��ə�����pq�_c�K�\�ߟ��6��Z^)&g���gA�:��Itp�>�?J���h6����}|�+�a�f���ϊpr�O4�Otp�>�?R���h6����}|�,��`�f��ԏ҂��J�d�����ׇ20�߇��������̢���a��Y�а�f��߇���zmU�E��E������]�a~�_4�_tp�>�2kF�Pf�����0�>Ȭ�#���F����|�� ͪD�`�����?�ǋ����������Y�&3�Nߧ��G)^<&f��O���W}�������������xq0��l����T��(ŋ���f�Oߧ������_�ڵ0�g���g��+�%�K��K&�������6�\���B�6U�M��&�K֨^�ݦkA�M��5ӥDnS��T�mʰ���v8������9�e�K�j^(⻩����� �e�K�ΗR���g�w����W��n*|����^�������?��$�w���
��������st���v�H�-�c �+"����po��[%�_��8��������2�2��8���6��1<�>vq%T!t��e^����ex:p@QB`^|3���J�ċC`^|3��@I�t��G	,�wSq�{��}U���̫��%�AeF�bIG`^}3��@H�y<J e��zK��弁��Z��D�3��y%�^��5x��LݔBIGd^]7���J/Ǐ�H���v�1(Q�m+���֎༺��1(y�^�9�H!:��;-��Z:�8�Q''��N�wF8�b���,1&y�^�9�H!>��?K�I��I��Ыk���W��/��r�z�'c#ͳ�~�P���t�96��f�G(R�Л��B�_v��8��)sMZh�n-t)D��E�1.)'����R�:�7�ǰB�HY(��S)s�yK^�e��!<o.<�a	�48�(!:o�Be��f��R�y�)�4_���xm͛�cT��EݔµMD��E�1*���"%�m^��ݥ�1����	a�����T?���]��ۮ^�ݥjw)P@QB\�S�Jr����y�]���w	qyO�R"9�j	�@E	qy�n���(��]\<FO��d/�����%���.%rq������^�Wb	�f	�@E	qyo)c	ۮ��@Eayo(�����7�c�D\����K��uP���Q�R<F�L)�4��>�W���s��}U8i.��}^�,���(��腸���?l�\�0�0�(!.��R#7�x������L�%��6>bp3�xͰ��r�1�v��a@QB`n�#7�5�2x�����J������[�P�1����;^3,À"�����%DI������Ѧb��(�|<z�J�/��!�%����^�A�e?��G	�l\��A��������0�ٽ��� ~�E	�c�3�v|��U���*&[���ͰCͰ%l�}a2zrNJ�C�-Jp�tQ2ztNzv��H�<s����9��9F�G
�,O/E�IO�1�)8�g�]NͰCͰ��ȳ^��_3,��G	��.��N�j�eP��@��{)v�V3,��"���b�,��0F�"��%�a��Q��H6�W�a��Q�)[}V/)���~�-��<W��.�(ǈ�Ha����E3�|Ͱ���Sȓ�a��a%�Wʗ�$�8B���8BZ^)���fX�E	�㕻W�4��a@Q��x�����|Ͱ���6F~r3�T3,ÀG	����3SͰ���6�br3�T3,À�����x�%e��m���&Q<l�ܦj�)ܢ��M�x��M�nS����;��/%��ݦ��v��HY�����0��|l�(�F@�k�eP��>�Q�����0�(�}l�(8���fX���t;��a�k�eP�`>�Q��a�k�eP�`>.��t>CDH����#�AH��g��mA�J`I��|��wZ1ol�*u���t>C�(Y]�� �u���$6C��3D�;B��sy!V4��h2�;QRV��h]�Mx'JxR�.^�M.+��N���h)�!��"�!��4.!rq[�&�!<(5W/Ċ&�Mv'JxRjI^�Mn+���(#��X�䶢���D	6�Zm��"]�2t'J��Wg�t�5�e��H�"9C m�ۭ�.Cw"G@u� :C����D
���,t�H�"��aw ��@g�t�!��ݑ�6w� :C����D
���\t�H�"�݉l�����3D�;J���@g�t�!�Н(�М-���6C��;��1�9c �!�m�CwG
(�9��n3D�)X���"�!�؝�мe��:C��;Q�3�y�>�!2>���xq04o�g3D��a�N��h޴�f��w��w"W@�}6Cd��`���"Cg�0xWb�{�>�!2t��w�S@�}��v�}o�;B��޳����{��(�Мg�������;Q�#�;�>:���sh�[F�D	���.Z�xK5���QMr�}��v�}o�!��w���C��2z'J�to`}o���e��(&y; �{;��-�w�;@�v���(u�-�މ� ݻX�ۡ}o�;J�I��f��!��(�н��:C�ѻ"�;���-CyK�w";@�v�Ay�P������v 6C�`@�+���?@�~ 6C�\[������f��Ru_��~��� l����i���w�0���9�ق��.����"޹һ��.����"G��
�ӻ����t W�����0� ���:��[V�`��� JVX���E	0��b��(�S)�e�ށ�z?@�r��T��WG�6���(�Z�y�6̌�ûb����ۂpmv��� 1�}�ԃͲ��� �P������<�����d���3F���� $ƅ�b��v��!J�q!�,��0<>O��cd���a��H�#9K 	r���-��K�t� �B)���S�t� �RVX�� ����RZ8�����/��	�M���?�w ��@�\(���:�$�u���ߥ�8w������ WY-��TQ���.���؍/�ĸ��Tu�;�/�!�q�R��z#�G}\��Ӥ����w8�ä�}���V����`�)���wI����S�;r��u�n�N���S�;r�����%��h`��,�������c�;r�������
9Z!V3��f��g�����J�f2i�$�Δ S�(�%� xK?�O	��Q�%D�R>O�{e݁$�i��S����YV��J[�J�)e}J�%Aw8�=[%��l~��]"� c���c��ɚ~���p�����@wY�C����C\�;�������C\(iU�;��	%s�}���]��߷�a���C\F]�E�X�z�����D��Y���ŒXY��)Jzm^��&;mtв¡e�.�XJ����F-+����B�dǍZV8�������5�q�����~s�\s�X++�ZV�bQB����I�
��� B��f;otҲ©e�.�XJ@I�BI�g�U�N	�k�I�-�OA��z�+b�l�ʵ�Wޝ�.�)��L�k;/�;-]��@��Y�K�NGE���l�Dv[_*
���_C�����.ao��nl6c"��m)���n    !l6s"���/M��{E"�6�%�Q��4�A�R�I�Ib����4�Q�H!�-f�A�3ͣ5�a�H!�-w[L6�<�TsF���b�*�wO��#�hR�h�C�S����kk�hC��:w�E	!l����.4��s�w)�&Yc�G�ֹ�+J`�5����BV�����kg#"�Ң��7���X_;����.��u����وȕ�ڻ侤:��2.��S6}�c�]˸`{LY�#��������ߑǄെl��1���BeZ��Be��൚l�ܸ��-!��x�$��,?eI��!v�����6>����|]!E	�k5�v?�J'����d,�~n㣤�w�+�(!x��I����%��tG�Z��]� Zzw� .�%D����� H(����k5vvQ��w��HYR�n��~��Rjt;R&B^���Q���'��D�u�K�����P�(!z��X%VX�t;T&J�^[�h{{�y{)[Bȵ�&�����%��w xm�Z!��v}{)%����f~�v��������6�f~�v����-%��|�$ƹ������do��6��e�L�`�m��6��e�l)�&�>��/ڎ_��2Q�A��F��/��(#eY �w�`���,)��M�s�m������E)%�s�m������E)%�s��������E)%�sۼH�9���$u�0�v�G��E��E))Xt�i�M��M�����<�=]H�^��vpt�lI�$��$�����=)%�t��M��M�����\��4Ӧ~Ѧ~QFʖP�i�M��M�����\��^(�����2R&J0��v�$�ho�/�HY��djS�hS�(#eK
G�tԦ~Ѧ~QF�D
&�nzjS�hS�(#e"�n?&������2R��p�g�B�?a�d�;�����*���wE��,�#^Y¨�vwz�hR�h�+L�?!IД �H�
��¤u�$?S�#�K�Vޝ�B��)ݑ�Ubu�I�
Iv�tud�&X')M"�	�\پ�Q�O�	]پ�h��yL��-%�֭{LY�ceYXNx/V��E��2V&J0������(NR��1B����#�7���w��б2Q�AWG�o�EK�N]�ce����l�J����:V&J0���������2V��Py����~������:��s�h?~�Nˈ�:��s�h?~�N�,�%s_�?~�N�ʈ����f��8���Q8 ����a��������Ɏf�z~l�(![���a�����,%T�ٹ���W��\����v�0s�����>!d곝:�~�8��QB�>۩���W�Ï-XJ`R�]J���_���D}6c��ï�[ JH�g3��:��:�؊%$e�_R�_U�[!RH�g3 �:��:��
�B�>�	���W�Ï-XJ@Rf&u�Uu��Q�����I~U~l�H!]��L����c+D
	�<.$E�_�Z��p��L�������%d�D�rR��V�2�Ş>����c+�����I~U~l�H!k_l֞���8���"��}�I{��q��K	T�&�[n�������&�Zn�������f�yL}Bj��!i_lҞ��'���/!@)�����~Av�3ns�<��x�/%$�M�3�_{~��%�ns������\���/6e�~�8��QBʾڔ�/b���ׂ�(es���׎Ï-%$��M�3�_{~�sBξڜ=s����cD	9�js����~������3�_;?�@����6i�~�q���E9�js���׎Ï-XJ�R6g�ؠ4��r����}�V:H�-���p�m�ޱ�����聤}�I{�� 4�>!�����"6�F�k�(!g_m���m���QBξ�ٗ��J�k�R���/}[Xx�}}.B��7;���|X�.-%$�I�ӑ����`)J�{!-�;o�[ J��7;���|h����![���K6򡝑l�R���/�ȇvF>���\}��/�ȇvF>���\}��/�ȇvF>�Q���~�F>�g��|	��ٗl�C;#�QB����l�C;#�QB����l�C;#؂��n�_ґ�|`D	���U�W�p��~�H!S���K:����bI�H���t�Cӑl�H!Y�M3:򡝑l�(!Y�M7:򡝑l�(!Y�M7:����bI�H�vt�Cӑl�H!_�M?:����B���念�����`)I��t�CӑlEx��nZjБMG>�"��}7=5�ȇ�#؊%��n��.�g��\����6g��r?#�QB�~؜=C���|`D	9�as��,�3�-XJ�R6i�4��}}.B����g�_��R�æ�Yzf�F�k�R��){��Y�.}-%����A�� ʾ>!��5^B�)����KL�+ĞR֧��Zj�V�{JY��[��|�t)l�q�fD	�I����F>�g��|	�x�ɗl�C?#�QBaҰ�/�ȇ~F>���¤ig_����|`����}�F>�g��\�P�4��K6򡟑l�(�0i�їl�C?#؂��>;���|�g�[ J(L�v�%�����@�P�4���F�r;H�}.B�)���8��M��^�"�=AOzn�9J�6�p�p"�6t�����]:	��DqbR��J_�t9�8)+���:�� Z�E+��J%��r�p"c�SY�����]NOd�t*+uP�����P�@{��˫J�+���v)�7-q{Q@QB�.����p�(�(�H!E�M�[�I8P<�\R �����`�n����t�t����҆Z����t�_<�Ө��Q�%�s�/�H������uy\@�Ө��Q@�B�.��I-�UtAtJ���y�D�4��c�%�.�H�&m�.�"�d]1p#����N���%R�����"ax�.!�����!q��ru���>FHh��A@QB���'�~(��up)'�'�v(��uP���+6Yǧȟ!��ru�]4�%|t����E�pb�p"���yO��x�x"K��yOE	ɺb�u�>�lf���ԑ�+6W��c���\J8����1e}L�ru���$,i*P|a@QB���T��%����(�n1�:�EnZ���"�4]MNd�Ea�����4]�Od�Ea�����4]�Od��(,up)�'ڦ�����Ik;
(B��U��Ҵvմ�����]�Mo+MkWMk;
�����YZ�jZ�Q�"��6�m�-|���ns��:.��`iSX�0�R�Od��),uP�������6����s�6������%��E���y�������(�m�Ndoo׷�Q@QBz�ٞ����]�^GE	��f{޲F6�4�ap)��؞���M{�0
(BH�5��5�i�������\�Od��_�p)�'�k!��Ca�����]�=oY#��4�a�����-oY#�v�0
(J�ϵ~�DK��RG�N��x"��Sa�����]3Moi#�v�0
(JH�u���6�i����K	�%\<�ޝ�6tP�����-mdӴ���"�]OP����\R�,��-md�N#FE	I��/�H���=)d�z��"��6�P�����"�����c�%�h���F6�4�aP��=��淴�M�F6aw8��-mdӴ�ÀK
g�_D���������K�4md�0�H� �O��f�l��Ȇa�%��>/�Ȇ�E-rP�P�0��p��E@�*F��"����a@QBE��M�0�� \��-MJKI~�$�S��y#�~�0(J(H� ��F6�4�ap)�(\X#��4�aP�P�0N5¦s(���F��"{LY��K	H�]H�=���Ɂ�" '��������"�J�1�%D�ܴ�-��������w��Ȇq���>/��]��4�aP�P�0�E.-�K%�!L���5��O#���b��"�
Z�P�q@QB´]oY#������H��"��/�Ⱥ�V-Tvp)�(ڶ����fp��H���i�޲F6�4�aP�����Be�8m����"�*��w#Z!V�6�8    �q���»1�+NZ��8�(!2O�^Jt|�)NsP���p�26p����9D�9L+�fN��8�R)��R��wg6�〢��<��|�9:?/������(!4�'4�p��<��J�+��勓�´��i፿D
�y.��w�0́@�Bt�k�R�0-ha��K
��+E{%��@�H!>��etB`�)'nz6�}#�cnXt��_C��Mo��.��ޙ	zn!z6�}#�en)����)���t����,P���u�%���t���lzg&�/�`��F�[��V޽�P"� �����u���%R�K�`�ך�� ~	�����Q{�OQY�C�^�h�w�&#]/JЋ�M�a��d���E	�y��i>����t�R+�+cN�yE�y��i�y#�A`|�3ng��1�7st��͋Nç��yE	�y��i2}L����?������4�>���Ɂ���nf�H4A����"�jfӈR� P��@�(!2��e,g[~��W]���x�2��-��u$p)���v)�ڻ��u$P��W�ӷМmќ�#���ȼڞ���l�I�:�������XyZ�)*�����ڎ����Uu;8(J̫m�[iyZU���K	�̶���<������* �_���Ll?Ee�=�W�ѷў�M1����ȼږ���Ll��\J8ඥo�=�b|E	�y�w��v���_��f;�v��v}{	\J`e��o�oo׷ב@QBd�lw�N�ޮo�#���ȼ�� ���u-Os$p)���1�?~�ʂ�"�f�0;l;vXFE	�y����;,#���� Ͷ`v�v찌.%��v�2���O7���;�m����a	%���m����a	\J8�? �öc�e$P��?n�A �öc�e$P��?��"e��~
���y�M� j�mj�e$P��@�C ��6��2(R� w�#��a��a	)x�{�H�x�k{�� �L� j�mj�e$P�`B�K �ö�-�tA�H���M� j�mj�e$pI��Ջ�Ѿ�gl�'��r7�������*�G�t
�vئvXF�κ�@��M����L�}\��^��'!X���P+��?%e�o�>�b�WQI��K	$!4��
����E	��q�ǝ�a���2(J��t�260�����̟HY�V�LZxE�3%�<���s;l?vX�E	��Q�Ub��^��̟PY�P{L����<&؏G�V�=����q@Q��x�t)�z�19X�ށ��i��c���\J8��be�gb1��=�D؏�ȗEeJ��;F(��a[�2;l?vX���������a%؏g(V�M,:�q@Q��x�����SR��B e��/���c�eP��?���|��iU��〢��=}��;,〢��=}��?vX��:�ږ��ۏ�q@Q��xZ�K;��v`����d,��Oځ=pQB�gZK;��v`\���ր���I;����������I;�.J��Lk�`i�~�{���<�0Xڡ���^�w�<ϴ�v�O�a��PB�gZ�K;��v�?�:%�y�5`��C?i�� 9%�y�u`��C?i��4�N�u`��C?i����S�y������v؟���<O
ր�����������)u�ľ/�~_��_0Q�y���R"ߗC�/��/�(�<O
ց���I;,�쾛�N��	+ľ/�~_�w:L�v�'��`i�~�{�����`��C?i����n�y���ӴC?i��侜�������Rb����wd���)�n&ӴC״�^�T�7��iڡk�aK/�Cn�ӴC״��a�I%�r3}���I;�~;ד��>L�]�[��o'{�����S�����=)��4��5��W$'��=)&=�4��O�a+M��s=)��Ԁ�Հ��;��'����Ԁ�Հ�W��*%w�τwt�H�!"{��a]r�`�6Hh�ꈪHl�Dx��{%��ܟ���%Ol�x��}<�����w�����_�~��\�^��ڜ�iƻ�)%bw��Hևh<}���ۯ#B��;�-[�(�_��?!|���Ͳz3�����Q�7K
�޼G�R�Z��&�ƥ�XKi|-%|��hv�2��`0����Tl.E+�3�d0�Oj^	�K�Rr���`��)�K%�j���|�� �Q�wJ*�c��d0��0���6��	�K����`�ϳگ\:>��3�d0�����Q%�cT<�1Nc+���mTI:�b��8����WP2o/�`�'�1�a@��O%�H��3�d0q�R���*��8�Ab���>ǥ�.��d0��EiU�δ<�1�� ��m�Jʱ[!v���&q����7r*V������Eܢ�p#�h��ijz�\Ľ�&�̻��ܥ�ϗ����:��M��k���E�b����O	��~t�,���W�_�^���
]uw��O	_�~���n�p�
�ѧl���}<n���m�Vȧ��q�p�)�{ ���f��>X�����l���}7�`�(�X���f��}�x�O_%V+�67us.L�{Sb��ҥD67us.L%�%��/<���?sd�&�Ki�b�^:Gf��A�d���[J�R������9p*�Z���sd	��Ԁ��r:Gf�92��ɢ�9p*�X%��#3H��'�7N��K���#3H���&����v��sd	�E*�=�t��8sd��E)��t)�+�3Gf�0Y�2N��Vɓ�sd��Kj����(x��A�Hm�j̗�E�92��y��08��'�#3�92���%4 ԭ���#3	���S=0x�92�̑�ϋ҆���l���<��$x~)M(Ubsd�3Gf:/BHԓ*�|��|��L�E��zR�ϑ�g��$t�Oi UPO�`�92�̑���/%�Â���92�#3	���~X�"O)���"[J8�3X!���>%�.%��٭{JY��mE�a��Q)��ʧ���ʬ�R>]�O;(J0`Lk���OW�ӎ��\��թ6S��]tῘ��h�j�:U�E	�i�֩ތ�o�i�֩6�Su��*k*c����8�)�)c��+oq�(��1���-��-���:0X��O��8�R�	�*cU����E(�!����*��SP��
@��_������a��Rf,l�'laP�*H�5`������a@Qj e�"e��ϟn.����ʬ����S��0�R(�V��O.À�4 ��PeV��O.À�4���P�w��[�供�&k&��%(f	�j�#n�*�"ܮE���T�!7c�in�"\��N���@�p��2(R	�|^���y9�^<�a�4�"ܮE���Th1chn�"\��H���@�p��2(R��<�d~+ޢ嘆�[ �Un����I��w"�=��N�c���=��[,��Jz��[RؠM��c5��A�މrl���ة�}�wU�[sV�Ѥ��hR���4�tm��2N&��;း��a�G,O��`����q.�����=v��
��\cs�����ko,6�М�=an`@a^J$4�Ȝ�=Q��bP9������K6�Ǫpǩ�eD	y�d�~�
w��?,%l�f�S{���Q�wJ2i?Z�;�*\��!�LҏV�S��,% .��U��T����_29?Z�;N.[��p��p���ůϗ W� ������\���K&�G����a�QB�/�t�Îc�eD	�d�}�;��-XJ 7&�G���ò�E�>�H?��x�1SX��⼔��\S,�8�R��ҵ9���b)�E�awټ����~��8(BX*�K��s��wPx"\��T+Ġr�?��\��&�Ġr�?��\��^@�A�P�a�����f����㧛���׳b�r�tP��9�#\J(F%����O	Dq\D�ˡ��q@Q�/([_��5���O7�KK�-�X[�k5�������l��9�L�A|��п&|�%����9P&K�R"���?�(.%P�d(َq	P,����x��,	q��`z�(R�:�b��H]Ѽ    ��ʰR�ZrŪ+��@(�k�c�-��P%�b̆>�}��.p��4�T���G��w���m�,R1�p�C�O),:�b�둚��;)`�h1H�����(.%��٭�I���E
)Mi1H��H�6���:�b�X�Hu]Q�HY4��o��������:�b�`B��$�;$5u��$���u����:�b�`J�>΀�R*+�*���zLQ����Z$k1�v>fXFEIM�j1�v3,#�K	��u����aQ�Bq�ONsr3�<fX�E	)Mk��!yL�<&���V�=����!EQJO��U�ȀKU��-
�M2�>�J��A����/ƀK;���Y|�t��N�Ah��~oh�0O\�Io��7����=f�V������;QBO�y��N�=JZY�}b	-f78�S\�.��F.��
1\��:z'J��0m?�J�GM����6dp��%�,|�w8�#� Y!\Y?��C\lC�B��$�9��6dp��%�,|s~�w�I��zA�M:|��@�҅KY��вI��D	��`�9Pڬ���~s�E�`�K?��wK	$�\o (��I�H�� ��Q�����|^j�7Pݪ����3���|k�G�!�$�)�qc	𭁎���C�w8���[=R3%���;�rc
��C�t������|k�Gi��=\��q��@��)�����;���~�2-je�mD
�M��[=R����p���@�.�.lA���a�t\؊%������o�f�LJ8g�`��Gϧ�{�Q�Hl��T;�����HK۫�bq�)r�M��j����/�R��{�J�p�ӌ��DQ��w���5C�B�&J؝u��R��#a<Q'L�њ��g	�K	�s�"�,�4��c��S��$K�$ME��X�;)�߉Y!�c�dP�-�
R�x";MYO�À��x:�(�Ӕ�49(J��S��"+�Z�0�RP,&��Z�.�rh�À"�p:�pz�9�-uP�O�Oo6G��7'\J ���,�Z4��0`z��͏t=r�R5EenJd�,����Y���K�8�RPPd���/�〢?@�Qd���/�〢?@tc��fh�n�Y)������)r��m0�"e��A.~���I�� 9]{cX�)�r�N�`����RM���wK	�+�U�r��/9G�*�
�ZǮ_r�މ� ��*�ZǮ_r�މ�DQY�V�}�u��s�n)����We�/����you������g�&�w����l]Al���]���V���4�D��~�9z��p���[��i�g�&�w"��A%\��YB�ZB�%4*�fj�n�t��� I�6����s��(�#Xҵ;v.��K��D�awY__	r;�wZ.��wK	x$_ �Z������N��R��Ѕ�E��H!4(�"��%�H)	L��D׃tKEC:_��(!:(���tF%���5�n ��"��tF%��߉��/HIgT���ݒ�Ir�a<�C��D)��|)�z9-��z#	�*ѐ,���%H.Hc�t�d��D
H��F����V6߉Z}�d0	ke3�V6�-!`�tq@�/����w��N5_ �s���~g�h���G-��s3,�w��q-�A�¥ts��R����f��LJ9�%���qo%�����67�>��}����r��R��f���yL.}#B(�'Y��yLY��w��lA�d�)�cr�n)���ǔ�1��@Q�Ϭ�'�ַ��4�u�B�@�j�B���ii�#�pRV��6--ta�(at�l�*��¦��.�Ȃ��������?�I�ٍ��>�c]��ceK	�t4�ĘDW&�X�(al�<�:�����c�L��7*��Q�{����c�l	!�.��J��:V&J�b��h��!ݎ���>��#�CI�ceK	8)]8�����De"��O!_4����S�����)��?M����Me�{ß�`�chӐ~��0T����j��h��!����>����L@IJ���*��S��*QE8T��p�{�R����Ü�(�OT���w���Ce"��Qa^,���w{T��p�煒hya��B��HiG3Ҝ6��4��2�BN;���iHצ!���L��4զMC�i�P�RB�)��S4%mR�>�·�=SD�h�ߩ�줐 ���.���_L�X!���X�����|�"g{�N�MmN��}.B0�Gkl��i�	�`)���?Z�h͍[ 57un��Io����N��=8u4^Oz#�F�p�(�S�P�벓���$Q�N��I[t��E� ��%����*�V@h��ΘW�T.٦rnf�N��R�D��7��Z��R����XPV�鸔(�K���M�XJ��9.%Bx�}���
���K�^�d_:7��Q�>��o/]jtc=8���t\J  ^�d�I�Ԋ�T�7��R"�j�d�I\�E�\�QQM�l5�7_BI�TFnTT�$[M�͗[鼽�K��Ir����w���	��P��2��a�����͡�l�MfY��qڴ00%-
q�϶�,k�2~��QΚWq����C	MQ��� `
��]fY���ia`J�p���@�\v=�n���M-	�0θ�@�`����;�]ϥ[ J��e۷��kg\[�L����s9~���%d�ٸ�q�5��\6u$t\�8��Q�.۫�0θ�`)�sګ�0�q�s�͢؛�0θ�@�p�(���,��`�\:�� ��9v.��K��D	w�b�RF
�tw�t�(�nQ�h�T�)z!��d�P�Z�S,޸B�p�(�r!%#$A���)\/��^�C$A���)�/J�k;�O���m��~Q��"����K)��;.�\0"k*����{;��\1�GC|��ג�I��T:�A�%�1��c�qC�50�%R�dTsɠ���k`�kI!Enn���І/�q���`h×�_�)8`j�0+�?�@��P���i�X)P�R �E�� Ss�J�b*j�k"�������D*��VL�B1�)��ܠ9�&c\K�v+�I�<MƸD	�0ꩻ�ܠ9�A�1�.d
��G��9�<MƸ��x�0{L�<&ǸD��:�b�)�cr�K����t)�ǔ�19�%Jh�Q�J>ݾWU%��Pxӂ9ᅤ�徢���nZ̗��D����]����������UUr],�n��}[H�}�Œ�(����M�3�_?6?� 
����{f��������2�{j�����Dx(�3�{ګ�?����K�|&mOj� ���Q�x�&kOj٠4��R{5I{R��׾,%�W��'�l`\_��R����I-��_����$�I)�]�Z J��;ӗ�ao�k�R��C0})�VʟD	Mh���k�6�j_����;ӗ���K	\��dM:�o�c�(���L֤��&l�(���LR��U�,%P)3�6��ڤ����?������M:�6�`+D
V�`�`�&]�t�"�p�� Lڤ��&l�R�)7�0i��~�t��3k�*ѡ�:�ܯ)�Y�e�S�u��_���H�,Lڤ�k��B���d6���3��+I���1�Dk1u��g�K
�+�/EU�C� �t��}<�u�_Ιr�n	�w���>�t���:m{���/�n��b0\ǣmO���Eэ�wK	5\����j���g��Џ6�ǃ�d(g��i�h���~zܧ(�Ι�����ݧj>�@Q��e�µ7f>U�����d�~���|2l(.!�klg:�Ӡ�Ei�	_{��v֠c�(��R���,�Y3��!�(as���,��T������]�����H�ړ�w-4�[4��b�h�-x-���h�o�)@��]��Up���1(�ڊ�J�ù}?L������.iKH��GE�����؇q�>0�(J��'cg�c���x�(�*�����}g��K	@���cc�3���D�U0��tl��8����R��s
���kʹ݂��ͥks�s7��n�(��F6�����ʾ>_��w��d����wBM�    �һk�k���o������l+g;m���o������l+g;�_t�_80���?g+g�_3��%������z,�K&E	���V�z,�K&�H����X=�L�*g������r�ts�?_"���bg'������q�U��d�	�;���D�Y�z�d�v�qG�s&
�Xۘq��0���� �� �X.i�ME	��/HYPD޷O��E��RD�9�(R�3����6���%X/H���O�����r1��iۘq��0�X&� ����m�ж1&.)@�ж1C��0�(R�W�i�A��m�h�H��\� �H�3a��ĥ��>/H:uĶ��"�lf��:c��D�B>�ލ1i��C�}�.RHh�x1@���d�o�̚.��OT���vQB>��|�V�0*�~sHh֓�܈�N<����K	�\Ї����`�!�YO>s����X�!�Y�E }�b���%.%�6��O^�3=���",G�_�=��SP��7�@.��� ���
 �S�d�q@���>%����lV�=��OɡDQB�|)�K�<�\�E	ɋ��f����sK\B ��"��z8�;��DQ� Rՠ�F�
6m+�`n�*�z�D�V�i[AG �Xb3���R��3(�ݠR J<.�Σ��D- �PI<�Σ�~� �P�P"+��Z*� �(%��N�QK?Q��N%���?Q�K�%\$�qҡ��@Q�-:�%2N:��:(Jp߄t�D�I�rRG E	���.�8�4����XB�,��-�Z��0 (B0�����������d�]oY��~�|0 ����'��I %����z�6�7x?m> ,B�p���i�T�
) ��x�X"��t���"NK��ׂ�_s P���	��-m��O� E	�0/�HYiTV���.�HYiTV�.�&�h���6]�|0(RH�Ť'������vK	\�8���~�~3j'���AG��c����f|"��x(���|�?���_��G�g���k�b�6W�ц�4_|�/A�؞M�}t�Q��K�D	�{�w�	�R_�'�_���S���R�9|W}"�5?�V�L���iWNpSR����7����+Ʀ�
��I)�Y⼰$��$MD��})m��K�tO�D�{	D	�+�N�bC��0��D��˓v����0��ĥ�ͥ�K2;tֺ�E	�*��bC�i�p�(�K%�~y���d��q8q)Lچy��۔C]N!�����+�ަ(uu8Q���v�I��-��u8q)L�L��mф�É27�y��*����'��4..�8B����DQBd����R�P��u<q)�ϋL2�P��u<Q��gk+h�#4C]_!�!0��U�:⌧#ÉK Ⱥ
��q�G0�(8a+����[M�É�ԞYu���j��N\JO�������49x'e��7�51�8>X�~'�.b>�q|�މ�l�E.�]J㧛{}ʤ+��_ȍ��qN�cwKĭ_č1��߱;QB���}��`���2v'J�d{!`>�q|�މ.�^�v<>X��M�p";�S���:x&/�Ƭ%S/�n�*O��Pd֒���@��H�����ܾC�^D	�B�i���ܣ4�����|7J��)�bI�?�<�;��_+D
QF1Q�Gs�T�\!R�3��3<��R�׾,%�v7:�-�6�"
�q3� ����"W@�BF�tP�_��p�ǅ�hlw:���[@�q������+D
ƀ.�F�;���W����ҥ�ڡ�Z�bI�Iċ�1���6��A=��� 4�>!��04��F�k�Rq��*1���0�v���!cs���Z J��z17�'
f�/! �z!7����am�R"�{�`� 
����*�(x�(�-%xk��{L�W�>_B8��bn�1e}Ln�(�sXg���c����Q�簅`���pѻ��`)������*���\��9l�\B(����\��j�{���Pl_���Ӑ6���a�V�w@e�/g�ú���0�R*k*c����0`Rv�nv��?��������-]y�����V�񖮼�H��Lu��*1�ҕ�� I��73�������SP���3�i�X]�к4 -%��ج�K�����bS�C�����a@Q�`�uh�����gp	��勔�ـ��J��(�/f�}Y/�~z�0(J��lG_���^(�.%��z�2�^(���d�vq2�Y�O1Yp%62���K{�t��8�H�of0=}i/���P\R8䦩/�ҵ
�"�?��t���P���8�(��f4]}i/���P\R -��/�ҵ
�"����4���P��BaP��3�ξ�J?�P\J(K�R���t��7zf�����I��wm��8�H��Mmpd&���3�\w�ܟ��k�|&=������f�?z�,<�D�>ڤ�G�M�8���g���z4�8�T�!i��9(j�ǃB�w؝�*Ȧu/�,����q�2��8�佐 ���)�V��1t��瀢�o�d����9zȉ/�d���y�"�9�(�{%�* �Te<MU�wAJ�
�FV>�8�R��lk�2NS�E	�*�ez.��K�E	_*�\���)+�O��@��E�X9Q�)(��D=��)Ț���T�a@QBO�d{
��*�4UaP���S0ٞ��򖢼�a��R�/R�2�������!B�)�lmq�]3��������)Xi��]��G���)Xi�̪o�À����9��ȍ\����?D��S0���]3�R|��ȍM�3[�8�Z�E	��l�h2[�8�Z�E	��l�h2[�xl��>��|!7v,���_V�-�wz,�K�E	qK���l���]��~Y�d[]̆ȏ3D��DQBܒ���ر��2;?tCؒ���رz,P%D-����q��3���P�i/l��8C�P%�,��Y�!���g@Q��3��|7Mj.��\����#�Xg��:(
����X�Ѥ�{���G��@n񢥌sO�ܞ8��[����K���� E��8�$���-���&�7X����RA�@z�(R��3#���P���3G!� n&^^ȇ��.��9
qkq�5n���7�h�X��X"k��b�n!K1>���@n�C��[��iT��(~4B�N(�9
�Qq�Q�q/�(J8��jD;���C��E	�5�S�N���Q0 ��q�)�C��S�(R�n�n�ͼX�~nF��.�|��)s{'����h�|cE��N�[V�;�޲.HN	��k�V����R�( Э^Ѝ�+L?en�+̭N+��&�W菮(��f�ؼ��w~�\!�8���<y<=O<M���@����$�M�)s�i QG�B�1e}L9
Q���*���O�(�-�K�]3��������Z0'�7���.�箱�@�T��
�����Q@����*	e���vv�)��26wՄz7�<=��c%�����]s>=��cZBh
k���<=��c%�f��<=�y%�f��<=��7�e�'5��`=��Ӄh	�	saY�փh>=���ο8�5�`=���A�8��@T֬�� ���^�n�QY�փh�D[��'²f��|z����&��f�l��<3M������Y�i2ׂ�7���Y�i2�L�I8�(!*�ր�f��g��$�	u+��ޮo�����to��N�ޮo����ԭ�ӷ����@�R�P2'|І�㧛�o�D��n�ڰzo���"�-ݎ/�a�Po������,ݎ/�a�Po���Ki�n�Z�?��8�(�=K��'�ş���0�Հ�,ݎ/f��y�Ǔp���n��d�<ɂI8�(�7K��Y�`�d�$�_�К����H���d�$�)ရ��4Y05Y0	�)�f�^Rl�B8S�=�)8�GLV�MU>ɂIH�H!C3Lk�,��,���/�}̇i�B��$&����0�Yh�`j�`�/RH�ӝ�&�&&!�Kj@�_R̿�c#<�)�h�i�B��    $&����0Zh�`j�`��'KjBj\R,�V���z�'���GMLML2�D���O�&�,�A�~�!A3����[BS?��C~f<����%�к b���3�I��.Y���u���3����.Y����Q�k*"93��,$��5��oə�$g�B/��u���3����.
^J�G��!;3����_Q[������OvF�dAH�s����9�l�B���>&G�E	ٙ��f/d�)_?�?&dgN/(���[���=���M:�ld!I�d>w���&�f6{�K,�h~�;H�hf�N3(�͕�g�搝9�l�B���R*��%T4�ɧ��,��vE��{4��ABE3�|��@�}�^BC?ߣ+z����f/t���U]ச�e�O/���ݣ��Z�^69�y)���[i�w�D3�|���B�iW�گ��~s��M>�l�Bw�^B1���]\�O3,$�C'^,��ť�4���=z)���=�l�if#I'�Љ����l��e�������^-%�>.%��v}{]�+Q�8�Z%��v}{]�+QJ8�3Y%��c���^_4�ɧ��,tL|)mO >���ե����]��%�.��08�.6{��4��RT%��m3˧���w&{b��rB�|̫��1�'{�s���2�ǻ�����Q����,�/%�9�b��ܶ��X�Urٙ���.p_Ny��r�z��J(��J.=S�����ҥ����<��WJe��rl�*��s8�g��jI��f���9���{%R�|d+E���ܟ}�+�J8�SO9+���)�����S>�Ub7ç+����L�-���x�0��m7;�%E��O.V�;t�~31��)���)����7K�Ur֭�����.R�p&޵K��Cj�
�m9���r�-���эYR�d�2 � 8.U'oD��- � �ZB���  �K�܂-] ��r�(�9�[N� E��R��`�&�[) �������ϕf� �
 �%t
h��q+�yU ���(�Q@;厛�4rU ���R�k&��( h?ݜ/w�h�z����� �K��ڈV��� �q���>�Ub �) p\J��#�Y>͚���̆q)Q��O3�|\��K��t�x��X�q�2.��@7,�f.����{{'�t�|��X�q�2.%J����i�b����q�%�a�4s���be`J��������:����)Q��P3�<.V���F��w���be`J� ��ԓ�X��be`�
N��|z�i']��\ ��j6�b��L-%�p��L�yfZ00%J �� j̴x+=3-�% �a 5�i1u�SK
\� j:�b�L�D
�zFMgZL�i���HR��L�yfZ0.���5��3-�i���(�RC��L��3-�)p�a85�i1u��R"P=��3-�δ`\jImRMgZ�3ӂq)Q��TәSgZ0.U&�VM��N�˸Ԓ�Q7��v����q)���.b��O���R"X=f�B4v��SK	}�K��.��p`J���g�V�F.��p`J���g�Ќ��)�
�o�P=㼄����l�`r	n�f�\=����.�{���,"h2if�Œ�J=JZD�R>O�E�Kp��K�<�|���R"B=k�B�)e}JK��l�*����)9,��@�ڸ�H�<k��a�*X
绛�MfZ,rS�s�g8�NOK��L���*�c������Ӆ������ZJ8��O��/��wXJ�2��ӕ����w�UiMp���J��U���K-%���+��W��;.%Jp���J��U���K�R���c����ǥ���Ӎ�����;.%Bp��i��B'�︔(�˧]�#(����R�47,�v�����5:M�;˧]����T��n�4��iRR%���n�4����.p�o�8�O�ް�K5]�^ߜp�-�&�a7pQ!��f��h�4����~��<-�&�a7�j���|:Z>Mz��eU����O�ްK)�徛2�t�|z���"7M?����O�R���*�́OG˧]�#(��7>-�v�����wF��h����b)�w.;S1[=Gç}�G���;c�z��P��GGj�
wu�t��������w\J����aԾ�і�?ݟ�>c$B��Q��G���~{`��0j����NUW��R'C�}ߣG�z,%R���`j���HM]���h��O;�"F���c��4�ԭ%x��XJ�@��!�d 
��sA>��dP5��Hu]���%J3�f:caa)-�����/r�������)B���5�f,�3c�a��rc�M���X`XJ�(6;l��X�g��R��@��a�lƂ���z}u.!�;k��XX0)�Or�c"�f�M�KI+����H��i�l���RZy�g5D��]�U���n��j�[���*k?7~V�D����F�ʚV�9,%J��6�hUYӪ2�����6�(Tn
��%�{0�ӷ�����w������N�ޮo��RK	�&^ԉ��]�^��D	F�n��;}{���K���=_�A�a����;�c��7*��K�|��V�
��Be��D	F�n����C���R�#s��aPy�>���i�aPy��۸�]5�o[d�&��3i�Q)Q����"�I��T���R��U�B�P�Q)Q����*s�$��~
m\ˮPe>L��ܑ�+{*����6e�r��W��U'�B�a
�E�W^=`�S)�B��H��87kQ��0�s����ʲ��eK-)P��.)^xu*��)�%[)ZY���a)�´�Q��f�8kO���M��p�Y{*%J��3Z�Jtr���T�	J�Q��J��:��S�%����%���W�S)��Ȝ1.p�
�����z5bbΰ�fҫt���?��s��4�^�[I���?%$����4��TJ�����jZS3���ɍ
�o��֙�Ċ���]BS?�{C��i-ͤ��RZw���9sZO�ޞ���+�9tΜ�"7�)��侠"��Y.pÞR�)�!O	�3�q4*�UW�)9*%J�9��YSZvu���RMX��q43k�R��G�o�5�s���a���Sn��'tΜ��̬��%���w�P:gN�ff��͒̏�C��i��̚�����uά	f�.p�����!X�C��s�W%�J-%p�df�̭�uW�]���8��5sS)��r��`d�7����>������mXMY�)���ԁmJ�B���)SvPJ��M�V�Ք5e�J���i�R�eW�);(���m��m����m�ۛ�w/V���]�^�D)‏h���{�����|�K��]���A)QJ8��7�)SS��ޜ���aLy(SvTJ�
2�a^J���0eG���MlV�1�L�Q)Q� 7)[%Ɣ�2eG�D��ds5s��6.7�'n��bLy*SvTJ�:�M)V�1�L�Q)Q�65^J���0eG���M��cʰfR*%JЦU�D���ܝ=�j��p�{��x��sy�TJ�"y�V�^�ù={*��p�ǅmhK������3��ӠJ��(��7C4�ϧA?@/�:ue�J-)P�Э�+Ӷ�J�T���JѺ2��੔HUP�tQg���F�Mp1~�(�J�*9k&�TQ)㗆��\���f%i�UtA~騻*�r�LHi�UrQ~�!���%1�}Q��A&��Q�`����;p���k79V�)�zGn��L��U�/!-z��J2�V�#-zߋXR�X�iV�i:n#J��4��a�[IY���^�X�Iϰ
��6�
�D�PR�PeMA�7���LKb��)(���� &�&1P���yvnp��9���S�yN�fzhV��t-����� ��DYRT���މ�LO�*������ډr��I�sw��~����ڳ9��Q�zGn���Œ)J��@;QL*Lb�l()��&�&1R6����vBn ��9����n��������bI��M%e~��(��&1R6����vBnp�G�J��M%e~�����'�U��l���SH���/%^�5@��vl2B�J�H&h���h'�9�x�$Z$�H�O�    )��ㅓh�L�"?�Nr�\��ٞg�67��r�/�DqYT\���n�e�N���*�r������ʅ�(.���|"^�p�)Y�c����ȍ(�dy��e:f{�mFn�pR�p�R5u�6#7I�κ�Z�c����f�F�P�<l��������5�N�M�|8�N�ηi�s>/�D�~���m� �.�D}~���]� �.�Dm~���ME	�v��!-&�* 7��FT-O��!7�1U@~s�Z�6SC0n%�InXC�([���I,�OJ�Ȭ�Q�<m����^tCˀ�cB��Lb�)�c�S�D	4�^4�=����O���.�Ĭ�Y�C7I�N�I԰1ۛn����pB��4i6f{	i�;�!��q�$f�/���:!78�&ICb\�Mi�;�r�d�IҐ w+e��A��&GC�ܰ0�V�ktM����!A�:IM?�N����I,�Y5��Љ���I,�Y5���	B���gH��(����3�\0������O�t�T.��PYST�ЉpR�pCeMQ��B'�8��N��o�����7�.!Z�E@�����`�¤�4ɿ�9��:e2�}�� ���>/���ޮo�C7K	�*���nh�;y#��p�$�ʆ�2GnD� �/��P�]��7W�h�Mb�l(*s�f)!�n+�}������\C��*�wE���:`�-T�1.��&��Lŀ��E�*������dJ���v@���3�s4��lh�V� wƀ��E���9h��7I�x�p�<-�q�F�"��p�=-�q�F�N�)WfC�7��" 1,	�|^4��2��yr#R�WN��I���̓�B�r2�lh; ��$�.(YN�d�m�d#���,'S�LB\(E�\�_P��򅓜gRʓ���?)�|�$��Q��Fւ��T.���Q)Or�k��Y�>���h�����J��}RO�!���{}S-%�k�'��o�#���!���u�z��n�Or�U��k���o������~��}RO��M�n��m�����l{�l�� �7�eַO��(�y@~��m�Y�>�������	�~��}RO��MT%�9���G�鷒��{]�E	��n�Ñz��7t�뢱���l8RO��MR�����v8���JS��w²�-&���i�<��N��ni0���x���ww�I=��y@��0�[L��7j���4�[L���޲.���z��T��(��4A�����֥����ݏ���o�I=�F7Y�7���ni0���������j ��z���-����@������~�����M5�wC�Y==Ѝzݐ� �����RCWT' <f���@�5�uE)�a�0��pQ�� f��[Ig�=�a�0����Tu����(�5)QkR�yI�"(���!�]�^7d��
�z�It��,J���PaVOr�uExKEp�a�0���1?�{)u�Y==��k��,R ���Iy������X� ������n�O�ַO�˶R�~s ���@3�cމ�%p�/VF�5�:
����q��ꎩ�S �ַ�Mu��H� ����sO�Z�<%0�i���R��:O��`�u�g���yL������LS���(�(Ok�'37����x��}2�w+i�<w��	8xZ�>����F����<-&37�с@�$�)�[Lf�n���怃���d���@�4/����������o��;H�	��`i0����t��G�	%XLf�n
�t��j&�����d���[�������K)�定	��`i0���@������~�0�����&��9�����d��f7�G����,&3��������~�4���]|���������`2�w������~�4����JC��7ó,&37Ҟy�����������\TȽ�48ZLf�.!�� ����d�����.�{�������$U������[I{�%�ݔA������LS��35G�'mv8Ձ�(�(�GK�'mv8Ձ�(�(�GK����M��g�K��)#�f�n����egj�����`7�g��s��������ݜ
�p4D����)��]�
�p4H���ţ�l+'R`��0a6�wc�o�L8&�f���]��*�f3�n�J��'�T��������w�.�f37��a@���\8.�f���$�ra~N��������h84�f�i߼����4'�c��h��� 
q(�s��h)�������\������_���S�T.N�PBU��,%p�zq����@�Э�ٹ��q���ׂ(����'��%���Kg�_������QB��f����V_D	����+�G��ԯK	$p^����nP��sB��.N�PB�ͯ�E{�0	C	]Q�[ J���mF�8�{�_�8���HG���s�(�c���hA�����c���h���`)�����0�0��@�Ё����q����QB��.P� �<��}���I��I��
�݂(��_��ꩀ�-%�`�#qm�R��R�	'aŜp�K	'|^��b��_D	-G�V�b����)4awc5��b�bI!{l�02����
�B�a�q��D�Z J0t�|a:;)��$�bI�����IQg'�"O�0��8qi_+D
��Q/tA��%�^D	��Q/LB��%�R�V,)`�vaڥ.i�:�"
q�Y7��8q)_+D
Ǝa��q�G�Yx��p��EJh,��_��������4I���3\��FB�$w��ȶs�G �Ir�@����"%lp���?!;f�@	���3_�Q��c�����:��/XJ %�s?��_�Q��c�����&,*Q�>!8;�m���j�P�_�@I�@	{LY�[ JpvL;X���l��܂(�'�_��e#�/~}��p��JX6�����"c�'a�Ȣ�H�@�`옶����J)}-%;�����j�4�,%��EJK������a�-}]�:,�-%��)X%��?,%�ۄ���@�-%���	�/�	�J��E��C�@	��7�n�R()(a��� �-%̕�����J�����]����ݰ��f���%����������'aoo׷�-%̔����j��y{�Q�H�`���J�k�R��)a,a����"��1\�����,�-%4a��%�%e	n�RB�z9|]�V:,�-%4a��"%P�_��\�Ѓ1��0@=��sBƘ/N� �T@�,%pk��e5�[�Z Jh���×�l���@�Є1/)�	H��K	��]��^��R�"
p�7fRU��V��0Fc� U5���Z��p�ǅI������QB#�8/JB�'��Q�B�`�H�$tx�N�+D
��d,��Rgx�[���I�Ih�����/%�:�1u��(ͯ�SG2�RT�ؾV,)�W)�y���V�|��:HQ���
�O���E���F7Zv��z�\�d���bZu��vYBȵ��F䦹�K֟ԝ����7"7͍I>َ(����E�Xʶj�֡�.�8�68"7��$ts/r��@�l#r�ܘ��\���7"7ͭ�e7�o6�f����.����l���7b7͍7�'U'k���`t��n B0�vӏ��4�od�n�WB�=^0�����ϡQ�����&������Ѝ(���Mk#v�\LB7���	k7���Ms��?�o&�n����VҲ��7k7m��Ms�I��.�n����f*侚&L��45b7�%��`�{o5���MK#v�ܼE�n�{o5��������YJ8��I�N倎܈L�}�$;�in��`�����4!Y%:�>���F7"��F#\8��:�ޡ�%�${�xpt��C7"��F#�!g7��#t/r#J�k4r�J��(jY�C7K
9��/)^vsʊ�)t6�X)ZV��ȡ�¥gT��M<BV�J�Iu\J|�N�y�QBo�ѪU�m����s�n�Q�N�m����s�F <  ���h�'�6|I��9r��pԭ����[DB���6"��F�ZI��[��$���T�u��&|�|����T{�X�ѩ�HnD� �n-����i>ํUdڭ��7���,%�ڭ�����܈�]3_,��"��7�{״��LS>��q��kZGk��)�cr�f)�%��F�>���ɁQ��k��F�&l�>&n�P�p���|ݏIa��G�)��Gd��B:��!N�wM���|ݼ���;F�	��9/��:x����,%��y�$VRT��:r#J�p����?�I�$�'k������[����=�&Y�mpD�n%-�q��?%$���Xƶj��ܢk����׍$T�]5\��68"_��������F��7"_7nѪ�N�oL#6�u��T��͡�QhLbۦ[o/%�$�߈|]HB����7��Q0ݍ����[�*��7��QKboo׷�ܢ�p��������u�R�7����ׅ$ts����lC�B��h(�w�(��Q4����׭�e7�o}�b�`��C!��E	}���k��n��?�}5et5������t�K��	!�nz����72U7~ohi�Œ��]�-J0�^0�a���ܢ4A��I�~u?�I.;��ԚU�w���<��#޳������s�8��ZHo�A'ܻ�{I�S��y���ߟK�!7�.6����TF�.c�b_!�e7�jX2�w��'Ѳ"���!�H��c�
��?�ݡKO2�.6�u+�(����Ҁ����|��d�n\�_pR�p�×���E��'o�
)JɅ�e���������+ށ      �      x������ � �      �   �   x�u���0�3.f��O/鿎�b����i0BN��IH^u�������f�7�'~ɧ�*7ݡ�!W�n���!H�� 93\�-Lz�Y��SJ�%?DU8Z��P)�8��A��A��6��]�1��s8�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   S   x�U���0�7aB	ޥ���DU���{��&,�t��	��M��g��5�K�<�/�g�B^z��}Q�8h8�|�6~��~en�      �      x������ � �      �   �   x�mѻ1��Z&�藴K��#wHp�V.��.蚾��i�	s�V��H���J�O*�^s���M��6`ӵ�l�6���f�Y�,6[��&�I6�M�D8��K�X:���O}=���΅��K���Z� �_`�      �   ]  x�m�[�%��D��s���\���q$���� `��UDD%S
i���֟�4~H�����/���Å�����?����C���/>��W����B��W '�x/w�;�|�tz�.����o�+�E&�B��}x >|�>P���~�=P��?����T0Zw��a匸]_���?F�z� ��`t����C��oC�RC܌���]����G�w�$��/��F�K%���:]�Z�:��t=RhuV���r�(����,/�xN�ŉ���s#����\�z�+��t�t�t���w�y���_��B��w������A�rCܥ�&{�g���}�F{F����q�W��Y��__| Ntpz��ך���� -���Eކ�ja�]����g����6�WzC�����\����6�W� ����0_-%�M�|�w�M�~� ����7�Kq�N�n�_-��G�*��_u ���Z.�Qz}7���Ko�����	n�����K�[��Y��@m��~���ݨq3��n���G��\��k߄���\ߝ��w�]y}w�rMp��p�]����y��6#.���l��!��g��������n�k�ܴ/��[��t�d��q��6n�+L"n�5�zwh��K����Ks�ޒ�w�}�]zO��>ܤ�d�=.�.}��]Z�����3�&}o�Ў}&���7Bh��7�k��]Z�tM�H]w�59"���&�%G��w��H���^N<"��kt&G����ѽ'C7J�ct�Ѝc n���~���-��G�6"����zE܍��48��hK�Hc"�һ7c�֜�����k��M���m��+�!nZ�ی�q:ZV'y3~�8����i���/0֦9�(_�7��hEܕ�ی_匸+�o3~������i����'֦9ڌ���F�nt���U.��ѽ���sI�c�l&Q�-.��<��$�q��L��Υ#nN���:)��>��yi��ۛ�Z(�MzS����񦀯�K�O�i^��k/!h��	~������Dܤ�o3�#5�M�
q��y����Z$�Mz}S�WKAܥ�7|�K��;��u��X;d/^Y2��_i���X&�$_��kC���	��)hٷGq��? �]�`��� w-�ً�'x?x���|i��f/Eܥw�^��$�.}`�╙7���-.���Bm�6��&�^,�mt�ً��F.��Xg���+d/�[\��
ًyF�m��X�n�c�b�����ŵ$��pFf��k0�o������N����t���<�VWEܜ�7��\)��ӳoF��x�N+��Y(��i�32�@ܝv<#�V�����U�.�ftB��V"�V����<���|�p:R���_+� ~��w�� �Y.�����k�!��k�V�Dܤ�$|���K���^�������W�]�L�W�	~��9���� 7駭��KK��o��� n�7��K��tM�W�
��5JoI�j��K�I���&}$��]��S/�K� }�A���I߷G�_��H߷G�_}"n�U������^V\���uF��ɩ�5��hKN�]ܴ���;
�nt`T×��z���=��v�^�����Q�bd��w�_8aT�2��~�Qm�������1ڔk�VPܕW�jRqW�0��Z�?;���+J��9�fIh3:��6;�ft_�4%E7��2/�)!J�c�1F�q�K0�o� �MJ��t����@ܝV�jR*��aT�7��ڸ�5:IT������_|"nN{��&�!nN���~�_����_-��Gz<RK)��t�#����K�ү�K�(�%G�	n��^��B���Gj)q�>�a��pT\O{��#�F�������aD
�t���#h�%71#ti�ZFXw-5i��&"nZZ�02�s�8"(ti�ғAY?)�]z2"(�	~��dDPd"n�'�
]Z��}}��q�>�AIp�����]:�
���Ȋ㈠p��5��
w��h2"(�	nZ�AQB���#�B�x�ktOIBm�H��3j���ct���.5�MK2"(ʈ�Q��[4��
sį�dDPx"�N�A���&&���d���ef\�&88H�H���=�r�^ď�=z�*�dZ��o�Y^��F��(����TNhS���F�Dܕ����w�ol���_{h��-���ځ�U�8����,+dnN�M����Qd��)+�؈^Z��76R5�M���j!�]z�iq�>��F���O���Z�H߳�Ў�7����iq�.76���A�F��jKp����H�]z��q����F�[����FjOp�>��F�"��'��H'�M��j������j�S��fӿ<�3�\�.�IS~�8�3�7%-%���s�����NQNM���	�rZئ&���شPƏ��l�W��Obf�붖$����������*�7�{)F+�
�����F���ܞ54�����$�����%�m��w����xs;0��_y�ng�ކD��m%�o�$��m������K�؛Z4��&x���5���J��C#��[�����w�-9lϑ�n'����'#2j�����&�'C2g�d8Iw����p�ae�IJ
<���J�x�2%<��d>I���țP���)�I&��>���IF�tgH�MN2��;,��(�)i���gSJJ-�M~6��,�dNI�$��O��~�D�ɤ�ROx���*)kƛ�dVI���㔨��(?U	��9Q��G�LEU8�M��IQ-����㨨���ɬ��Lxs;�aQ��&'�U��w�8.��W�E�8/�$�_����rIxw�L�*���r� '��U4�[.�N���`Xg�w��'�l�=�Nuf�<<�.���ğU���%��"nՓ�%�%��AeO��|��/�Q��|��or&�#]	y�C�K�*���P�[��5㏜��³���.o�U~�V����_�e��I���J»��D�߳�QN�c�j�x�38&jՄw9�}��gۂ�3_~d��Ä�>�5�M'#�Z[�":��j��?��=�G�=y����Q�i4˿��o���+^�'g�V���Zg��^b��V��4^��x�Q�>�'�8y����������l!      �      x������ � �      �   M   x�e���0kjA_lj��?G����k���/��k�!M��> ⯪�'�^0�l�o�聲W����n��B_     