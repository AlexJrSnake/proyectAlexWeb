PGDMP     5                     v            planning    10.3    10.3 �   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
    use_week date,
    use_value integer,
    product_id integer NOT NULL,
    code character varying(10),
    scenario_id integer NOT NULL
);
    DROP TABLE public.txgoals_erp;
       public         postgres    false    3            �           0    0    TABLE txgoals_erp    COMMENT     �   COMMENT ON TABLE public.txgoals_erp IS 'Almacena los datos generados de las metas de producción de la planificación regresiva para ser enviados al ERP';
            public       postgres    false    311            �           0    0    COLUMN txgoals_erp.goals_erp_id    COMMENT     N   COMMENT ON COLUMN public.txgoals_erp.goals_erp_id IS 'Id de la meta del ERP';
            public       postgres    false    311            �           0    0    COLUMN txgoals_erp.use_week    COMMENT     ;   COMMENT ON COLUMN public.txgoals_erp.use_week IS 'Semana';
            public       postgres    false    311            �           0    0    COLUMN txgoals_erp.use_value    COMMENT     D   COMMENT ON COLUMN public.txgoals_erp.use_value IS 'Valor objetivo';
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
       public         postgres    false    3            A           1259    79014    txscenarioparameter    TABLE     c  CREATE TABLE public.txscenarioparameter (
    scenario_parameter_id integer DEFAULT nextval('public.scenario_parameter_id_seq'::regclass) NOT NULL,
    process_id integer NOT NULL,
    parameter_id integer NOT NULL,
    use_year integer,
    use_month integer,
    scenario_id integer NOT NULL,
    value_units integer DEFAULT 0,
    use_value integer
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
    public       postgres    false    198   hw      "          0    78637    aba_consumption_and_mortality 
   TABLE DATA               m   COPY public.aba_consumption_and_mortality (id, code, name, id_breed, id_stage, id_aba_time_unit) FROM stdin;
    public       postgres    false    200   �w      $          0    78643 $   aba_consumption_and_mortality_detail 
   TABLE DATA               �   COPY public.aba_consumption_and_mortality_detail (id, id_aba_consumption_and_mortality, time_unit_number, consumption, mortality) FROM stdin;
    public       postgres    false    202   �w      &          0    78649    aba_elements 
   TABLE DATA               6   COPY public.aba_elements (id, code, name) FROM stdin;
    public       postgres    false    204   �w      (          0    78655    aba_elements_and_concentrations 
   TABLE DATA               �   COPY public.aba_elements_and_concentrations (id, id_aba_element, id_aba_formulation, proportion, id_element_equivalent, id_aba_element_property, equivalent_quantity) FROM stdin;
    public       postgres    false    206   �w      *          0    78661    aba_elements_properties 
   TABLE DATA               A   COPY public.aba_elements_properties (id, code, name) FROM stdin;
    public       postgres    false    208   x      ,          0    78667    aba_formulation 
   TABLE DATA               9   COPY public.aba_formulation (id, code, name) FROM stdin;
    public       postgres    false    210   .x      .          0    78673    aba_results 
   TABLE DATA               C   COPY public.aba_results (id, id_aba_element, quantity) FROM stdin;
    public       postgres    false    212   Rx      0          0    78679    aba_stages_of_breeds_and_stages 
   TABLE DATA               w   COPY public.aba_stages_of_breeds_and_stages (id, id_aba_breeds_and_stages, id_formulation, name, duration) FROM stdin;
    public       postgres    false    214   ox      1          0    78683    aba_time_unit 
   TABLE DATA               G   COPY public.aba_time_unit (id, singular_name, plural_name) FROM stdin;
    public       postgres    false    215   �x      Q          0    78749    mdapplication 
   TABLE DATA               O   COPY public.mdapplication (application_id, application_name, type) FROM stdin;
    public       postgres    false    247   �x      S          0    78758    mdapplication_rol 
   TABLE DATA               G   COPY public.mdapplication_rol (application_id, id, rol_id) FROM stdin;
    public       postgres    false    249   �y      T          0    78762    mdbreed 
   TABLE DATA               7   COPY public.mdbreed (breed_id, code, name) FROM stdin;
    public       postgres    false    250   z      U          0    78766    mdbroiler_product 
   TABLE DATA               \   COPY public.mdbroiler_product (broiler_product_id, name, days_eviction, weight) FROM stdin;
    public       postgres    false    251   3z      V          0    78770 
   mdfarmtype 
   TABLE DATA               8   COPY public.mdfarmtype (farm_type_id, name) FROM stdin;
    public       postgres    false    252   hz      W          0    78774 
   mdindustry 
   TABLE DATA               7   COPY public.mdindustry (industry_id, name) FROM stdin;
    public       postgres    false    253   �z      Y          0    78780 	   mdmeasure 
   TABLE DATA               b   COPY public.mdmeasure (measure_id, name, abbreviation, originvalue, valuekg, is_unit) FROM stdin;
    public       postgres    false    255   �z      [          0    78786    mdparameter 
   TABLE DATA               d   COPY public.mdparameter (parameter_id, description, type, measure_id, process_id, name) FROM stdin;
    public       postgres    false    257   
{      ]          0    78795 	   mdprocess 
   TABLE DATA               J  COPY public.mdprocess (process_id, process_order, product_id, stage_id, historical_decrease, theoretical_decrease, historical_weight, theoretical_weight, historical_duration, theoretical_duration, calendar_id, visible, name, predecessor_id, capacity, breed_id, gender, fattening_goal, type_posture, biological_active) FROM stdin;
    public       postgres    false    259   F{      _          0    78801    mdprocessclass 
   TABLE DATA               M   COPY public.mdprocessclass (process_class_id, name, industry_id) FROM stdin;
    public       postgres    false    261   |      a          0    78807 	   mdproduct 
   TABLE DATA               ;   COPY public.mdproduct (product_id, code, name) FROM stdin;
    public       postgres    false    263   b|      c          0    78813    mdrol 
   TABLE DATA               T   COPY public.mdrol (rol_id, rol_name, admin_user_creator, creation_date) FROM stdin;
    public       postgres    false    265   �|      e          0    78819 
   mdscenario 
   TABLE DATA               o   COPY public.mdscenario (scenario_id, description, date_start, date_end, name, status, calendar_id) FROM stdin;
    public       postgres    false    267   �}      g          0    78829    mdshedstatus 
   TABLE DATA               I   COPY public.mdshedstatus (shed_status_id, name, description) FROM stdin;
    public       postgres    false    269   �}      i          0    78835    mdstage 
   TABLE DATA               9   COPY public.mdstage (stage_id, order_, name) FROM stdin;
    public       postgres    false    271   k~      k          0    78841    mduser 
   TABLE DATA                  COPY public.mduser (username, password, name, lastname, active, admi_user_creator, rol_id, creation_date, user_id) FROM stdin;
    public       postgres    false    273   �~      l          0    78845    oscenter 
   TABLE DATA               R   COPY public.oscenter (center_id, partnership_id, farm_id, name, code) FROM stdin;
    public       postgres    false    274   ��      m          0    78849    oscenter_oswarehouse 
   TABLE DATA               x   COPY public.oscenter_oswarehouse (client_id, partnership_id, farm_id, center_id, warehouse_id, delete_mark) FROM stdin;
    public       postgres    false    275   |�      n          0    78852    osfarm 
   TABLE DATA               S   COPY public.osfarm (farm_id, partnership_id, code, name, farm_type_id) FROM stdin;
    public       postgres    false    276   ��      o          0    78856    osincubator 
   TABLE DATA               �   COPY public.osincubator (incubator_id, incubator_plant_id, name, code, description, capacity, sunday, monday, tuesday, wednesday, thursday, friday, saturday) FROM stdin;
    public       postgres    false    277   e�      p          0    78860    osincubatorplant 
   TABLE DATA               �   COPY public.osincubatorplant (incubator_plant_id, name, code, description, partnership_id, max_storage, min_storage) FROM stdin;
    public       postgres    false    278   ��      r          0    78866    ospartnership 
   TABLE DATA               Y   COPY public.ospartnership (partnership_id, name, address, description, code) FROM stdin;
    public       postgres    false    280   �      t          0    78875    osshed 
   TABLE DATA                 COPY public.osshed (shed_id, partnership_id, farm_id, center_id, code, statusshed_id, type_id, building_date, stall_width, stall_height, capacity_min, capacity_max, environment_id, rotation_days, nests_quantity, cages_quantity, birds_quantity, capacity_theoretical) FROM stdin;
    public       postgres    false    282   Ʉ      v          0    78886    ossilo 
   TABLE DATA               ?  COPY public.ossilo (silo_id, client_id, partnership_id, farm_id, center_id, name, rings_height, rings_height_id, height, height_unit_id, diameter, diameter_unit_id, total_rings_quantity, measuring_mechanism, cone_degrees, total_capacity_1, total_capacity_2, capacity_unit_id_1, capacity_unit_id_2, central) FROM stdin;
    public       postgres    false    284   }�      w          0    78890    ossilo_osshed 
   TABLE DATA               v   COPY public.ossilo_osshed (silo_id, shed_id, center_id, farm_id, partnership_id, client_id, deleted_mark) FROM stdin;
    public       postgres    false    285   ��      y          0    78895    osslaughterhouse 
   TABLE DATA               i   COPY public.osslaughterhouse (slaughterhouse_id, name, address, description, code, capacity) FROM stdin;
    public       postgres    false    287   ��      {          0    78904    oswarehouse 
   TABLE DATA               X   COPY public.oswarehouse (warehouse_id, partnership_id, farm_id, name, code) FROM stdin;
    public       postgres    false    289   (�      �          0    78926    txavailabilitysheds 
   TABLE DATA               k   COPY public.txavailabilitysheds (availability_shed_id, shed_id, init_date, end_date, lot_code) FROM stdin;
    public       postgres    false    299   ��      �          0    78930 	   txbroiler 
   TABLE DATA               �   COPY public.txbroiler (broiler_id, projected_date, projected_quantity, partnership_id, scenario_id, breed_id, lot_incubator, programmed_eggs_id) FROM stdin;
    public       postgres    false    300   ˆ      �          0    78934    txbroiler_detail 
   TABLE DATA               �   COPY public.txbroiler_detail (broiler_detail_id, broiler_id, scheduled_date, scheduled_quantity, farm_id, shed_id, confirm, execution_date, execution_quantity, lot, broiler_product_id) FROM stdin;
    public       postgres    false    301   �      �          0    78938    txbroilereviction 
   TABLE DATA               �   COPY public.txbroilereviction (broilereviction_id, projected_date, projected_quantity, partnership_id, scenario_id, breed_id, lot_incubator) FROM stdin;
    public       postgres    false    302   �      �          0    78942    txbroilereviction_detail 
   TABLE DATA               �   COPY public.txbroilereviction_detail (broilereviction_detail_id, broilereviction_id, scheduled_date, scheduled_quantity, farm_id, shed_id, confirm, execution_date, execution_quantity, lot, broiler_product_id, slaughterhouse_id) FROM stdin;
    public       postgres    false    303   "�      �          0    78946    txbroilerproduct_detail 
   TABLE DATA               y   COPY public.txbroilerproduct_detail (broilerproduct_detail_id, broiler_detail, broiler_product_id, quantity) FROM stdin;
    public       postgres    false    304   ?�      �          0    78950    txbroodermachine 
   TABLE DATA               �   COPY public.txbroodermachine (brooder_machine_id_seq, partnership_id, farm_id, capacity, sunday, monday, tuesday, wednesday, thursday, friday, saturday, name) FROM stdin;
    public       postgres    false    305   \�      �          0    78954 
   txcalendar 
   TABLE DATA               �   COPY public.txcalendar (calendar_id, description, saturday, sunday, week_start, code, year_start, year_end, generated) FROM stdin;
    public       postgres    false    306   y�      �          0    78958    txcalendarday 
   TABLE DATA               �   COPY public.txcalendarday (calendar_day_id, calendar_id, use_date, use_year, use_month, use_day, use_week, week_day, sequence, working_day) FROM stdin;
    public       postgres    false    307   ؇      �          0    78962    txeggs_planning 
   TABLE DATA               y   COPY public.txeggs_planning (egg_planning_id, month_planning, year_planning, scenario_id, planned, breed_id) FROM stdin;
    public       postgres    false    308   ݏ      �          0    78966    txeggs_required 
   TABLE DATA               p   COPY public.txeggs_required (egg_required_id, use_month, use_year, scenario_id, required, breed_id) FROM stdin;
    public       postgres    false    309   ��      �          0    78970    txeggs_storage 
   TABLE DATA               �   COPY public.txeggs_storage (eggs_storage_id, incubator_plant_id, scenario_id, breed_id, init_date, end_date, lot, eggs) FROM stdin;
    public       postgres    false    310   �      �          0    78974    txgoals_erp 
   TABLE DATA               g   COPY public.txgoals_erp (goals_erp_id, use_week, use_value, product_id, code, scenario_id) FROM stdin;
    public       postgres    false    311   4�      �          0    78979 	   txholiday 
   TABLE DATA               [   COPY public.txholiday (holiday_id, calendar_id, year, month, day, description) FROM stdin;
    public       postgres    false    313   Q�      �          0    78983    txhousingway 
   TABLE DATA               �   COPY public.txhousingway (housing_way_id, projected_quantity, projected_date, stage_id, partnership_id, scenario_id, breed_id, predecessor_id) FROM stdin;
    public       postgres    false    314   n�      �          0    78987    txhousingway_detail 
   TABLE DATA               �   COPY public.txhousingway_detail (housingway_detail_id, housing_way_id, scheduled_date, scheduled_quantity, farm_id, shed_id, confirm, execution_date, execution_quantity, lot, incubator_plant_id) FROM stdin;
    public       postgres    false    315   ��      �          0    78991    txlot 
   TABLE DATA               �   COPY public.txlot (lot_id, lot_code, lot_origin, status, proyected_date, sheduled_date, proyected_quantity, sheduled_quantity, released_quantity, product_id, breed_id, gender, type_posture, shed_id, origin, farm_id, housing_way_id) FROM stdin;
    public       postgres    false    316   ��      �          0    78995 
   txlot_eggs 
   TABLE DATA               Y   COPY public.txlot_eggs (lot_eggs_id, theorical_performance, week_date, week) FROM stdin;
    public       postgres    false    317   Ő      �          0    79871    txposturecurve 
   TABLE DATA               �   COPY public.txposturecurve (posture_curve_id, week, breed_id, theorical_performance, historical_performance, theorical_accum_mortality, historical_accum_mortality, theorical_uniformity, historical_uniformity, type_posture) FROM stdin;
    public       postgres    false    328   �      �          0    79003    txprogrammed_eggs 
   TABLE DATA               �   COPY public.txprogrammed_eggs (programmed_eggs_id, incubator_id, lot_breed, lot_incubator, use_date, eggs, breed_id, execution_quantity, eggs_storage_id, confirm) FROM stdin;
    public       postgres    false    318   ��      �          0    79007    txscenarioformula 
   TABLE DATA               �   COPY public.txscenarioformula (scenario_formula_id, process_id, predecessor_id, parameter_id, sign, divider, duration, scenario_id, measure_id) FROM stdin;
    public       postgres    false    319   �      �          0    79011    txscenariohen 
   TABLE DATA               `   COPY public.txscenariohen (use_week, use_year, scenario_id, quantity_hen, breed_id) FROM stdin;
    public       postgres    false    320   9�      �          0    79014    txscenarioparameter 
   TABLE DATA               �   COPY public.txscenarioparameter (scenario_parameter_id, process_id, parameter_id, use_year, use_month, scenario_id, value_units, use_value) FROM stdin;
    public       postgres    false    321   V�      �          0    79019    txscenarioparameterday 
   TABLE DATA               �   COPY public.txscenarioparameterday (scenario_parameter_day_id, use_day, parameter_id, units_day, scenario_id, sequence, use_month, use_year, week_day, use_week) FROM stdin;
    public       postgres    false    322   s�      �          0    79023    txscenarioposturecurve 
   TABLE DATA               �   COPY public.txscenarioposturecurve (scenario_posture_id, posture_date, eggs, scenario_id, housingway_detail_id, breed_id) FROM stdin;
    public       postgres    false    323   ��      �          0    79027    txscenarioprocess 
   TABLE DATA               �   COPY public.txscenarioprocess (scenario_process_id, process_id, decrease_goal, weight_goal, duration_goal, scenario_id) FROM stdin;
    public       postgres    false    324   ��      <           0    0    abaTimeUnit_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."abaTimeUnit_id_seq"', 2, false);
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
            public       postgres    false    217            H           0    0    breed_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.breed_id_seq', 21, true);
            public       postgres    false    218            I           0    0    broiler_detail_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.broiler_detail_id_seq', 56, true);
            public       postgres    false    219            J           0    0    broiler_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.broiler_id_seq', 84, true);
            public       postgres    false    220            K           0    0    broiler_product_detail_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.broiler_product_detail_id_seq', 2, true);
            public       postgres    false    221            L           0    0    broiler_product_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.broiler_product_id_seq', 21, true);
            public       postgres    false    222            M           0    0    broilereviction_detail_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.broilereviction_detail_id_seq', 133, true);
            public       postgres    false    223            N           0    0    broilereviction_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.broilereviction_id_seq', 84, true);
            public       postgres    false    224            O           0    0    brooder_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.brooder_id_seq', 52, true);
            public       postgres    false    225            P           0    0    brooder_machines_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.brooder_machines_id_seq', 7, true);
            public       postgres    false    226            Q           0    0    calendar_day_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.calendar_day_id_seq', 113651, true);
            public       postgres    false    227            R           0    0    calendar_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.calendar_id_seq', 42, true);
            public       postgres    false    228            S           0    0    center_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.center_id_seq', 159, true);
            public       postgres    false    229            T           0    0    egg_planning_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.egg_planning_id_seq', 2910, true);
            public       postgres    false    230            U           0    0    egg_required_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.egg_required_id_seq', 3593, true);
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
            public       postgres    false    254            i           0    0    parameter_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.parameter_id_seq', 63, true);
            public       postgres    false    256            j           0    0    partnership_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.partnership_id_seq', 31, true);
            public       postgres    false    279            k           0    0    posture_curve_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.posture_curve_id_seq', 325, true);
            public       postgres    false    290            l           0    0    predecessor_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.predecessor_id_seq', 13, true);
            public       postgres    false    291            m           0    0    process_class_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.process_class_id_seq', 5, true);
            public       postgres    false    260            n           0    0    process_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.process_id_seq', 102, true);
            public       postgres    false    258            o           0    0    product_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.product_id_seq', 106, true);
            public       postgres    false    262            p           0    0    programmed_eggs_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.programmed_eggs_id_seq', 270, true);
            public       postgres    false    292            q           0    0    raspberry_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.raspberry_id_seq', 5, true);
            public       postgres    false    293            r           0    0    scenario_formula_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.scenario_formula_id_seq', 1375, true);
            public       postgres    false    294            s           0    0    scenario_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.scenario_id_seq', 185, true);
            public       postgres    false    266            t           0    0    scenario_parameter_day_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.scenario_parameter_day_seq', 56692, true);
            public       postgres    false    295            u           0    0    scenario_parameter_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.scenario_parameter_id_seq', 9580, true);
            public       postgres    false    296            v           0    0    scenario_posture_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.scenario_posture_id_seq', 53234, true);
            public       postgres    false    297            w           0    0    scenario_process_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.scenario_process_id_seq', 895, true);
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
dc��M�Qש�wz�`J���o������8�6�^�"�B�>����j�~��r`M      T      x�32���������� ��      U   %   x�32�,(�O)M.�W0�41�4�3�D\1z\\\ �	G      V   9   x�3�J-(�O)MN�<�9�ˈ�5/=�(%�˘�'�,1�$U�R�����D�=... �6>      W      x�3���K)-.)�LT0����� 9V�      Y      x�32�,��LILR)��@X����� X�      [   ,   x�33�,N��LI�K�/JI�s8�8�8S���\1z\\\ (fY      ]   �   x��P1�0���Dv��H����EB	*���c������|�0zh�l��$��d7�S��j������rr[�c��!$q d��@�MxWiT���|�E)��:�*��N��/�e�:��N���T�9�T2����������N��}�+3���L�^K��[c���W      _   F   x�3�t�K�/JI�4�2���K.MJL�<�9�7�J-(�O)M���r:^��P���Z��W����� =�s      a   U   x��K
�  �ur�����NӍ`j1��o�v�ހt�Ui��x^�R�R$iY-��\?�L�[l����9:n�L�i�kA����      c   �   x���=��0�g�W�4��8M�����naa� �H\+����G�@|��y��_���r�ӱ������;��?�f�e`$W��Ȕ胶�D�ou�� $�ǟ�v{B���]��sG��g�lώ����V$��X� �������|�,�����@�,bm�@����E��j{��z��M۴Ih�5��YgɩR�;12HV�(�_��      e      x������ � �      g   �   x�}�M�@���N�	����wz7e��fl'��#��(���}}/msWHM��E�(���]X��a���U�9z1���3y��c���^���kj�㓝�U:���DG҆Uޏ��qmܓ��l���oҫC@>M|�R�t�p� x ��l#      i   N   x�3�4�t�K�/JI�2�4���K.MJL����2�4�J-(�O)M.�/J,�2�4�t.:�6Q�R�'�,1�$�+F��� ۏ�      k   �  x���ɒ�J�����mc&s��(@�����AR��o�˺Q�:��FddD.�����I�4m�eM=��3d���Ʊ2_B����O�n��d��h�z��@`�X�S{�đ �ߤ~ݟ�-�yC�P���� T �@��d���Ӳ���q�t'V�5��M�b!b;oH�������2�q��3�Hc��MaԘ�o{��3�D$y��c�"9�~ou�2��:Hϸ��&�<�����|�]O}��H�PFY�~����ސUx��!'xtV�>~X�&���"z=��dI�V���=s.��+u�|_���tf��s״�����k�K�!�{H`�!��@�O5���@ �bf,U^:f%�fyԀp����ͪ׉|=#����x~p�i��-U��>d~��~��W d+�H�cHt[��ŎQ;�e~�U�>��iAD�n�DZ��l��j��^\o�M|�J�Mmn
���>�H���
+( 0"'��|� �'���u�UN\];	9lnhu�[�e����騸lS�d��ES%�=,��|�X���Tx��"e��^@��os�xP������e�/����̊�ׁ�:�i�|I�k�B�X6ׁ�쳜z��S������;P|H�x�q�����>�Q�6�@ӫ4s����6ƍz��S7��K��J�	9�S�ܕhM���b��v��Z�~+!�C��On�^v      l   �   x�%Ͻ�0���2E&@>;�%TE!
�SK�F!4l� L�Ÿ������5`V��A�[��J�j8�>0�`�b����ab��ut��'��Vs�[�k&�Q5�h�r칸��p�����ʒB��%��^!��6���RrFq.�@��Sڒ�'�^��E�\�p]మ�c(�>���|�m�$�6?9      m      x������ � �      n   �   x�M�1�0Eg�=rҦ-#�PT!�X��*A!A�,܆�p1�xa�����,���@�՝&��8��(�����~F
I���}HT0�NFn�L��y�p0�/�DϚB�&ZA���z�o�F"Ғ�5BGO����[�W)K��q��Y����r�wd�APĬ�,���}�ӍJ����@�6�.�,�~v9?      o   I   x�32�4���J�M-.O�40��b��K3�`✆&&���H���E�P��V� D7�~�=... iI      p   3   x�3��H,�,��4245��I�+ITHIU(H,J	pZps��qqq &M�      r   �   x�U��j�0D��W�#;�����:E[֒i ��@9�!���X��˰;�f㍨`f4��4�)k���\�]/��9e	�|�+\�S��PsQ&(͜�@�U����#���1ߦ���nk�3�t/:�;�/<��3�#��*�W��bd�a���r��n�L�-8���^~��u�iW����> A`>O      t   �   x�}��� ��g����&ȭd�9����4A��<�����\A�q�χE����%d�d��/S����P��a׫�W>�m�)�T���PV�v�?7k���oU"*������i]�\W5݌b��M�P%��Pk{�]�P�hΉ�2����R� �dT�      v      x������ � �      w      x������ � �      y   a   x�M�1
�0@�99EO ��t<��m��J"��۱��'X�M����ʻ$1�0�'���.���5=x y8US(Gf*���ҽ_'$#9<�"���"_      {   v   x�uϻ�0���T�*{z 
���S� �ܽ�#���v��2ɲ����{x|{ۃ( ���d�� ���
3�
��r��b�BA2 
F�5�Dy�������An�ι?ݔ^V      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   O   x�31�LN�I�KI,��WHIU((*MMJ��IL�/JL�IEb���Ur:;����8���*� �����01�4����� �Sg      �      x�t�m��ʎl�G�8��;��?�Nj;Čb��<�Ʈr-�4�Jwm�_5_�N�������������.��������d��O��AAK��j���gP�eP����_Т����WP�����/��w�����4|Ĵ��/&QLV1������d�)*�|Ō��/�PLU1���tM�T�i*�}�3�BL���b�W��yn�t�*g|��7h΃r�ˢ?O�G��/gRNxUX������Μ^��W�����B,'�r��`?�ќ$���_�x.�s�<���&]��$�N�+h?A`��I2��W�~�@u!���:�� { A�u�X��� ׅ�N��4�.�\ �B`'	vZ��ҕAv!��$;�_A��]��,���+hs�+�����瓸� ٕ�Β�\����dW";K�s�
���"��$;���}~����,����_���_��%�y|���ٱ�y��WP�
ȮDv,d����#�]dW";2���ԯ���'(}����v��e!������7 v˔#^!���w��[���W�����V)G�>�[˄���խQ�xy䷘	9��[����o5r��L�A9�ő�j&�<��_Τ���o5�̀�(G�4�[��� ��g��f�W3!h�� t'�U5���	A�݉hU�d�fB����NH�j&{5���LwbZU3٫������Ԫ��^̈́v��;Q�����L����;a�����L�O7��ĵ�f�W3!�^`w[U3٫�����Ad�j&{5���@� �U5���	A�j {٪��^̈́��d"[U3٫��/]d"[U3٫���n�=�lU�d�fBP�:�D��f�W3!�]d"[U3٫�����Ad�j&{5���A� �U5���	�/� {dY;��v��]`�D9��r}���9�3S����ß���ֳP����ß���ճR����ß���ԳQ�`��ß�q0=;��[;���5���#H,o���k��9)G�X��!��@�u�ڡx���5 �"�U�P�vA� zѪv(^;��~ �iU;�B��ۃ�EL�ڡx�.�|@�jU;��tP��jU;�B�&X/�Z��k�T�	�q�j��Cj�؋�V�C��!�k��Ed�ڡx���5d���V�C��!\���Dd�ڡx���kv٪v(^;����"�U�P�vA��?Dd�ڡx����!��V�C��!�k�"��v�o��
�J"��v��uA�VF�M5�>��k��	y����?@v"���A�+�^d������/�^�9�Z ;e��*��o����:�)*�|��=�N�r����x��D��EA�o_ߏ�����L�P��P:.���Ix�NGT��ȓ�W�������T~����u�	�]��,9z�jC�	'�tJ���l�T���s����o$��H*��=���ϖz����ې�3�����n�������h�_�$��<���~vg�������H��$��I;��~���9�!�$ ?~M����؃ Z~��5	xs�C�F -�~6���9�����t���?j�怇${�ٮi�怇��;��A�>�%{��g/����7�}mЋ��7��_�ޠ��Ϳ�ߴ{x���~Q
I�1|���w���'U�  �o���6��k�'����G���~~{�\u������+ ?�,���/�|%�,|[��w��5�'����l���8�
tY�u/���ג}jH: �q寠���g�;$��|��,���(H >^�C�Y���,�|8����I����I����II�ဇ${��8ǎ�|8���ڑT)I >�d�.$J�|�-,����y�!xH��. ~��L��`�_	��6Z ��a� �T�����h��v�4����� �䞙�j�'0�0N�?��/�|%�� ?5��[7 ��x�qZ��OZ_Ix�qz����7)^`� �4�3��Kj_IV��ӕN�m~�����)�,� W_��y�_K�W�	\��_W�
�S��qz�%���V�+|V� ~Z�%���V�!h�`��锖��W��z��Y��_^͇�}	�8�ɒ���j>$�;) ?%Œ���j~�}-Y#��Z`�j~y5�l�	��}�%�����
�1 ~�����W�!ɾ3 �˜���1qs��x���kv�Կ������<z�v�I�+Ɇ��ڙd���t\q����5)���e���y���©��_1���U�(�\D���ܵ5(���u�Mx�@���]8t����VKCT9�ʭ�����~l"�@��Tz�J��o�?,�L�cF9�I�+��$�~����"i�I(�	��n�7+�P�Ǩ��3��xM�ƋUT��b����yL��@F����aE�~Lt����wEm0�9�	��o\UE�"���yL,��*�Em0�8���oSE-�b��c���KY������Y�`�<�R֨����F��1x��F��͋I�L��c�+e����(��\U�u>K��G���U�cJY���^1j��I�y���Qώ��1.&�C��IY����Q���<�bR֨gG=\aS�@�E��P����a�4�|�?V�8j`eIm0�1�q����T�� �-�;�0����W�� ��%X����I�����l����!��_�(X�I����k�i �<�o� <�.�-=�R��z�������gr@�wP�w��/���gr��wP�w���I��3YN�;��;I���&y&ͩz�{Q�$t�yN�;��;If'�%/�9U�z� \`[W��wP�w��ˢK^I��X��W���P��JH��^���37	�+I x��W�m��FH��h
w o$9��I� od9��X
�iNxs�C��B��;yNxs�C���x'ϩ ox�w6q�;yNxs�CҦ uJ�j�5o�EU��@� ��c�P��LN��AH5��տ��>I��X��W����I�S5Ǻ7�B��I >�r��X��X�w6��'iN���If	�"ϩ�cݛcQ�$ ��s��X��XH25�yN����.'��7yN���I6�&�MH>^�C��I�o�@
�q���JT�$�|\�+h�Z�$�|8�Q�$tYN�p�C�� �Hs*��.0^�$��9��Iv	��<�|8�!��t�3yN�p����9V ^�s*�����i ���u<���I�Q�)�=��d�� ��R�{^��q�V���R��UwH�
�W��JuOW�!�D1 ��9�Ɪ�����a ��s*�mO�W��I ��s*�=]uGU����<�R��UwH��( ��s*�=]u�lC�w�@��_ק49	�;Y UͯCu�k�Xc�R������a�AHU�˫��dn�����_^�GU��� |��T���j>$ف |��T���j>\`-W >�s�j~y5��%��<���W�!����"ϩ����|�w6�	 �} }%YI�����z�\��U���E��&�`O��J��1��db��ow]az}Dgl���*_Q��8ּ�t�ؿ��ec:�&R����r����l���D�3kי�W���h&r�Y����,�Q�gr����W���+�	��]gI_W��DW<� ��;��O�~b*k�?�z��z�I�u��f!�#��{�R�w�'�z!�)���X�6	̚�L���~B���;
�WR��z��<1�%P��:���p��O��Y�uJ��'�Ĩ���f#�)�����6Ϛ�\���~�Jx&(�z#$Q��Iv6P��$��a��$��I�H���5b��I��ItJ��8�x�~1�5;�N���6	�њ�T�Dݏk�Q&(�� �)Qώz�w�?�i�A�S����Q��֜�:%��Q��pG�I�S���e����ZJ��n�����;�5p�_j_A�i�wNk�p�4��LN��E�3*��f�� �i�h��{v�J�`Lk��9���Qm�    �w'�<����5P�G��i �=���
2��&y�m7�=��=��E�<��T݃�݃�d�]�L�Su�wB���M^�t���?��wJ:�h�L��T��$�C����T݃�݃(����L��T��$[aC���R��v}>n% ����Xu�d��W�@
�vͯ��ӠX�,��9����� ���T�7<$����D��9�Q��w2�
�怇$�yx'ө ox���Jx'ө oxH��9 ��t*������ �=�ק
4=	�y ����d�s |�R��~��kRv �d�T{�{{,$�t��4�j�uo��LO�I�S�Ǻ��B����E�S�Ǻ��B�-T�E�S�Ǻ�ǂ�3?	��N���I�.�"ө�c��cQ�$�oA
�q�� ӓ�"����<<n�sh"ޤ���_A6��b"� xHڏa�|$Ҝ
���gz=�D�S>�d�M�It*��e�~ }�L�S>�d��O��t*��.����L�|8�!i_�a�Qp5�1|�#$���D����Xu��B�1�5
y %��տ����W�@Jv��-��bh�J�S���;$����<����ew����x#ѩd�t������L����ewH2?	��N%����`�lo�72�JvO��!�fF x'өd�t�e�N��D����!��ߙ��Y����j~]��q;v��@��_��
�W`kҜ��_^͇${���<���W����� �$:U5���I���'�NU�/��,�I |��T���j>$�� �d:U5���X�/2���_^͇$� |��[���C�'_$����},8��*ۡ[������}ͯ$+��(�I�ȭ�۷>�-�Qhޤ:����[!ʾ]�U��uʭ�۷>��Ѓfa"�)�>��eM��N��q��G���!��N��q��Gxv���d����}�#D��D[<��[�dқ�W�]�LHj�th�?I6*�����[���`{�^H�H��7A�Q�'�z!�)���t$F��P��:����|D����p֬�:����j�(3�@�����ob!l�U0�5+�N����1�n� ��N���&�
3�@������2�I�7�	 ��{����Q�����$��y�Q���0�5;�������O�N�S��'�[xi�A�S��'�ǨMƴ� �)Q���f(�� �)Qώz���9�>HvJԳ��6�Ԛ�d�D=;�A����P��'<B��΁�IoQ{�;L���-�E�=p�.�A���|'��޿�����Ip�HsF�=��Q��M��M�3*����I%m0��n��x��nK����H��)�^�{�%�d��B=O��2޻���ۡ�[����j�̈́�Ŀj���y�/��޻G%m�Q�DF8�V�{�������J�V"��QAv/�)H�T��R	�����	��R	A�w+�3H�T��TB����*���_*��g�T(�V��$��R	Iv� ^ƙgC�{猁{t0(�V�)I�_�G%�_��BIb( �?�{�x= /r��\���~�Q֭�(H���վ��S��n�LA�/W�i����3��[��Aj���4GH��J��&%�?\�i�����{�$�+>���/��n�z&���=�]]�Tt�J�L��-V%��7%�Oh}��W��1PϭQ(iɤ�������x�����;�[��-��5UT���  >34��6(��lgU����_lPǭ���L�'����
�ur�?�=�%�GQɭ���\�x��(��Y�U.Qޤ����Z� o�Y�U.Q<���/�Rn'J�2i~%�?����I�M�^��������A����<��~���N����<ٝ���� ox��
C��F�vҤ$xs�CR�I嗔%	��޸�1�ofm'UJ�7<$����4�$xs���j	������I��J �J�7<$�G /x��'�χ�������ޢ-�_�+hC�Ax�$ �o޹z� �6
��A���<��@�{.� �%	���!�n��[�$�@�<$�?k�m�IY н�_K�
��MI�M�{�6��BI�]�{�C5t�
�{?��x��*�J�4 ���|����7��LA������ �h$ /�!�n;��<���?,6��DI�ဇ��@�R� |8��oa�� ���ဇ��� ��T���<\`�g��X���<$�j �s�~H���6��s�������u�K�/����α�ޡ������od���Q�``�_Wg(���Yk�gPL���6����R�$�����ႍ�of��T)I 0��jH�?�of��4Τ,�*�J�o6�����MI�=n����������f�Zʅ�ě����!i��f�Zʝ�Ļ����3TCW�ͬ������ו���Ρ �d
������' ^	�[͇��4e ^������|H�d ^%	�W���ki#�x��$X^͇$��* ���˫�>,�^ x��$U�/��C�f� �V(I��-�����[�$�.���I��� �9�U���Q�_�CҦ���)�ʤ�d�`SP�xo�4d��J�40��$��_�ű�Wo�|$�Rn�~)�Q���G�(e���x���1(J����<Fm:8��%�����6
��BQJ�/�qV�nҏ�N�*��Uz�a@}�R��7Wq���X?N;����]�WI�����^Q<���/���oژ�_7�_�7N�A.�?.��W"����������1d�y�8��$��$��h&�>���|}���Ca�~e�>���|�x�'hÈ��I��o�����Ah��Պ�y~��+i�	��Ij�������WǄ�*d5�[T��d6�Қ�*�qH��: /�5�T������+yM�����8$ٟ�W���)�qT���+i��R����c�دF�G	�r�������H�(!]��d.�7��JH�����`�~5��JH�_�*LدNZS	�⽂�d6�w�JH�D5xU�دN^S	�⽂���دA^S�
��
���!�5�k�^A�^AH2	�i�+���ϼČ��d}T��^.}���6�_�����k~�������T�D5xULدIVS�
��
B�F �k��T��꽂p��H ��k�^A�%$��0a�yM�+�^�����D��&��z�K�����}�ix��T���%JH2���M�Gޮ������a"� oW�
����a"� o��z�\$:�����9�!i�P7:�����9�!i?z�'�Ik*��|��H4�3yMxs�CR�ZBW<��T�7<����yMxs�C��#�B^S��p��H ^H��fX�>����2 �d}T3�j�O��y3 �$}T3�_�|�@����j�u��C�F� �JRS5ú��Q�$ ��j�fX�<$������j�u����
�yM��^����SU ��k�fX�<$m* ��5U3�{|��H �I�(�Ǖ��6��>
��>�pRk |��Q��k|������|8�ႍ@����|8�!i�T�O��
�ဇ$�� |��T�<���� ����|8�!i30 �"�� xT�;	�/�
�ဇ$�� |�jvc��F�`S�ѫt��Qj{j���Nj��J7Y��硶��餆��t��Qj{^�|� ��MRS���_WC�F �W)��Tj{��ըwZ≴�R�ӿ���vu�^�D^S���_W�i'�#��k*�=��jH��F�R&����N����F���k���ӿ�a���c�*�>��_W�
�W��U*d}T5�.�>?+����TH��j~]�+h#���THj�j~y5.�`��Ξ:���|���d6�WҚ��_^͇�� F�R%���y,���6�J�����W�!i3�ѫ��k�j~y5���1z�yMU�/��CҦ��N��D{��8�.�`�*u�=F�Hj_If#�x'�#�������)��U�${�ّ�y�u_�AbSy���(�|��    ��G�/��^Xi�ڔ��~9�Q�L`�IjS���=^�Q�V��6�:�_�c��H�>ImJwt��Ǩ���1�%�ǻ8�t��b+CXrq~���*�l��G�l�m��s8�?[�C���MU�8��p4�;	=ó^Q�9?I�+�d$z���f<��YԻ�.��8�Y����i�x�'�I����|�o�'h���MW&�ޤ���'nD�lӕ�i�����!ɖ��/$5�[T���hwzⅬ�z���9�LF�BZS�Ae���Қ��)��pH�� ��5��S���d. ^�����r[�ϭ�8�tU�>��\�+h?�8�t5r>�G�˕O��8�t5R>�Go�$S� ���T>�x� \`Kq ���T>�x� $�_g��NVS��⭂�d2�wҚ�Go]gKq ���T>�x� $�g��AZS�
��
��I |�UP�U�l/��>�UP�VAx|C��M�$�Z��_A�?n�&9�*���
2	�'9M�*��*�Ζ� �"��Z�[!i#��M�"��Z�[��$ �Hk�VA�%$�R _�5U��z�.�v��7iM�*�^��$���ޤ5U��z��l/=Û���{L���׊I�;��Q����?��D�G�.W>[	;�DNS��dKqh�g��
�怇�NBO<��T�7<$��DS<��T�7<$�R�♴��9�A��OM�߅���9�!�d$ /�5���f�j�Y�����!���]I��^X�����ߕ����k~�������u��C�-��FRS�º��A�m0'~7���ֽI&#x#��za�k�h��9��T���5xH�`N��5U/�{.0	�;iM���I��;Y��>����A�G>�=�0��0#~r>
�qͯ S� |��Q�<���a@��$5��I̇ߓ��|8���� |��T�<$�R ��5��I�����{��T�<�:�� |��T�<$�Z _d}�ٞק��`�*�$}�ٞ��.g���M�G��y����D�Ox��Qf{��ՐdKqh&r��lO���6�J���2�ӿ�]g2�DVS���_WC�-š#�Hk*�=��j4�;	�LZS���_WC��H��3iM�uu���p��š�	p�uu��Ր��)L^�B�GU��*_A�#�W���Q������蘻J�����׵��l)�Wr���_^�G3�� x%������|H2	�+YMU�/�����+iMU�/��C�~�0y�iMU�/��C��H �Hk�j~y5t�-��FZSU�˫���)��U�{p��E�?fp'��N��I�+�d$�${�9����.��80>Hkʃ"����*_�A^S�y���(ӑ�|�ؔGE�/����F0d6�8�_�c�&Xi�ٔ��~AjpG�IfS���%=F�JH�d6�;�_���`�c+}�1]���f3X��JwGL����c+E��y�xo��.���KGQ'o�;ޛ窤�ۡ��7=O�E�ǫƨ�롮�7=Q�E���ӹ7����Q�ɛ��y��ڤ��ˉ�|ѸnMqsG5D��/��1j���.ŝ�y���+�5P�壺�7�~�\�?�P�壼�7���sU��N��.坼y�xo�;���;�]>�;y����<W%��ԏ�N�<w��s�]����/��y��窨����Q�ɛ��y��b��"/E��y��窨M��|Ty���o���6
(��Q�ɛ��y��s�0�y�����s��<WEmP��Л��7���x@u^~뼩o�;q�\�A@���2o��N�<W=�1@���*o�����*iS�*/�U��7ϝ��sU҆ U^~���o�;ߛ�Nq6��B���*o����ͫ�� ���yS���wm~��wk�����6��6(��[�M�6?ߵyu�� ^��jm~bm^mP���(H@�[�WA�TwyN
�����Q���JgPS��ڼJ���˫R�@ k�S���� ��$�ڼJ�`���7%	�6�.�`����L�c
�]�WI�Lؗ�S�x�˿��J�`ľ܋�Ļ\��}���Y�/� \��O�ͫ�&�Kj$�t������寉��&���om^����t�Je�k���1����+%�?��UR�II���k�*i\����gR,S�6�/��|�Ā})���[S�)*��$ ^:%�n�|���]��ɉ�R֙�5�]�WI��ؗz ���'����Lؗ�((��&��U�f ��N

���y��|}i��jj�k����#:1__Z��а��ڼJ�`���AI��%J<Q�����L�jj�k�*i#����%���|�����ח�))���6�������/J
=���ͫ�M���8 Wk�k�OP�;B51\_F� x; /'�&F�˘$ o/��@��g:���I��\}�����l0V_�$xs�C�F S�e�g��9�!i#����
%	��u68ڴ�NI�怇��6-kQ� �9��D�����jm~bm^m0�V�FA������� ��=)H0��<m0�VS:��{��ڼJ�`b��JI��5x��`d��AI��5xH����Z�7%	����D�kad��r&E�:ߵy�Ԯ����;%�7��5x� ]#k5/J�r�k�T����Z��|����q-L���(H >^�Øή�1�Vˤ �xA�՚� �p�Gp����Z�����I���:(I >�p�F #k�ݔ$ xH�`d��r&)���6Y��S� |8�aPgC����%	���6Y�� ���]���D�kad�����_.�X�WAL��>)H@0߯���� &��H$�������Z����]�WI���1(I 0��j��`d�Λ�ӿ���� F��,gR.����T'j_�=�t��Q{:�c��WG��9y�mzG�bT�Q�c����0+�N�M~S�n��t���v�)�&�)O���"ƨ���-Ld8��~c�h�ʎB�0�ᔧ���c�iI�Ny���Q(�k�Xə���q}OH�Im'�#��������x�IIt�3I��{FjL�o
(Vr&�#Q�CRc���G���M������YI�^�oJ������lT,������9�B�(�^�pJԳ��6
(Zr%�)Qώz�´$P�d8%��QQ�-��� ��9��������qz?���3)	���>NW�
� �jɍ܏j����_A���y'�����?�C�9I`�In��q���p�� UK�d7U�8��qH��lɃ��j'�<I�-y��T�������aR�қ�q�w}^%mP��Iz3*����Oew �d��·��dN�O�?�p�}=���}��~�����
�`�>/r��pgﮅ$s� |��T�;{w-h�������n*Ý���6�*7�Me��QO
`"�ܤ7����]I&%�;�Io*Ý��.�`�$�?�K�+}m0�U���U��LI�s���(/].W?�KOLb�D�Gy��-���w:�ܦ���[��$��3�M奋�BR�&�J&���t�A� �$ ^Ho*/]�e��N����jo�$�� ���T-��-���6��*� W-��-���)�V�dTˠ�%J�;�W�?�eP���� V��~Tˠ^��� ƯJ#��Z�K��dN�7���eP�D	I`�FvS���(A�m0�U:�M�2�^���� &�J'���>?�l3)	�;�Me���(!iC�	�2Ho*�]�D	l
0�U�x; �dN��?
�v �'h3���2��(����'%91~U&�Mxs�C�9I >In*���51�U&�Mxs�C�F Xe��T�7<\��VY�7��I&%�"�� oxH�`�ޤ7���nS�	�z��Q��_�+Ȝ$z�7�e����'%91Uor?�p�k~m0~U�Me�����s��'���pw��C���� VMd7���^������Ϥ7�����ڮ\X5��T��{�LJ�9�Io*�ݽ���Z������2��wH�����|\�������    |\�+h3���Z��(��5��6���NE�ݦ��0��0U+�M�p�C�F X���T�<�ka�6қ
�ဇ�� &�j#�� x���$ o�7��I�
�;�M�p�CҦ X���Q�{^��Ϝ$ ?�fx��T��6�����Ք�{�_Wg�����z�_�����ϫ$S� |��T�{���p�F Xu��T�{��Ր��V�d7���u5$m0�U'�Me��]Ф� H�Gr�.w>� Ɏ%ߴ�&�M��1��(�	�BQz��=�6*��N�M�Sr����er��d8�!�~{�xE�Q�&2��[�?b�2-�va"�)��$�(ېC�0�ᔇ�����a(Vr&�#w]󕿒�NBG<������Q���$t�3I��{VjL�9�^��H����xE�Q@��ߔ��i�1ʴ$P/$8%�~\j��9�^�pJԳ���C͒+N�zv�C�iI�^�pJԳ��5P��J�S����a@ْ��=N�V�P@Ւ��=N�V�@@ђ��=N��
�9p�����q���鱳P��NjSu���$S�����T����Q^UK�$7U�8��qH��lɃ��'�8�����jJ�=I�#��M�Ք�{�6([�$���~������Bْ'�%��!�����܏��r�������6%�󵾂6�ϋԦ�ٛk�S� |��T�;{s-$ي _$7����\ILd����ٛk�ڙ�D��&��w��ZH�9�o��Jpgo�ŏ����a"���t��WІ �X%��QZ�\��q3�h&R?JK�k~ي�̏���;!i�$4�3�M���w��3'��x&���t�AH�9��3�M��˕�n-=1�U
�M���wB�9I ^�n��A�A��v� x!��:�;!iS�!�RI���A�>�߆ #X���Q���(�ڙ���ԏ��k|ي od~TǠz���N��Ԧ�T/QB�)I ��m��A�%\`+r ���T��%JH�` �t���cP�D	I�$x'��w�%X;ۑ�����K���)� V$��r�F�'�� �� o�a$~b��R?
�v���mE�O2?
�怇�� ���$�� oxH2%	�'�Mxs����9 >In*���6�*���9�Q�$ ��n*���lG�/��
�怇6��7�&8���!iS��z��Q��_�+Ȕ$Z�7�%����'�(91~U�%�����6���Ԧ��k�(w:�ܦ��k�d+rh�'��Jpw���i'�7��n*�ݽI�$��d7���^��$ۑCo<��T��{�]�I ���T����I`�B�G>���0��0U����W����J�G>����F �W���T�<$����ܦ|8�!�V� x%�� x�v`�FvS>�dN�7��
��GAx-`�FvS>�!� V�d7��l
0�U;�%����/����V۔����#J�Wu�f�����:���6����Ԧ�ӿ��$S� |��T�{���(����:Hn*�=��jH�` �N��Jpۓ�u�9I >�n*�=��jH�` �Nz��Ke�K%$���\��<�����J�`�v(���I�T��TB��vx��RN�7w⾹*h�J�����o��}s�8�{�B�����o��}sU�u\;�8u����7��a�\;9u����7W%mPɵ��S�͝�}s��r�,��}s�{�\��@)��RN�7w���UI�P�Z�����q�|o�;�Q�6h�b��Ŝ�s�|��Ts���~�Z��­s�]��M7ʹv�s�{犨�e�CQϵ���7ϝ��s���Pе���wϝ~�\�e��t�����s��>We(��Q����N��gv���Q���N����2 P۵���wН~�W�]�H7��vTw���o���	�w����=t��CW]aL��kG�'o�;ߛ�(C%^;J<y���EWE���Q��m��n�Oqp��"�E�\���N���y����>��}���ܾL&���RO.�O_�WY��vT{r�~�F���~�{����J���z�eD��kG�'w��ԫ,C5_��w�˓�=x����l���ga��,lu�=]����0������ق�l����a��4leO�g;ԧ<{�q�S�����S��=�<l�e/ ��~�Oy ����������vf�]aw�1ˀ���GbO?[]aD@��C��3������	x�~xPy(��C�U�1�_�����OŎ��&7�B��B�>{���1�6�B��B�>{�\�p,i"��I��Y���*����]�d�����.�6��6t飱�{4���s2�C��C�>{�gc�(�8���]�p������� !�_!�����=[EP��U�K���㱗ı(�^�թ)�c�$cV�����CS���ho��
�CST�� +�[?�bE��#�U�� -�ۢ(AMYb�H��=S� ���(#b��FQ����<Ύ��}�Q��Y�1�*�P��#Q�x�˿ZF]`,@��Q)J����RQ�h��셓�U�� ?��MI��;*����걓��,�$�~���U�� ?�g?�b��ò�]��V����EQ�χӲU����Z_��ğ�e�����jgT,b�{^��2�Y�kRT�>���le(��6�DQ������]��F����zF��z��VQ�k�>PWgf/�����ОIh��tSRh�,�����F*����f�Ǎ��F�gRlC���le�h���(J�P��	Qf��^9S� �zV��ŉ���팊�������L8��6�Њ\����.��&SF{m�DQ��޳�U��y��6J��Њ\����;�	ݵQ�����g�$c��QoJ����WO���ڨ����E=��	諍��$�zs�C����ڨ����Q��:�[�(�zs�C�����h�R�7G=\`$��6ڤ(�zs�C�����艢��QQ��j�W��7G=,�詍~����^8G[%訍qS�`���zر$�>
%	�[��$#ݴ1�����{����Hx��$ɬ���OS�د��U]d��4��i�h w4�"ͬ���OS�$���̋�6Y�Ix<]����-�a�u������p��,�a�u�� S�h���Nհ�z{qQ�Rm�v�<U�&ˇMB�F M��Ȟ�a���&�@�$���S5l�|�$$��DW6�>U}�AX��ɟ*��\��(k��E�2	T�З;��hOte3�$�8nѫ��5eѣj�t����UQ���U+d�d���\&��)ӍU+dPe����sȲ�,�T��B�m�����
�]�Vɡʶ��m�e<�M�*IT�v�����	�+IT�v������NUk$Qe����s�2$Ыj�$�l;��v�
Ҳ }#�$oƘ�ΪL7�U��N��c��s���@��S�r[���*�ў���A�V������Z'�*��ߕ1JA��6ȡJ���e�YVm�|�V���(�e�AUZu�7c�zD��$Q�U��3�+	t��$$䞧/z�,{�1V�&�7	}�>�G��I�MB���h?�Vm�}�п���(}��H�I���Vq���<@�H�I���֘e@�s�o�oz?�5^a@�u�o�o��Ї,{�@��d�%�١Y��C�6�r��g�>HAC����9�Q��$!˘@�'Rpʺ�$I<��dz����.>H��w��U�$��uI��z�޶Ѿ����.#QQ��C�6�S�%�u	Q֩E���oʺ$�.��:�h_�B�MY���%DY���^H5+�ܺ�s�M��J�YY���%Dh`�J�YY���%\`0���+�7�׻ɯ���+)8%p�U���4�z#�N�\�	���Uo$������JzTPo�ߔ�����F�W��S'���e�Q@��S'���e�Q@��jV'���eO	��>�5�o���WQ�X}�l�_ֻү����V����H��W�#�@� ��F��.�?��@�$��F�5���j}�Sc#X�W<*�O�ojl�x+:D	8��/�ojl�x+:D	8��/�ojl�\��[8h    G�E�Y��oE��G�U{�kV����x��E�W{�lV����e0���q��S��z����-q��S�����C����F"�Z��_IF�7���jEW/`�|T�D"��׻ᯢ�iCJd�oqz�+��
ڇ8��[\�^���=N8�Ts܁^��Qy@��k�m��n��(88�l�ͱo��5e'�B
N��������8�z;P��d(��3;-�L���[8�2e�o6*�7�zs�Cԣ�z%��Po�z��H��f��S�7G=D	8�l4�o
�樇(#g��F�Y���`��;�f�zs�C���c�F'٬Po�z<ܢ�z'ԣ�Z�ƿ�zlX��j�a�_=n,࠳12%	�[��$C���(I���Z=$	�����SneM��
�q\�K]t>�Zʚ���`�IX�]d��y$����<���H.��H�{I��B��nRK�<�u������o�I,��H��G.0��M�T�G��<��d;~h6�$O�y$��#	I�--�=U�,?�$hA��h5&ҧ�<��瑄�g���D�T)��
=*H�Bw=�@U}�CQ�񃺥e2J�q�}]�xO��3	%E�5���?p^�'���_QְD��
�$��u�
���L7
�Vȡ���W�Bֳ��IT��u�
V����+YT��u�
V�z�'���Q�
��+X�g��WҨr����eH��i�4�4$���eL��i���ga���H������\�J�W�a�%L�$��:�{�G� -
�'���[>��|�Q�������~��xų��;IT�����1ˀ@�)3���Ώ1�Q��~�F�^������ � �*����1f8��MҨҫ�����,@?		i[�ۖ���V��IN.��+}E=2O�$'w��[���,
��"�&?5�5��z�~m�~���?5�ϖ&�!�7����S#d=*mڛ��������zԀ�&�&?5�j-��i�Q{�s���?5B֣�Ъ�I:�O���YmYh�&���S#��F�z�4ѮM�������x����,�/����G�Z�g�pJ��gFH�J����)�.Wpw�!���/��PQ�����/��K�Z�(�^H�)�\���gK�RpJ�$/����B�Y����%D
({%߬�Kr���-M�^I8�!���-X�����JN9�|�$c%`o$��ɗ;8�pP �FN9�|ͯ�gG�7Rp��`E]��<��I�)����{H�(��I�)����{H�(��i�S9{ԣ"	��z'۬Nv�#�!���� ݬV�;q��Y859R�����<�>H©ɑ�v����>���ɑr��$#U_�����n���M�>I��ɑ��� ��)859R���l�E
NM��FǅI��l��)ލQ���t��F�F�����|��F�F��gK�ڛPW������=���,��F׷Ԡ��m��H©nt��W���m�����nt�\��]"�$x�D
.nM��.�*�y��\\�X�m��V'a`dRpqob��VQϖ&�D&�'�{#a��<x�L�Y��V/`�4��m�Q�7����L�z�4�z!�V�0qa҄P/d���@�O���U�QI�)��տ7�0*98�z��Wҳ�	�+)8�zs�C�c�z#�Po�z�F� F#�Po�z�z�4�z#�Po�z\�4���f�zs�C�=���|�B�9��gK�w�
�樇������
u[��
�$c �<�B�Wx���
��y���7VIώ&P���V���qa�t%P���V���!�H���8�P�^ｅ�ϖ&P���Vqsae$`�L��j��{��L��E�Y�[u���I��&��"߬歺�[�(����<�B�`x���:d�����
u��;�$CC��$P/��q##��<�B�cx��VQF&��y^����zo2�������
u����ex�͍���s�_�fx��VQ�	/��iQ�@}8�C�P����W7^U��`��#��N��Ӱ��f�1�?ϑ�)�敾�l�����B�.�kX%K������V���N5�������Vӿ�(#�����r�j�7��%������Vӿ�(#�����MYM��B�=����F��B}:�����T��f�_P�>�p��
m����Y�Ď�2@Q�ͳB[�����B�6�mI�׋��7�J��<�%Q_/�!��Dy6��LM��wjg�c,
��>Sc;��QQF
�yhjng�s;�#�<+45����e$�B�g��&w�;���Th�����z'w�8��X@�6�
MM�wrGE���Q��ɝ�N�,ux�E���B��;��QQ*�yThrrg��;���<*49��|rGe���Q��ɝ�;*�p@���*MN�,��Y�|r�u�:�49��|rGe(��Q��ɝ�;K`YY���v�_�c�!�Rm����Y>�����s�j+�r��~[�1ˎC���bMN�wrGEYыbmŚ��Y���Ǔ�j��ukrrg��;*ʾu�Z[G�&'w�O�,u|�e��^��;�'wT����m���Y>���0 P���d��;�'wT���m5���Y>����m�XҔ�;�'w�8�ܐ���:�4����@����	�i�cOS�>���Ǘ:=�� ���)O_���*ʈ���:65����=}\]`@`Ss�����姏�,���XՔ��/?}\e��\Ǯ�<}|���K��X�\ǲ�<}|���*ˀ���:�5����O_�� ��Ǻ�<}|���*ː���:6����OWWX�\X�̷<}<�8}\%X�\|�%�%�Ij_I�����~Iyx��?i�����ۿ+���zd��������_�_�EU� �������ߕY�5�����[�1����0����w]`?�o�������_T��2~#o�����ʿo���W���x�7&�~W�}�����0zUo�N�b2Ӟ�+}%�q�~�FI��s���
�7���4)I��o,S&�2��/)�3)|%����_X��v�w�%H�e�(s��q�~�AQ���L���[4&�^n�$�F2Z꥜Q�����W��5��)J���_~�ɫ��zY%����2�`�@������;@>n,d�^%����� 2�P(@�NJ�^y��C��P�zKg�zW/��:7
Po���+���z�2
Po���K���z���Q����R�����C��P�z/�_�7��oT���P�@�w��2�E��� ���z���v`lL��ʬw7�!����I:Uu��w����(��I>U���f=D���@�X�S�Y�n���-ac�OUf��YQ��O]�S�Y�n�C��/��E�I��w�$HBc�`�&Ǥ�H�տ��^�M�I���S��ʘ�7�T��p�C���q��Ȧ*ԇ�.006�T��p�C�#AјN�S��QQ�>�@���S��Q�к���|�B}8�!ꑠhLg�
��GiB��s L��x���*�:����<����­�����2��_I�I�4�,$S�Y�n�C���q�Yɦ*�>ݬ�g$`lVҩʬO7�!ꑠ@��OUf�7V��H�@جD�r0�L���}���`�;��HP�Ј�`�;� 	���T�A�N�Q���o5;	9����`	�YG�jv�q�b]�+�^�Y�N:N}@�k}=��=�0�Ʃ��!�H@�j�q�b�D�2Я��l���X��#��7H<���!�H@�jN2��b�D��E�I�Y}@,��Q���ܳ��X�.0а��d�BG��(�������}��'�`@�j.Rq�}_n���[��������=�e4`Ks�d�d��t��e�?{���=��{�!�z���d�d��t����J�e��t�2"���	hك�����m"-{з���"�o�7���d���7�C�u氨�2�8yL�B�#l-
]�L*N��	f�z��/d��M0�.��
k�bUs2q�.�~̘e}Z�j�B&N������    �8yL�f4��5W%�,o��wYF�5W%�,���wC6��+	hy+L�f�2&����8	}�>/�?1V6W#'�χz�M�����H�I�����X=@���I�}�3BK�������h�2 ���:�8	�o������N&NB���e@`os����Ї+�,n�A�YB����x=@?H@K�C��	4��$�L���?�*Fzuk��S
&]�+�x@�nM�qJ���e��:ʼ�_$㔂I�`B���N�Z$㔂I�`��:uk��S
&��	Q���d�R0�L�2&�M�Y)��
&|�
��&�Lr��Gq�yV
&����+I��0��D�O�h0,H�D>.�<b�|=n,,8�D:.|'x��W�#��(2ٸ��IZ_I֦�a(2ɸ������4�fsn�L2.|!�վ���Iƅ���\����(�^�;����^��2���z!�����_<b�2�������e,d�^�ǩw�r��$c!��J:N���W�Gh(d�^�Ʃw�r������F2N��W��U�(��HƩw����!�H(@���S���������mQ�x)WQFBꝼ���߸���m(T��I<ۻ��r���6��栅=5��}�?(B�h@�I{j���@�z�u��ޤ�=5��}�?(�g���$����ݛ�!��Pc�NU�����#-
:u�NU������8P��E�I�cM+�ę��7)&5�?�5�xgF�i�d���ʸ�W�#@�k�I0�ݕ�+A>����R��QQF:O3�LU�G=�H�B�5�MU�G=D=��&ҩ
�ᨇ�hF�ifҩ
�ᨇ(묡�43�T��p�C��@�k̈́��&ýIp���X/�Ҧ���������<��қ�����HK�ڔ7���Jzv��z!����to.0�o����&ӽI�z(P���)ԧ�.xv��V2hʛL�&!�H@�i6ҩʛL�&!�P@�i6ҩʛL�&q�Ѣ�z#����to��;I4%�����=�h5�NM��u���g��wRhJ��k~%=2$t2hJ�/���	�2�AM���b=D=+�@}�ASb}�X^�qxWdДX���W���Ӝ$����=�p���Ӝd����=���\�I�X��.��Q����B=��%��t��"��X�Q�+�Y����lߗ볿_�LŁ�E�L6�oo�,�a�&}&Ƿ7����%��7�3�8��q����M�L6����e@`,l%rƲq|{�8h=#sa+�4�����!�Y�Dc5�5�����q��dZ������w�C�u�0�2	4yKo���K�V3�3�����2F=*��L�Ln��},c��V1�
�3���7��Z�ٹ������;YƬG��B�Ln���,���e�J�Xn���,c��	�UIˍ^��e��Y���������YƬG��FMB���eH�H��H�I���Kbg��H��ȟI��5����3	}v�c�ٲ }'}&��}�zv.}'}&��}��Qq���>��g�>d8�br���Ї,#GS�A�XB������K@?�K�C��'A/�س����G���,�'�����K@?I�)q���������$���I��W�р�)�"���Irq���K �H�)q�\�����Ɓ�E
M����$D
^�&���IrqgN,
b�&]��Irq���K���|�'��I���qP��q�����e0,��DMm|���~6.aI4��/wh���XH����W��W�9�^!�BS_�7��]����I�����_��-A�eRhj�+�Ɨ��}K@�������׻�ni�P/d��o��/uG���z!]��x�o|�ڷ�+�b�Ǜ}�W�Ͼe�^ɢ�w�����hI@��DS����_I����zW/��z�H(@��BS�����CԳq	�)4��^�]=D=6�7Z�T����Ճس��N�X��WQFB�t�1s�Jw���n?ZP����QD��(c��ۛ�\Y5$��W����ՠ�*Ȁ��s�j��8�+q*�}�>^5����T�AI�bOR�z�X�x��MI�bO��J2�;��JO�J�$���P�xS8K=q*�����#�����Y�S��Eͯ(#a�m�,�ĩ�O������6�p{�T�Q�+�P�x[8�=q*����u���b/�Ş8����W��IP쥳�����w*�L2P륳���?I���6�z�,�ĩ�O��J2P饳���?I� ��Pꥳ�����j_QvWd�z��ĩ������BB���bO�J�D����jQQ����QQ�Q쥳�����~A8����Kg�'N%����e&(��Y�S���;���x`���Kg�'N%��W���R/���8��I�_�	���Y�Sɟ���QFJ�t�z�T�Q�+�H@���ZO�J�/j��{�,�ĩ���|�W���b/�Ş8��_T�dG���bO�J�/�E(��Y�S��E��{�,�ĩ����J.���z��ĩ�OR�J2P�qS�@}���	���G9���QQFB�S�@}8�qHhGu�>E	ԇ�����σ�ĩ���|��FB��Ic�T�Q�+�P@�<jL�J�/�E��g��S��E-� ����ϳ�ĩ����J.����ϣ�ĩ�OR��#
8i,�'��Sɟ��d$࠱|�3)�������4�σ�ĩ����W������yИ8��_T��2p�X>3@���_I�Ic�<iL�D��e�C8j,�G��c�E5� Lv������O%����Q͢:�u�w�7�p�m'⬱|�5&�	��� ������Qc☀'�%�;"N��Ic☀'i�い����y�ؒe��?D	8h,��-Y�//�㐐E��)J����QFN��Ic☀'�-��F���Qc☀Q�+�P�Yc�<kL�/j|E8k,�g��c��y{T�8k,g��c�cd��P��q֘:&�_T��z��Yc�8kL�/j}E8k,g��c�E��+�����,%����e84�>2e)�u���,����,����x��A�������"����%MuL�/k�a%rt0�i�c~��_Y�D�Ǣ�:& �8&@^`H@lj�c�E��(#b �cSS�/j~E���ꘀQ�O@7 &�?V5�1����e@`W���ꘀ_��+"X�,ǲ�:&��G���lk�c[S��*_W�όu�r�k�c~Y�+ː��f9�5�1����eL`c��ꘀ|㘀Qqezbe�䛢���>�LO�l�cgS�/j�a�sbg�;�ꘀQ/�!˺�X�,�Ҧ:&��U����lm�ckS��_Y����f9�6�1�?���eG�e@�m�c~Yů�}���X�T����W�!���r�n�c~Y˯�}˛�]�L����;&@&X�,��f����1�q������L����cT�р���n&}L@z�	PQû��I;��C�CP��:P�܃��9���4>��K����9�c�7�7T5� ��z�r���{�%A�N�K��P���̂���'�T�s��s<�&u�IU=��=�e�ͽH���C��C�2P�܋\��9T�9?�P��E.U���B�����^�RUϡz�!�H�B+�&��PoW�Jz�':�7�%�z{Q�
�e�MzI�ޮ�d$��I��B�9�!�H@!��T�zsԃ|�'��L�B�9�!�z��cR&��Po�zt���{&��Po�z�z(��\�B�9���j��I�\�B�9�!��2PŤB���Z��Z�z(X/$�Tϡ�-� ���&�K��֯��d(��I���j����R<���|I�D�j�uo�����J&U�׺���Fʗ�H���Z��Z�2P��F.U�׺��B�#@�z#���k��k�
(`R#���k��k!�X����KU������"-
�wL
�q��i��w�K
�q������AzI�>���d$`,�
�ᨇ���A&U�>���̂�I*U�>�e$`,Mr�
��GiQ@}�KU�G=D
K�\�B}8��c�`i�KU�G=D=�/Lʪ���6    0��%e���z)�־c,ߤ��U���J20	�o�KʪO���EZ��7�Teէ[�e$`,'R�ʪO���#�`9�KUV�w"��z(���\���ӭz�����r"����t����1o4�3�T�w�7��P��3	&U����4Z��`9�_Re�:�z	�R�`��^Re��������$X.d�Tٿ��Q���D�*����!�H�,X�dRUٿ��~�H�0X��RUٿ��Q� �\�*�����E���\�*����!�X�0Xn�RUٿ��<�7RK
���e���a���,Ƀ6��e0`,wK���r���Cm0`,w�J����=f=�w������]�Hsz�}�M��m�/�1�x�HX�S�i��K|��q� ~�O��m�/�1ˈ�PX�S�y���|�2$0�'�Ty���B���@�$�剛��e7f�˓Ԓ�M�
 d�E��EfI
�ww4F�ˋĒ���h��1��~�L��ݷGc��Ѱr�M����Gc���r�N����G�|(�7�T)�}�4f+7�T)�}�T�H˂ZJ�S�`�Ҙ�8P��D>U
v�!�W�s�	��H-I��}��ĄX�d�$���>�vbB�dK�����
��I�J���٘e�̈�B6UB��
iY���N���i�1�q����O��g�>\a@`P����Ї,#�bvTי�}j_Y���|��>;���+�X�7@N���$#�b�K���wd�"-	ȿ�bI� 9��*�� ��I�v=�7@V��u�����ߦC��> P�܃�j:���2ف��$�Tӡ�'���i�j�A~I5��z)��7�4�$���՛!��P��T�j:To:Di*.u�KUM��M�e�ͽH�����?_	�h�E2U5�7B�c@!S�T�t��tQ��z�7�T�t��t��`@=�n2L
�v寤G��y�`R�����ߦ��8t"o�K
�vͯ$#�LJ����Q<��D*U����l���ȥ*ԛ�����:&e��
��Ah]M�1)�LU�7G=D=m�L2U���(#���B2U���emMT1��aRM�~���
�	&�_�o�!$=k@��_R��~��$#�K���T�{-���J&U�׺��BԳ��+�T�_��_�2Ң�z#���k��k!�H@���T�_��_<�7����ֽ����?��I���Z��Z�20�:&��8P�g4w��N�I�>���c_R����R��K���B}8�!��@}�IU�G=\�l��A*U�>�e$`,Mr�
�ᨇ(�g0�&�T��pԃ |(P�$S��QQ��P_$S��Q�2Ң��"����	��P���0)�>��;��a��H0)�>��;��Y�|�_RZ}^�+��h?�dR�V��Ճ |���}�I�*�>]��(#�`9�KUZ}�V�2Ң�}L$S�V���C�c@�}L$S�V������:�d���ӵz���<�˙d���;�n�z(���*��u�SaXj`,gL��_�V/aXj`,�K��_�륿 ���TU�//�CԳ���TU�//��F��r%�����e�20�+�TU�//�C�c@�z%�����e���Po$SUٿ��Q���r#�����e����%���<r�l���FfIn��W���`�4X�$���}ͯ�ǀ��N^In�ܾ����?��ɦ���7T�40��T��r��J�20��T��r��iY ~�O�*�o���g��O�rC���p�!���<ɧ���7TB��@�$�$od�+*!�����̒�	_�4"0��%)��{YƨG��E^I
v������� �"�*���2f�+7�T)��v��
�a�&�*���2f=���|��~C˘���A-%�R��-�4$0 V�T)����1�q�PK�Ԓ�>_�S���b%�Y����x4�!�2�%	}���� �W��$�١Y���R&�*��}�2߅)�RȦJ�C���.̉�B:UB����8P@_ȧJ�Cm�9=@_ɧJ�C�	���J>UB��p��@}%��TI�����l���wX,�����C%!Ɉ��XygŒ>�<�<re�	��Q���#O8�\%�+�Lj���=�\�H�zU*=Q�œ���(��P�N�T|�����*���Tuz��K'��?N����:�tz��+'��?VQ;��2H;�Nzo�.0�Q�A�9�n�{�ce��,��s|٤���*�XGX�0��'�����T�eJ,��U��evJ(��U�wʿ2י�^5�_5!�H@�WV�(A&R�Fʿ��t�Kr$9D�q�6���_�����Yd���������(J���e$��+k�Qq %��U���⯾���i���6��@(�'j��V�ǹ�o�HE(��{���[Ty����
��^J��r&HB������BI��W�Ix�H@�WS���I�	�e��Q�մ(J����w_e-y}5g��������a�x�諹�Q�ￏ�(sb��j�%ީ�����х���DQ⭪�~�UQv _-��B�'�%��HC�W˅�Z��$@%(�j}))����$C�^���B�/aI����6օR��~'E�Β e$�ҫw�����$��a�B�W�RO-	HgI��2P�ջ�SK�Y�0P�ջ�SK�Y���?�b��DQ�ÝΒ e,�X@핢B�;�%�S\�j�PWK��$cg�x)I���q]�%�Q(I���!�H��\�NR�7G=<`$`p��EQ�樇(#�suf��7G=D	����Q�@�9�aH�H��\��R�7G=D
���+Q�@�9�qa�E�U)J���e�xL��E�GśΒ ����ɹ�^��%	KT������J,��%
�ko�$�B?�z�208��u'EśΒ e$`r��LQ���z\XnQQ��	�k�e�Lε4﨨x�Y��09�r�(�׽VQ�&�Z�%�����!�^��\�㎊�7�%I	���k�B]-	HX���݁@�J���z�WnI@�tJ���zH�G�֝�P�zx`#�k�(��p�C�~��FQ�ᨇ(#�s��WK�Y�Đ��b19����$ �%*�~���k��Z�Β���[P�G�Ւ�t��(�}T��/�Ւ��%�u�bp��BI��y��${�s�wJ(��7$�O�s��;)N3��$ �!#�smd�$L����Lε�(J�0�n\X��&�ژwT�fHgI���_&��L%������smV��zӿ�({�sm�o{ӿ�(�!br��u�$ aI@3B���\[���_I����\[��
��q]����kk�I��_^��(#�s��%HX^���G�ɹ�6�$,/�C�=�ɹ�N�$,/�C��19�S��Tٿ��CB�/��\O��Ļ��?Dٿ�s=�o{�������#�s=;�rI@:KT����ɹ�E�5�/`��!\L���)J��|A{���o$�����(�h�=��,����\/����z�qL�Xx/����z�1�Jp���2)K9��/V�[���ΒR�=��,#t�V�RV�=��'	���k�\�|I��2&�Bػ�Q{��ë�@<ъZ�ܵ�Z����W���
��i%��Ac)v:�����I��t�O�e�Q͔A�T���BG�hQ�I��i���Q�+����2�'����I_���@1S&�$����'tH2P˔I6I�i�g|%m�	oz�2je��^��$��)���z���	���2e�8U�X�?��z�(��Ȝ�7���!�H@5S�S�~��:<`(���/�S�v��:Dm߉��K�T�[e��Q����OR滜C������H')�]���d(����l�2��q�$�7J��ț*�]������R�f��|o1����R�f2��|o1���;�dϤN��.�bQ��D)S3�Se�����&&*�ZH�*�]������ԩj1o1D�h���I��P/�Wn.T1��NR-������0��MR-��̯�m;�z%o�Z�[!�H@S�S�b�^�h$    �@mdNU��z����ԩj1T/`�z4���S�b�^��(C�_��:U-��Lx`�N��I��C�&D����|�B�=�����~�A:I���Iq����Wd���_I�v�A2I�������I�T���e$`�N2�
�樇���ԩB�9�!�H��W��N��QQ�f��"u�Po�zЁ�w�E�T���e0`��.�I��ПO�h,`�����T7�_=��\��j/�$�M���z}�N�_�I��ֽVQF&�Z"o��i�k�e$`��%���ֽV:p�N4�S�M�J e��~�D�TuӺ��Q=Z��ԩ�u��C���h�gR���ֽV���j�|�B}<�+ɞ��W+������\L~�B6I�>�Ia4�'	��I
�ᨇ�MP��M��Q���^ �ĩB}8�!j#�+�S��p������W��N��QQ�f�Z#u�P�z�ھ�7R�
��h��~�F��y���"!�~��j�|����|Í�ђ�z'��$�|�WҶ�`��MR}>��u�gc��J�O�����~�A�TI���pC���@}�9U}�7ܠ���ٯ6H�*�>�n��_f��$u�$��o�Q=ZP��N�D��7D��_m�:U�p��ؿ�_m�ORe�z>�S�F��"����uI���.���j�l�*���2),��/��K�T�����e$`�$NUٿ���Ѣ �^2���_^��(�b����NUُ� ���c��'R���_^����;���SU�//�C�.�~�D�T����������/[�u;<�:V�(�[���<�\��>���V͜0��3i$�U�}�W��-�~�B�T��|��	�[���ܩ4R��=fm�	��S���|�22�/dO���J e����;K�S ����쩴R�a^�G��`��=�Z�=��,c��K�{�@?���Gob�L�k�{Gͯ��V��N��T:�'t��G����SՃN�	�Ll��)�ԩ�A'��:p�N��A�4��߯�}�>i�OR��s�r��)�t�z��O�Jڶ�t�MRoZ��_��#}𦓼�z���	���2e�8UoY�?�C���Z�,2��+�'tЁ�w�E�T�ae��Q�H:�/�S�~��:�G�B��%u�ޮ�B���;�y|�')�]��W�|���/�$e��u�J�o�25�MR�<�+i�N��$e�����G��vL�M��.�bQ��B)S3�Se����z�(��3�Se���B���h�gR��|o1���>�^H�*�]������J�R���P������PW-��-����>�^�'�C�$zܰ�P��J:I���6)���$��J6I�곾���>�^ɛ�C�Cx�H@S�S�b�^��(#c쵑9U-��L�ھ�7R���P��	:p��ԩj1T/`B���ٯ�I��C�&�G��ԩj1T/`B�>��;�$�z�N_���_u�NR����U\��0�U�$�z{�W�>��yS�zsԃ40�U'�S�zs�C���ѯ:ɜ*ԛ�գE�I�T�������E�T�������ٯ�H�*ԛ�����ԩB�9�!j��|�j1���O����_�%���i���q����W{�&�nZ\&���_�%o��i�k�e$`�%���ֽV	�j�̩�u��C���h<&R���ֽVQ�H��ԩ�u�Ճ�0��2�S�M�^����;�dϤNU7�{7-�ǟ0��2�$��x�W���ѯVH')��Ӿ^߶��I
��̯��P/$���QQ�6�^I�*ԇ�t�F�W2�
�ᨇ��P��N��Q�����~�F�T�>�e�Y�~�F�T�>�����@��:U�G=D�#��j�|�������c��W뤓�D���7��ɯ��&)�>�񕴏��N2II���p�y�(�>ț*�>�n�20���S%ѧ�l�	��S%ѧ�Q�f��$u�$��o�!�~��j�ԩ��ӿ��}'P��N�7���pC�>��'����N��գE��E>I�������OX_��Tٿ����>���$U��g}%����/ySU�//�C���ѯ��8Ue��?���;!�^2���_^���}�2)�:Ue��?�G��KJ�NUٿ��Q�wB%%R���_^����>��D�T�����e_�_��L"In�|�!j�Nx�LI��|�Ha�fN���4�ܡ�>�+����z!u*�h�w�-�r��H������'x/$O��z��}��W���I����e@`�W��RJ�����'��dO��z�����R�>f��~^r��{>+b��Q�����s�q���??����s����!�~�}�b�t.6��@<Ċ¯_����8���*ˠG�ׯ�O^l��bc��A��_ş��8���*ˠG�ׯ�O^l��bc�e@���W�'/6N~�q�͍��������/6VY�
�~��b��������'�_���8���U�!�
�_���8�����[Aد
P^l����*ʀ@د
P^l��bc�e@��W(/6N~�q��T�������/6VY��qՁ�b���{��������JY
��Ї,#��*Ay�q���J�q���b���,c��8�`�g\l�����㔂Y_l�q�qk�MD����b㌋�U�@!8N!�����\l�� CF!8N!��J�|V�(���Bp�B0� ��P��o���Y��g%����O��J�|V�(VG8N��J�|Vd1$d,�
�
�z%@>+T���"p�u� c%@V��-	��NI��ߕ *�P@8�$���J �����o�|'���|V�(#� Fk%H�J e$��h��	X	�Ő���C �'�$`%��2097z���`D>+��FnQ@���z��m���L΍�R�x�˿m#����ɹ1.��J��� *�X������/�w%�J2077Ƣ$���]	���H��ܘ�N�uL>+T�����1E�_V�{ gL΍9)J���@E	��+�Q���g%�z�H���X���[U�-aT���ɹ�E�^O>+T���ɹ��wT����_TX��197�u� c%�J2087�NI����w�����.J
m��� *�H���L�N��+�� �#�s35�
]�|V���
&�f�%H�^��(�O�/�3�;*z�|V��
$L��\)*4��Y	��L�brn�AQ�Ý�J��e��s��Z���PQv��s�\��� +��V�apn�NI�vPI�S���,���������͚�$�zs�Ì�����YE	ԛ���L��:)J�����ܢ�zKw�B�9�!�H���l����Q
���mP�@�9�!�X�@��%Po�z�2097���Z	�� �!c�s�wJ,��~%
���}Q�@��Z=�"�$�>�o>+T��j187G�(AB�Z=<`$`rn�IQ���z�2097g�(AB�Z=D	�����QQ�� �!!C�ss��z�k�e,`rn�����^�Z=n#�(��.��J��� *�X���\����^7077ע$��8��$#ss��w�B}8�!�H���zE	ԇ����LέwR�@}8�!�H���J����Q���-�#��Q
�ᨇ(C�s+��G=<`�|Lέ�R�@}8�!�ZTC���Y	��l=:&�V�XW+2Vd1#d_y08��$��<�pC��N���U2%	�����[P/�N����PQ6��ɹU&E	��	g�k#��N�:c����Q��F>I�Ngp��6
��H'�U��_Q��F�;�$�
8�*�К�/�`z'�*W'_����N��P�*�䫀��4���I��U��W�,��c� �*W���m>!�YT�
�o��Y�*�>Ȣ�U�~Ee�2&P��IBIB�/��t�	�2}�O����?Q�{�I:IBv�
i&�/�Iz_&��2}�B���6�����~�C���:٘e@���$������,�xɢJ�C��6�h?�dQ%�١Y�j��E��g�>:H�B2�r�$�,I�2&PՌD^I������o�d"��z�    ��_I��DM32Y%ՋN��J�"%���OU/:�'u�L����LU���R�(���fd2�����E�B
U�����C������BU������}����j����PQ���QI�F���j e0�<��䕔L����
SS�F%��dz�d��$C�F#��dz~\*��$�$��ȟ*���A��������t�#Ca��AU2={�.D	
������W���@��BU2={�.hAC#a��BU2={�.D����2���_�ߏK郴�2��_I�z��AVI��׍̂�IRI�⭆e$`lL�ʀo5���=��$��x�VCЂFF��$��x�VC�20
6)Te������(��H�*^������E
U�������K��VC�VC�206_�J��P�򕴵'�/i%�j��[�?�0��`l&�J��P���d$` l&��P���
Ң�L$PU��z�����Ƞƃ��PX/3`3�B�'�Y����D�=�B�'�Y�������I�*�^��	ZК���������e�L̀�B^I����@ZP/�����_I�&�f%��Po��z�H� ج�O��QQ[{�JU���e$`lV2�
��-h$`l6R�
�樇��=�z#��Po�zT�f��z#��Po�z�206;)T�zs��f�f'��dz>�S[{�NZI��~���h�`l�JJ��ǥR\�Y0 6�S%ӻ��!jkO�>H�*�޽V�
�PdP�L�^��(#3`s�BU2���{�I
U���z�206')T%ӻ��!�X��\�P�L�.Ӄ406y%��x�W�֞@}�VR��ǭR�*� [/Y%��x�W������TR�G=<��'��KU�>�e$`l�dP��QQFf�V"��P�zЂ�{�+%R�
�ᨇ(�]�[��B}8�QAZj&��P�z���!̀�{L��X�^���S�2V�$+1��	0� c5�J2��u��� ���Bn�	��S%ӧ�QFF�V!��d��o�QAZ�9�HBI��L~%*Hӂ�I�|�\	�����A'5�Ir%pz���E�;)T�8�E&1˾�����\	�|%p���>��D�+����i��b� �*W�=�1ˤ�>Ȣʕ�~Q�p���4Ȣʕ�~Se��� �YT�د��O(e�$�$����l�O@?�'I�����}��O�I��S6ZA�L_d�$��T6f�e�"�*�����AZ�_$Q%��V6f��}h>�dQ%�١O�h�KUB�����'ڏ/YT	}v�C�>���KUB��`�	5#�VR�h%	I�{����*�Vt�c���&��~L$�T+:=�+���hF&��Z��?����DE32�SՊN�A���D�=�?U����!j����jE'oE�ke����jE'oE���={!��Z��[��@����:����5��Q�o��y�pkO�^I+)��/��'�X�\��d��KϗK��d(`�}4:��\z~�X�8ׅ���H�*���?������r���s�s�TP�$P�K�ޟQFf�F'��\z��\x`kO��ɠ*���?�L��NU�����e,` l�JJ����O��q�1�*)^��������ARI	��S�`c�SR�x�!D	�����;ၭ=��$��x�NC�20
6T%�˓߯(#�`c�AU�x�!X��=��"��x�NC��G���"��:�;�@Z�/i%�i�O�J���Ǘ���4�S����?�_�J��P��d$` l&rJ��P��	QF�f"}�:��`��D�1�?U���L��'��j�$P��~�&H�B�=�AUc�����'z��ۯ^���?��3T�ҫ0!�z�����B��CҶ�@��UR���0VܷY0 6I%�z{�W�����Y�))ԛ��E�J�T�����'P��O��Q�~@��@U�7G=D	���B�9�!jkO��Ƞ*ԛ�������Ƞ*ԛ�����N�����z4��;i%������͂	���*)�ޟ������9H*)�ޟ��d$` lҧʥw��CԶ�@}�?U.�{������9I�*�޽VQFF��$��\z�Z=H���r��k�����IU���zx�X��\dP�K���C�֞@}�VR���zH�g���"��P�K�8!U0 �^�J
��$#�_�%}�P�z4����?U�G=D�~�J��B}8��##`+�AU�G=Dm�	��Ƞ*ԇ���	?h�DU�>�`Mv�0���B}8�!jkO�L'�K���z`�ble:��\�<�pC�IO��{ ,�+��4�^7���UH�*�>�n�����ʥO����L��JU����p�`40�*���_����e�@{���J��L��	Q���U�������W���?��j��R5��jB���bo5���f�_�ߦ-
ow��n5θ�X%���]�[�3n5V��(��]�[�3n5VIF*�uWz�V�|n5VQFJ�u�z�V�|n5�bϹ��Zoݵ���8�[�U���bo�Ş��8�[��EEP쭻�S��s���2P쭻�S��s��z�X@���bO�j�ϭ�*�`@���b���������m��޺�=y�q>�g���`@���bO�j�ϭ�*�`@���bO�j��V�O����޺�=y�q�[�U���[���*����o5VO�%�OV���Z����ߚ�'kP�x�A>f�E�x��O�j��V�,6��U�OV�,���}�2&~˾�����G"��l�e�OԢ(���1�z�e�x��On�g3�z�T�o����()t���,���~?Y���tc�-�H��*��f������9	�_ş��}3�ʲ�9	�_՟��}3@V���2���?� �f �eHd@���oPO�'������f eH@����������3 r3@>���2 
��� �� �7�,������}3@V��-�_� �f��T�Q�u@nȾ@=a@T@���oPYFD��Q � �f �eH4@���o�bJȘh�~�r�!�i�2&:�?CtEo(�P�nrK�g���� �T�������+z3@�f ���0@��+z3@9�T��0 ��+z3@9�T��0����+z3@9��2p?�sEo(g3��2~��F:�sEo(g3@Q��-�!�PTx�+g3��2~g�~��7��@=`0����D]�g�`3�J2~�FJ����*�P���Ij�$P��,bDȔ����OҼ��W�r6�(;����r�(A�;�ZNnQQ��	��TQ���wr�'j�Q��@9��6U��zy)J����o*�ZP/��Ļ^��2���xF��B]m(�PČ���AzY�$~���T���Az͔$~����V��k��b!S�f e$�^'E�_6����[�(���f e$��*E�O-lPQFB�m�Q��)g3���B�^�z)J�U��FE��BQ�YW�f��}���N�G�[�f e04��/��f��� �uc����))��
6�$C����()��
6�$#��1�����y�w�>E��m9�T��Ё��%H�^�����縣b��� *�H@}����lP
��BQ�o[�f e,���;��lPQ���B]m(�PČ���;87�)I���!�P���m�$Po����'�wpn�w�I
�樇(#�wrn�(J�������;97r�%Po�z�2~'�FN�R�7G=D�h���9�%Po�z*�U(J���e���s#�~G)ԛ����D�N΍�/��f��� *������RL��|n:V�p�qE׽�wV�W�'����	����xV�W�tb���a�5ҩj�j��U���6��W#��&��O^G�(S#Ǥ�Qֵ�O���+S'Ť�Q��鯍�$�N�I���g}%m
��ɥ�q���(�#����LU�(��QB�����5Ȧ*��\����@�� ����r����    ��5H�*����U�����5I�*��\�GiQ@}�NUb}�XQہ�IrI.�|�z|�`���Z��v���_Q���"�$�k������/ҩr��{p���h���Z�S�����T1�KBUn�|��GZz�/U�b�=��,����Q�;6߃||@)�&2�r��{��Y�j�7�Q�[6�}����DrI*��\��p����y3�%��ӥ��͆b�ͤ��b?�V
iQh�gҩR����1˚��f�L>U*v��2>a]��	U����ʘ�-(�/dT�b��+c�u23�/dT�b��+�!4"2��dT�b��+c�!�}%�*��^)|�e�JrIB���eH@��-I��v���Q }#�$�?�ec�v����Y���~٘e@T@�ȧJ�}�l4�D������7�ƬmA}'�*��}��f� }'�*��}�2"�dT%�١O�2���Ї�mA� Ť��>V����'&ՖN�->S���'	&ՖN��J���O�K�-��-e��8 ?I���t�t�2x_�RU[:y[:<�(p_$SU[:y[:D	�/���-��-����l�jK'oK��csb�%��z9[T�V�hF��z��l	�6�����������%��5̈�D�Iy����׷ E+2uJ(�ӫI��XJ�R�W�ޫQ��ĀX��R�W�ޫ�p+P��3�T�ճ��B��51�2�T�ճ�����a��MU^={�N]`�1�
�T�ճ������a��bR2�<��)c�a��aR2�<�+�P�`X�$��/��%!�1�*�%%Ë��e$`,,Ur�J����FZPo$S�/.�C�V�@��MU2�<��z�H�TXjdS�/.�C������ɦ�i�r��(c3a��M����l	P�p+P��I1ţ�[T�����4�0ţ�[���$�>H0ţ�[T���@}�_�G����00���xt��-*�H�0X��R���r����@��$���l	P��H�8X�dSc��-*�P�8XZdSc��-�FZP_dS�W�^����@��"ŤPoO�z�X�4X~�0)��A=$
��\w�L�+i�O�����B�9��	��/�T�zs�C���a��ȥ*ԛ�m�EA�&��
�樇(�^ˉl�B�9���{aS3�T�zs�C��r���L6U����(lj&��I�Z=(BS���8��P�%@%�=�a���SҚO��z~�{�+�êCZ�iEi.=�J�a�!�釴B�����~5�����CZၭ@��)&��d]k��$Y_�aW#ä6��kM�$�jc5��$��F���_�c�s`1����F��MB���K�T��h�|�I�������T��d�F�e$`+�$S�W_���[��A6Uy��^=D
�	��T�՗{�e,`%�dS�W_�Ճ!�
�O�K
u����O���InI�Ry��Yq�f�JصH-�S*�3��l�]�̒<���)���v��}�N��T^?��T1�K>U�Ry��J�2PǼ/	UyJ��S*�n���KFU�Ry��J�����v|ɨ�S*��R�>Ҳ�wLdT�)��O���mA�xL�<���)���>���c"�${�{\��Pͼ�ܒT��R�q�fC5�fRKR��+,�!�M�L:U*v��2f�s���O���/�>Ҳ }!�*��b��􅌪T�~�e|b��􅌪T��{�2"0��V2�R��E�1k[P@_ɨJ��7YFEhL`���$�$�g�l�2$0��6rK��jV�H��Ԓ��욍Qہ�F:UB����>��;�T	}v�C��A���P��g�>dm
�;U	}v�!4 0��v2���Ї,#��� �*��}����U	}v�C�>��9&՗N���F���I�I���uH�<`���d�T_:=�+iP?I0��t�t�H10��.���/��/��L���l��K'�KGiQ�}�NU}i���}��/ҩ�/��/00(�^ҩ�V�t���ȗtj4�;j}E���F�䘔XϏ�P�P]ÐXJ���XϗX/a��aD,%2LJ���S<��0 ��Sb={�.D�h�gr�J�goօ�W���I�*���Y��E�=�MUb={�.D�h�gҩJ�go֩��;��R!���z�f��̾c:,ҩJ�go֩��;��R!Ǥlxy�W���ѰTI1)^��������T�0)^����(P��R�/n�C�>���TeË������F6U���6<Dm
��TeË��#M��F:U���6<D

K�t�:�R܆���t�:�R��J�20�:9&ur�>������A�)�Y�$7L�ֆ��� �׬Y��J��r�q�ږq�q����c,M��q�ڎ�_QF���$�׬�����v�@}�N������̃�I:5v�wT��20��T%֫0An
��T%֫0!j����B�]���Ύq���bR���}%
��/&�z{���ۀB0�$���QQ���0XN$S��QQF��r"��Po�zP�ہB�&ҩ
�樇�}�:5�NU�7G=�H��NͤS��QQہB�fҩ
�樇��y�|σu)��%֣���8X�b�_b=ʪ�i�|�z���;����_��]�;��<VI��C�����M�?�e�<Tz��J��t��	�����^�K=u�q9w�(#�^�k=u�q9w���g\Q��F�Y��t��	QF:j�|�z���r�<V���]�;�˹�XE���]�;��<VI�J�|�z���;��X~n(���w���<.��X%	(��]�;�˹�������]�;�˹�XE	(��]�;�˹�X=`$���w���<.��ce$���w���<.��ce(���w���<.���"֟���]�;�˹�XE���]�;��<�I�U,	�ߥ�����c�d(���w���<.��X�n$���w���<.��ce$��+w���<.��ce$��+w���<.���"֟	���]�%�,	PQFj�r�zjI@9K��YnQQ��Ļ��^N�2P땻�SK�Y����J"�������U-��r�zjI@�� �4,i �Q�`a��P��OLTz��Ԓ��%*�[P�+=�$��%E�,�(�~��%�,	PQ6S���r��%�,	P	��/��ZPΒ e$`��ܣ�jI@9KT�����r���%�,	(bF�X���g�Ւ�r��(���������x���;��,
�_���KDT��20�_���$��%�������K�/	PYF���5�/�_��L��k�_.	(�$��!!������K�/	PYN ���\P|I@QK�-�_g 䒀�KT�!�C �: �_��0&p
�\� 䒀r��(C� �u
@.	(gI��2"p
�\� 䒀r�1"d@�@�N�%ŗ�,� �u@.	(�$�����s rI@�%*ˀ�]�N�%ŗ�'��շP�r�.uc���z��K�/	PY�f��u@.	(�$��!!c3t�: ���$@E���y �$��%E�,���	�z��K�Y���O��B_�� rI@�%�	�Ab��^䒀�KT���1CW�rI@�%*˾�a��^G䒀�K�*���rI@�%*��-���׎X�$��������da��^[b咀�KT�1�:���/��%K��F&�Ꙡ�zI@Œ �d<`~������T,	PIF�����zI@=K��20>W��\�K�Y������3>W���z�T���'��3=W���z��(#�s��U�$��%�C�s���U�$��%*�X��\=�sU/	�gI��209W���YPň�����:.�ՄgŒ �d,`l��II����Ϊ6�[X���
��*�H��\��N���Y�007W�(A�;U������^�$`�SE	�����Q��@=K�207WW�(���(Cssu-�o{���@U+�-���^���^���d,`l����Ŀ��w�𺡀���NJ��r��C������ҝ��Ջ���(#cs-U������B#ss-�����C�]����_�    ����㈐E��^H0��Z�/�%�L.�T�?�+�z��_r����ֽ��7ʗ\I���Z��Z��]�J.U�׺��B�5�Q��J2U�׺�ׂ �7*��H���Z��Z��7*��H���Z��Z����H���Z��Z�2P��N�I���i%�׍0��`R���%m�	�;�%��x�W����%w2�
��Ah$�|ɃT�B}8�!jP�>ȥ*ԇ�e��8�>H�*ԇ���0y�LU�G=<`(��ɓd�B}8�!jP�>I�*ԇ���?�
&/2LJ����O�5�L^$��V��V����'P_䗔V��륿.�TP_���V���C���򥼤R�V����ۀ����KUZ}�VQF
��LUZ;T���
�$��J�O��A
�`J"����t���E�1�LUZ}��������p�d��V_O�J�.&
��I0)���V�o��f{&����z�W�u01�_2�%�՗k�eL���B&Ui��Z=�-@�z!����r����i�Rȥ*��\�GiQ@��LUZ}�VQ���J%����r���W��J�cG��20V�%C]X��e0`�4RK���r��Gn
��%�]D��(��`��X��6߃�����;�T�j�=�Ǭ�@�{'�*wm����񀙰�ɧ�e��!>f
+���ܶ��c����2H��u��a>
�-A�� �*�m���eL`.�L�^.�|�0�Б��'�%y�e�{\�91V&�%y���2>`D`0�L2KҰ��,c��ɰ�ȦJ��YƬ�@�"�*�_g��鰲ȧJ���Y�,�a�%�*{r�u�e����P��=�aY[����P��=�aO�����4�~�e�2&0"V�%	��3��E2�Z�ПE��Z#b5�Y�ПM�1ʺ���l���W�
iYh�gҩz�5����1��ɧJ�}�l|�Z������>;�!˚�������>;�!kKP@_H�J�C�!�Y�ZI�J�C��	��J�)��RFZ��d��`��������J�)����u��b��_�z��*jP �ȥF�^ώ e,`R�6��Q�׳#@BC�b��M�n��*�H��X�dS�Z�gG����;��h���������A65��zv��5L��A�I�|y�f�f�� äL��zubu�`R&?�����au�;I��F�m�0V'�Te`���Ab.�Or���d70!�H�|X]$S���n`�F���"���zv����l���ٽz�20�^��ʫg���V���0��u�=�,O�J�t"�S�����e�ɸ��EI�WλzH20��T��^�]=<�(\j"���Ջ���(�mSa-�LU�����C�u�_��L6U��W�юן-������S��9P��B�Iuغw�B�>���{��z��ֽ�u�E��^I��[�[��}�J6Uuغw�����t��uﰅ(kq��ɍt��uﰅ��@��T�a��a��`@	�9&�L����T0��bR��q�ъ{�
���0)��3��� ��B}8��}��r�
�ᨇ(#�K$S��QQہ�A6U�>���T0y�NU�G=D
(a�$��P�zԑ�'�T��p�C�>��'���h?�0P��E�I��y��?I�*��H1)�>/��'iP���0)�>Lo$�Kyɥ*�>]��(#�KyI�*�>]�GiQ�?�dS�X�.�C�>����K:U���b=<`$��)�t����z����D:U���b=D��>&ҩJ�O��Z#%L�䘔X_O�J��!T0%�bRb}=n��~�X�����_I��P/�R�X_.�����D{)$S�X_.�C�v�@��MUb}�XQ��P/�S�X_Ov��"	�+�t����z���WҩJ�/�QG���t����z�20Vɥ���_������y���-�"�}Em
��%yH�}�W�>��;�%yH��C*�X�91V:�TyH��C*!k[P��I��C*�R�>�L��dT�!������AFURy��Jxb[P ?Ȩ�C*�R	Y��� �*��~H%d�+�䒼�2=�Dܸ91V&�%y�e�{\�91V&�%y���R�H�z�~�Y���o��Yf��"�*�_g���/�R��}�1ˀ�|XY$T�b�-c�����Q��=�b��mAр|ɨJŞ\���}�ȗ��T��|>ҲЂL$�$�g�l�2$0#V�%	��3�-�DjIB��(�fbF�f2Kz�4����)��I�J�}�l4�[���ɧJ�}�l�����r�$T%��lV�H�􅌪�>;�!k[P@_ȨJ�C��� }!�*��}�2&0-V+A/�J�ϕ�,c�b��cR���uH�D`Z�VRL�Vz�W�>��&uH+=.��R���TuH+�!��(�o$S�!�䇴���xodS�!�䇴B���Q��I��CZ�i���@A{'��i%?�>O��N:U��8��20'V��h�7��S��P�9&�`�%�s�[���R0�i_��@}�aR
&?�+�H��X��R��ɮ`���bu�LU
&��	��H��X�dS��ɮ`B�����H�*���:5^l�0V�T%ֳ������E:U���b]]k�0�^ҩJ�g��V����҉=��^��(�t`O����������輞zW/��J20��T��^�]=�H��LM$Sջz�w������&���]���zx���0�2�T��^�]=Dm
���g��zq���??�L?�(vT�z�����Z��U��V_Q�D��
���ب��(����Z���Q�������AyQ��2))��,�%٩@�z�&J
]1KZ���3?IxO�+�*d�%��e$��kw�W��Q��#�^�k�*d���_QF��v{UȀݛM_QF��v{�z�ߨ����[^{�.������W���b���^2���ã�n����w��$��B�O���Z�ݵ^����zx�P@���R�I��A=$ٿ�^�+�&Qo�z�2P굻ԋ��F5��r���kw��$��QQF��v{M�����ܢ��]�5�zs�C���b���^��7G=<`,��kw��$��QQ��v{]x��N��d,��kw��V�W�$��eC�^�K=���b%�J2P����S+��YI^Ր�E-D�$t/�C��>P����S+��YI�0P����S+��YI���{�.��J�zV��(�)@���bO�$�g%y+	�"A���bO�$�g%���5u��V�W�$�jF�'	 z��$P��dW�c���DI�qP�ۮ!��R�$��p�CT�(�^E	ԇ���L���R�@}8�a%���ɹ~O������$WQF&��=��V�׳���!��(L��{�_�$�g%��209������������s��W+�+V��$c�s���W+�+V��$C�s��W+�+V�W���H��\�'��J�zV��(#�s���W+��YI^Ր�O&��=��V�׳�\E	�����ZI^�Jr����ɹ~�������$WQ�&��=��V�׳�\E�����ZI^�J�*V���PW�p��Q&��=��V�W�$�jFȒ��=��V�W�$WI���=��V�W�$W�	����ZI^�Jre$`rnܓ�j%y=+�U���ɹ��$,/��J#�s��W+��YI���L΍{�_�$�g%yUCB�������J�zV��(c�s��W+��YI���!crn\���+��Fa%���������W��'ˉ�_Qâ:�*E)����ߕ�Ţ��%��{p�Y?4dLύ�R��[��]L	Yx/����z�1�Y�/�Βz�=��'Ѝ�(K��� ��L��b�;K	��0�	�Ѝk%�\I^}%y;	�	�Ѝk)�\I^�JreH`�n\[a�J�zV�W5$dQ���
+W�׳�\E���VX����Jr��Q��V�$���\e��^X����Jr�e@`�n\�a�J��+ɫ�I`@`�n\�a�J��+�U��!�q���+ɫ�$�jJȲ ��V�$���\e��vX�������C3t�Z+W�׳�\E    ���~X������*ʀ�ݸ��ʕ��W�W�����ݸ�ʕ��W��,Ct��+W�W_I^Ք�e�kE�\I^}%��2 0D7��r%y����	#Ct�Z+W�W_I��	��kM�\I^}%��2&0D7�]�+ɛ�$�	����3B��J��+�c��p��f����^��\�^{&���śQF��C۽�wVM��M�emM�6��aRM����׷ E׽�`RM�z�!ɚ�(kZ!����_I��FQ�*�%�t��t��b���^ɤ��C��C�2PҴJ*U5�7���(�F.U5�7B�����݋��ʟl
��T�t��tQ�*��I���C��C�2PдN�I��.���Um
�;	&�z�P��d(��i���B�=����$,	��K
�樇��?�� ��Po�zx�H@!��T�zs�C���B�Mr�
�樇(#�L�$S��Q�pP�>I�*ԛ����1m�LU�7G=�H��PW������(X_d�Tӡ��Cx�X@�	&�_�O�J2P�������g}%m��F�K&U�׺�ׂ 4P���T��u﯅(#�KO�RU�{-�H�B+2�LU������(z��d��u﯅���# =�LU�����emM� �d����j�Qۀ���0)��A=B�jb�gL
����$kjb��K
��^��R	�`��IU�G=D��f�z!��P�zx�H�0X��R��QQF��z%��P�z���W��
��Ah(`�7��
�ᨇ(c�`��LU�G=�H��������qX*a�7LJ�ϧ}�n(`�w�KJ��g~%m�	�;�%�էk�e$`�wR�J�O��A	�\���ӵz�20��T�ձ��*iQ@}�LUZ}�7�e(`�O�����o��c�`}�LU�p��Qۀ�I�I����T�����$����u�� ̂�E~I���_I[�EzI������"M��E&U�����e$`l��RUٿ��	�/�TU�//�C�6�h:�$SUٿ��Q���F"�����e����F"�����e���DnI����U�HSqh8&RK�u�$WQֻ|�d�d��~�3��=�LbI����c��.162�Ty��{x�Yֺ�D�(�S��~�>
Bk^b&l��j����񅄪���=�iR�W��r��0�	���JBU�����[��J������\e�ܒ<:zΎ�(C�a��Z�����p+PP��,I�~N��(�a��M��ݏ�
iY���N���Ϗ�,�a��O�����'�����4�~�4f����4�~�4f���4�~�4
�-A� �*�"�Y�F�� �$�?�Z
iQ�~�Z�Пk-c�V��~�Y�П{-�F��$�*���-c��!��H�J��f˘e@`Ll,�z��2
�-A�"�*��}�2 0)6_����GiYY$T%�١Y[�Nd�P��g�><aL`Xl�a��W�7_I��̊�3+��J��+�c���`#�U]��]� ��?��3�U]��]�`���ڦ���Ż!ʚo(mZ!Ť���^��/
�V�0��C}�W�>���{%�����_��{,��VI���C��C��M�J.Uu�wB�>���{%���ջ�گ%MkdSU����+j+P��Ȧ��C��C��&�z#���ջ!�X@E�:�T�u��u(hZ'ŤPo��jP���0)�ۅz�Q̴A�I���Ko��}QʴA~I����(P�R��Q�6�\P$S��QQF
�6ɦ*ԛ��
�O��
�樇�}��O��
�樇(cuL[dS��Q��`@�)&�u�ϧk��/2L���O�!�H�zhE�$�T��?�+�H@�_�K��ֽ���ȗT�j�uo���}��ȗ\�j�uo��(#�KO$SU��{�-­@ьLdSU��{�-D�shF&����ֽ�m�E��ɦ�[�[���&f�{&ŤP��8-�0�3&����h�i��a�^H0)��3�����Y�^�/)ԇ���@��JU�G=D�s@��KU�G=�H��d�B}8�!j+P�^ɦ*ԇ�����z%��P�z�20��T��p�C���q��u5B2NW-*­@�z#Ť����z�J�w2Lʫ��S���'	�wLʫ�g}%m
�;�T�է{���>��;�T�է{�e$`���ʫO��!j+P�>Ȧ*�>ݫC����A6U}Ý�7D
�l���;�n���'�T�w�7��(P���Tٿ�����?���0��=�+�P�0X_$�Tٿ����(P_�RUٿ���p���\�*����!�H�4�xI���y�m�E����MUe?6���}�MǗl�*�����C�`#�MUe��?D�l�*����!j+Pt�%�:6�Wa��?t�3�%�:6��(�]bld2K����X�k#-
=�LbI�Qy��J�ڧ��cϤS���Ϩ�'�u���Qȧ�3*��Q	Y[��BBU�Qy�1k��񅄪<���� ����JBU�Qy��J�2$06*	UyF��3*QGZ�����~����}��7RK�~��T�F�F#�${z�W�6����X��=�aY���odS�aOn؃ 4 06:�Tiؓ���%(���S�aOnأ�4�;	Uiؓ��eD`@l�Ұ'7��	Cbc�P��=�aY[��AnIB.��Q������$��V�(����IfIB���Qۀ�IbIB��Z
i"�O��z��2f�t���o��Ol	
��T	�_m���?@�H�J�C����͗���>;�A��/	U	}v�C֖�Y�+���Б&� TϴX�ɛo$�IF���kz#y�Fr��������d����_�$��N!���=�������+(g�T���Q��dQ�Ie�Iſ�տ��E�Gu
�O�?����~h/�g&��r�v��\��Y�;�?�վ��E���=�nv��B�\P�B�x��F=}E�g�N�h��ucକ���Մ$C�߬��
�C)*�H@�7�{'šKJ�����$`$EE	(�f�%H�DJS���P�Ͷ�8���g��2P�͞)J��οm#�����o�FQ�m/���T����o�uu�q���*�X@�7G�$����������웣R��������}s�;)~�m��������oΗ�į��(#Eߜ��į���}s�;*~�m��ce$��sQT����%@E
(���z=�l	��@��YP���(*�z����|s]��q���%`'�����z%��_Ö �d(��[o����k��^7P�w�I�{��%@E	���]�U�������z�.���^�l	��@$��J��	���CBŹ����W;[�=P��/�+g�
]�v���fQQ��B���-�*&�V�PW[���jI@�$J���zH��K�$�z;���bI@��;I���e$`pn՗���Q�+�-
��BQ�樇(#�s�v��7G=<`$`rn�uG)ԛ��Lέ�)J���e,`rn�FQ�樇!!��s��Q�%@E��[�b]m	h����rK�R�`��Z=$
�[}P�@��Z=�n$`pn��N����-*�H�����	�k�e$`rn�NQ���z209�ƺ���mgK��209�f�(�׽V�+�-
��FQ�m�{���Lέ9﨨x���009�օ��а%@%�[�R�@}\����skJ���z�2~����w�B}8�!�H�����*%P�z\YnQQ����QQF����|���%��-�#�wrn�����Ζ e(�N��75��G=D���~'����P�z*U~���а%@%uK�H��$X��n�XnII��
�|�I?$���{'�i�v���E�R(J�0�n���K�(A��o�!�H�@��;*N3��%��!!#!��)J��M�����k�(�7�n\Y�U�z�%����QC��B]m	h��^7
Po����!    �P(@�J(�S��$#����I��_^��!#��^(J����QFB�S� ay�W��D5��E	���!�Hh@}�;J��������Ѐ�h%�����!�X�@}L�o{���e0t�>u�%��-M	��JQ�ul	PQC�sP��Q/h+��h_�%��{p�YF� �P�2R��=>a8�:e)%��c��0�Z����{��Y�� �Lo����z�qLȈ8a�$ՀN���??ykZ��Ld�T:��s�����z�}�����9zG�B�=�6U���!j�Nt�3ySՀ�Nl��u0q`�q�jG��(�`��,�M��Վ�_Q[v��^ț������1p`�Ij7p~>����3 ��KR���yǊ�ђ�z%��ޱ�3���� �w��O����z�H�	��H������!�H�	��Ț�����!j�N��H��w����	�w���*��s�2p`v�ʠg�x��Ѣ�z'o�z���e0���$���.��^7p`rIJ{��%m�	��$��˳���� ���������	80'YS����B��� s�6Uڻx!zG�ꓼ�����!�H���ț��B��Bx�P���ț��B��B�ڲ�/򦪿P�����d��/���O���g �K.I��e��$mՉ��K*I���&��2�n�9�$MU�z��� X����/T/`�FN �D�T��0!j�NtyS�_�^��(k`b�ke򦪿P��	.�:��Z����/T/`BԖ��g򦪿P������:�d�B�=�+����Z�\�B�=����:�z!��Po��J��%��V!��Po�z�20��*YS�zsԃ40��*iS�zs�CԖ�@��7U�7G=zGx@��7U�7G=D
�Z���B�9��-;�z#o�Po�z�20���$�_�ϧU40��:�$�^�V.p�N��I%�VZ�W�������$�VZ�Z=jG�ꃤ�j�u��C�����5Ț�VZ�Z=<�e'P�MU+�{���~�I�T�Һ��!�P��ך�MU+�{�\���@}�7U���z�20��&�$��x\��}�s_k�KR����n�b�k-RI
��׍L}�E&I�>�e$L�_��
�ᨇ(#a����5U�G=��-;�s|I�*ԇ������c"o�P�z���c"o�P�z�ڲ�D�T�>���5/_4���E���(�]��g�Iʠϧ|%m׉{&���|\%����_Ϥ��A���J�Fvꅤ�2�ӿ�F�hQ@��5U}�7��e'P/�M�A��7<`$d�^ɛ*�>�n�22P��M�7���pCԖ�@��7U�p��.�X(@��7U�p��QC�d�*��s�Y(@��KRe�z�W��P�z#�����̯׍�
�;ISU�//�C��P�z'k����e�ڲ�wҦ��_^�h$4�>ț��� T��Ѐ� o����e��ySU�//�C��Ё� o����ex�`�@}�ER�c��ڲ�_�_���j_Q� �������> ���yS)�ރ{�2p_$N��z�B<Zx_dN��z�1�x��WzI�J'�����K�TJ�� ���<�I%�tz�$�����|�9&:����?�C��/_��3��S����nى{&m���?�C�>̇{&o���?��w�(t�ySu�*��s��&F�g!o��]%�xlى{!o� �#��W�>·{%���p��������`���[V~\%�#\�`��T�z����Jڇ��z%i�ް�<G�hQ@��5U�W�?�CԖ�@��6UoW�?���0Po�MջU���e$`�}v���*��s�20�>;ySeг<�e'P�$���.O�J���@� ���w��]	�	�9H%)�]��M'Hd���.�_��|@}�4Uڻx!D	`��������!j�N�>I�*�]��\�>��'yS����B�����ț��B��B��yS�_(�_Q[v�E���B��Bx`��C��%����2�%L`,]/�$�_��A/a���Y/�$�_����8�_��u�$MU�z���~]����/T/`�w�(tiS�_�^���}�m�D�T��0��`b�ke򦪿P��	Q�������MU�z���D�=�7U���L���<P/$����������U�%)���*)�֬�Z�T�B�=�+i�ꅤ�B�9��#c_��5U�7G=Dm�	�+iS�zs�C�>��+yS�zsԃ40��yS�zs�C������ț*ԛ���E�F�T�������N2I�����������%�VZ�W�V�@��JR���̯�}��w����ֽV.�H���dMU+�{����ꃴ�j�u�գw4��yS�J�^��(#�_k�7U���zx�P��ך�MU+�{����ꓼ�j�uo���}��/�I
�q�7kV�}�E.I�>.��b͊���H%)���&)�EUL}�E&I�>�e$`r�}ɚ*ԇ�ز=Ǘ��B}8�!j�C��%o�P�z�2z����B}8��
-�D�T�>��e':����B}8��;��C�=�LR}>�V�Z�/�\�2��|��oՉ�z&���|�W�>̇�z&����o�!��	���ʠO��\�v�@��5U}�7����B�T���p�w�(�^ɛ*�>�n�22P��M�7���p�[v�J�T}Ý�7D��|@�����o�!�`(`��LRe�:e���u��F.I����_I�4Xo��Tٿ7I��V�z'i����e�ڮ�w����_^���a>��I���y�����ySU�//�C��Ѐ� o����ep�[v�A�T��������I�T������-
�O�H
u���+j�N�>���\��>��}��O:~'}����(�a��E�T
�������ĩ4R��=��}��/2�RI���e<`�+��N��z�B<ZVG�S)�ރ|�ںs!�~^r��{>)b��Q���~^r��{>*�p����K�~^r��{>+b��Q����w�s��z��Gݗ��O�i�Ν�*����/]u��Ӹ�;�U԰(x��w7�Ӹ���Ų&�:e) ��Ƭ :��t�N��w�{" �Q�����w7��Xe5��j����\��'~����U��;���i��	��* ����4VY�*�tU��N�v�4nb��!�
0]��Ӹ�;�U��
0]��Ӹ�;��=��wT�� ����4VYj�tՀ�N��w�'T������4VY��tՁ�N��w�,�`�
Ay�q�;��XjnD�LW%(�4n~���2$P
���w7���_VX=�Q�Sv}�qǝ�*Ɉ@)�N)����w�׍T��T�]���������]��g��2P�Sv���} ]	(�)����> e(�L��z@?� ��CnQ��ԁ]��g��2P�Sv���} �cU`>U`�� �������PW� :��$c%`~%	~�t1"d(�@N/%	~��$#' r*wR��g@Wk�-j"�S� � T�	' rZ%H�> �@��_�s�%H�> U-j ��Qq0��} *���3 9O��z���@CBŢ�zI%����w�-
��u��c����_� �2(I���$CG r})I��~��׍��k��b��> e$�@���į� T��� �.��>���@�8�[��b��> e$�@n��~ު^<YOT�
?��3 �M�2j|E8�{��b���} ��� r�PW� :��$cg r��~� T���# y���~� ����� ȣ�I�{��@E	8�G�����g��Ձ y,�
]�~��(#' ��wT�^��P	8�g�����g��2p �IQ����> e,�@^��B���} �S\ �Po���$c��yJ���z^�'	���})I���!�H��y˝�Po�zx�H����v��7G=D	X�Z�EQ�樇(#�_K�w�B�9�aH�H��גE	ԛ��~P�X�ZҤ(�zs��r��E��DQ�樇�fQQ�j@�>     �z����AI��~j����c���Z�KI�~j��4,	��r'E���>�.f��E��)J�нVQFV���(J�нV�{�-
��LQ���z�2����vGE���> ����կ�N��z�k�e,`�ki����^�Z=D��Zڅ��б��!c�_K�$P�q�������_J���z�BnI@��;I�>�e$`�k面��Q	X�Z��(��p�C���կed��G=D	X�ZF����QCB�V��1)J�>�e,`�k�����Q�{�-
�OB=N3��@EX�Z�ź�б@�n,`�kY/%	�����}-�P�@a�o�!�H�����u�5�3x��]T0�%�,7j�g�*zA�(aR"����*c��'ڍ���:\�����4�vc"�$� �{)c�u.Q¤L>I���)�ֺD�2IT��o��Y[}���ɢ�5�~5e̲�%�TH��5�~7e�ֿD%�
yT��/��Y�}�BU�u��RXHp���G�bݯ��Y���TI)I��"���V����Q�ПM�1ʈ@1�*	%	�Y%�3��O���.��T3��D���2٘��'�odQ%��MVXHsy���F���:٘e@��I�<��>;���>}'�*��}�2$PդNUB���eL��I����$٧I������%9�\W��XL����7�KN�{�7�h���I	�AP?�,�nt����$#eM$�T7:=��:HK󓼒�F�g}%(j�$����ɻ��->�$����ɻ�!�X@U�9TՍNލQ�ʚ�H��nt�nt����'h_$Q�Q�g9��2��>-��Q����+	iQ�A�$Q�O�g9����=ȗ̒����|�X�hX~I,)�����d(`0,'�JJ��g~%	ˉ����[tAn�d"��tz�]��f&��r&��tz�]�=bQh�g��J�۫_Q�|�ݞI�*���E�v&��r&��tz�]��v&f�r!��xy�W�� ��XR��fC����<X.䕔/��J20�+i%���7���(�^ɠ*^�������r�ś�#�`��CU�x�!D	ˍ$��/�t�������7��VÈ(7gĠ��Q��H�Z	#��W���I��	u�l(�l�Ң�z'������q���X�$�T��>��uCC`y�WR͆���$##`y�A�G'�Y�����j<:��r�.Ġ��!�<ɡƣ�,PQF���$��N���+	iQ@}�D�G'�Y��L��I5��g9�z�X�X^$Q�N�^���m>��"��Po��d,`,/K
���W�{6f��K^I�ޞ��d$`��p�6O�t=v+̀���B�9�!�H�XI�P��Q	�+�$�B�9�!j�O��IT�zs�C��31VIT�zsԃ����v{&��Po�z�����LfI���\�&��J&��tz�W���1V
y%���3�^��6F�J!��tz�Z=Dm�	�)T�ӻ��!�H�X��P�N�^�1h$`
�T��J�c9�����W��J�w�գ�4�+IT�ӻ��!�X�Xi$Q�N����|�FfI�>���)cC`��XR����esb�t�J
��V�CR#`��VR�G=Dm�	�;)T��pԣ�4��9T��p�C���)�2H�*ԇ������
�ᨇ(CS`e�DU�G=D�+�$�B}8�An�	��)0��c9�J20V�!0��c9@W
Ғ��=��t,PIFF��=����@=���9�H+`剔�O��'�!?t���'R^?���l+J��H)���ɏ����>�nLd��N���P�6;J��H(ɝ���e�K�0)�D�;���Ja!-��LU��k*c�>��z&�*w�=��	�^��I�<��	�U�,�_��I�<��	�7UƬ�>}!�*ź_U��>��+yT)���ʘeL��I����>_��6�,
�W2J��V6F�C~���P�П����Lj�$��X6fm�	�YT	�o��Y���o�Q%��Z6zAM��Q%�١Yj��ɣJ�C-�e�NUB����O��AUB����1��&K���Oø�'��T3:]Z=�SEM��T3:=n��Hj�4�*�ft�_�!jkO ?I��ft�ftt�f���$����ɛ�!�P@U�)TՌNތ	(k�"��d%oF��->�"��d%oF��}�-ȗ�:���~�n�/�u�V�����D�%��lz>����:�/y%e��ӿ�̅�Dg�M���z}kO�	Teӳw�B�>�d"��lz�]��^�f{&��lz�]�����TX��P�M�ޡQ[|�۞ɡ*���C��������;t!ʺ�	˅ĒR���|}{O�^�+)^�YQ����BZI)��̯$#�`��UR
�x�!x��=�z%��x�^C�ڧ��z%��x�^Ct��9T��˓߯(#�`��C�{��7�|=��'Po�P�ǣ��_Q��P��PU��x�!D˝Ē�5���0n�	�;y%�k��M�;7��r'��z�q�G�F�� ��z����'P$P��~�&<�O��AU��W/`B����<I�����L�20�'9T5�_��	^p�O�>ɡ����L������"��F��0�AZP_$���I_I�{�E^I�����}��/�J
����$#`�%��Po�z����Ǘ�B�9���S~h@�dP��QQFf�J"��Po�zt��d"��Po�z�����DU�����>�n{&��Po�z���6��J&���H�Z=Dm�n{&��lz?�z;7'f�J&��lz�W���1V
i%e���V)�ܜ+�����k��O��BU���zx�H�X��P�M�^��(#C`��CU6�{���������k���1?��ȡ*�޽VQ���J#��lzw��E�FbI�>.���͉���+)��ӿ^70V:i%��x�W�֞@��@U�G=D�S~@��AU�G=xA#3`e�BU�G=D	+��B}8��AZP�P��QQ��P��P��Q+��B}8�!j�O�~�Mi����������=6�M��/� ���{lJ�>�_�!ikO��H�*�>�/�� �0V�Q�S3�S���C�W�S�S3�S��D�W_z�ԧf��fsoQQ�^�O��OM�2�Q�՗l���L�Ԅu{5�nV��韚e��ث�|���L�Ԅ(c�^��=u�qǵ�]�:�aa�֫w���5��X%uKjH*�$PX�S���^�+=u�q?���J�z�z�Z�~�5V$��w���5��ZcU-
��Ş�ָ�k�U�	�^��=u�q?�w���P@�W�bO]k�ϵ�*�X@�W�bO]k�ϵ����B�W�bO^k�ϵ�*�`@�W�bO^k�ϵ����^��=y�q?��(��^��=y�q�k�U�рr�^垼ָ���]l;7P�ի���w��Xe(��U��k��_k�/+�&Y���U��k��_k���}�*��n������zU}r7@�� *˘@�W��O��g7��2$P�ի쓻���Ō����^e����n e@��W�'wt��Ղ�,~�*��n��T��ү^����}7�z@�W��O��@e���u @��@e8Ю# r7@�� ]L	8��JY��{ݘeL�@�N�� ���jA�Of��u
@��g7��2"0B׮S r7@?��F��u
@��@e���/f��u@��@e����]� �n����*�5��(KA�ec��;�b��]G�n����PnY��: wt����e��8���}7�z"Y�/�fȧC��	ѵ3D7�n��� *Ɉ�];#tC��0Č��	�v&��0�@%�kg�n�� ��jA�E�3@7�n�qv�(c�s����`�� �C�s���`�� *�H��\;�sC�g7��20<����л��0Đ���ٹvf��0�n e0`t��u5�9�`����G�$��J208�F�$��z�H��\�N���@E	��k3S� �*�H��\���	��    bH�H��\����@E	��k+Q�����jA�E�U)J��˿�(c�sm]��� �������R����PI���l1ם$���T�������;)2����w�Q}17��EQ�ۇ� *�H��\O��ķ��=�w��O�@T�(�[�T���09�Ӽ�b3�n �@��_�{N%~T��FEU�ꈪ�u��PQâ���x���/���͚09��ź�0�@%uK�PR�e�������5ap��NI��5�@%	��e�I��?�n �����9[�uG���8�T���ɹ^E	�0!�H��\���qv���$`r��DQ�o;�n e(`r��JQ�o;�n����	�s��;*v������
�����0�@�n,`p��BI�vPI��z�$Po��d$`p��u')ԛ����L���)J���e$`r��FQ����?Q���c�Q
�樇(#�s}&��7G=<`(`r��JQ�樇(c�섽G��u��\w��y/T0����j�j��U�2������V��ka���[����OU�W�G�B�IP�0�%��F���^EiQ�?&�j�j��U����D>U�^M�
X�
5LM$��<ʺ�I�>&J���1�y�u-��d]LT05�bR�(�q��
��I�*��ܬ�(ka����l�2���z����Te֗���%(P/�S�Y_n��Fj�Zȧ*��ܬ�(C5L��S�Y_n�CԖ�@��OUf}�Y��`@S+�%�:�;VQj��H.����n)n�\�aj#�$7l������7�r��{p�O(bj'�*wl����e8������\���c�֠ ��R�[6�C|T�J��I��5��A>f�e� �*�l��y!$-�R�r��{��Y���:�.ɋ+����!�j�N�Kұ��+c��j�NrKұ��+cԖ��~�O���/���Ѐ�A��H�J��W�,'�"�*�__)��e�EJU:v��2f�����t�~�e|��X{I�J��7XƬ�Aт|I�J��WX�,cCb�%�$���>a���Z"�$�������DnIB6�
iQ�A&RKz_1����1��I�J�}�l|�:�k����ޗ�Ƭ�A�sϤT%�١Y��ĬXˤT%�١��ښk����>;�!kkP@_H�J�C���8@_�1���ϕ�$#�b��bR}�t���u��b��aR}�􌯤-@A|%�������!�`��Xk�RU_:y_:�J10+��T՗NޗQہ�F6U�������4��T՗NޗQ�&�Z'���������@�z'���8kT���9��	�h��Y�����A�I��|�u�2��$�>H1)������(X��
�4��U��ńX��R�X�ެ7��D�I2U����:q��OP�dS�X�ެ���bm�NUb={�N\c���T%ֳ7��-�?Q@}�NUb={�N\b__L��E�I���\�G�ٰ��bR6�<�+�P�dX�0)^����6�躿$��/n�C������H�*^܆�(#sa=�MU6���p;P���Te�˓߯(kqc,�'ҩʆ��QGZ�t����mx����L:5����&@=`-n̄�L�)��X���Í��^H1ų�kT��̃�B�)��X���@��`�g��Y�����J.56��Y u�E�J256��Y����ljl���&@=`$`�Wҩ��?Κ e(`�7ҩ��?Κ �(Po�S�X�^�Eh0`�7rL
����$c�`��bR���z����;&�z{�W��@�Sk�Y�00��T�zs�C���i�>H�*ԛ����l�B�9�A	��t�B�9�!�P�<X��S��Q�:Ң��$��Po�z�2�z�E��1��Ǵ�"4�
�����ߨ�����C	S��vsm��^~���E�%���iM?����?��TuLk�1��́����t�:�5��V����D�I�4Yϧlܧ��{L���N�u�
��d]LT05�aR;M�3�^���L�I�4Y��$D���gr�J�/�!�:��`j!����r��u0Q��B6U���b=Dm
��T%֗���#���J:U���b=D�aj%����r���W�K
u�fE��`��\��T�{�2P��FnI�SyWKq��BS�%yN��s*!k���|�<���9�($-�w�����TB��B�v2�����T�[���NJU�Sy��J��'��� �*ϩ�~N%d(f� �*ϩ�~N%(­A� ��9��ϩ��}���K�K?�}�E��IrI:�s�e���OrKұ�k,������S�c�{,c�����H�J��Y�,�u�Q���o���pkP@�H�J��WYƬ}�ȗ��t�~������KJU:v��2fm��KJU:v��2>���	��]����?Q���Z"�$�����E2�[�Пm�Q�hB&�z_7������I�J�}߬����{&�*����1kkP4�3)U	}v�����/�T%�١Y��İX+�T%�١Y[��BJUB�� 	��?@_H2�ƴϕ�$#�b��cR����b�[IY����Tc:=�+i����jL'oL�̊�F6U5��7�C���Y��H���t��t���7�1�����?��ɧ��t��t�20)�:�T՘Nޘ�>Ң�z'����Z_Q��P�$��Y�O�z�X��X䘔Yϧ['��I��2��_I��Pt`O����:q��OP�$S�Y�ޭ���D�I6U����:q��OP��S�Y�ޭW��bm�OUf={�N�h���Teֳw�ą�?Q@}�OUf={�N�g__L��E�I��r�:�a�%Ǥtxy�W�V�hF����/�&��1�_��J���!�H�\XOdS�/���F��z"��txq��E�=�OU:��Q��:�|����uxp����TX��S�/��CԖ��g��V�cZ�G��C�=�d�ۧ���J�7&�z!��YR�z}+P�^H1�Ek�4����?�^H��Ek�ƥ�(#�`��M��u�����'
�Wҩ�����WԖ�@��O����s����ib�7򩱃���W������ȧ����_l	
��Te֫0!j���$�B�=��jc�`��cR���S�����;)&�z{�W�>��;�T�zsԣ��(�>Ȧ*ԛ������A:U�������@}�OU�7G=D��@}�OU�7G=D
�|�B�9��n	
�'�T�zs�C�����>�R� ���Q����w��姦?������?Ix��Z��OM�>5a�Oީ����S�ϧ��M�5���w��姦��&D�(��]�u�����	���]�u�����	Q�:��q{���q.>VQF��q{���q.>b���bo�Ş��x���U���bo�Ş��x����=�wg�(��]���x�W�}�P덻��qP��یRoܥސ���zH�w�޸+=u��8�({�Qꍻ�S�s�����A�7�ZO]|<���*��{�.�����\|�/*�B�޸�=u��8�(��P썻�S�s�z��(��]쩋�ǹ�XEٿ�޸�=u�����*�����]멋�.>b����(��]ꩋ�.>VI�ߢ�w��.>���Q��z�.�Ԛ�q��(#�޸k=�&`�5�#�޸�=�&`�5*�H@�7�bO�	gM��2P썻�Sk�Y0Đ���bo�ŞZ0Κ e0���PW�{���k�-
��ŞZ0�&@%�w�޸k=�&``M�zݾc(��=����	PI�����G�՚�q��(��a�ܣ�jM�8k��w����Wk�Y���m��ܼg�՚�q���ܢ:�*E��z��B!��L��{�_�	gM�z��$L��{�_�	gM���/	�s����& ��=��(��097���&`�5C	��;
F��5�/���&@Eu���}^��rM��5C�-����FY�ݽ�����_���k�_�	�&@=�,�_' 䚀�kTV�,��k��	PYò��u
@�	�&`�)!C#t�: �_���	�����\    0Κ��֖[����5�	PQFf��u@�	gM�z���ݼ��5���,Ct�: �_�����$�\0|M�SB���u@�	�&@e���i �&`������[����5���,CCt�: �_��0&0D7�rM�8kT�!��y��k�Y�������D�\0Κ�!f�����D�\0|M��2 0C7�#rM��5C�-���ݼv��5���,Ct�Z+�_��0 0D7�-�rM��5*ˈ�ݼ���5���,CCt�Z+�_0Ĕ�1�!:���/k�5kT���uF�^0�&`���?I�[g�n�5kT�р��u��^0Ϛ ������u��^0Ϛ ��B���:�sS�	�gM�����:�sS�	�gM�3BŢ:����Y���E-D�
?��Y0���(�έ3;7���y���fQ@��q�y�5�dQ`�\��ω5*�X���*����*�P�ܜ�꺓
��S�	��[��I�/�y��(#�s�N�$`�s����[�(A�;U���������gM�z�H���j���O���ǀ�2*P�/E�{��oe,`pn�u��|b)�#B���V�$���ԯ$Ccs�/J_^9?�ㄐ%����$�S��O�e$`nn�FQ�\��zx�H8�b'yg�^k�^��B�	&�^���అ�'	�y�_R��~�[8�`��%�^�ۥ����g'��/�T�^��^Q�P���L�j�uo�EiQhD��RU{�{{-D� E�2^r���ֽ�0P��D.U�׺��B��hE&r���ֽ��컏f$r���ֽ��}�P��L�I�>�!ɾe�_F&��P�른>�|���B}<�+��eT/��HU�G=<`o��QȤ*ԇ��� �T�B}8�!���/��KU�G=�A��P��J.U�>��(P��R��Q�.�\P��R��QQ��@3	&e��������_F#����|�W�֟@��^RV}>�+��[T/��]RV}�U~�H@�2��#`�*jP��I�*�>ݪGi&�wr�ʪcG��2P��A.UY��V=<�(P�R�U�n�C���fr�ʪO��!�`����$��U_ϧi��>��$����������?��$����z�.���aR�/�Kʪ/��!ʾa�D���˭zx`�O��Ȥ*��ܪ�({�16�Te՗[�e�3���K.UY��V=��-@�r|ɥ*��ܪ�({w06_r�ʪ/���EZ��ԒB;T�}I��̒\������h7&Kr�����(�\blf�Jr��{p�Yֹ�8ؼ��䎀�;��
=�L6U.�|�1�z�	��t�ܶ�⅍�,_ȧ�u��A>fm
��T�o�=��'�����Yȧʅ��>f����7���n�2&06+�%)����p+PP_�,I�~n��QF��f#�$���R�H���`��0|G���
�7��R�����	�a��N���o��Y��f'�*�_i����|��~�e�F��f'�*�_j�	��A>U
v��R�H��Ԓ�>_����
�2K��i6>`D`BlNK��j6F��ׄ��0|G���
�O��z_6���)�9I�J�}�l�2 0'6�T	}v裍�,@�ȧJ�C��L��E>UB����!�Q���O��g�>d�[/�(���C%!iPt�_LѯO�P��x���J䗢^�������Dz)��yvHiQh�'R�Q�ϳ#@EY��b+�K�n}��kpcPle��Q�ϳ#@Em��{&���<;T�����L25��yv(Ah�Sb��L�^}�*�d��V!äL~>U��@��`R&_Z�O����U�/)��������U˝�Lv�n��[�L�0���ܾb<lUR�J�g���n����ȥ*��]����+��V#���zv��n��[�d���ٵ��ؾb6lu��J�g���^��Ѱ�/��J��*iP��%���<�+�P�X�/%�/����A	
[��I�z��!jP�>H������Gi��k$ä���T���P��E�I����08���I�	�E~I���3�^ߧ�`R�%�_��_Q&�P���L��u﯅(��^�K*U�׺�ׂ ��ȗ\��u﯅�}���D2U�׺�ע��(�"�T�_��_Qۀ��H���Z��Zx`��C/2�aR��'}%ٷ���$������D�=�_R����R\�Q��LzI�>�e�2��QȤ*ԇ�e�E�B*U�>��(P/�R��Q�S@��LU�G=Dٗ�fT��
�ᨇ�m@�z%��P�z���P���� >A��߁f42LJ����_iI`��`RZ}>�+i�������Y_�	�^F'����t���T/��JUZ}�VQۀ�N.Ui��Z=�}����J�O��!�H@3�T�էk�(#-
���J�O��!j��d���ӵzx����j����������OLJ��K��I�����$����z\/�����E&Ui��Z=D�7�`c�JUZ}�V�2Ң��"����r����?�_��J��τ����4�|I�*��\���m@�r|I�*��\���}�Ǘd���˵z��%al&RK
u����E�1�Y�'T���R\�Y06�%yB�}�W�u.163y%yB��*�	�\blf�����'TB�v��gҩ���'TB�>���TyB�=�G?h�K��k(̲�O='TB�v�@��O�'T^?�m��80_ȧ�*��P	Y���f%�$/��#*ၭ@}%�$���2F�C���X����e�̅�F^I
v��2�A�a��L���o��Y[��F6U
v��R�Hsz���N���ﳌY��f'�*�_h���w�R����1k���|��~�e�2&0!6�%	}����	�
�2K�|A�'j��Ē����.Ң �$�$��=�1ˀ��؜$S%��h6>�(��dS%��i6f�3�~�N����٘e@`Pl.����?�(�_�S%�١Y���_�S%�١�6Ҳ�u	z9U�}�$dm���K�I��J�	�7�Y���`R'��uB�<`Tl%�K�Vz�W�рI��Ȥ�Z�Oh��)[���H��Z�Oh��}�]�L.U��J~B+�H�B�=�LU'����
Qۀ��I��Z�Oh���?�L2U��J~B+D�����*$S�W�|�_Qۀ�B�I	��\�Sa~�bDlLJ��K��0>U1 �*�%%`��z)�m���+�T%`�u�}�xت�R���.`����a��KUZ=�VW�W���V�(���߯�m@�z#���zv�����[�d���ٵ��վb6lu��J�g���R��Ѱ�/��>�}�*i��}R������^70�F�$���S=$	
[�L���^��z���R��z���5	��Tz��V/��C�}�(�֤�Ji��Z=D���oMz��V/���U���{5�RZ��VQ�:*���;G��\<ǹ�o�rGE�QO_Q�:꽵���(l/a�z�XG��֢������d(��z�}3%���%��$#���IjwR�����	��[��DM�
�վ����Zo�w�W��Q��$�{?Q���2`��L_QF�o��5(*��wT�z��Kj���O��RTh��U-�!��QQl>߯�aQQ��~c�j�p���?���z?I�������%���k�vP���-	�ߕ^��7G=D���-���k�樇����Z�Iԛ������b�Iԛ������b/�n�U������~{M���e,�~{j�<�ȧ�}nQ@�.��>�}�*�X�@����>�}��uC����S��'���$#����S����G������RO�#�g�	����ZO�#�g��2P��=��|�}�S	YP��=��|�}�*�P�@}�%~�u/���B�P���׽�QC��B}H�����6P�����>���0P_��������W����Q�CB?Q��IQ�ᨇ(#�wrn�7Q�@}8��#�wr�'��Q
�ᨇ(#�wr�'j    P�@}8�!�P���[��W����G>�Bc�wr�'�P�@}8�!�`������P�b�mb�T3BO���s?I���_I͒~QO����n����ɒ�ڝ����G��~���N��DM�$LQâ��=����ϳ�|��Ţ��=����ϳ�\Eu�����G>�>򩆄~�2P�'��>�y���(c!�{�_�#�g�z�`�@���/���(����{�_�#��G���������|b��������|b�J2*P����>�y��O5$dQ@���W����G����
����|�}��#��{�_�#�g��2P�'��>�y���(C��{�_�#�g�	�������|�}�*�`�@}8���3��8x������E���)�˨�e0t�>E)�������0@��w�t[��=f��DYJn����e8�*e)����F�a �5�,���C|�2 ~�V~_�R~�=ȋ)!�j�*���{��Y������>X��|�>r��1�;C��V�#�g��2$~g�V�V��}���#WQF�����JX��|�}�S�#��w�������r��}�*�[�/���	+��O�G>Ք�eudU�R@��ј�,k!k�Y��� �O�|U#�k-��G>}�ʪ�诽�r��}�*kX����}����O����Ȁ�Z+��ϳ�\E��LQ
�cvŐ�E�k9��G>�>re@@-���ȧ�#WO�_�a�>����U�Q ��V�#���\e�_�a�>���ȧ�H`@T@-���ȧ�#WYFD�׆X��|�>򩦄,�_;b�>����U�1q�������m��Mv�`��ʛ��~�N�!<�w��;O���/�vQ&�p4`Mҩ��P����|�l�Z�SUۡx�!(B3_8�9&�v�ϧl�
6u�bRm�z�QF��C/�%ä��_IFʚ�%������m@ъ|ɥ��C��C�2PԼ/�T�v��vQF��7�MUm��m���E72�NUm��m�e�,5o"�����QGZ�t�j;To;�(kl��y39&�z{���[���I1)��A=$Y[��[�0)��3�����b�-$���Q�pP�^ȥ*ԛ����2o!��Po�zԑ�+�T�zs�C�v�@��NU�7G=<`(��y+�T�zs�C���J�m�S��QQ
����ּ��v�`��cR�~��?I�����bR���a�{�j���aR�����m@�z'��:l�;l�#��N2Uuغw�B��Ѐ� ��:l�;l!j;P�>H��[�[P�FB�t��uﰅ(C��I:Uuغwآ��(�~σ����$WQہ�I�I�>��uca �E�I�>���d(���0)�ǳ����\�B}8�A	�/��
�ᨇ(#�`�%��P�zԑ�V�K:U�>�e$`,��S��Q
�K�t�B}8�!�X�<X����J�yV����@чL䘔X���?ƥ:��R&Ť����z�Ӿc,e2LJ���S�Ӿc,eLJ�O�!ʚ��K�d����zx�z�K�l�����Qہ�B:U�u�$WQ���<X*�S�X��nP����R%����n�20��y0��|���S�H���*���)����F�I�����uC�`��aRe�z�W��@��`Re��?D	�K�\�*����A	K�d�*����!j;P��ɦ��y�u��8��I���y��̃�A:U���������y�tσ����$WQہ�Av�P^/}E�K��a#��-�Q����$�d�����(h����~��]�HSq�}�O�������e8`&,-��b�� ���/2��f������EJU^���c������R�w�����	��j�;K+�<���E��%���~��cWI{h�'�K��h���(C�a9�\��G�������h�'rKұ��1�f�r"�*� �Yf8^��LBU:v?A�֠�K���t�~�4f�����m�U�V�ٕj��<0!�)U���i�2Á�|��ɕ��W��'�􅔪t�~�4f˕쒄�\j�	��JrIBn���pKP@_�-I�ϵ�1ʀ��X��S%�~�����	U	�_l��􍌪��o��Oˍ���>;�!ˀ��X�T%�١YF���5,&W�O_I��֠���R��g�>dgQ�{�/�w���6ޯ{޽ȷ�x�!�H��{޽�w�x�!D���|��;�;�L}aU�Z�SUߡx�!Dm	
��H2��C}>����t�"Ǥ��q��+
��%Ť���_IFʚ�*k̐i�z��U���MU}��}������H���C��Cx�H@Q�&��`��+jKP�#�T�w��wQ��ڑ�|��;T�;Gh�M�4o&�����!jKPt�3I&�z��i��K��C�=�cR���}%Y_��[H1)��3�^��&����aR�7G=Dm
��T�zs�C�>��+�T�zsԃ#4Pʼ�|�B�9�!jKP�^ɧ*ԛ�}��8�^ɧ*ԛ���T2o#��Po�zx`KP��H2�[>m�>��9&�b�Y��d(��y;)&�b�������y;&�b��bQ[��N2U�غ�آ�4���T�b��bQF���A:U�غ���[��A>U�غ��B�>���T�b��bQ����I>U�غ�؂#��O�L
�񤯤}��OrL
�qӊ�R���"ŤP��J20��.2L
�ᨇ��d�B}8�!j��C/�%��P�z�20�^ҩ
��G�%(z�/�T��p�C�>��V�K>U�>��#-
��D>U�>��%(��PWC$ÇH������$�2��2��^��y���1)�>/���K��2��q���K�d�2���z��g��z!����t�}�E�B:U���ᆨ-A�z!������p���P/�S�Y��n�20�*�T����pCԖ�@��OU�N�7H�}��W�L��_O�J20�9&U�����_ ��)&U��g~%m
��TU�//����P�dSUٿ��QF��R'�����e���w���V�)�>��;�TU�//�C�����4ȧ��y�}�E�A>U���������Av������|=`0` ,M�Kƺ�j_Q��$�$ϩ������ORK����T޿]�}��/�����TB�အ��Ȩ�s*��S�BҲ �"�*ϩ�����O���EJU�Sy��Jx�`X~I��s*��S	Y[�����R��T^?����?4�_�K�?l%W�А�hXN$���J������DnI]��RGZ��Ԓt��{��'���2�T�ؓ;������LBU:��=dm
��ɨJǞܱ��}�v)�R��=�c��F�r!�*{r���􅔪t��{�&� }!�$�?�Z�(CCb��\�П{-�F��r%�$�?[ƨ�@}%�$���-c�>���T	�_m��A��H�J��n˘�5(�odT%�~����� }#�*��}�2"0,�;)U	}v��[��NJUB���eL`\,w�^�d,	Y�D;J����C�� ����+D)�O)�����������>�W���d��X��J���`>��R�~u�Gţ�(�)�E�ώ*_Q�;
�|
�Qᳳ��?��̧��d����e��̧�O�O�F�|�P@�O������Q�+�X@�O�����Q�+�`@��?6U��x��@Xދu5�bI��$c`y%	~�R�Z���������
�c)*�H@�WR���X�%����%U�$`(EE	(�J%H�L�����'����;*F�FH�@�D�Wr�(�S/���TT����NQ��^�m-��'
�_�����UR�$�^2%�o�����dI �4J߿��U�	E_)�N���s��2P���(J|�p�r E_���ķ{T������qG�?}���/*O�|��%~R��?|U������BQ�׳Ξ �������NQ�׳Ξ e0��+�B]�	X�����{�gJ
}��=�^KY'���%��� �d$��+}�I�{��'�_T��:Q镑    (*t�������(�R� �z0p2��AQ���L�2p2������k�=*�P�ɀ2E��:{�=��&N��)*������(�B]�	X�����K�+S�@�]��0�5q(��FI�vP�	8Pּ���QQF��(J���e$`r������QCBF&��;(J���e$`r����R�7G=�-����BQ�樇(c�s5u��7G=<��=[����P��w�=*�Z�/�5_��={TҰ���FI��~j�0#��6/��<)I��O���%��x�����r��R� �{���E�2(J�нV	��������]gO��209Wk�(�S�{��L���)J���^��!!c�s��;**�u��(��s�]��={��ZnI@�5J���zH208Wۤ$��8��׍�՞�$��p�C���ɹ�+E	ԇ���L��>(J�>�0$d$`r����R�G=D	����P�@}8�qm�E��)J�>�e,`r��uG)ԇ�009W���{T�����:%	�Ӿ���9)I�0�_�aD�H��\]�N����	PQF&��%H���w�/L��5(J�0�/�e$`r�޽�)k��P��w���	��^������^BA�B�k�eo;�q�%T-4��CB�CK�����B!��v���ݎ[��:� ����C7��ݸ%A��"$���^4��݌[��:� BҰ���r'�_�A��Ţ&�:E	���Q�'
��vw��*�uV�/1$�,
|�-4�J|�U����Z�{hj��:��U�}�CkwM�_g����� zh������U���|�CkW�w����_Q�D�]=4�J|�U�KM�X�zhr���U�*�h@�]M4�J|�*q���.Z��hr���U�*�x8�t�HR���\��3��b� �����i_I{�+4� �����_���@�Y$�|N��9D��@�'S�|N��9Dm�	e:I���s�_����B�'9S�|�NlereL^�LU�9y�9:G��3]�L��Վ�_Q[t.r�q�jG���1�%���y~>�������GR�<_��O�֜h8����=Ϗ[�7�����;I����e$`��$�ʞg��E�hQ�8&2�ʞg�ȅ(kXa��$R�ʞg�B�ֽ|�]��L�=�^��(�^b��dr�ʞg�BC���gr�ʞg�B���% �B"I)��$k^b���HJy��5RT�����FR��˳���L��B�T�^.^:��L��J�T�Z.^:��-:�z%e�~+�-�(#����3Uʻx<������ș*�]�
Q���K#g����Uht��9SU��BC��P�z'��z��|�X����To�>�+ikN��I#��B}�W������I���B�&x@##_e�1U���L�ڢ�R���P����ьP�L�I�uv�(#C_e�3�'%���00�U&9Seϫ0!j�N�>ə*{^��	Q���"��Po�%�N&f��"��Po�%�N&F��"��Po�[��nsb�,�H
�樇(#]���1U�7G=<�E'�/)S�zs�C���.S}ə*ԛ���t�j"g�Po�z����L5�3U�7G=Dmщ�c"g�Po�zt�f��r�$��=�ϧQ�.�L5�GR���Z=��5'z�4����_I��F��f�Hʞw��C�5T1�U	Seϻ���n�	�Seϻ��!��hX�B�Tu�����9ZP��LUǸ{��4�j%g�:��k����@��3U��z�2а��D�B}<�+�X@��6�H
�qPpkN��H#)��3�����j#��P�zT��;	S��p�C���@��1U�G=<`$`�vR�
�ᨇ(#C_u�3U�G=D
�����B}8��n�	�9S��p�C�����:	u%G�ˑ�-
��C_j��. ��='X�g��.��] �uC#_u�'Srd>�+�H��W]�ɔ��n�ڞ�/����Q���U���"M�����pC�������&S�e�_�q7�EAC��L�g��n�ڢ�%g���nx`+7h�{�K�Xg����C_-�)Se�z>���f�Z"Q�����'��ڋ��v�|-Y��S��$�5/�p&����e�MnQ0n���*����!j�;�L�M��������}�B�T��X�"Dٻ�f\+D����D�ڢ(BA��X�"�K�wǙ���_!��v���Վ��oGa��z`;S�p��~W����e���v��~W��'ݷ��(s�hǵ�'W�/_=���р~\k�_�!��D1k[S��k$`�)����Ӕ"ΦI�����V<�9T1y�GR��������i�F�V�q��p�a�$a*���jQ�P��I�T:ao>���2��L��_�!j�3��LU�9���eveL^�LU�9������3]�L�y�俚C�>�g�ș���Ow���E����HR�<_��O���*��䑔=�O�z}kN4_�Hʞ�g~%�C|�7&�ʞg�����0%�1U�<������D�1�2U�<������ș*{n�zT<��2�dr�ʞg�ȅ�-:�]��L�=�ޑ�c|�gIJy�'}%Y�UL)䑔�.O�J��%&�K!��~���-RT��륐ER�L��B�>��+	S���xo!:G�ꕌ��UZ���E'P��L��.^:��!>�^ə*�]�tQ��K#g�J��c�ڢ�7r��t,^:����F���B��B�20�^:�$�[�����ђ�z'��z��_I[s��NI�곾^߇��� a�z��e$`�2�j�z���ꃔ��-T/`�܇��� g�z��e$`�Lr���P����Ѣ��$g�z������I�T��0��C_e�HR���8�?1�Uy$�z�P���#_e�FR���-R\�9���K�T���e$`䫾dL��Q��Ѣ�p|I�*ԛ���!>t�^r�
�樇�}�D�T����E'Z����B�9�!j��Cw=�3U�7G=�@�cc�fI��֟��d�K�|�LI����)��\���4�j��g~%�C|@��0Um��zx�Z��2�B�T�Ѻ��!j�N�^H��6Z�Z=D�C|@��3U��{�<���.S��L�=�^���-:�z%g��y�Z=:Gsn@��3U���=Q�L��HR����uc=���#)��u�*�D-t�j#��P��Jڇ��z'��P�z��FF�j'c�P�z�ڢ�wR�
��G�h��wr�
�ᨇ(#C_u�3U�G=<�E'P�L��QQ�P�L��QQ���$��:���4��f��$�����q&ja�N�Hʞ��-��R���9yGI����(##_u�0U�|�_���9��݋S���Y/���!�s�@��t����B��^���QQ[tB���L��QQ[�A�����Q���+Th-�)S����d�>�7�H�)��A}��
L����ȓ)��3��L��<kwy�� ^�
b����g������\A���yGx��@SW�s��2����I�d��_^�G�hQ ��{�>5X/���D7�z�ԧf��&D�/�U��J}j�j����^Ur��S��S��l�׮v���QX/.��E���Վ�]/.��W�>�W;N�_g��z�hG;�5r���{ꡘ�M'~04����{
��e8�!�YSy��=QT��:r�ӡN�9�=�Иeo=j��	�:�=����>�	":!wg����G��:!!�g����G��1!�g�����{���]u���x�یU�}Q����s���dF�׮�O�f��m�*ʀ@�׮�O�f��6c���ү]����x�m�*ˀ@�׮�O�f��6c�e@��kW�'o3^~������(��/��Xe)k�п��x�m�����G�'��~M��ی��f���	���k�_�f��m��Cc������s���2"0�߯�y��:��(c�����/��x�e����5�/o3^~����"a�_���6���{�������rgI�C��eMdu�R�g�><�CD���*Ay���یUV�,@���ی��f���ez (��P^�    W���_	�����I��I�+�x�����o�_v���#������d��v�.�d���<������/�~=`,`��c���ɿ,��_Q���;���=��}�ޯ(#�����Q���*�@D : �>���߿��e,� @���'���������#� @��b�}`���d,`���II��� �����H�$P��@&	����Ia0��W�~E	��cP� �w���L���R� �w��209�g�(A��.��"	����Q�ρ��W���ɹ>E��z���c�s}e�?��d���ɹ�.��.�����I��u}MJ��� ~_��͍7Q����� ���͍��I���I�z�������AQ����@F	���(���� 0097R��B��r��2097R���m�Q�+���ɹ�E�������ߕ�?Q����蘒x���~Eu���P� ����������yR��V�Nj_I͒�zI���������ɒ�z�wR�^;�0!�ZP/��	��e$�U7�KQ���L2Ъ��Q������~E	hՍ�)�o[�_T���p��Vݨ����5�E��(c���2E�mk��Z_�ԍv�.v��w�L2ЧmR�@�]������zO�$Po�0"d$`nn�z')ԛ���΍>(J�����'
�sc�%Po�z�2097F����Q	���S�@�9�!�P�������QQ�&���%Po�z2097慺�P��] 2�X��ܘ�����q��%��(I��O����͍U���}u��F��%H�^��(#�s�})J�нVQF��|E	���aH�H���o�������W�� /;�EQ�^�Z=���_�g�%~�u��C�� 1;Ӆ��P��] ��
��L������%��>s�$��8���aII�NR�G=��Z�%P�z��!�����R�@}8�q��E�R(J�>��,
��~G)ԇ�0097ˢ(��p�C����9ۺuG	ԇ��L��J��y�U���w��L��z�.v��w�L2���N�3�:M\c�<���0����/��X�H˂V�t<S.�|�[�Y�6PŴA.Un�|�\�O��@�i%y!幑2Fm�	�4�*�)ϕ�1��ʘ6H*���N��Mm��i���<��RƬm?!R'�Ty^�o�&�L�$�*�����1ˀ@-��T)��^����j�-r�R��Ŕ1k�O@�ȥJ��7S�,C�LɥJ��WSF7hL���/i%	�Y$���D��%�$�?�d��4	���KRIBV��(MO�$��K6>��'���D��ޗ��,�_���L��޷��,�e���T�����F7h�L�5=�K��g�>dm��~{&�*��}4��� }!�*��}Ȳ�&J�^z9Q�}�$<��'�/d�TG:]n�O��Ҧ�K�#�.��'�x@e�+�%ՑN���7Ҁ¦W���#��#�6��FU���("-
�7�#��#��	�D��H'�H����Dj�����W��P{'������e,`B�w������E�ֶ�@��]RJ=?�+�X�xX�$��RϏ����J,	�rKJ��g~%m�	�YT�Գ���FF�� ���z�6]�20�'yT�Գ��B���Ѱ>I�*����"5E0�'�T�Գ��B������H�*���M�XP_d��/O�J���/�Kʃ��p�
�	�ܒ���_IF&��KjIy�����'��/YT���7�406^Ҩʃo8�(#a#�GU�x�!�H�B2�HU�x�!Dm��>d"����kibld���P������i��	u�p(�pQ�~���.��C=�`���Q��I.�S�;�%YC�`��[
��w����rƒ�z!�NM�3z�J�����4j8)�/�}=`$`lT���Ŀ��e$`lT����?������D�R��� L��F"U)��L�20	6�T�ԫ0QDZPod���B�O���A��H.)��ӿ^706:�%�z{�W�v�@��EU�7G=D	��4�B�9�A	�<�B�9�!�H�$�$R��Q�"Ң�� ��Po�z�20	6&�T�zs���&��$��Po�z����O�KJ����_m,`lL�KJ����Rܳ�16�%���3�����,�R��k�("M��EU)��z�206_�J�w���F&�l׭�H��WԶ��K/�T�Ի��!�P�$�L$R�R�^�9h,`l&�J�wW�!j�OإDvI�>���0(U06�%��x�W��n)�[R��g~���'�R&��P�z�2�9��I�*ԇ��Lxal�
��9h��`��HU�G=Dm�	��T��pԣ�4��+�T��p�C���I�YI�*ԇ����ߓ`bA������X� ؼ�Ă��T���sd���<y0���)A3�c��J��lʃ)�L	jp��U�tdSLy�`J�2��"�R��`��S���,X�AVI^R�'SBԶ��J�����ҏ���Y?��INI��=�T�(S]�b�$�*���E�1k�O��I"U����*��G�`R'�Ty�ׯ��YJ��H�J��wU
iY�~�J�n�/��Y���_�R�[��*��ʙ��J�nݯ��Y����U�������'z�/I%	��.��>��c"�$�?�ec��z�'RJz�/+D�e���H�J�}�l��G��LdR%��a6>a�L5=�J��g�>dm��n{&�*��}��G��nϤR%�١j���(lz!�*��}Ȳ�&*�^�-�~�ϓDiI`��ZR��t��?I����d�T?:=��u�eM�$�T?:y?:Dm�	�+9TՏNޏQ��x�$QU?:y?:�F1P��FU�����C�v����FU�����!M��FU��JޏQ�F�{'���e%�G�̇�N����2~�A���wrKJ��|%��~`}�ZRB=?n��/���{�]�U�I�+i�O�>ȡ*���I����$��ٛt!�H�dX�dQ�P�ޤl�	�'iT%Գ7�B�>��'iT%Գ7�B������H�*���Iܠ������-)^�����'H_���/��%a�16^2Kʂ�g~%	�/�%e����[}���DU�x�!D��~�A�dQ�/�nQF��F"��,xy�kTa�16iTe���B�>�.d"�����QCZ�4�j7o7�(khbldrK��P����V��gRK��PO�!$��~@��YR��_I����($���&��m>�z!��&��0!j��$���^�DiQ@��EU�����'P��Q��&<���JU	��L�206iT%ԫ0!�`��h���B=�g���FjI��.�� �@��YR����RX����;�%�zs�C�6�@��CU�7G=<���NU���e$`l��
�樇��>�� ��Po�zP���P�Q��QQ����$��Po�zԐ�'��fG���!j�O�>�-)��O�^�����"���z�W���)���,)�ޟ����'P_�P�P�^�5���EU	��z�206_��J�w�գ��(���4���k����-��Q�P�^��́�DU	��z�206iT%Ի���'�R"��P׹�8&U063�%��x�W��.L��LfI�>KqL�`lfr�
�ᨇ�}�f)�DU�G=<`�c`��EU�G=Dm�	�iT��p�C�>��iT��pԃ406+iT��p�C���9�YI�*ԇ�5�E�{lJ�>/�Ǥ
���=6�P��/�𺡀)�y�z�b��?��,	o�]鉋�w��J�_ާF���L�Є��C�7;�Q�C3�C��t�z��������W���Zov���C3�C3��]F:j���7���M�2�Q�ͻ����@��j�y�z�b�u>4!�`@�7�Zo��z>_7P�ͻ�[�C�·&$
���]�-9��N[($	(��]�-9���-��5��қw�����P�2P�ͻ�[r
ey[h�k*~���]�-���}�W���Zo޵��B�/�|=`(��[w�'�����_Q�j�u�    zb����e0��[W�����[��E�{*~�~Y_W������j_Qj�u�zj�������޺j=���_p�Y?4TT{����߬��D����BYJ޽��U-k"��Yr��{��Y?@T�|�*��v�߬�O�%5ߺj>��7�eu��Wѧ��f-")����U��� ��v eH��[Wէ����_���U��� ���W���o]U�����_Y�u�}j;�oV�'"���5����f��, �u @m��Z�DG �u@m����W��C �:���f��'	�Э����5���	�Э���`Yg�l�2$0B��s j;�����A��	�u�P��E��(t�:���~��g�9���uP�~��W���u�P�~���f��u@m��Z_Yf��u@m���?��Ff��u@m��j�D�䪘�[ׁ ��7k~e��[�����4HŞr��ԧ�=G���~��$#���%UJ
D��� �u��� �%J
<$lPIFÿ����s �� �lPQÿ�9�*`Hg;@3B�¿�9��XHg;���A������uG�a�t�$��ܢ�o�9��v�t���fQQ���Ͽt��~Xh�F�,j�Qq;@:�TT�(�^.��v��� *iXP/������*��ˠ$���v �d$d�^�;)�I��v��֔[P���	������k�(A�����뺣���lPQFB�-S�����PQ�B�Q�����HbF�X�@�]��� 	�T��PAzO�$��������
�{�$��������
����b!��v ���Ѐ�x)J|��@E	��BQ�ۇ� *�Hh@}t������a�M�@}�;*1�lPQ�B�3ST�_����a�f�@}6�
ͺt��(�a �I�GÛ�v ���0���XW���$ca��U))����$Ca��5()����{=�`m����wR�৳@E	�!�P� �zה[�DT�(AB�&D	+!j�Q����v ����~QO)ST�ۦ�@E
k �QT�ۦ�@E����Q��t���
C\��E=�u� a;�J�ԑT)I���qK�%-$J���zH�!�'�^�;I����@�(�^
E	ԛ���E��)J���e$d�^��Po�z�2�f�F�I^��ӟw}os�`j$�������e�m��F�a�������#-
���LU�W��B����N6U^M�
l
��I�����W!�d&�� ����^�(����t���>x�v�pL�t���>x����A�IM��3�m�%��I�I������m@��$ä��z���F��$����r�����E2U���b=D	���l����zP�ہ�E:U���b=D	�_/�T%֗���#-
MǗt����z��=Ǘt����zx�`���zI.)��{��'�`���J������O�v�h8&RKr����Y�;6+f�W"�*wl���e�K��L>U.�|��GZ�완�ܲ��cֶ��g2�r��{��OX�' V!�*�l���eL�X���\���cֶ�`��Q��6�}T��N�BrI�^���eH��Y�ܒ��2=���1��S ��Z���\`��X�t�T�~�e|�1��ȧJ��WX�,�a��P���ﰌYۂ�FFU*v��2B��NFU*v��2f�[���T�~����;U���˘eL`Flu�K��|>`H`FlrK��a6Fm
��%	�Y1�̈�AfIB�;f�!4 0%�&�T	�/��Y���$�*��-��GZ��dT%�١YF��"�*��}x���ZdT%�١Yۂ�EFUB���eL`Zl-RL�-�c%��ȗ�jK�K��I��ȗ�jK�����:�\:�/�%ՖNޖQ�B'2�JUm��m�����ЊL�RU[:y[:Dm�^d"�������!�ښ/��l�jK'oK��'��|�w�dS�ZOgI���
}�L65��t�Hi6}�L�G��Β e}��)&����թ�[������_I���`�LJ(�ӫS�ٷ�+�T�ճ���u�-�J.Uy��:u�}�@��LU^={�N]f�
PodS�W�ޫSwٷ��T�ճ���U�� �F6Uy��miu�}�@��bR2�<��jc���N�I���`2���N�I���̯$#���N~I���2<�H��\����ex�2P$S�/.��[��A6U�����+�H�@}�M����,	PQ�B�lj�OgI�2�[��I65N���$@E�ORL��t )#-	�/2L��t ��(P_$�b?aI�z�H�@}�_��t��(#�`�%���,	PQF���K.56��Y��V�0L/����OgI��20�����OgI���ŔȦ*�^��	Q[�B1%��ʫW/`�&�0�)&�z{�W�y/L��{L-	HX��� �K���Ԓ��%����,X�g�Ԓ�t��(��K�T�B�9��FZP/�R��QQ[��B2U�������q�Tɦ*ԛ������`R����~�ϻ�w��/5�K���CZ!j���_jt\OҚ~H+Bs�m��d�:�5��V��
���MU���ݦ�����b�dS�!�釴B��L��A6UҚ~H+<`���s�MU����
Q[�B1RLj��z>]�>��:�0��&�,4	��P�T��$��W_��J���O�Kʫ/��QF���T���˽z�20�>�T�՗{���V�@}�LU^}�WQ��P_dS�W_��C������%����r�������%����r���E��%��PO��6���4���c"��XO���(�aW"�$O����z`+P��%yJ��S*!k��C�1�N��T^?���w��˞ɧ�S*��R	�p[P��3	UyJ��S*!k��C�=�Q��T^?�}�e�BFU�Ry��JȲ&®BFU�Ry��Jxb[P@_zyJ��S*!k���䒼�ҏ��(C�̪䖤bO����t�b+쪤��b?�Xƨ}��WҩR��=��GZ�o�S�b��,cֶ����P���o��O�s���Q��ݯ��Y�V'�*��e��L��NFU*v��2�mA}'�*��f���?@?H.I�ϢY�#-
�rK��i6Fm
��%	�Y5��� � �*��]�1ˀ��ؚ�S%��l6fm
�'	U	�o���p�������>;�!ˀ���ZdT%�١�>Ҳ �"�*��}���/2���Ї'��?t#_rL�/����-#���K�I���%�K8�Q1���d�T_:=.��H��ߗ��K'�K�(���o"�������QGZ���l��K'�K��}���D:U��1P�����{&��i%�K�(klb��ͤS�!���:���q��������7��I0����"����5�����!j;P4�3��h�w�������B�I���|�F�kb��-���XϧY��ow&%��3����?�^踞�ٛu�V���z%���z�f��Ծe�^I�*���Y��o�W��J�go֩+�[�t��ٛu�F�V�z#���z����о��H�*���/���)����1)^�CZW��I1)^�CZW���0)^����O��N.U���6<(B#��A2U���6<Dm
��TeË��#M��A:U���6<D	�Oҩ�Vq0:P��S�!��6<Dm
�'�TuH��!�����E�)��6��Sag@}�b���,�}%m
�����$L۞&��"�;�[ƥ�(#�`�%�;�;�~=�(�K65v�w����'���^ҩ���oB�+�H�<XJ�S�X�^�Eh(`,%ҩJ�W/`B�v�pL�t�����#���1erL
���$_K�8X<o�/�}}�(dj��z
��̯�}�.5�KU�7G=D��0X*$S��Q�p;P�^Ȧ*ԛ��́b,ҩ
��GiQ@��NU�7G=D
�K�~V�D�_!j����R� ���hbgG��*���/�� B��Q쥻�S'\|�>7�Q륻�S'\|���u�z�.����	�$C�^�+=u�q:'���    PG���RO]|����*�H@���ZO]|������$��Kw��.>N��ce$��Kw��.>N��c����b/�Ş��8���U���b/�Ş��8���U���b/�Ş��8���$�����]멋�.>VI�J�t�z��ㄋ��}j��J/ݕ���8���U���R/ݥ���8����Fj�t�z���t.>VQF��t{���t.>VQF��|{���t.>Nb����b/�Ş��8���U���b/�Ş��8����=k!{�.����	�$c�^�k=u�q����sC�^�K=�% aK�J��5P���S[�����E5D�$Lo�!�bQQ��	ӛ9!ꇄ�b/�Ş��Ζ����[P��=�% �-*�YP��=�% �-���|{jK@:[T���b/WB]-�~J"D(��=���$l	HbF�X���g�Ֆ��-*�P���G�Ֆ��-I�,�$�~O��-�l	PQF&��=�����%@=`$`�?ߓ�jK@:[T�����|���-�l	PQFf��=�����% �!!C����W[�������{�_m	HgK@RK�-
�_��rK@:[T�����|��-�l	P������Ζ e0`�?_��rK@�-*�h�����喀�[��20�����% �� �e<� @� �-ɷ$��ܲ@�u@n	H�%@e8��C rK@�-�	C� �u
@n	H�%@e8P���mnz>��8P�c rK@:[��2"p�\� 䖀t��(� �u@n	H�% ���5��)K�J7f� 1q�\䖀�[�ɲ~�/�Q �% �� �U-k �Q���nuc���u@n	H�% �)�bY��: �$����e��@���Ζ����[���-�l	PQF��@���Ζ �������+�$���,�-ׂX�% �� �e@@m��[�o	HbJȀ���r���[�o	PYvĖkG���|K@R[���$�\Kb喀�[T�!�5��Z+�$���0&�(��!���dl	PIFŖ3B�����-*�x���r����% �	!�kb˙��zK@>[T���5����e�% �-Y�,���r����ϖ e(`Ml9�sYo	�gK�z�H���r����ϖ e(`Ml9�sYo	�gK��2�&��ٹ���% �!�{b�"��`s>[T���E�e]��ό-Y�,�I��\}_J,�x�$Css���N(��w�ύ��շ�I� �-*�H��\}E	0ݩ���Ք)J����,f�������:�ϖ �C���\M��ķ^�}�jg�E��^s�(��TT����u��<c%��<Y�BҠ$���]I��~PX���$��+�[=$KB׽�uV�������nWt�+ig�^k�^~��ۨbR%��k��k!���(bR#��z�����$��F~I���ӿ����&5�K��֟�����Q��N"U�׺��B��T/��IU������(�R'���k��k�	�_� ���k��k!�H@��T�^��^�.Ң�� ���k��k!�X@��T�^��^(`�$��P�qgG��&�%���P�+8;ʗ4I/)���v)���^�"��P�z�2P��E&U�>��"-
�/R�
�ᨇ(#�K~ɥ*ԇ�0P��\�B}8�!jP�!_r�
�ᨇ(cL~ɥ*ԇ����&'Lʪ�'%m��d"����|\/�U���ЀL���U���J�V&����.)�>ݪ�����%g2�ʪO��!jP��3�Teէ[�e�L�/��KUV;��F&
�\ȥ*�>ݪ��-@�z!����t�]��8�^ȥ*�>ݪ�(�����`RV}=����?�z%����:V=$
˕�����_IF&�r#����r�����Q��H�*��ܪ���?�z#����r�]�I=��I�*��ܪ�(#�`��KUV}�Ul
�;�TU�//�C���a��ɥ��y����AjI���n
��%�:v�(��`y�X��6�ǽRܴ90�'y%�i�=��,��`y�L��6��{|b+P�>ɦ�]��>f	ˋt�\���c�����ȧ�m��A>���@��"�*�m����eH`*,/�r��{�6Ҳ�v|	z�p�=/�1k;P�_RK�&˄W���!����Y����e��̅�DbI
�s�e�2 0V�T)ؓ�Ц�
��D6U
��=dY�a%�N��=�`�6Ҳ�h��S�`�-c�v��g�R�����	keb>�d�R����1�z�+�|��~�e���RK��g6
BkfbB�2K��h6F�+�Ē��l�2Ң }%�*��U�1k+P@_ɦJ�}�l|��Xi�S%��l6f�+�|��>;�!k;P@�ȧJ�C���I��ȧJ�C�	���N>UB��h#-�w2LQ��']~�O��Q��I0E���#@}n<`R��KQ�g�PIF�� ��z>;T�� ~�J�r=�J+�\jt���PQ���$��z>;���(�>I�F��ώ e(`L�L��Q��#@=`,`J�,��ѫ�#@Em
�&%`������E�I	�|L����K~I	����$#�a��w���ٵz�EbQ�K/�T�ճk�e$`<�&R�J�g���f���ȥ*��]����'��j"���zv���_��d���ٵ���~a6�f��J�g���V��Ѱ�/��F���E�׃K͓�ğ��o��d�ca�$J�r�����?ϖ�{�=5|�	����^튶{�-���ּ����?�F�I5�����&5L���O�!��?��%�_���Jڧ����%�_��_�.Ң��:�T�_��_Q[��/uR���ֽ�ا� �:�T�_��_QF�4H���Z��Z�2P��A2U�׺�ׂ ������ֽ����?�>�0)���.5���_�$��P�qgG��&�%��x�����P�����QQF���Ȥ*ԇ��� �T�B}8�A�S@}�KU�G=D	�_�K2U�>�(#-
}ȗd�B}8�!jP�!_��
�ᨇ��?t!��&H�O��(�LNd��V�O�J�-�D�Ii���_z
�KN䗔V���J�V&���ɤ*�>]�GiQ�gR�J�O��!j��C�=�KUZ}�VX#�K.$S�V���C�52Q��B2Ui��Z=Dm
��T�էk� ��?�^I�*�>]��(�S���aRZ}=����J�Ii�����}��W�KJ��g~}n$`,72�J�/��!jP��H�*��\���}��7r�J�/��A	�˝d������e$`,w��J�/��QFZP�$SUٿ��Q��P$SUٿ���˃ԒB�j���m@�� �$O���9L�L��AbI�Py�Jq���4X���	��O����@��$�*O��~B%�H�p�}�N�'T^?���̄�E>U�Py��	Cay�O�'T^?����|�<���	��������O�'T^?���1����Z��X���(ڎ/�%y���Q�.�Dڎ/�%)��U�1ʀ�\XI䕤`O.��ۀ��H�J��\���}���D6U
��=dY�E�=�N��=�`�j�cb<�d�R��}�1k;Pt�3�T)��BKa#���B>U
v��2fY/b��Z�П%��@}!�$�?[fc�>���%	�Y3�L��J^IB�{f���W��z_4���?@_ɦJ�}Ӭ�����T	����Y�J#�*��}xb;P@�ȧJ�C���?@�ɧJ�C��	̊�N�˩��S%�n
�;&uB+]~�O�>��;	&uB+=��VR���%uB+=�+i�O?Ȥ�Z�Oh���? ?H��Z�Oh�(c�be�KU'����
Q���$��Nh%?�~�l
�'�TuB+�	�����E2U��J~B+�H��dj����+jP���0)������?��H0)����d(`@��䗔����J��z�%���zv��>����JUZ=�VQF��j"���zv����d������W�6����d���ٵ���~a8�f��J�g���R��ٰ�I�*��]��;�    F�j�PW��3��+Ch�a5/J�r��C��O��Ւ)I����V�.Ғ�z)w���ŵz��<��
���V/��C���P��B?)�Ջk���ܢ���RZ��VQfxQ��J�Yi��Z=<`��䫕����ŵz�2�Q��F�9ʀ5��u|��;*ʀ����s��^m��B�/� +��W���j����B[̒��,�z�J
]1KZ_IF*�zWzU� KJ�	(��]�U!vT��2P�ջ֫B��e$�ثw�/7�uj�pӲ��b���^2`Gկ(C�^���*d���@XͻP�ջثBl>߯(��^���&Qo�𹱀Z�޵^����zH2P�ջ�k�vPIF*�zWz�r�I�z ,�](��]�5�zs�C���Z�ݵ^��7G=�>����vG)ԛ���{�.��>�|���{�.��>�|���(c�^��=��<�}�*�`@���bO�#��G��>����/j�v�zjy�>r��-�!�P�@���?�Y�DR�����g��������kw����糏\=�,
�ߵ��G��>rU-
��vGE��>r5~�p��IQ�K�{�
8�j�(�׽�Q�N �Z)J|�u/�㐐E�z����g�#WI��Z{)I�>��sC�s�J���zH208�Z����QQF&�Z[%P�zXH`$`r��LQ�ᨇ(#�s��W����G�Ր�O&��=����糏\E
��k���G��>r����ɹv���}���#WQ&��=����g�#WI���=����g�#�b�����v��}���U�����v���}���#�jF�'
�s��W����G���Lε{�_�#�g�z�H��\����>�|���(#�s��W����G��L��{�_�#�gy	�L���R��ڛ���L���PWo���p��O&��=����g�#WI���=����g�#W�
�����G���\%�����=����糏\E��E��s�jy>�ȳXHP,j �Q� ay��~HH������G��>򬆄,
�ߓ�jy>��UT�(�^*E����ex YP/�Re��?D����Q�����=��(��s��Rf���F�z�����c���ٹ^�%��{pSB��[�,%���{�20>�[�,e��||�x��\o�Βz�=��,t�'�R~�=��,#t��+��g�G��FC#t��+��g�G���	���k#��G��>򬆄,
�_+a�>�|���(#3t�Z	+��糏\=`@`��_+a�>����U��!�~턕�ȳ�#WY����V�#Ͼ�<������V�#Ͼ�\e���ZX��<�>򬦄,�_{a�>����U�!�!�~-���ȳ�#WO��jX��<�}�*ʐ��m麣���>,g�	3t�Z+��糏<�}f�ƵV�#Ͼ�\e��vX��<�>򬦄,k �Q����n��"c�n\�a�>�����ɲ~�ׂX��<�>r�U-=�BzI��7� ܋]�s/�"V��7B��4Q��J;b�O�x�!Bkp����d�����s�Qۀ��^I���{�C�����v�$S�wM�C��7j��H���C�Cx`P�F�I5���6��`RM�z��S�eM��Tӡ>���4Ō5��^RM��M���'P�dRUӡz�!�H�z@}�JUM��M�e$����\�j:To:���d�j:To:�(C%M$SUӡz�!D�h�$���՛An
�'&�z{�W���r�NL
�vP�*Ғ��"��Po��J2P��EzI�������@}�IU�7G=D	(d�K*U���e$��i/�T�zsԃ ��ȗd�B�9�!�P@!�^��
��GiQ�E&��
�樇�m@ыL���5﯅���*�%2L���/��'ɺ��aZ&���k�������
�e�K����KaK�Oz�L��u﯅(�i�@+�RU�{-�H��\��u﯅�m@�z!���k��k�#�`��LU�����e(`�U����ֽ����d��u�Ch0`�U2L
�qPI���Z#��P���0,����%��x�W���@��IU�G=<`$T��I�*ԇ�����N.U�>��(P�$S��Q��H�4X�$S��QQ���� ��P�z����T��p�C���i�6�0)�>��ύ��I�Ii����$C�`m�_RZ}>�+i�O�>I/)�>�7B#�`m�JUZ}�n�20��T�է��FiQ@}�LUZ�U���i��H�*�>�7<`(`��$S�V�����E��%���p���(��`�%ä���|�Fc�`=�`Re���z���'	}�D~I���q�����%��H/��y�����Y��ɤ��y���%��z&�����e����L.U�����e�KL��L2U����� ��i0[�uGI���W�6�@��LUe��?�HSq@��[R�c!��20�+�%y������z%�$��{���(h�$��~��=f�7���V����ဉ��H��k��|���7��^��/t��8�H�ʋ�ރ|�2"0�;	Uy��{��Ol	
�;	Uy��{��Y���z'���~�yٍY��� �${�+@4���� �$�9<����̒4������&� �$�*��Yf��$�*���Ol	
�'�Ti�� i�2 0�'	Ui��i�2 0�	Ui��i�[��EBUv?C�	L��EBUv?D*t�e�-��$���>,g�	#b���RП;-�[�.D�RПK-c����ȦJ�C���D:UB�� ��OM�S%�١Yݤ�j"�*��}ԑ���I�J�C��=鰞���:C�����^谞���:��Í�V:��~�Ż!�:ܨnj%��~�Ż!j+P��+�T�s/�u�p���bjdS�wM�C��7j��Ȧ��C�C����H1��C���s�m������:ԧ}}n(������:�g~%m
�;�T�u��uQ��P��RUסz�!B#%M$SUסz�!D	(i� ����?I@IS�T�u��uQ��P�dSUסz�!<`,����l��:T�:���@��$ŤPo����}��O2L
�v�z����$�E�I�ޞ���(P_���Q�6�\P_�R��QQF
���LU�7G=<`$��i/�T�zs�C�V�hF�dS��QQ�����l�B�9���cZ"��Po�z��
��D�Iu�����?�"&�`�W��d]M�0-�`R����Ϸ�D�=�_R��������I��[�[���&f�[!��l�l�ZW�LU����(P/dSU��{�-�H�z@��MU���e,`�U����ֽ��
�WRL
�񤯤}��W2L
�qPI���Z#��P���0-����%��p�C�>���T��pԣ��(��ɥ*ԇ������N2U�>���V�@��MU�G=D�s@}�MU�G=Dk�l�B}8��n
���FH�����}��RLʫ��V���'	�O2Lʫϧ%m
�'	&��糾>�����$�����7�e$`�-r�ʫO�QF���"�����7�`��l�����pC�>����K6Uy��o��FZ��/�T�է�ᆨ�@�||ɦ�7��o��}��Ǘ�*�����20�&U��˫�;���wL$�Tٿ�Ko !a�'R���_^��(k`b�gr���_^�GiQ�g����_^����@�i�dSUُ���}������_^��(�_b�����_^����@�z!�����e0���P/���H�����JjI�Qy7Km�E�JfI�Qy���O���JbI�Qy��Jx�h�@Xo�S���Ϩ�,�#a��O�gT^?�������<��� ܧ�@|'�*Ϩ�~F%d띄�<������#-�w��`���B�>��;�%u�6��	��AjI�t{��
�2KҰ�g|E�S�~�X��=�a�Ѐ�hX�dS�aOn�C���>I�JÞܰGiY�~�O��=�aY���_$T�aOn��F�    �"�*{r���􋄪4��{���� �"�$���a7�O��KjIB�/��r�(�{騞��\j)d��8��{餞�>;�!ˀ���HdS%�١O�t��>;�!kKP��D>UB���5L�A�f����AX,B5�P��g�>dm	
����%kd�����?�L?/�[#�o�pײ�Q�S���;������dB��㔂��¿K��y8�Q	�S	�{2���d���8��~2������;�Bp�B�ߓ�ώ*_Qv���8��';�E
(�)����7j��ԁ�ԁ���/Ǣr��2P�S��
�pvT�BќQ�S�{2���Q�+�`@8:���,�_�H=`0��b=�-�w,E%� G�$X��JQI���%	~�R��h�H@�7F���`�%��e$���Q� #)Em?��B�7Ƥ(A&RT����o�tG������#�ߘ��ķ^�m�(C�ߘ����^�m�(c��X����ۏ��h�X@�7V�$��{��J2P���)I����~���H@�7ֺ���o9[T����o����_���}�m%���%@E	(��;���[Ζ e$��)Q���*�/��c�%�L���WU��`T����o�AQ��SΖ��-����jK@�� ��,�!�PR��l	P�'K�H��~[T�	�f^wR�^�l	PQâ�z��~�l	��@��Zp.`�FQ��WΖ �CB���,��	����ܢ�zMwT�^�l	PQ�&�f�:��l	P���uPThq��%@E����B]m	(������V(I���aD�P���l���������Ͷ�$�zs���r��=S�@�9�!�H���썢��Q	���}R�@�9�!�H����R�7G=D
����R�@�9�aH�X�������QQ&��$ԣ�-gK@Q+�-
�ϋu�%�`K�J2087g�$�B?�z��P��ܜ��
���!�H�����j����'��V�`hd�5�����!�JL�Bo����x!�*�B/��M��K�a�=chz�Thz�W��/�^%U�����B�]�m�*��h���Tؕ�&�M^��� �J�U�b)��2045NT��Q�ہ��F�U�&�@C3�X��h�8�=����L�No�����϶���!���eR����B���{@�ӻ�j��g|}n$`h��NR-�쿖C����1�k�Zh�-���� ��&�����rh	��&�����r�204&5NT-����x�(�>�q�Zh�-�(cS@cR�D�в�Z���&U߫<�+�X��X�2��^��_I����K��Wy�UR��04_ꚨ�W�W�20dW�Q�mr�^��`Q�:^ꛨ�W�W�204_j���W�Wx�H��L�8Q}��}���(�5N�T9�T�����'q\��A�`��;��d�!)8��������2ǥ
ɾ�%����.ǥ
�$+e�}f��I�*�@�z�jYx�Y�mǥ�9��v����q�r�(#�gj��q�r�f�� �3+5N�T9�T��v �J��8.U΁ �x�o�^�q�Zh��e0���Fo�
��|~n,@��F/�
������� ��%��_IF����*�Po�zh	�>�S�D�����@�S�D����x��n�ީq�Po�z�2`~�ƉB�9���� �'
�樇(c�gj�(ԛ����y�u ��@�j?�?�@P�� ��{@��>�@P�� �v�f�~�S�r�&�dMl��2��L�5rwE��!����G�W@U6�K��a�$��<
���1]��C'��Q�P���Y_IV���<*�:T٘�lo�V���<*�:T٘�lQ�E���R�C������-��n`ըۡ���ec�2�x���lL^6�v�����J�&/CԖ�`�Q�#6�ʹ�\Eh=�N����?u:ϣ���{��U�mC�ytzT}�����0��;�A������4D	�;�A������4<�[@}P�C����.Q���I������4D	�;�I������4���P���P}��KCԶ�@}�+�jV��|�z��</zTͪ�ԯ�ݠ �^ U��<�����A���?լ*ެ
QFNlϗZ�YU�Y���؞/�:T��x�*���j����YU�Y���G]��ۡ�UśU�[`Q��u;T��x�*D���D�吊7���£.N��rH�R��
�E]��P9�����ݡ@Y��P9������rKxTř^ �C���J��fju�c���U.���:�1�r�*WQ�E�5;�1�r�*Wl�+u;�1�r�*WQFtͬ���˹�\E�P���P}��Lx���W�v��W�&D�5��+�B�]�4��-�5���B�=�+iKx���P�ޞ���� W3;�:��QQFd����P�7G=D�P���P�7G=��o�u;��QQFt���P�7G=v,
��v(ԛ����ꃺ
�樇�y�uWy�]�*iw(��mk�]�w��$C�f޲F�U^pW�j	p5�U�A�����g�!й�k�Zh���eP���E?s���?��T��ߣ�jgI9;K�{|.j��^����߲(�[^���Z�����o��\4o�f��׍!� ���\�cR���H!�`8�l��˪��U�2N��hFMDu�fC���A����	������z�v���+4��,�#�hWsZ�k��a�"�Uk���d��0LD�ꋽ�{��0,D�jz�{��=��hW��/�!�`��\/Ѯ~�t�u0�^�]��t��-�*�"�U�{;D��+��`�_�!�`��ۺ��ޠ��A*�X�|����N�����Q ����������I ��̺�eT��H}�A 鷥����Kj����WH�u��X
n`QIŒ��=F��+�WRIՒ��-·,;�);BR�$P~�u�[a
n�QIݒ �=ٯv>���IE�� W��&<�,
�g�\0���߲(`�	sU�/`B�&�g�\0���Q �@W��&DhQ�L��fx�訕	uU�/`B���ه��uU�/`�:'+쪀^����E��B��fx�Ld�B��fx��sV!�U3��	Q�^�+U*/��c��[���/�῔C��!�V���jo�(�
�n��N�+�%������n��N�+�%����ݺ՝�%V�K����,	P��N�+g���2`��m��.�rv�����u�;�K��]b*�H��[��S����%�����u�;�K��]b��k*�ݺݝ�%V�.1e,@ޭ[ީ]b��+�f#�근S��
v��$c�n��N�+�%�>7��֭��.��]b*�H��[��S����%�����u�;�K��]b��$�ܭ�ܩ]b��SQF�ݺ�0j�X9�Ċ��Ȣ����P����%���;��XP����%�0~�_��.�rv��(���>�����]b�x�������rz��R�K��]b�GY��kiz�@�K��]b*�`�}L���%w��%V��F�5��)K�w������C�}�I��"!w��%��H�U���]�+�KLeU��j����ރ|��!����JQ�K��.�O5����>�K��.1��-�_O�+g�XQ7Y��4��%V�.1eDd@i<�K��]b�"�K��]b�w��,"����]b�w��,� �K��]b�w��{"Q �e��.���T�Q ����.��Ċ���'�����]b�w��,C�����]b�w��'��
�/�'w���KLE�_BO�+g���2"�����%V�.�� D��Г�Ċ�SYD��ѓ�Ċ�+�j����/�'w��%����/�'w��%��0 :�����%V|���2"�����%V|���2$��t��->�[Ķ1cb �E�˥H�� �,cb��#�����L�Oүc�R��c�*�x��9����c��s��ך�?�;)���3櫢�_?a    ?)�
0�3櫢��_��i�W=�[Ϙo���߮{J��]��o=c�*ꇄ���N鴓��g̷�C��{:�۪�|��UQ͢:���|��U$�Z��PWc�c�*釅��zy)I��;櫒�%�R(I��;�[Ū�bI@��;)��3櫢���ˢ(A�|�:lQ@�f�$`�WE	��vG���z�|�FB�uR���˿o*�P(@�%��z��e@E���"j��1�*v���AI�/�w�W%
�����������R�^Az/wR,d��UQFB�S���Ø�z�Hh@�/�}�UQFB�#S����1_e$4�>���z�|�=N���Ǥ(�U�1_e,t�>E�f]=c��Z�w�>	����g�WE�ϋu5�[1�>7X_/%�^VŘ�J2X_��B+�b�W%	��~'�~=c���(}��(*tm��UQF���N�o�(AB�&
����vG�~=c�*�H�FI���������߱��S��з�g�WE�)�zG�~=c�*�`�gH9]��1ߊ1�*v���0~GR�/%	��A=$uK:ޒ|��%�%ٸu1��̳�%�%Gi2}�B�W�����C�u�q�|URLj�f>���m@�v�d��\�<s-!���8G�*	&5C2��d�����/�y����Z{��W#��&#�OF��m@!��T5�0}!�H�z0L�d����m�2p�|u��ʫO��ၭ@�z'����t����$_�l���ӽz�2p�|B]y��^=(­@�� Ť������$c�� ä��z\0�����'	&��׳����#_�T���˽zx`P�>ɥ*��ܫ�(#'��"����r�����E6Uy��^=­@��"����r��D�E6Uy��^=�H�B��%����r���E��%�$ʿ`=>`0��y_RK�����(�̛�,ɣ�ﳾ�T0o"�*�ʿ�(�E�1�N�����{̲�%��7�O�����Б��6{&�*�˿����%(�완�</�����Lh�g����{��Y��L`��P�'��}���rKҰ�������-�BjI�t�xh�e@_�,I�~�E
iQ���M����EƬ�@}%�*�O�7�Ұ��Șe@@�H�J��#c֖����P���WFFAhDT@�H�J��;#c�!Q}'�*�/�:Ҳ }'�$��O��2$�烙$�gSD|��h�~�Y�ПU1ʀh�~�X�������(��S%��,"
B��I>UB��"b���$�*��}ԑ��'	U	}v�C�1 �$�*��}x�~�P��g�>dm	
�&Օ����dDL0�H0��t:]��;�x��Xz�/��tz�W�рI���^R]��]��"-
�ȗL��J'�J�(c�b)�JU]��]�����I��ȥ��t�t����D2Uu��w�C�u�0'��TՕNޕ�N���1��I�F�^�eC*jP��3��z=�Ii6m�L�Ii�|i�F�:F�R!���z~�����ĀX*��
�t�C���@��IUZ={W:D	�K�T���ٻ�A	�K�\���ٻ�!jP�^I�*���+����d���ٻ�!�P�pXj$S�V�ޕVk�;f�R#ä\xy>�S�&�R#��\xy�W�������/)^�Kc*,u�Kʅw�!jP��I�*^܅GiV�r�ʅw�!�H�TX$S�/O~�����ʅw�!�P�LX$Sc��ˆT�����4I��~=�)A�(P�d�b��!�d,`,ML��_qِT���������lH%	�K��Rl��sِz`�O��Ȥ�~=��(#�`�%���\6�����\jl��sِ�ۀND�L��z.RQ����K256��lH�H��LM$S�V�^���m@!S�i0u�P�eC��dZ.�S�U\6���%A�޳`겡�ˆTҰ�s���˪N��NrP��8)��N��N��Nr������΀�N��Nr���6�T�J�I�К�	������{%��Nhͧ}%�s�W�K��|�����ƒ���.�Z�Oh���?a��TuBk�	����A/5R����Z�	�S�:�TuBk>���2��jur�ʪO���EZP��R�U�n�C�>���Teէ[�����=Uk�`RV}=��q�O�>�/)��.��'i��������q��F��jM�Kʪ/��!j�O�>I�*��ܪGi&�O2�ʪ/��!�H����H�*��ܪ��,�Z�\���˭z���/r�ʪ/��!j�C��%����r������}I-)ԭk��(��/�%yD��e���+
��%�$������2P�����<������6��6&�����GTB�>�~c"�*���~D%dY�ƯI��#*�Q	~к�i3�TyD��#*!k;Pt�3�TyD��#*�F���|�<�����eL̵����GT^?����RKR��K�Ǜ�&��BfI
�t	�xuw�d�[I,I�~��G?�(��$S�`�m�1k���l�쾎^�H��t�쾏>fn�T)�}!}|b;P@�ȧJ���c�>��;�T)�}%}�2$0��v�R��N�(���Ԓ��\W���?@��,I��}�BFZ�$�$�����(�$S%�~c}|b��l��ޯ��Y���I:UB�w��,c��$�*��}��ہ�I>UB������E>UB��h#-�/���Ї��@�"ä�����|����J���y��Xz�/��tz�W���hD���TW:yW:�J���Љ|I���t�t�20(��TՕNޕ�2ҢЋL$SUW�$*jP�"�TՕNޕ�ch�g���V�t���&��R&��z=���m@�v�d��V�ϧj���u�$��VϗV/a��c@,�KJ�����8��T謞��ٻ�!j��L���ٻ��#�a��JUZ={W:D	K�\���ٻ�!jP�^I�*���+�>���T�ճw�C���ٰ�H�*���+�n��K��r��)_I��Po$��/O���P�XX�䗔/��J���w2�ʅw�!j��T�r��]x�F��� ��\xq����A2U���.<�H��d�r��]x������$��Nhw��cai�LU'����
Qۀ�I�)v�+. UI��P�$�b��Re��E~)v�+. UI��E&5v�빀T�HSq@}�J��z. UQF���K.5v�빀T=`$`,�$Sc��HU�6�8���L��z. UQ��dj"���z�&Bc�`9�LUZ�z���L������Ji^.�S�V\@���%A�޳`�ҊH���¤ޕ�������_�$��2���	��B���P��L?(u��������P��B?)u����e��^.$��	��B�^�z��uV'x��~hb�@��+ig�����eG\Q���S���s{IUw�Z��ZO�^Rq{�J2P���S��T�^�>7P���S��T�^���z�.�ԕ#�\9���Tz������\�Qŝ$FJ�|�z��z��PQFj�|�z�z.���r��(�z������\���z����%�\ 0P���S��s݁�2P���S7T�,����z�.����-�U�<`(���w��6�Wl�WIF
�|zj9}=��Z���J/ߕ�Z_�xe$���w���׳p]=`$���w��V�׳�\E	���]���PQ�j�r�zjE@=+��2P땻�S+�Y���z��Ԋ��U�+�IB�W�RO��X��Tz��Ԋ���s#�^�=�"��*��G5Q镻�S+�Y���E��^�RO��gE@3BŢ�E	��rB�	c���W+�YP��r���ܿZPϊ �,
�߃�jE@=+�ɢ�z!����G$B�����rO��+T�����r��+�20�_��"�bE�J20�_��"��U-,�(�~�����PQF���=��VԳ"@=`$`��s�jE@=+T�����r����PQ�&��=��VԳ"��!c����W+�Y��L��k    ��w�&�Ix���.,��(�~M���Q�+�`���&�劀zV�L��k�_���"@e�/��\P}E��20�_���"����*���L��k�_���"@e��/���\P}E@U�-�_' 䊀�+T�!�# �: WT_��0&0BW�3 rE@=+T�!�:���RH��������\Pϊ�*F������\P}E��2 0CW�C rE@�Um,����FY
W�1����z��+��PO$����^'䊀�+TV����JYJ�ՍYò�e��A׺qH��ora��^�a劀zV��nQ��Z+WԳ"�����ݰrE@=+T��	�z톕+��PO��%]w�����,3t��+WT_�����k=�\P}E@CBf��V���"@e���ׂX�"�����6�[��V���W�,c��3C�􊀆�s#t�L�5�"�aE�J20?W��\�+V�$��s���5�"��ML��g|����PQ�����kzE@;+��W���z��^�Ί e$`x��ṦW��"@=`(`v��ٹ�W��"@E��gt����PQ&��"��\s;+�208W�ź��lX�������)I��;��Ժ�$��յ(I��;ީ���͵7�I񍠝�#ss�m%H�p��207��IQ��v�(#ss-�;*���"��!#ᬈ�$�T��y�-(½�]�L+bU��y�-DYW�L.�#Vuؚwآ��(���T�ak�aQہ��^H��[�[x��(er!��:l�;l!�Zܨdr%��:l�;l!j;P4�+�T�ak�a��`@�+9&�a�׾คs��ɍ����S\�9P��F�Iu�������\��uﰅ�0��LU���e$��ɝl��uﰅ��@�z'��:l�;lA	�ar'��:l�;l!�P@��T�a��a�:Ң�� ��:l�;l!�`@�9&��8��ύ�0y�bR���%
�`�$äP��J��Or�
��Eh$��ɋd�B}8�!�H@��T��pԣ��(��H�*ԇ����0y�NU�G=<`(��)/�T��p�C�v�hD��S��QQj��cRb}>�*n�G	S)&%��%��$
�`J"ä��|\0�����d"����t��������I�*�>]��������ɦ*�>]����@�uϤS�Xǖ e�L̃�L:U���b=(B�eb�ҩJ�O�!j;P�^H�*�>]�Gi:�rLJ���S6+�����𹡀i�R�0)����(P�$�Tٿ��QF��J#�����eP�F��J#�����e���7����_^�Gi2�7ҩ��_^��(C�`��NUe��?<�(P�SUٿ��Q��J'�d�����̃�ArɰQ��(B��`e�[2�E�����RKr��{p>Ҵp��S�����̄�IBU��|��A�$�*�m����e@`,�LR�r��{��YF���"�*�m�����󋔪ܷ��c�1�ɰ�z�p�=/�BHZZ�/�%y�e�{\�91V_�K�&�s�e|`KP�_rKұ��,c��ٰ�ȧJ��Y�,�a5�P���o���pkPtU���:˘e�L��DJU:v��RI�B�=�R���/��Y[��۞I�J��7Z�'�����I�J��WZ�,�gbH��K��g6FY?Cb��\�ПE��n	
��%	��4���J>UB�f���,@_I�J�}�l���W2�z_6�0 0*V+)U	}v�C��Y��H�J�C��􍔪�>;�A������>;�!˘��X�$��co� u�%��N�)*��-*i+P �I1E�ް%@}n4`V�2LQ���%@E���lj���l	PQ[���A:5��v�(Gh(`V��Ѯ��%@E	��|j���l	�>Ң �$��z;[T���A�:ɧF��Ζ ����9��H2)���O�h,`J��JI��|��f�f���$P�Ǭ���&����Iʬg7��j��	1[�uGI�z̺��~aB��dS�Y�n����b�%���zv���_k�|�2��ͺ��~�-���j�5o�G��������j�5o��(kk��Ʌ�[�[p���D)��T�bkO~���E罐OU-��-��#M��^ɧ�[�[��7*�\ɧ�[�[x`KPt�+I&�b�ϧmܧ��x��T��_+��"΁"&7RL���7Lq�@	�&�b��bQ��Po$SU��{�-�H��l�j�uo��(#L�SU��{�-<�%(P��SU��{�-D��@}�OU-��-�e,��Ƀ|�j�uo�G�%(P$���I_I��P���:��T0y�bR��g|%m
�'&��p����P�$S��QQF
��Ȧ*ԇ���T0y�NU�G=8�-A��"��P�z��g�Њ|ɧ*ԇ�}�E���OU�G=Dm	�F�K��!��C$�}�}ȗ$�2��2����0%�cRf}^f�O�V��A&RLʬ���H��o/�d�2���z��f拶{&����t�}�E��I�*�>ݬ��-A�v��S�Y�n����P/�S�Y�n�C��21V
�Te֧���%(P/�S�Y�nփ$ܧ��z!ɤ��z�W���y�R�1)��WL�XP����Y_��J�g��z%�����ex�H�8XidSUٿ��QF��J#�����e���7��_^�G����N>U�����e(` �t��_^�GiQ@��OUe��?D��@��]�{����8_+�䒱.��WԖ��}�[��T�g~E��}�Z��T^?��m�#ae�P��T^?����IFU�Sy��J���')UyN�=�Ǭ}��/R�����T�F��"�*ϩ�~N%dm
�)UyN��s*!k���쒼�2=��ѐ�hX}I.ɻ,�����͉Ѱ��[��Y��,��4���KjI:v��2f��|�t�~�e|�xXM$T�c�-c�֠h?&2�ұ���1k��C�=�R��ݯ���К�����t�~�e����LJU:v��RI�qh�g�K��i6FY;Cb��\�ПU��-A}!�$�?�fc�>���%	�/��Y��j%�*��m�Q��������Ƭ�A}%�*��}�BH��􍔪�>;�!ˈ��Xm�T%�١Ol
�)U	}v�C�>��A/K���,c�b��dR��uN�D`\�vrL�Vz�W�>��;)&uN+=n��R���TuN+�9�e0`X����V�sZ�-A�� ���i%?����?�>ɧ�sZ��i�(#�bu�O�r}G]-�`�0)V'����w���ڧ���$�����}��ʢ��"ɤ�z��zSuSbuљ=e��1��z�����Ȟ2���_IF&��K2U���f]]n�0!�^��ʬg7��n��	���NUf=�YWW�/L��D>U���d���f����ȧ*��ݬ�����Z����W��_���b��k�~V�_M�5�ڊ��k��Y��.@VI͒�ʅ���>O���T�$P/��T�P����$�zq�C԰(��)J��G=,@/����Q���+�z��?Q(�Z�w�B�8�%������(J�^�e(��k�RT���s�z�X@��꠨��i�de0��k�B�
��p�J2P�V()��.@���ߥ�?I@�uJ
m���U���R��u'E��������d���w�W��j�de$��kw�W��j�d����Z�ݵ^ޫ��U���b��Ş� ���U���b��Ş� ����=�w+�OP��=ur; �(��^���&Qo�d�%���k�v��'�P@���R�I��A=|n$��kw�����'@E	���]�=��	PQFJ�v�zjO@;{�2P뵻�S{�����{�.�Ԟ�v�4��ܢ:�*E	ԛ���{�.�Ԟ�v��{=�Q�'@E(��]�={T���Z��NI��~�pÌ�
	'zZ�$P��7$uK�E��|'E��Ξ��֖[�@T�(AB�7��CB��\ϓ�	��p�ɢ�zIwTT���	PQբ    �z�%�����!jXP/����^�Z=	��������mgO��209�녺�а'�����k�$��8��$C�s�.J���z��H��\o�NR�G=D	���Q�@}8�!�H��\o����QCBF&��=�����'@E	�������Ξ��֖[P���՞�v��(c�s���W{���009����'�aO�J208����'�aO�J208����'�aO@#BF��=�����'@E	�������Ξ��֖�Dar�ߣ�jO@;{T���ɹ~���=��	P	�������Ξ e(`r����jO@;{T���ɹqO��=��	hbH�`���x/�՞��=*�X��ܸ��՞��=M--�I��ܸg�՞��=*�H��ܸG�՞�v���΍�(J����Q?��s#M�$,/�C԰�_�GN%HX^��!�bQQ��Re��?Du�Z�%�����qm�O&�Fy)J|�-/�CT�(�^��=��'@=�,
��NQ�u�	PQ&�FY�t��c����9[�uE�u���=N	��Q�Rw��=f�uR��w�^,.�, �e)}��c�����%Wn�����	��e)���c�!Q���V�	h�'@e�����[7��Ǆ�	эk1���Ξ eH`�n\�a垀v�4��ܢ@��V�	hgO��2 0D7�ͰrO@�=�	St�Z+�4���Lэk7���|O��2 0E7��rO@�=M�	���vX�'��� �eD`�n\�a垀�{�Z\nY���+�4����	LэkC���Ξ ��!�!�q���{�������kG���Ξ e@���|������:HF�a��i��������:�A�g��i�Ԓ����mI��D]�2�%�S/����M�i�Ē���g}%Y3UM+�P�M�nCx����jZ!���g�wB�V�h����k�x�!D	�jZ!���e�w�4PմJU}��6���>�z%���Ż�B���,��6�6�(�%Mk��T��>��(hZ#����i_I[|�FbIu�3���3��BU݆�݆`��2��CU݆�݆��'P�$QU��z�!ZHsp@��EU����(#�LdQU��z�!<��'PdQU��z�!D�d� ���ջ!�`@!�&�%�z�P���X@�&�%�z�P����'P�$���q�p�%L[���QQF*��ȡ*ԛ����/��
�樇(#L[dQ��QQF
���EU�7G=���>ф|ɢ*ԛ�����/YT�zsԣ��(4!�%�m�ϧc4p�'2K���Oc-|��'Z��Ēj��g|%Y33`=�WR��e�L��L
U5ֺ7ւ����LU5ֺ7�B�u31�3IT�X��X�Ң�z!��k�k!j�O�^Ȣ��Z�Z=<`�L���BU5ֺ��!�`�X�����I_I���z%��P�`���ĒB}<�+�H�Xo���Q�Ң�z#��P�z����7r�
�ᨇ����FU�>�e$`�w��
�ᨇ��>�z'��P�z0����z'��P�z�20���FG���DiQ`}�ZR>}^>=�I%L��AfI��������IbI�����$#C`}�BU>}�n����Or�ʧO�f�H�X�$Q�O��������EU���o��BZP_dQ�O�������EU��N�/YT��;�7D/�%U������6��8�d�TٿK�B��06�%U��g~%	���*�����BZ����*����!�����$�*������[��g�����v ��':�,�*����!����,�*�����Zc`��EUe��?DYc`��SR�c;����)%�:��(�c`��Q�;6�g~=`0`lTJr��{p�Y�}�JUn�|�1�p�(ب�Q��� Š�a��H��=��!>fm�	��T�h�=�i�7�r��{��Y���F'�*Wm����1�����)�[,�����������2]f=l�ac�Q�f�\dŠ���1H(I��7YƬ�>� �*ͺ_e)4�	8@?H�J��wY�,cac�G�f�/��Ol�	�'�Ti��6˘eD`0lL�Ҭ�u�1ː�d�X$R�Y��,�4&06��0���� *j�O@���� �l��l^�|)JAv��(�a����oPOl�yN2�fX�͕��ux`�C2�ZR?��$kg��i�̒����mI[|�۞I,��zy�+�o�UM����x�!DY3UM+�P�M�nC���n{!���g�wB�V�h����k�x�!<����^ɢ�o��݆e(��i�,��6�6���>�z%���Ż��~@���P����4��ZR݆z�QBZXod�T��>�+i���Ē�6�g}}n$��i���6T�6�(#�L��PU��z�!Dm�	�;IT�m��mfp��,��6T�6�(#�LdQU��z�!ZH��,��6T�6��}������P��0PȴIjI��.�����2�M2K
�v���_1m�XR��ǽRX����)T�zs�C���
�-r�
��GiQ@}�DU�7G=D�~�A�dQ��Q	�`�KU�����'��/YT�zs�C�>�&�KU����̷�DjIu������D2�YR͆��X
k7G�XO$�Tc�?�+ɚ����j�uo�����!��ɡ��Z��Z�����LU5ֺ7�B�>��YT�X�o�
$$���BU5ֺ7�B�V�@��EU���z��f�z!��k�k!�`�X�������|�O�^�,)��u&+NI%��JbI�>���d$`�7�J
��3h$`�7r�
�ᨇ��>�z#��P�z����z'��P�z�20�;YT��p��[}�NU�>��O��NU�>�e0`�RKʧ���1n�	��%������T�X$��O��{����%�I^I���o�!�H�X��P�O������Or�ʧO�Q��P_$Q�O��������EU���o��n�	�YT��;�7D�~@}�EUo���p���(4_B]��N�Q[}����ZRe�:e�|�C��%�������$CC`#�XRe�z�W���!��H���y���6��6&r���_^���}�-�LU�����h!-
-�LU�������':�,�*�����}��LU�����e}l���BU�������'P/��v��#sc`��RR��D��(�c`��Q�gR�ǅRX���+YTy���X!k�O�^I�ʃX��
O�S~དG��^?������Ty���X!k�O�H�ʃX��
bp���D�<���A��eH`lt�� ������,@��)ɻ+�e�Ê͑16:)%yy幽2>`D` l2JҬ��+c����1ȢJ���WƬ�>� �*ͺ_`��>��'yTi��˘e@`,lL�Ҭ��BCZ��$R�Y�;,c�>��'�Ti�����!�ɰ�H�J��XƬ-?�5��ZY������ �5��^�t�F3hD`4l^�aI/�Mg�l�2 06_��z_-+4�e-d�K����[#d�5�|�%kd����ψ*p&�q���k�M����W��������F�2�Q�D�Y����[#<�}A%83yg�[#�o��U-�9�x��5���Yò&��%�����o<����
J�yJ��o<�~�qLꖄû�������}h((�)����U���<�`�7�s�z�X@!8O!������x�����]�x�ύ�*�H@8O������x�źsCe�<e`�7�s㱊2P�Sv}�q?7�{ �E�l�j ���c�d,��mQ�`�wE}n(� �=S�@�wE%	(�fowR����ce$���}R� 7Ut���H@�7G�(A.�PQFʿ9*E	pOſ"	���wT����ce(����(��F�c�ߜ����^�m�(��ߜ�jy�
r�d,��sQ����� ��y(�
ʾ�2%�?^9��!�H@�7W��Էz�o�8$���o�I    Q�_r�o�e$��[o�(�O���zx�H@ѷ�zG�o����!�H@ͷ�AQ���
re(�D�J/E�VH?+��=���T(*���YA��	X�B]� �XA���vP�Q18�Ң���XA���%���r����XA�>O�4���(�YA��~�+�s+O�$T�VQâ�zI%H���6��R� ���z���˸���g��"
��[�����g��209�j����g�z�`��ܪ�M���!�X��ܪ�������ͭ�)I���-^����[����QQF�V�%Po�z�(��E	ԛ���Lέ^)J�������ɹ���Po�z�209��KQ�樇(c�sk��7G=l"009���W?+�U���ɹ5.��
��]�YX����+�U�����5%	~W��ύέ9���YA���Lέ�(J���*�H���Z��	XA��&#�sk�;*z�~V��(#�wr.��KQ�[+Ȼ����BQ�k+�U���;9�߷�Q�{���\=`0�N����PW+�;V��$c�wp.�)S�@}\�����;8���(I�>�a�	�wp.�i�I
�ᨇ�nQ�7*'��G=	YTGT�(��p�CT����qG)ԇ��!�%�^^��G=DU��P�@}8�!jXP/��R�G=l"02P/�jy�
r�d,d�^3%	�yÍ3B��k�$��<o�!�H(@��;)�����\=`$��E	���(#� �V)J�0�7D	��qG�q�~V�w���H�@��%�����(C��^(J|�MÍCB�{�(�7�7D��u���c���Xh@}dJ,�S��$C���(I��N�����Ǽ�Tٿ������g�(A��?D	��JQ���e�(�>E	���!�H@}�w�*�����Ca �U(J|�-/�C���ɹy��˛���l�T��\��ϗV�����,����v������u'Z��ԩ<����nȲ� �D�T��~`7�G�B=�:�v��Y�����I��U��Wa�'��D�=�L��i��l����3 ��K��i��l���# ��J��W7w����i���l��� ���i����lܕw�(�^I�F�����*j�N�^ɛF������#g f%o%z?7�(C� f#oz?7�(c� f#oz?7w!���d�r-��_I�B�\�r-�q��W;ZP裸�k���Jڪ�w��ʵd�D�FN �N�T���h�2p`Ҧʵd�DCԖ�@}�7U�%{%\���3 s�7U={%�����2��+��KĢ��$o�z�J4Dm�	�'�$��^N!|n,��\�Էzy�W���# s�JR���Y_I[u�E�T}��V.�H�	��Ț�o����!�H�	���6U��ſգw�(t_��[���z�20��^򦪿P�[=<`(`�k%򦪿P�[=D�Z����/�VQ[v��H&��B}��T� ���Z�\��/�ˠ�I��%�V&����q�71WL}�L�T����(k_b�ke����P�[=<`�K�}�B�T�����-;�z!o��տ�C�501��
yS�_���\�����Uɛ��B�o�e,`�kU򦪿P�[=zG��d�B�=�+�X���j���i_�
�Z�T�B�=�+i�N���$)ԛ����}�F�T������}�N�T����e'P��M��Q��ѬP��M��QQ��� o�Po�zx�X����M��QQ[v�A2I����i��}�I.I���i�u���b�kMRI��֟�M'P�d�T+�{+��M�c_k�4U��e$`�k-����ֽ�ز�/Ҧ��ֽ���~�E�T�Һ��B��0�v|ɛ�VZ�VZp���D��%o�zw����D��%��P�kӸ��.t�$���P����B�1�JR��g|}�M'��L�B}8�!�ڗ/�뉤�B}8�!�z�/�뙬�B}8��nى{&m�P�z��^vB�=�7U�G=zG�ꅼ�B}8�!�z�	��
�ᨇ�������-ˑơ��{�9z?�2�_�$U���D|[ݕ��4.I��U���f� ef(�z#���zꗒy���X�"��q���^o��A_��R2'TX�4U}�/��M
V�DMA_�7H�	�w¦��/����މ�*���n�2'4X}7U�p���Rf������_���	�����_�A���a�I0I����^�^��$������/��:a���K-X:�^7'X}4Ue���?H�������{����aSU�o/�4'LX}7Ue?��+)s�7qSU�o/�#w4)X}7Ue���?H��N+����->�P���Cܘi�N���'l|��+����Eb���D�	����#�A�L�!s̄N�n�݀-�L���S9�[|D7h܉��KRcW��:bG�n���$5v嫯��ŗh`_�H�����z��K���J I�]e/D��!�0|%f�Ʈ��A�������^�hV@��jDM��U�B4H�	�7¦j�*{!��A7��6UcW�� e^@��M��U�B48�V�d�H�U�1<�|�z'��PKyꗒy�kJR��<N�R��� ��PKy���!��� f�PK�B4bG�w��$h�PK�B4H�п�&QS�Z����a���$l�PK�B4H�Y>X}6U �x!��
h`_�����р���$�T�O�R:�|p�"���������+��&������_J����M I=ի?�ÁC:a�M�T=ի?Ճԙ�C����z��z�2'`��NDM�S��S=���:�:&¦�^����,R�D�T�՟�;�R�L�T�՟�A�N�������O�p���!u�ĒT��.��G��K4~�B(I����,�D��.D�T��I�A���kb�*^h�TRg�V�MU������I�ꕨ���?Ճ�a��z%l���O�p����ꕰ���?Ճ�Y}_�6U�B�z�:�Vo�MU��<^,�����X��z���h�ڝP��z�$��L	V�D���������;1Se��V�,�>�*�w�z�2'��k����ݭ���aSe��V(����ꃰ��zw�)����$l�����;��>	�*�w�z�:�|��$�����|�n^@��^��T�6���dV@��^D�T�6���tH'�����$mx�6��冮��	��$mx���	h�ڛ��J҆'i;���	��$[ƕԙ��7aS��O����B���$mx���D��*�>��3͇�1KRV������:fBI���z\��62�L$IY}>�D[�F��	$)�O�z�:�|H�ASe��V,�N��QSe��VR�u"_/�M�է[=H�Y>셰���t�hQv��+aSe��VR�u�ꕰ���t�G�h�V�Ē@_�'T4/X�JR }��p��f��7"I
��g~)�	�7I
�/����,�މ�*���n@��
�w��
�/�����;QSЗ��Ѡ��	�*���n�2+4X}6U�p�����aS�w�/� u��`�AVW�p���Rf��ObI���o�X�y���P�*��3����'Mੲ?>�����������{���	V_MUٿ����QSU�o/��ԙ��aSU�o/���9a�꛰�*�����	�o¦���^�)��7��ԧf��&H�?p�ou{�b�2r�R�0�(��U왔�[���:��	�NR
m%|G��h~�Ԏb/_Ş��Vl+�_Q��r/_�i)���o�x����/_��Tt+�_Q���/_%��Tx+��Q��5_�j>qQ�V�N�	���/_E��T�+��Qk�ւ� -E��kz���Ge_.dz����]��i��Wݗ?�D3�,�lRp�U��)ьo�(�㈁�/_u_�}�D���_�
?qQ�T�NDC���W�?E}R4j�!P������>**v��h���W��?FE}V4j�!P������>,O�#P����â>-��( �U �iQ�Z�	T��� �U�G�    %���d�*�|U�Y�����(e�@��
0k��_�+V��LU�r���-�J��0_5��2>|˸:a�@��*Pn�e\i�!P��[ƇoWZf��*���[ƇX>`�@%��JPn�e\i�%P
��[Ƈo�Kȴ`���z��Ėq�d�@)��Rp�-�[����T��� �z��Ėq�dn� @y ��2>�-�J�̀��I3�w���� (o���[��e\I�0P�������w��TMB&�!UI*<��e\I�0P�湩���w˸:�ㅉ����M�e|�[ƕT3�_��rY]m��2���)M(uR^��2>����	�R)	+�nWJÔ`��o���`�[Ƨ�2)X�6�N��%�M
V�����4F0'` ��DR�	����	� (��R���|��+)�F J$%�z�������(m��x���J�̀��/��u � ��^�0Pz'%���PJfL ��HI��� ��� ��o�X��w��2'` ��FR���: %eN� @���ۇu ��� ��n�X��w��2'`��JR?�����j~������ �)�旔y3 e�[*"���P��(벺Z0�@)�0PV'���M�PJfL ��H)DY� ��v�N ��o�Ƚ�@I�0 Pv#��d�w��a�ꜰ��$R���PR�l~�)�R�{�w�:`N��ך*I��{�� ��Y�_k$���PR�l~�i�T����߁��5������j��: �d^��ך;)	����q�3V�ּHIX��VJݔ~�^K���ջ[=�&5 �HJX��ՃT3��IR��ݭ�~������tK)�w�zh�&��JR��ݭ��I��u���zw��5�?R��Z�&)a��VRf�~��[��	��: ��y�_k�$�0�Z=(�����EJ�
�Ճ�9�_kϷRD��]0E��9��꽑�p��Z=H�����IR�	�k����G���#��p��Z=H�����zKE�;�u �Y�_�$%�z�k� e^���:6I����Z=H�������SZ}^V��ja�k������e���V�ֹHIX}�V����ͯu�[IY}�Ճ�9�_�j$%�>���9�����;�f���(�!/09ZR}W����2�&'"K�t����:qc"�$/�K�s�~�t09W�7����*jE�3�TyU_z���4-䍙p���/��WQ�+T19O��������^��Ʌx���/��WQ��K2�O�����+j���O�������Z��R&WBKrr4?���L�2�Y����]�H���+�%	����(e�@)�+q%	�}z4�0C��ɍ`��>>����T	�}~4j�!P��F8Uv �|���&w���i�2G��ɝx��>B*h�i���x��>C��(j� �$M�^S�%P��AdI����2J
�K���E�Q���&�J��~Se�fT5yL����*��A�0�$�*M�wU
i���S����ʨe�@m��Ti��'�(n�"�*M_��A�0P�~O��/n��e��b�������xWI ��	l�ϛ�J�����(
�oL*�Ώ󥿕��8x~_R�t~�����b%IU�t�T:8 Id"��R��t�2/�S�$b�*�ΞJ)��J&��R��t�B1'�O�d�����w���:Yd&���|W�O#�!v/S#W���q%e�&��J!¤�zy>_? �{!���zy�����h+������Y_J�i�=�T"�
��� < V��RV/�)5�V*�T�ՋGu�{Ĥ`�F0Ua���%eN@wXiSV/Յ����`���ţ� e^@oX�D��O�R2/�3�tL���7t���O8�_R,�>�Kɜ����	/)^=t�,Ҥ`�A$U���C�: V�R�����4��A,U����Z�2'�)�L��V
$�t����mV@OX�S��RN�� �C@a�I0�J!�����+��G(�$�߁�os�!�,"Lq�bbI�R: ^_���Ē ��Y�`e_�#K��9�`eI�#�]�� ��7��8B1�%S Bs���&�G(�$@I��V��8B1�%S�H�B�����.	PR��"vOS��|���t��L0Ua��L�23��f"L����zP: �{&�����Kq��B/X�ė������,�F+X-DR�ջ[=�H�B�^�*�w�z����`�KUV�n�p�nt��J0UY��Ճ��t��J0UY��Ճ�!��z%��������V�Te��VRft��F�Ia��\�G/��6L
���)��V�%��ǳ�^7'��v"�
��Ճ���z'�����Z=H��V;�T�Շ����V�T�ձ$@I��V�T�Շ��F��>�*�>�VR�t��I0Ua��X=03����`SZ}>���@a��lJ����U-�ջlJ����S4K-���E$UY}�Ճ����"���>��F�H��`7��U�L��3�0Ҩ�DhI��ڈח�M���ɉȒ�PI��:p(��D`IN��gI��?���`��PI>�����əh��PI>���a��3�T9��|B%h��?$��x��PI>�i�i!e/�S�J�	��u(R�B<UN�$�P	'��R�B<UN�$�P	Z�`��ɕВ��/��J���L�D�$`Ϗ��1P��J`I���/�3��7���g�F�L߈�J�����@a�F8U��=�830}#�*;U��M��S%`�؃�a�0}'�*{v���3��w��g�A�<��&BK�������L?�,Iӿ�WF�C@a�A`I����2830�$�$M��WF-3��<��J����Q�0P�~N���,#<30�$�*M_��A���&/����Mi�i��x�4}q��3��/����MN�'��7&J��4�#��7�%J���Q:��߄�T(��K)��b%]R�t�P:H��(V�TJg�#�4)��H�
����A�L�!�L�RU(�=��	�+�X���J�@Efb�j@+{(�����L,Uhe�÷���	�{!�G�>�}�J�RM�B�IQ��&u�Ĕ��K���g|)��?x�Ҭ�����_�[����R	�*�^<�R���H���œ� u��`�J(UQ��I]���t��F,UQ��I]�: Vo�RU/���/cq�z#���z�.H��V:&������y�a�_R(�^Z��-�t�K
��g})��?8}]R(�z���9MaeIU(�z�� ���T�«�k�E����T���Sҗ�9=aeK�;j�+U� 
�Ob��xR�K����X��ת�kA�̀���0�V��|�F����"��Z��E��Ήf��/�V��8]����`e]R���� eN@'X�RU+�&8�V�DR��J�&H��?X}JUS+�� eN@3XM�R��J�&��@E&b�jj�y���R�D,UM�4/`"�4)�� ��z�y�`5_RV����"sτ����3����"�BtIY��Ճ������@��zw�>x�'2�B$UY��Ճԙ�C�^�*�w�zd�&�Wb���ݭ� ��+�Te��V���^��*�w�z�23��6��j �^�)3��j#����xk� ����%E��3������	/)�>�Kq�B+X�RU^���?a�N$UQ��z8p��`�N(UQ��z�2'��b����Ճ���� �����Z=��3��b����Ճ�y�`uKUT}8U�,Ҥ`�I�z���zDU�`����Wi|�~��`��lJ����Aɜ�N���*�O�z�:�V_DR�է[=�Fsz�ꢿ��������b�n�S�/��_A���(�ꦿ�����v�� �V��V�b�D�2��ث�������1E-�P�D�Y}AL��R�u{�.��-��������]�[�'n9VJf�z�.��-��+%sJ�v�z����r<��ssj�v�z����r��~��Q쵻�S������6��v{����r���I-H�_�    � +l{�.��-���XI5����bO�r<�[���4)X�.��-��O�����^�k=u���-�Jɬ�R�ݥ���x���G'��kw��n9��-�Jʜ�R�ݥ���x�����z����-���XI�P쵻�S����c%eN@���bO�r<�[���}nV@���bO�r<�[���y�^��=�#`�;�ZXnR���W&���w���?;l�����#��T���?;l����>���#�b���A`��W&��O�G����ۮ�2��|�>򩺄~�@`��[&��O�G���c���r�-������^�ڢwQο������J�mz� \z�b��i�}��>�	��>ߣ���P���V�};���Q책Z�]���ۙoߎ���j�~�j�og�};J�>?���U�ɾ��};S,,7C�Z�W�&�v���(-3�~�k�ogz��T[Lk@��Zr��/��Zf�l�*�d����u��mI��z&GH��X7jUӂ%
YBb]�Qk�<q!T�C|�;ħXX�~��P��P����WRӤ:�
I��;�)����W�&�v���(������_u��ۙ޷�N�!P���r�};��v����Q���v�};��v����Q��F���/n� �ͨ��z'Gȵ��n���[��7ٷ3�og�-����'��};};J������};};�u����VoK��,��(%s���&uK����oGI����7�[�og�};K�+7/ ��oR�t��z�v��YI]����v�۷�����ߨn龝���()����fuK����oG0/ ��oX�t��z�v���a]_d�ط�޾%ef@X���u�U�з�ĺr�7�.�$���E���
��컓���o��R+~�0�����b��z�v��9S#e�N@ߎ:`N�ԃ5��R�	��QR�L=�4o��s`�};Jʜ����I��^��1�ľr��F�$%{�����2/`�a���og�o���;�W���(����T}��Ai�޿�n%�,��,�=դ���IR��W�Y�~�R�ڨ������8n7)����� V�nRx�*��Y\�Y�|l2��F�$%>�՟�A����ʶi�R!a[�`��23��m�~K��}������n�\�n�]O+5ؿ0د���v=�R�����w����v��Rȟ���9�n��[)����W�	V��BԺ��~%eN@������?���9�nc�[*�����'��v�16I��u���Jʬ�v�1I��u�����m�Z�nc�[*����WRf���yY]�/�����ڕ�Ī0yz��a/t��M[bU��ۏ��^h�����
����A�0P��M8U����� e���-NUa��09 B#_h�o��
���	EB�1�Ϋ�F�F�C@��0�Ϋ��/%s:�[&��:��w^���"u��RU���Ϋ e�!:�[&����r��,5L@L�h����z@��j�p����z�:�t!����r�q�q=X�NU`}9XR��j�����r�
�WbL
����Q2/�j�������
��Z#¤��~0���B�KU`};XR��B�LU`};X�8Ҥ`�N4U���`=H�P�N8U���`=8V�SX�փԁq�� ����v������ ����v���a����Z&7��w#���?;�v��ɍ���H�؟�U�Z��F��n$WR�gG`�&�8�A'Ϡ�ց�p�$'3��t �����H�̠�g�A�>�Ȭڵ�B�~<��cu�����l�!����E��o�y϶��$/A������&KH���h{�}m�'�@]z�+��!���&P%!N� N�ۨ��U��ۏ�{�����"�~�}�����~���3���j}Wm�2C���H��U��j���_�D��Z�Vi�!��23�Y��}]m�:Taf&:+q��lӴ�r��8~9fԲ�f��%$���1�����7����~��W-#ğ�ד=*���Qʲ_,��0�4�;Ii�E�� �U�ۏ��~�����U�ۏ��~,٦i���4��F�CTa�Fo�4}qӇ�����Ei��ZfTT����=*�{T���`�Dge�J���Q��īT��-*A��R��U�RZ��X�MSz�������J��T8~��u�zo?V���� 0ˤ��~������$2����~��O��'����{����b}���~��+)�r����'�zo?�hӤ��Eh6>��{���:<V_ī��}����h8�p�������%X}�SV/��z��?�_��_��^��b��J(�F���zq��e2?R���Y���!qoŏ�DdV���`H\[�z�F"4��Pq0$n����Ȅf*�ĥ?R���� }q0$����Ȅ�Y�͉d=����RO���/%���d6
q/e�����-vG��(���ի[=H�A�6�")a��VR�`P��J�W=ի?���?:���J�W=ի?Ճ�!�pB%'��z��z��Fa�F�W=ի?Ճ�yK�F#�a�z7��̂|5"_,lPJ�lh��W���Y��F'�a���.���;a�ֻq@I���mt"��w〄�&�B��w〒2'`7��x#X��u��YX}�0`���Y�c�0`���y�c�U���S=��Cf�9I�Si��49�F_h����T�<=M�<Ҥ0ǻiQ�J����A���a�wOUi��490􅖩����4yz����e�%�L*M^����a���1&5���1�?���!ḧ́�Ԙ�z֗�9�R-aRcZ�Ǵ"�4)��h��Z>����S&����r�Xԇ��⩊����/�A#⩊�/'�A���!E.�SY_N�#���G��SY_Nփ��(<Z%Ȥ��~>i�a��z%Ƥ������3��7BL���g~�nN@��&Eַ�� u(���*�����3��7����o'��Pw�N8U���d=H
�w⩊�o'�G���;�TEַ�� e^@���TEַ��p�̀£�S8�ĕԙ��;8h�N"����]��o#j���L{ӳ����;8�yɴ7y�N~��p�io�7h�G�P[ļdڛ<�Z��A:Ԯ%����K�hZ�H/2��SI>������q$G���Q��M���#9�Z�]����D>����,��Iđ/��=ۨ�z�q=9�����R�QD��M��1\�1+ �i!QKA��/��Zg���#�%�p}�l<a�@��31/	�}�l�:�y&*��Z��!!/�6J��QFg	�z��Q"��2�8��xa/9�[����!h�?����yR��c�D�����3��?U[�ă�鋛>h��K��*M�I�7}�:�0}�i=i��I���Q��FT�����a�0}#CH�7}������F��� ŻA����[��Ae7H�n�p�K��NTv��	Zg�d�Ri�7�%s�>�9��8J�(�� .��򳿔���P5��}6 BD�q0�$�洲�)�b�>���9����!���$�洲��3��O��jN+�l@�2+`�D_A՜V�ـ ����A��e��[�������!���s���֮�	)pR���dV@cWߕ��D��R:�p���+�&���W�B��ivS�O����?RH���8)N�}?R����
����/�3�����Iqp"n����?0U�88�M�H�dB_�a׋vD����52�/Ű�E;"��	4�R���/%C�����z��ǩP�����F��C��C=H�)�wv��z�W���7G�7*!P�P��PR\�������A�L�	����������ш���z��z�2/`�h�@��W��zd�&0�� � �/�3G.ԉ� ߔ���fl���P�Mi})l	�w�1�?-I�)BX�����F���d����!����%u�%�>��� �߈�KE'��b�1�?R�Kʬ�n�1��� �H���t�IT���4<Hp	���'��z>����E��������    ���C�8�Q�7_Xo��<�)�Tw֛ͨ/�7WJg��KF��|����{�P2��dT��׻�\Iٻ��q�5�Zo����J��>��n,S��׻��߁��U+��ll���ݹz�2+��lޝej��zכ/uղIuHU���\=H�P5�DVWc�����3��yW�j���zs�d^@�8�Q�7_Xo���
��]3��������PP3λfT��׻�\I�����7b����]o��U�&5 �HJ8axU��ImH�[J����'��{%�Zo����J���~��P��׻�\IM����j��zכ���;d�
& �cJ����Aɼ���J�VV��է�Q��?�SZ}�VJ����{ƔV�n�p�����y/Ę��ӭ��	����F��� %eN@����U�z;���nNh�����:������
h��w�� Zo�R	L
V�{�U�z;�����w޽�KVU��|ݼ �;���%@��DP2+ �λ������	���n�W@�� Zb��9lwލ��h�@Jʜ �;�������6��~7����v ))s:�����:�������?�XOu ��HI����;�S@�� RRf�z���T�B����������:�:���Y�����W@@K�#�QB����U�z;���9���n�W@�� R�	h�_��1�%`�[��ϟ����Lo�z�o�ǥ�&��������۟�A�����BS;�׻�\IM�ڐ��\$��E�Kl$��+�q�J��"��.W�I�x�qr��z�+���rE��4N._�H\i�qܺ�8�H|�"�%	TӂI�<N._�H\i�Kȭ+�����G��j��B$��HN��/�WZ��r�
��h���~u�,�Xn]���_>گ����V'�˝���������������/�#d�@0��`N���w�_I�#̭+������_jk�I��W0'G����+-3��u%sr��h�:a�@4��hN��/�WZf�s�Z+G����+-3�l�k7��_>ڿD��9=t�Z+[��� )-�z�ֵV� -oZj�ߴ`�k?�\J�ޥ�J�,��u-��K�׻�\0G��n]b�h�zG���-t��+G����+-3z�vj��L��fc��=t��+G����+-3z���$V��/�_jm�iuhU�R�/n��e�@ݾ�79ڿ|�_���DC����M��/�WZʹ~M��n�����~�4MiB��Rp��h�B?~h{����֣���Ji����m=ڿ����������m=ڿ��~%�M
~�����h�:`V@��~�����h��2'�yn��s[���w�_I��;��޹�G��;ڿE��y�s�m��z����J�̀ι�/�������������;)	/���+%���v_�$��۶�^7'�kn�|+ş�m�QR�����HJ8m;Jʜ���=&I	'��s�5�w�rR�X�
������ꋨ�J������V_�T*�=��  �" �R��X�2T�Bfl"�*랊��[�nB�*�OI_RƪPȌMT�b�S� e�
��L�@UT�=*Xϼ�:f&B�*랊��-� &�B*u�' 4/������J����\܏��LTH�b�_�h��0R���T,HY��ef�*��)K"Q��B T���0<`��-��"�
���AʲH0�U0|8�Ѥ`�JT���0<HY�
fVB�
�����ᖰz%.��>���d^@3a!e��Z=(�P��FTHY}>��>���e6�B��ӭ��	(_f#���>��!���	�*�O�z�:�V�D@�է[=0'�������t�)�*�9�*�O�z�2/�������t��w�%�>���cz�G�23���������� ��>	)���t�%�>�
)�����9\s�T0|9R��p�E T���0<Hn	�/"�
�,�&���5!P�M�c� eN@�܄@6Y�M"B4)X}U0|9R�[������ax8`f@׺{�ԭ��+%�Z���¥n-^��X)j��1ASe�~���4p�D M����� eN@���Tٿ��Ѥ:fh�b�D��?:V��{5����J�88�����/���,'D��*d���"H
/���S��S������J����"H�?�`��R��$WR�D;تD����8���6+��V%H%7m�g}IY
�v�U�Q�U������wGC�jDf���~t�����4B�r�fz2G-3<��V#6+�mb݀b�ft��NlV��L��e�@[���f����jdӴ�|��f�����>j�'L?S�k1��%��Q*	�ߋ1�ԡ�0� H%a�{3f�2C�1lbT��՘�5�!��&�Y	��n̨up*L?��JX�c
�iL���f%���1���ak���ޯǌ'�h[�ج��~?f�:<�_�f%��2��y-bk���/���|��h[�(�4}�L�G��T�~����H�4��obT��>F��hۉ��4�ϑ��"�ODf��}�l�2C�Ql'B����m6j�!�)�3�Yi�����V����J�7}�:<~&6+M_���l!�*dz١R�C%h8A-�Ѫ�7���M�*�"��X7����`tbU�o�PJ�M�u�+Q�H���n@��Sa�JX6����PR��u�+q�����n@�M����و���n@I��s���H���n@84fof#���%e^@���f#���%ef@����պ��u�6�
��AJ��B�5�b54���IIX���>~���>��*D_��Sa�AXV!��>0'�3���
��5X��O�
d,L*`���R:Ö�[4b���[ �gZ,uKU[��-H�B�16�T�u�"�4)��M4Ul�� u��@S7�T�u��_�>f"�����QA�:ad"����[�:�z#!&���O��T3aR۸��%�ꎙ	0��m<Η�SB�	���mx��δB�B,Ul��p�BM��LU\}8WR�"v/DSW��˗ԙ�C�^��*�>��Bh�&ʎY��*�>����@a�J4U�b�S�H#������|ʗ�yU�lD����ӿ^7+�蘍 ���|֗���z#���>��A�L���X���t�BhN@�1;�Te��VR���h���t�Gi,V�DS�է[=H�Pv�A4UY}��Á�@a�A4UY}�Ճԙ׃�!&������hp�������J�
ho�� ����_J�������˹z����`�E(Uq��\=H��6�T�M�c�p� PX}LU�d96	RgZV_DS6Y�M��Y�`sMU�d96	�� PX}MU\}9WRg^V�du�՗s�H#M
�a�);�����k�+�[��*��3�^? aa"*�����/���fh���^�)s��V&�����e�z�"*�����/� u��g��T_ۿ �K��P�	�b�D��p#V!Z�����!@CZ�����e���+���J@HΨ��~IY�v�U����8�{6+��V%$gTҳ����������3*�!��ވ����3*A�K���3*�gT3�?4��rF%��J�2C�+lu��rF%��J�:�@��3*�gT�;c�Pw��rF%��J�2O�1lB��IR�Ѥ`�A<Hb���(u�%L?I,��@��?�~�Xܯ��Zf���ITbq��2jr	�O����%��ꝩ?�~�X�o��Zf�ETbq��R0Dӂ�QP���ʨu��`�ETbq��2�0O�ElmB�������%�"�6� i�r�����0�&$M��E�ޙ�CB��I��e�Q��&����J��m��!�B�DT��W�F�3���<��/n�p��N����J�7}�:�Iy&
*M_��A����
e�����M��
�o�R#Z�
�P�|ۅ����׈��Bʔ �
A!5�����t����JLH�he�
�O��kWjD+��V�:�~��?ՈV�� u��`�J 4�#�4G'��k7"���    W�����ЈÏ�c��5�4x��4�H�/)3Z�v'�G~ ��8���]�_^W��ƽ�ҡ��z�q=�����khzj^������Յ�M]{�T,�8W��74u�A�S���,\]G��ԵP��pu}�/�P5\|8H����oOU����QR�"�ۓL�Ɓ���I�3�	WMr�.>��D��e+��|c��V�#�l�*)�/��~A%{����5HI��������^�VR_տ ��9��ޅ���W�"H����IJ�}տ �����~{/�O��_Aʜ��Ք�-�� �A���&5 �HJ<�A)��o��#5I*�FGj}03��~5e�zHM���Rf����G��z���ڎ���d^���jʃ�B@jJ�_��w���I)������)�_�{�E����R��i��;Zӽâ���H�/�'�߱���%M�E��u ��~o�h�/���_Rͤ`�{�E}G�}IM����-M�E����e/���Ţ����3}I�
�~o��{�M��V���M	V��X��� �dV�����B� m� ���	V�WX���� ))sB����h�-@Jʜ�`�{��j�o�+��	V��X���� ))sB���-�h�-@[-$0)X��b�Z������V��RV�n�p���a�yY]� m� )%�B��� %���/%���&%a���������r+ž��� ))s�W')��}�q!��Ԅ��")��z�2'LX}�[*b��� ��	��FR�7�VRf�	��IR�7�VR�߀��HJ<����	+����^�鲺j�hRJ��t�Gi����|���(�f{?J�����k��dN�M�j��VRV�n�p�����Hu�V�n� �����H-�V�n� 5M������T�~[��XY^Mj@�����t��aRR���է[=.$��ʰ������ )�nR������ �z6%X��T�F�R2+X���T�F�R2'X���T�~[���XnN(������ ))sB���XO� ��h��&�߱�j�o��2'TX���T�~[���B���\O� ��HI��~{�h�-@J���`�AVW�p���+��^���-����/%�B���`o˲�e��L���BJ�
�-���9����J���^�����ER�	��� eN���$%����R���vK��{����&I�����?H�&��I�����?�,7)X}�[J����� ef���v����� �f���MR
�$�=J�~�$jI���Ip{�23�NIԒ�-%���k������;&QKZ���Oz�������LZ
����b��ih�[Kο���Q��;,QK���Pgz-O�8b�NK�Ri)ؙ^�G�fZZ�֒#p�5}Ԛ���u��cMm~��X����kJS� ��HI���1M�������L�i���-@J�����ל�l���N�!
Lj���-@J�Q`�kRS� moRZf��_���h{������f5e�� �e��0�5�)[��� m�F��`�k\S� ��HI�%�y�I8V���ei �^�`�'�X^���q�I��M�
�/K�ԁp�?�x�"����p�����"t��`�[K%�.�-ۋș�~���R:�l8S_��qn&p:���&n��]�גAʜ�������/��d�y����M�L}�V�%��ApHXq3��Z���	��R"F��Y�גAʬ��)%�Ī��^K�����&�Ī��^K�gf@�2�3����|)�<�L�L�j�qp&r5�N)8S�Z{֗��j��R!n�r��Z8`�b�T���\�y��,aE�
q3��5�Ղ�Ap�z%n�r��~�F�g	+b�T	�\�y��,bE�*1b��5���;V��U��<WRf$O�:SV�����O�9SV�-���u�N�8SV���R2' vJ����zw��gN@�:q3e��VR��N�7SV�n�x��!8X}7SV�n� eN@�!be��V�
��� F�����A�08X}$VV�n� ef@�&�3!�ǽ�����$r�"��/���`�I�LE��qn��눝�"n�"��r�2' vJ������G��9�SZ��T�<<BR��꛸������Aʜ��)mB�*B^��gV@�61b!�Ճ�ap��&H�"��z��ؤ��&Bg����_J��N99SV������!bMΔ��3���	H�r&n��>��Aʜ��)g�f��ӭh�9yS��͔է[=H���7SV�n�x��I!a-���է[=HY���)b���ӭ���$VV�n� e	+¦\�ꊖL�%A�V�M�:S�d]�$/DM�9S�d=�Kɬ��)7g���ǹ��Zɔ`�F�Lђ�p��9)Sn��-Y�78V���-Y�7H��1�N�Lђ�p��9S�Ĉ-Y�7м��`�N�X��]�7H��>��_���ƻ�M
V��Tٿ��t �>����?��u�B��'�3U��g})�:�>����{���	V���Tٿ��4� 8X}7Se���?H����������TnR��"D����e�:V_ĈUٿ���V��Uٿ��Rf�	�o�f2.N����Ap��&l&I�I��o�O�$�f���g}I�Чo��� NC�|A�p��@�~I�$#I�H��p����d$�I8a~@�~��$#I�㣖��%)��$9#	Z���eBŒ�$g$�oI�f�X�d$�I�2ނ��R��ɉ���%�~��6�#���h�2܂��R��ə�wh40 ���R	�ɡQ��Z�в_*A395�c�Q� 8��4�c�>7a�M��4�s�>8��h�/�H���Qq/�8��*���>:��h�/�X����x�<���r������������/W������J���@9i��/���p�_8���U���ei�:�l�t��h(^�)/XL��3�[��?��7,�݋ș�~�O�R:� g����z��s3��;a�&n��]�גA�v��M�L}�V�%Á3	D�������d�:�x7S_��k� eN@�!b��Z��4�D"bMĈ�k�Z2H��5$V�d�Z2N'�B�L�L�j���=4/ xJ�ș��ڛ����@$"�L�L�j�_J�!a-��T��<WR��!vJ����՚�j�杉H$�����՚�jA� 8$�����՚�jq:Ѥ`�J�X�j�s� uF"a�J�X�j�s�p�08X�$V�Z�\-H�<�F�LY�?�Kɼ��)5"g����%q�fG��3e���/���`�N�LY����p�I�ꝸ��zw��3	�w�f��ݭ�w�f��ݭ��	��� D�����A�D����zw��w�>+�w�z�23 xJ���"��r�N4)x}:S��l��͎�)M"g*B��z�08x}8S�x���9�SZ��T�<<BRg"V_��T�<<B4� 8X}7S��9H�;�M�XE��k�8�hR��&F�"��z�:V��U�<�V���r"J�"��r�23 vʉЙ��|���D$2�D�LY}>���DN98SV���R2' pʙ����t���D�B��)�O�z�:	k&n��>���%jH�r!n��>��A�D"a-Ĉ�է[=H���$VV�n�@�,aEؔ+Qbe��VR��"lʕЙ�%�%k%S��+�3EK�ӿ�����3EKֳ�^7' fʍ���%���3	�7�f��,������q3EK���4Ϝ��)w�f����K�D����%����DCp�z'F�h��_�Aʼ��y$V�p����X��3U���s��LD��ș*��5g�G�08X}8Se�~���+�vC�I�L����� u"a�I�L�����8�hV���Tٿ��R���ȋ��*���������!bU�o/���Ap��"F����e�2/`=D��Uٿ��4�̀�y7SV���/�3	�o�f2.N#�{5��K"j&Iz旔�}�%4��$9#	'�L$�A"h&IrF��?H�$#I�H�����%    4��$9#	0�LE�d"Œ�$g$A� 8 �L�X2��$�'��Y!V,IrF����c�2�ܯ����ę�7+�����{�d�:�������{�d�2ނ��R��ɑ������L$L_	�ɑ[�p2j �W�fr��o���7�fr�֯��Zg*�oD��ȭ�9O �7B�r��/��Z���N�X�����Q�,����	ˑ[�v2�3	�_��Yo���Z�(e�h0�ռ/���~ \4=�;_�IJ���2�7q_��>��|��̕ԡ���  +;S�˨e�!�2������2����"�+W�'w�o�e���MD�W��O�2߾�|���Mޚ�-ٙR�3%h���_Yd.ٙR�3%�0K �+W�'w�o�e����
����.s�y��/%sr����W�#�R�ף��~�'���(�/%sR������Pr���%��f@�W���J�5�?��%e^@�W���J���?��u���ԯ"��=��
�����9�_E���d(��T���6+ ����~��>��Iu?�&����������?��%ef@�W3Y=�ZG�Z�B_�B�W��u����.s��M���R^���#_Ϧ4��IIX��.s��ㄅԯ�u+�:�(����iR�z�$%�����@p�B�Wk#)��]�Rj��^�-��#U��N@�W[")��+�J,)eV@�W[%)��+�*,y���௶��byK�ȥ�y�_m��Ŀ�>�Kɬ�د�BJ�Wߧz�62' ����J�^����	H�j_$%>�՟�q�I��#���$W�)sR�:I��r��z8`N@�WǼ��S��S=H���ՙH�ol�O�I���YI�ol�Oj��-u��->R�S=H���yy], ����T�{L	^_���F�Gi|)����I�o�x������~u�[) ���?�S��~ug�Nh�TR��~u7�Nh�T�F��~u�[* �#�>Ճ�9�_K���������xR��*I�M��I�/)�B���-�?��fd~-]V�[�]@.��H�Z.�$��/�ǭ�y_˝����k��n�ㄍ���u+)�w�z�&�k�V2I	�w�z\D`RR���ջ[=Hu�ڐ����zw��?N؈�ZM$%����A���^+I	�w�z��&��qK)�w�z�723 �k���X@���r�d^@��Z!%��_�V@��Z'%a�ȥ�9_k�V
��(��u������LR�	�ȥ�9	_덤�~�K)s���-h�/�Tt�6I����r)eV@��F%)���]@�{ l������ )���]@.������eu�������u��s�YHIX}�VJf,�h�����|���	X��溕�է[=������LR��ӭ��	���V#)a��V��L
V_�RV�n� eN�v��I	�O�z8`V�v��+I	�O�z�2/`;Gۃ��է[=H�������byK���)��1S=R^XO�R2+`H��NJ�
�����(aF��u+�ƈ���%eN��Dϙ������	�蹑�p��_�Aʜ�)��'I	',�����$zI�Th�8R�:��
;aL��JR⩷�n�&� 5HJ<����~�0&�Y]��]�7Hu������-�������lJ�z��$��߲?(��dM��u����~���dN��Do�VRe���?��0$�[#)��e�2'`J��IR�	������G�];��f��8'��D�Tq2ٌR�%hp
N6���f���(1Q6��$N&�Q�7�-�,H��$N&�Q|�l<a�1S���V6�oF	Z����M�ò�x3J�2Ԃ��,�ò�x3J x�	dMe��(śQ��!o�e�p�"$�"$�TM	tx-S�$?�K�����l�e���g�nn@�T6�2EH�?i���nHU�2EH�?i��yQSM��!���	Ϭ���&be��d���nHUqaEH�qI�I!V��!�0)�¦�����L_xC��	������Kɲ4�M�-m#G�)Y�����e�k�(9+K�	QS-��B��?얿�v��+���3�O�a��/���+���2�Oj~IY�����Q���������ꕰph�'U���
Țj#.�E�I�/)�¦��v�RN�K��[H�j#\�����_J��M�-SO��8,��VYS���S�>�Kɜ���vbe�^����be�^����	��� V���՟�Aʜ���be�^����n�� .���՟�Aʬ���N�*6��Tϼ���N"�*6��TR���p�������yaS]D�T�֞��dV@�T�2���g})�5�E�Lei͟����obe*Kk�TR�DMu+SYZ�z\>`R��&V����O� u���	�,��S=0+ kj����Қ?Ճ�yaSK�U�����xC���)����1K[�Z&Z���/��,m!kj�`��z�����L	�j&V�����A�`7���X��zw����!jj�X��zw�)��5�B�LY��Ճ��nHUaae��V�bUDM�VV�n� e�*��V	+�w�z\>`�V���Tl<���d^@���2�76���5�F�L���_J�DM�+S����8H��wbe*6�gN�F�։���xxl��	���:�2�����n�z',�b��q�2+�E���*6����A`X���c� u��>�)��')�П�&�2e�y��1f�;�M�e���_J���I�LY}�����n��"V��>��Aʜ������)�O�z8`N@c~[�ʔէ[=H��/����ӭ��
h�o�����t��g^@o~���է[=H��o��"$�	I\>`R`�p�"$�_J����D�L������
���`�"$��_J���ebe��,����	h��X�"$���gN@c~���!Y�7H�V����ƨ�p���++ąUc��_�AʰZ�{!0�~�.���ZV��_���)o���p�*����m����-Se�~���V�Q��+�2U��g})���t+��{����~7�oY�o/���9���n̏��Wj~0'�3�ߝ�b����/}I�ޭ��@���-�s���MDLe'�3��gtÉ����q29�[|F7hfA�T&q29�[|F7h��Gp�I�L������07p�Is�rF���n�2҂��,��rF���nL�M�l�3��gt�֙}-[D� ���뇻�o�e
�����DMe+S�$?�K��=��P�$�4���oBe
�d�)�����)@��A�M
�j"T� I�M�:��j"*� I�|!0+ j����$�� e^@�T3qaH��A�L>"W�D���Uy>GwC�Z����r���Q�(QS-����Uy��E1��P�*S�W�t�C��Bej����p�BU$M�*S�W�t�3��WBej���� u��^�
����?��3+ j�����-��+H��5�F\X�����CL
VoD��S�>�K�p7X�,SO������
��j'V����Y_Jg�V���S��S=H��wBe�^�� �9IS���S��S=H��GX}*SO��O�8�h�VD��S��S=H�5�IXX��՟��yYS�ąUj\�����#�>���(�=�#�����`�����TϬ���.be*Jk��R:c���"T����O�8�h�V_��T������	H��&T����O�p�L>��P��Қ?Ճԡn��&*����O� eV@��aa�5��g^@��qa�5��3��\5-SV�sᘤ-dM-,SV��c��5�L�LY�?���3��P5*SV�n� u�B�L�LY��Ճ�EiH�Z!T��������G���P��zw��C������ݭ�M
V����ջ[=HY����U����ݭ��GX���Uj�=5R���h�J��S���ȚZ#X�R��8+�˗7��ֈ���x<�K�P7X�*S����8!���	���xxj���#��	���xxj��w��*5�)s�@�AXX���S� eV@�~ąUj<<5�L>����J����A�7X}-SV� �K6���$X��> U  ��t�a�I�LY}>���C�`�I�LY}�Ճ�9��m*SV�n� u&a�E�LY}���;�V_�ʔէ[=H�И�6aae��V�C�&�o����ӭ���#��	+�O�z8p�B"Z� �z>�S�t��D�L�u���%	��=+S�d=��Rt��{"T� ��_�Aʜ����	�)@��nB4)��L�L��p�ԡn@e�P�$�{��c-h���Z�7HkAg~/���/��p�ԙ|,+ą�/��p�;�V�D�Tٿ��C�n���`�*��[��DS��+�2U��g~)��WBe���^������F����^��3��7�Te���?H�З��P��{�X�9���Ve���?H�Й�;�J}�l��	R�"��\��k�ׄ���V�l��k��){���N�R�5ۿk����H�����]#�+�ꪸ��A${�J���UN(�����H�����IEF*+qo�I�WW�g��Loi�����홖魭�	���~e{vR���WQ���t�_���V(0���Zf�{����>rh5?�76�		_�>;�``z=��������oE�kzqq�i��WƗ?��K���Y_�2��A�_4�#���+��h�e�Q���o\_�`����!߸B>��Z�ODC �Wʗ?���e�@�7��/�a����d��Ъ�����e�@�7��/ b'��ď%2¾q�}��;"�Zʹ~M?��/�qQ{
~IM����$�L�����?��H�ƕ��5���֗�0)��J�Ԛ�R��#G6-����Ԛ�_����M���>�f�Wk~�0C �W�֌����K���o\��Z3��U�������5�Z�O���|g�~��Ԛ�_���e�@��;�����P�<�.����f�j��Pt�J	O�Ne����T��� r�>��QYAN�WY���G
�͠�F�9=�Kʞ������F~�ӳ��:	�ͤ�F~�����}-"��j��N��Zfd}Rm#?��?ա�:uj�I���T'�T-3⿾�������x��i��*z��N��Z�P�����S��SN�'� �M卼< ?�K�,��o�n����Q���o*n������:u�jy�_ ��� G��F^ �7��mL��D���A���Z�N�c>Qm#��;�	3������w�%Q��$pd���%~�@�:���L%��E���E�}-"��i���/Jٷ"��Q��������6&��Pq#M�v�E�S'���jizo�'�NB8*�6������NB8*�6�����N��W�m���/�\fD��QA/M_��A��Lp4��鋛>6�[��7*�鋛>h�'�
�N��wg����	�iZDul��a�Ղx�wQ� ۻ��)�P��oT�{��<`OAl�����^?(�N�fPu#?��_R�PBq3������Pt��"�)���F~������Q�L*n��:��:]�PBq3������e��4E_T�ˏu�u8a��4E_T�ˏu�u�:!#<�������uJ%�~����:��:�]�	LT�M������������M�\���|i�UJp���F&��ҷ(e��H�HT��۷��'c�s>Qq#l_��N���|��F&ؾ�-j�!0U12U�2���o��2C`�bd*�e��ߢ�	Q�d��e����D�g��BE�L�}�[Բ�E�V�B��4�{T<p2F�7��i��*�(u*%T7��i��.�(e��+F��F��/��E��a�Jō4���N��W*n���:(��Lߨ���/n��e����hT�K�7}8qBF��QM/M_��A�,��ѩ���/n��e�80��������W       �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     