PGDMP     6    &                v            last    10.3    10.3 �   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    83720    last    DATABASE     �   CREATE DATABASE last WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Venezuela.1252' LC_CTYPE = 'Spanish_Venezuela.1252';
    DROP DATABASE last;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    83721    abaTimeUnit_id_seq    SEQUENCE     �   CREATE SEQUENCE public."abaTimeUnit_id_seq"
    START WITH 2
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 +   DROP SEQUENCE public."abaTimeUnit_id_seq";
       public       postgres    false    3            �            1259    83723    aba_breeds_and_stages_id_seq    SEQUENCE     �   CREATE SEQUENCE public.aba_breeds_and_stages_id_seq
    START WITH 8
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 3   DROP SEQUENCE public.aba_breeds_and_stages_id_seq;
       public       postgres    false    3            �            1259    83725    aba_breeds_and_stages    TABLE       CREATE TABLE public.aba_breeds_and_stages (
    id integer DEFAULT nextval('public.aba_breeds_and_stages_id_seq'::regclass) NOT NULL,
    code character varying(100),
    name character varying(100),
    id_aba_consumption_and_mortality integer,
    id_process integer
);
 )   DROP TABLE public.aba_breeds_and_stages;
       public         postgres    false    197    3            �            1259    83729 $   aba_consumption_and_mortality_id_seq    SEQUENCE     �   CREATE SEQUENCE public.aba_consumption_and_mortality_id_seq
    START WITH 8
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 ;   DROP SEQUENCE public.aba_consumption_and_mortality_id_seq;
       public       postgres    false    3            �            1259    83731    aba_consumption_and_mortality    TABLE     $  CREATE TABLE public.aba_consumption_and_mortality (
    id integer DEFAULT nextval('public.aba_consumption_and_mortality_id_seq'::regclass) NOT NULL,
    code character varying(100),
    name character varying(100),
    id_breed integer,
    id_stage integer,
    id_aba_time_unit integer
);
 1   DROP TABLE public.aba_consumption_and_mortality;
       public         postgres    false    199    3            �            1259    83735 +   aba_consumption_and_mortality_detail_id_seq    SEQUENCE     �   CREATE SEQUENCE public.aba_consumption_and_mortality_detail_id_seq
    START WITH 203
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 B   DROP SEQUENCE public.aba_consumption_and_mortality_detail_id_seq;
       public       postgres    false    3            �            1259    83737 $   aba_consumption_and_mortality_detail    TABLE     =  CREATE TABLE public.aba_consumption_and_mortality_detail (
    id integer DEFAULT nextval('public.aba_consumption_and_mortality_detail_id_seq'::regclass) NOT NULL,
    id_aba_consumption_and_mortality integer NOT NULL,
    time_unit_number integer,
    consumption double precision,
    mortality double precision
);
 8   DROP TABLE public.aba_consumption_and_mortality_detail;
       public         postgres    false    201    3            �            1259    83741    aba_elements_id_seq    SEQUENCE     �   CREATE SEQUENCE public.aba_elements_id_seq
    START WITH 22
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 *   DROP SEQUENCE public.aba_elements_id_seq;
       public       postgres    false    3            �            1259    83743    aba_elements    TABLE     �   CREATE TABLE public.aba_elements (
    id integer DEFAULT nextval('public.aba_elements_id_seq'::regclass) NOT NULL,
    code character varying(100),
    name character varying(100)
);
     DROP TABLE public.aba_elements;
       public         postgres    false    203    3            �            1259    83747 &   aba_elements_and_concentrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.aba_elements_and_concentrations_id_seq
    START WITH 105
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 =   DROP SEQUENCE public.aba_elements_and_concentrations_id_seq;
       public       postgres    false    3            �            1259    83749    aba_elements_and_concentrations    TABLE     k  CREATE TABLE public.aba_elements_and_concentrations (
    id integer DEFAULT nextval('public.aba_elements_and_concentrations_id_seq'::regclass) NOT NULL,
    id_aba_element integer,
    id_aba_formulation integer,
    proportion double precision,
    id_element_equivalent integer,
    id_aba_element_property integer,
    equivalent_quantity double precision
);
 3   DROP TABLE public.aba_elements_and_concentrations;
       public         postgres    false    205    3            �            1259    83753    aba_elements_properties_id_seq    SEQUENCE     �   CREATE SEQUENCE public.aba_elements_properties_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 5   DROP SEQUENCE public.aba_elements_properties_id_seq;
       public       postgres    false    3            �            1259    83755    aba_elements_properties    TABLE     �   CREATE TABLE public.aba_elements_properties (
    id integer DEFAULT nextval('public.aba_elements_properties_id_seq'::regclass) NOT NULL,
    code character varying(100),
    name character varying(100)
);
 +   DROP TABLE public.aba_elements_properties;
       public         postgres    false    207    3            �            1259    83759    aba_formulation_id_seq    SEQUENCE     �   CREATE SEQUENCE public.aba_formulation_id_seq
    START WITH 68
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 -   DROP SEQUENCE public.aba_formulation_id_seq;
       public       postgres    false    3            �            1259    83761    aba_formulation    TABLE     �   CREATE TABLE public.aba_formulation (
    id integer DEFAULT nextval('public.aba_formulation_id_seq'::regclass) NOT NULL,
    code character varying(100),
    name character varying(100)
);
 #   DROP TABLE public.aba_formulation;
       public         postgres    false    209    3            �            1259    83765    aba_results_id_seq    SEQUENCE     �   CREATE SEQUENCE public.aba_results_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 )   DROP SEQUENCE public.aba_results_id_seq;
       public       postgres    false    3            �            1259    83767    aba_results    TABLE     �   CREATE TABLE public.aba_results (
    id integer DEFAULT nextval('public.aba_results_id_seq'::regclass) NOT NULL,
    id_aba_element integer,
    quantity double precision
);
    DROP TABLE public.aba_results;
       public         postgres    false    211    3            �            1259    83771 &   aba_stages_of_breeds_and_stages_id_seq    SEQUENCE     �   CREATE SEQUENCE public.aba_stages_of_breeds_and_stages_id_seq
    START WITH 24
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 =   DROP SEQUENCE public.aba_stages_of_breeds_and_stages_id_seq;
       public       postgres    false    3            �            1259    83773    aba_stages_of_breeds_and_stages    TABLE       CREATE TABLE public.aba_stages_of_breeds_and_stages (
    id integer DEFAULT nextval('public.aba_stages_of_breeds_and_stages_id_seq'::regclass) NOT NULL,
    id_aba_breeds_and_stages integer,
    id_formulation integer,
    name character varying(100),
    duration integer
);
 3   DROP TABLE public.aba_stages_of_breeds_and_stages;
       public         postgres    false    213    3            �            1259    83777    aba_time_unit    TABLE     �   CREATE TABLE public.aba_time_unit (
    id integer DEFAULT nextval('public."abaTimeUnit_id_seq"'::regclass) NOT NULL,
    singular_name character varying(100),
    plural_name character varying(100)
);
 !   DROP TABLE public.aba_time_unit;
       public         postgres    false    196    3            �            1259    83781    application_application_id_seq    SEQUENCE     �   CREATE SEQUENCE public.application_application_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 5   DROP SEQUENCE public.application_application_id_seq;
       public       postgres    false    3            �            1259    83783    availability_shed_id_seq    SEQUENCE     �   CREATE SEQUENCE public.availability_shed_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.availability_shed_id_seq;
       public       postgres    false    3            �            1259    83785    base_day_id_seq    SEQUENCE     x   CREATE SEQUENCE public.base_day_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.base_day_id_seq;
       public       postgres    false    3            �            1259    83787    breed_id_seq    SEQUENCE     u   CREATE SEQUENCE public.breed_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.breed_id_seq;
       public       postgres    false    3            �            1259    83789    broiler_detail_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.broiler_detail_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.broiler_detail_id_seq;
       public       postgres    false    3            �            1259    83791    broiler_id_seq    SEQUENCE     w   CREATE SEQUENCE public.broiler_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.broiler_id_seq;
       public       postgres    false    3            �            1259    83793    broiler_product_detail_id_seq    SEQUENCE     �   CREATE SEQUENCE public.broiler_product_detail_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.broiler_product_detail_id_seq;
       public       postgres    false    3            �            1259    83795    broiler_product_id_seq    SEQUENCE        CREATE SEQUENCE public.broiler_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.broiler_product_id_seq;
       public       postgres    false    3            �            1259    83797    broilereviction_detail_id_seq    SEQUENCE     �   CREATE SEQUENCE public.broilereviction_detail_id_seq
    START WITH 124
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.broilereviction_detail_id_seq;
       public       postgres    false    3            �            1259    83799    broilereviction_id_seq    SEQUENCE     �   CREATE SEQUENCE public.broilereviction_id_seq
    START WITH 70
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.broilereviction_id_seq;
       public       postgres    false    3            �            1259    83801    brooder_id_seq    SEQUENCE     w   CREATE SEQUENCE public.brooder_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.brooder_id_seq;
       public       postgres    false    3            �            1259    83803    brooder_machines_id_seq    SEQUENCE     �   CREATE SEQUENCE public.brooder_machines_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.brooder_machines_id_seq;
       public       postgres    false    3            �            1259    83805    calendar_day_id_seq    SEQUENCE     |   CREATE SEQUENCE public.calendar_day_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.calendar_day_id_seq;
       public       postgres    false    3            �            1259    83807    calendar_id_seq    SEQUENCE     x   CREATE SEQUENCE public.calendar_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.calendar_id_seq;
       public       postgres    false    3            �            1259    83809    center_id_seq    SEQUENCE     v   CREATE SEQUENCE public.center_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.center_id_seq;
       public       postgres    false    3            �            1259    83811    egg_planning_id_seq    SEQUENCE     |   CREATE SEQUENCE public.egg_planning_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.egg_planning_id_seq;
       public       postgres    false    3            �            1259    83813    egg_required_id_seq    SEQUENCE     |   CREATE SEQUENCE public.egg_required_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.egg_required_id_seq;
       public       postgres    false    3            �            1259    83815    eggs_storage_id_seq    SEQUENCE     |   CREATE SEQUENCE public.eggs_storage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.eggs_storage_id_seq;
       public       postgres    false    3            �            1259    83817    farm_id_seq    SEQUENCE     t   CREATE SEQUENCE public.farm_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.farm_id_seq;
       public       postgres    false    3            �            1259    83819    farm_type_id_seq    SEQUENCE     y   CREATE SEQUENCE public.farm_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.farm_type_id_seq;
       public       postgres    false    3            �            1259    83821    holiday_id_seq    SEQUENCE     w   CREATE SEQUENCE public.holiday_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.holiday_id_seq;
       public       postgres    false    3            �            1259    83823    housing_way_detail_id_seq    SEQUENCE     �   CREATE SEQUENCE public.housing_way_detail_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.housing_way_detail_id_seq;
       public       postgres    false    3            �            1259    83825    housing_way_id_seq    SEQUENCE     {   CREATE SEQUENCE public.housing_way_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.housing_way_id_seq;
       public       postgres    false    3            �            1259    83827    incubator_id_seq    SEQUENCE     y   CREATE SEQUENCE public.incubator_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.incubator_id_seq;
       public       postgres    false    3            �            1259    83829    incubator_plant_id_seq    SEQUENCE        CREATE SEQUENCE public.incubator_plant_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.incubator_plant_id_seq;
       public       postgres    false    3            �            1259    83831    industry_id_seq    SEQUENCE     x   CREATE SEQUENCE public.industry_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.industry_id_seq;
       public       postgres    false    3            �            1259    83833    line_id_seq    SEQUENCE     t   CREATE SEQUENCE public.line_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.line_id_seq;
       public       postgres    false    3            �            1259    83835    lot_eggs_id_seq    SEQUENCE     x   CREATE SEQUENCE public.lot_eggs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.lot_eggs_id_seq;
       public       postgres    false    3            �            1259    83837    lot_fattening_id_seq    SEQUENCE     }   CREATE SEQUENCE public.lot_fattening_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.lot_fattening_id_seq;
       public       postgres    false    3            �            1259    83839 
   lot_id_seq    SEQUENCE     s   CREATE SEQUENCE public.lot_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.lot_id_seq;
       public       postgres    false    3            �            1259    83841    lot_liftbreeding_id_seq    SEQUENCE     �   CREATE SEQUENCE public.lot_liftbreeding_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.lot_liftbreeding_id_seq;
       public       postgres    false    3            �            1259    83843    mdapplication    TABLE     �   CREATE TABLE public.mdapplication (
    application_id integer DEFAULT nextval('public.application_application_id_seq'::regclass) NOT NULL,
    application_name character varying(30) NOT NULL
);
 !   DROP TABLE public.mdapplication;
       public         postgres    false    216    3            �            1259    83847    mdapplication_rol    TABLE     �   CREATE TABLE public.mdapplication_rol (
    application_id integer NOT NULL,
    rol_id integer NOT NULL,
    id integer NOT NULL
);
 %   DROP TABLE public.mdapplication_rol;
       public         postgres    false    3            �            1259    83850    mdbreed    TABLE     �   CREATE TABLE public.mdbreed (
    breed_id integer DEFAULT nextval('public.breed_id_seq'::regclass) NOT NULL,
    code character varying(20) NOT NULL,
    name character varying(45) NOT NULL
);
    DROP TABLE public.mdbreed;
       public         postgres    false    219    3            �           0    0    TABLE mdbreed    COMMENT     U   COMMENT ON TABLE public.mdbreed IS 'Tabla donde se almacenan las razas de las aves';
            public       postgres    false    249            �           0    0    COLUMN mdbreed.breed_id    COMMENT     >   COMMENT ON COLUMN public.mdbreed.breed_id IS 'Id de la raza';
            public       postgres    false    249            �           0    0    COLUMN mdbreed.code    COMMENT     >   COMMENT ON COLUMN public.mdbreed.code IS 'Codigo de la raza';
            public       postgres    false    249            �           0    0    COLUMN mdbreed.name    COMMENT     >   COMMENT ON COLUMN public.mdbreed.name IS 'Nombre de la Raza';
            public       postgres    false    249            �            1259    83854    mdbroiler_product    TABLE     �   CREATE TABLE public.mdbroiler_product (
    broiler_product_id integer DEFAULT nextval('public.broiler_product_id_seq'::regclass) NOT NULL,
    name character varying(45) NOT NULL,
    days_eviction integer,
    weight double precision
);
 %   DROP TABLE public.mdbroiler_product;
       public         postgres    false    223    3            �           0    0    TABLE mdbroiler_product    COMMENT     w   COMMENT ON TABLE public.mdbroiler_product IS 'Almacena los productos de salida de la etapa de engorda hacia desalojo';
            public       postgres    false    250            �           0    0 +   COLUMN mdbroiler_product.broiler_product_id    COMMENT     ^   COMMENT ON COLUMN public.mdbroiler_product.broiler_product_id IS 'Id de producto de engorde';
            public       postgres    false    250            �           0    0    COLUMN mdbroiler_product.name    COMMENT     T   COMMENT ON COLUMN public.mdbroiler_product.name IS 'Nombre de producto de engorde';
            public       postgres    false    250            �           0    0 &   COLUMN mdbroiler_product.days_eviction    COMMENT     y   COMMENT ON COLUMN public.mdbroiler_product.days_eviction IS 'Días necesarios para el desalojo del producto de engorde';
            public       postgres    false    250            �           0    0    COLUMN mdbroiler_product.weight    COMMENT     b   COMMENT ON COLUMN public.mdbroiler_product.weight IS 'Peso estimado del producto para su salida';
            public       postgres    false    250            �            1259    83858 
   mdfarmtype    TABLE     �   CREATE TABLE public.mdfarmtype (
    farm_type_id integer DEFAULT nextval('public.farm_type_id_seq'::regclass) NOT NULL,
    name character varying(45) NOT NULL
);
    DROP TABLE public.mdfarmtype;
       public         postgres    false    235    3            �           0    0    TABLE mdfarmtype    COMMENT     D   COMMENT ON TABLE public.mdfarmtype IS 'Define los tipos de granja';
            public       postgres    false    251            �           0    0    COLUMN mdfarmtype.farm_type_id    COMMENT     L   COMMENT ON COLUMN public.mdfarmtype.farm_type_id IS 'Id de tipo de granja';
            public       postgres    false    251            �           0    0    COLUMN mdfarmtype.name    COMMENT     O   COMMENT ON COLUMN public.mdfarmtype.name IS 'Nombre de la etapa de la granja';
            public       postgres    false    251            �            1259    83862 
   mdindustry    TABLE     �   CREATE TABLE public.mdindustry (
    industry_id integer DEFAULT nextval('public.industry_id_seq'::regclass) NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.mdindustry;
       public         postgres    false    241    3            �           0    0    TABLE mdindustry    COMMENT     L   COMMENT ON TABLE public.mdindustry IS 'Almacena los datos de la industria';
            public       postgres    false    252            �           0    0    COLUMN mdindustry.industry_id    COMMENT     I   COMMENT ON COLUMN public.mdindustry.industry_id IS 'Id de la industria';
            public       postgres    false    252            �           0    0    COLUMN mdindustry.name    COMMENT     F   COMMENT ON COLUMN public.mdindustry.name IS 'Nombre de la industria';
            public       postgres    false    252            �            1259    83866    measure_id_seq    SEQUENCE     w   CREATE SEQUENCE public.measure_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.measure_id_seq;
       public       postgres    false    3            �            1259    83868 	   mdmeasure    TABLE       CREATE TABLE public.mdmeasure (
    measure_id integer DEFAULT nextval('public.measure_id_seq'::regclass) NOT NULL,
    name character varying(10) NOT NULL,
    abbreviation character varying(5) NOT NULL,
    originvalue double precision,
    valuekg double precision
);
    DROP TABLE public.mdmeasure;
       public         postgres    false    253    3            �           0    0    TABLE mdmeasure    COMMENT     _   COMMENT ON TABLE public.mdmeasure IS 'Almacena las medidas a utilizar en las planificaciones';
            public       postgres    false    254            �           0    0    COLUMN mdmeasure.measure_id    COMMENT     D   COMMENT ON COLUMN public.mdmeasure.measure_id IS 'Id de la medida';
            public       postgres    false    254            �           0    0    COLUMN mdmeasure.name    COMMENT     B   COMMENT ON COLUMN public.mdmeasure.name IS 'Nombre de la medida';
            public       postgres    false    254            �           0    0    COLUMN mdmeasure.abbreviation    COMMENT     O   COMMENT ON COLUMN public.mdmeasure.abbreviation IS 'Abreviatura de la medida';
            public       postgres    false    254            �           0    0    COLUMN mdmeasure.originvalue    COMMENT     Q   COMMENT ON COLUMN public.mdmeasure.originvalue IS 'Valor original de la medida';
            public       postgres    false    254            �           0    0    COLUMN mdmeasure.valuekg    COMMENT     R   COMMENT ON COLUMN public.mdmeasure.valuekg IS 'Valor en Kilogramos de la medida';
            public       postgres    false    254            �            1259    83872    parameter_id_seq    SEQUENCE     y   CREATE SEQUENCE public.parameter_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.parameter_id_seq;
       public       postgres    false    3                        1259    83874    mdparameter    TABLE     '  CREATE TABLE public.mdparameter (
    parameter_id integer DEFAULT nextval('public.parameter_id_seq'::regclass) NOT NULL,
    description character varying(250) NOT NULL,
    type character varying(10),
    measure_id integer,
    process_id integer,
    name character varying(250) NOT NULL
);
    DROP TABLE public.mdparameter;
       public         postgres    false    255    3            �           0    0    TABLE mdparameter    COMMENT     �   COMMENT ON TABLE public.mdparameter IS 'Almacena la definición de los parámetros a utilizar en la planificación regresiva junto a sus respectivas características';
            public       postgres    false    256            �           0    0    COLUMN mdparameter.parameter_id    COMMENT     N   COMMENT ON COLUMN public.mdparameter.parameter_id IS 'Id de los parámetros';
            public       postgres    false    256            �           0    0    COLUMN mdparameter.description    COMMENT     W   COMMENT ON COLUMN public.mdparameter.description IS 'Descripción de los parámetros';
            public       postgres    false    256            �           0    0    COLUMN mdparameter.type    COMMENT     D   COMMENT ON COLUMN public.mdparameter.type IS 'Tipo de parámetros';
            public       postgres    false    256            �           0    0    COLUMN mdparameter.measure_id    COMMENT     F   COMMENT ON COLUMN public.mdparameter.measure_id IS 'Id de la medida';
            public       postgres    false    256            �           0    0    COLUMN mdparameter.process_id    COMMENT     E   COMMENT ON COLUMN public.mdparameter.process_id IS 'Id del proceso';
            public       postgres    false    256            �           0    0    COLUMN mdparameter.name    COMMENT     F   COMMENT ON COLUMN public.mdparameter.name IS 'Nombre del parámetro';
            public       postgres    false    256                       1259    83881    process_id_seq    SEQUENCE     w   CREATE SEQUENCE public.process_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.process_id_seq;
       public       postgres    false    3                       1259    83883 	   mdprocess    TABLE     i  CREATE TABLE public.mdprocess (
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
       public         postgres    false    257    3            �           0    0    TABLE mdprocess    COMMENT     �   COMMENT ON TABLE public.mdprocess IS 'Almacena los procesos definidos para la planificación progresiva junto a sus respectivas características';
            public       postgres    false    258            �           0    0    COLUMN mdprocess.process_id    COMMENT     G   COMMENT ON COLUMN public.mdprocess.process_id IS 'Id de los procesos';
            public       postgres    false    258            �           0    0    COLUMN mdprocess.process_order    COMMENT     M   COMMENT ON COLUMN public.mdprocess.process_order IS 'Orden de los procesos';
            public       postgres    false    258            �           0    0    COLUMN mdprocess.product_id    COMMENT     D   COMMENT ON COLUMN public.mdprocess.product_id IS 'Id del producto';
            public       postgres    false    258            �           0    0    COLUMN mdprocess.stage_id    COMMENT     >   COMMENT ON COLUMN public.mdprocess.stage_id IS 'Id de etapa';
            public       postgres    false    258            �           0    0 $   COLUMN mdprocess.historical_decrease    COMMENT     Y   COMMENT ON COLUMN public.mdprocess.historical_decrease IS 'Merma historica del proceso';
            public       postgres    false    258            �           0    0 %   COLUMN mdprocess.theoretical_decrease    COMMENT     Y   COMMENT ON COLUMN public.mdprocess.theoretical_decrease IS 'Merma teórica del proceso';
            public       postgres    false    258            �           0    0 "   COLUMN mdprocess.historical_weight    COMMENT     V   COMMENT ON COLUMN public.mdprocess.historical_weight IS 'Peso historico del proceso';
            public       postgres    false    258            �           0    0 #   COLUMN mdprocess.theoretical_weight    COMMENT     V   COMMENT ON COLUMN public.mdprocess.theoretical_weight IS 'Peso teórico del proceso';
            public       postgres    false    258            �           0    0 $   COLUMN mdprocess.historical_duration    COMMENT     ^   COMMENT ON COLUMN public.mdprocess.historical_duration IS 'Duración histórica del proceso';
            public       postgres    false    258            �           0    0 %   COLUMN mdprocess.theoretical_duration    COMMENT     ]   COMMENT ON COLUMN public.mdprocess.theoretical_duration IS 'Duración teórica del proceso';
            public       postgres    false    258            �           0    0    COLUMN mdprocess.calendar_id    COMMENT     G   COMMENT ON COLUMN public.mdprocess.calendar_id IS 'Id del calendario';
            public       postgres    false    258            �           0    0    COLUMN mdprocess.visible    COMMENT     I   COMMENT ON COLUMN public.mdprocess.visible IS 'Visibilidad del proceso';
            public       postgres    false    258            �           0    0    COLUMN mdprocess.name    COMMENT     A   COMMENT ON COLUMN public.mdprocess.name IS 'Nombre del proceso';
            public       postgres    false    258            �           0    0    COLUMN mdprocess.predecessor_id    COMMENT     J   COMMENT ON COLUMN public.mdprocess.predecessor_id IS 'Id del predecesor';
            public       postgres    false    258            �           0    0    COLUMN mdprocess.capacity    COMMENT     X   COMMENT ON COLUMN public.mdprocess.capacity IS 'Capacidad semanal asociada al proceso';
            public       postgres    false    258            �           0    0    COLUMN mdprocess.breed_id    COMMENT     @   COMMENT ON COLUMN public.mdprocess.breed_id IS 'Id de la raza';
            public       postgres    false    258            �           0    0    COLUMN mdprocess.gender    COMMENT     N   COMMENT ON COLUMN public.mdprocess.gender IS 'Genero del producto de salida';
            public       postgres    false    258            �           0    0    COLUMN mdprocess.fattening_goal    COMMENT     H   COMMENT ON COLUMN public.mdprocess.fattening_goal IS 'Meta de engorde';
            public       postgres    false    258            �           0    0    COLUMN mdprocess.type_posture    COMMENT     s   COMMENT ON COLUMN public.mdprocess.type_posture IS 'Define el tipo de postura de acuerdo a la edad de la gallina';
            public       postgres    false    258            �           0    0 !   COLUMN mdprocess.process_class_id    COMMENT     R   COMMENT ON COLUMN public.mdprocess.process_class_id IS 'Id del proceso de clase';
            public       postgres    false    258            �           0    0 "   COLUMN mdprocess.biological_active    COMMENT     h   COMMENT ON COLUMN public.mdprocess.biological_active IS 'Define si el proceso es un activo biológico';
            public       postgres    false    258                       1259    83887    process_class_id_seq    SEQUENCE     }   CREATE SEQUENCE public.process_class_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.process_class_id_seq;
       public       postgres    false    3                       1259    83889    mdprocessclass    TABLE     �   CREATE TABLE public.mdprocessclass (
    process_class_id integer DEFAULT nextval('public.process_class_id_seq'::regclass) NOT NULL,
    name character varying(45) NOT NULL,
    industry_id integer
);
 "   DROP TABLE public.mdprocessclass;
       public         postgres    false    259    3            �           0    0 &   COLUMN mdprocessclass.process_class_id    COMMENT     W   COMMENT ON COLUMN public.mdprocessclass.process_class_id IS 'Id del proceso de clase';
            public       postgres    false    260            �           0    0    COLUMN mdprocessclass.name    COMMENT     F   COMMENT ON COLUMN public.mdprocessclass.name IS 'Nombre del proceso';
            public       postgres    false    260            �           0    0 !   COLUMN mdprocessclass.industry_id    COMMENT     M   COMMENT ON COLUMN public.mdprocessclass.industry_id IS 'Id de la industria';
            public       postgres    false    260                       1259    83893    product_id_seq    SEQUENCE     w   CREATE SEQUENCE public.product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.product_id_seq;
       public       postgres    false    3                       1259    83895 	   mdproduct    TABLE     �   CREATE TABLE public.mdproduct (
    product_id integer DEFAULT nextval('public.product_id_seq'::regclass) NOT NULL,
    code character varying(20) NOT NULL,
    name character varying(45) NOT NULL
);
    DROP TABLE public.mdproduct;
       public         postgres    false    261    3            �           0    0    TABLE mdproduct    COMMENT     Z   COMMENT ON TABLE public.mdproduct IS 'Almacena los productos utilizados en los procesos';
            public       postgres    false    262            �           0    0    COLUMN mdproduct.product_id    COMMENT     D   COMMENT ON COLUMN public.mdproduct.product_id IS 'Id del producto';
            public       postgres    false    262            �           0    0    COLUMN mdproduct.code    COMMENT     B   COMMENT ON COLUMN public.mdproduct.code IS 'Codigo del producto';
            public       postgres    false    262            �           0    0    COLUMN mdproduct.name    COMMENT     B   COMMENT ON COLUMN public.mdproduct.name IS 'Nombre del producto';
            public       postgres    false    262                       1259    83899    mdrol    TABLE     �   CREATE TABLE public.mdrol (
    rol_id integer NOT NULL,
    rol_name character varying(80) NOT NULL,
    admin_user_creator character varying(80) NOT NULL,
    creation_date timestamp with time zone
);
    DROP TABLE public.mdrol;
       public         postgres    false    3                       1259    83902    scenario_id_seq    SEQUENCE     x   CREATE SEQUENCE public.scenario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.scenario_id_seq;
       public       postgres    false    3            	           1259    83904 
   mdscenario    TABLE     B  CREATE TABLE public.mdscenario (
    scenario_id integer DEFAULT nextval('public.scenario_id_seq'::regclass) NOT NULL,
    description character varying(250) NOT NULL,
    date_start timestamp with time zone,
    date_end timestamp with time zone,
    name character varying(250) NOT NULL,
    status integer DEFAULT 0
);
    DROP TABLE public.mdscenario;
       public         postgres    false    264    3            �           0    0    TABLE mdscenario    COMMENT     [   COMMENT ON TABLE public.mdscenario IS 'Almacena información de los distintos escenarios';
            public       postgres    false    265            �           0    0    COLUMN mdscenario.scenario_id    COMMENT     G   COMMENT ON COLUMN public.mdscenario.scenario_id IS 'Id del escenario';
            public       postgres    false    265            �           0    0    COLUMN mdscenario.description    COMMENT     P   COMMENT ON COLUMN public.mdscenario.description IS 'Descripcion del escenario';
            public       postgres    false    265            �           0    0    COLUMN mdscenario.date_start    COMMENT     S   COMMENT ON COLUMN public.mdscenario.date_start IS 'Fecha de inicio del escenario';
            public       postgres    false    265            �           0    0    COLUMN mdscenario.date_end    COMMENT     N   COMMENT ON COLUMN public.mdscenario.date_end IS 'Fecha de fin del escenario';
            public       postgres    false    265            �           0    0    COLUMN mdscenario.name    COMMENT     D   COMMENT ON COLUMN public.mdscenario.name IS 'Nombre del escenario';
            public       postgres    false    265            �           0    0    COLUMN mdscenario.status    COMMENT     F   COMMENT ON COLUMN public.mdscenario.status IS 'Estado del escenario';
            public       postgres    false    265            
           1259    83912    status_shed_id_seq    SEQUENCE     {   CREATE SEQUENCE public.status_shed_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.status_shed_id_seq;
       public       postgres    false    3                       1259    83914    mdshedstatus    TABLE     �   CREATE TABLE public.mdshedstatus (
    shed_status_id integer DEFAULT nextval('public.status_shed_id_seq'::regclass) NOT NULL,
    name character varying(50) NOT NULL,
    description character varying(250) NOT NULL
);
     DROP TABLE public.mdshedstatus;
       public         postgres    false    266    3            �           0    0    TABLE mdshedstatus    COMMENT     b   COMMENT ON TABLE public.mdshedstatus IS 'Almaceno los estatus de disponibilidad de los galpones';
            public       postgres    false    267            �           0    0 "   COLUMN mdshedstatus.shed_status_id    COMMENT     T   COMMENT ON COLUMN public.mdshedstatus.shed_status_id IS 'Id del estado del galpon';
            public       postgres    false    267            �           0    0    COLUMN mdshedstatus.name    COMMENT     a   COMMENT ON COLUMN public.mdshedstatus.name IS 'Nombre del estado en que se encuentra el galpon';
            public       postgres    false    267            �           0    0    COLUMN mdshedstatus.description    COMMENT     [   COMMENT ON COLUMN public.mdshedstatus.description IS 'Descripcion del estado del galpon
';
            public       postgres    false    267                       1259    83918    stage_id_seq    SEQUENCE     u   CREATE SEQUENCE public.stage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.stage_id_seq;
       public       postgres    false    3                       1259    83920    mdstage    TABLE     �   CREATE TABLE public.mdstage (
    stage_id integer DEFAULT nextval('public.stage_id_seq'::regclass) NOT NULL,
    order_ integer,
    name character varying(250) NOT NULL
);
    DROP TABLE public.mdstage;
       public         postgres    false    268    3            �           0    0    TABLE mdstage    COMMENT     d   COMMENT ON TABLE public.mdstage IS 'Almacena las etapas a utilizar en el proceso de planificacion';
            public       postgres    false    269            �           0    0    COLUMN mdstage.stage_id    COMMENT     ?   COMMENT ON COLUMN public.mdstage.stage_id IS 'Id de la etapa';
            public       postgres    false    269            �           0    0    COLUMN mdstage.order_    COMMENT     U   COMMENT ON COLUMN public.mdstage.order_ IS 'Orden en el que se muestras las etapas';
            public       postgres    false    269            �           0    0    COLUMN mdstage.name    COMMENT     ?   COMMENT ON COLUMN public.mdstage.name IS 'Nombre de la etapa';
            public       postgres    false    269                       1259    83924    user_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_user_id_seq
    START WITH 40
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 '   DROP SEQUENCE public.user_user_id_seq;
       public       postgres    false    3                       1259    83926    mduser    TABLE     �  CREATE TABLE public.mduser (
    username character varying(80) NOT NULL,
    password character varying(80) NOT NULL,
    type_user character varying(80) NOT NULL,
    name character varying(80) NOT NULL,
    lastname character varying(80) NOT NULL,
    active boolean NOT NULL,
    admi_user_creator character varying(80) NOT NULL,
    rol_id integer NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    user_id integer DEFAULT nextval('public.user_user_id_seq'::regclass) NOT NULL
);
    DROP TABLE public.mduser;
       public         postgres    false    270    3                       1259    83930    oscenter    TABLE       CREATE TABLE public.oscenter (
    center_id integer DEFAULT nextval('public.center_id_seq'::regclass) NOT NULL,
    partnership_id integer NOT NULL,
    farm_id integer NOT NULL,
    name character varying(45) NOT NULL,
    client_id integer,
    code character varying(20) NOT NULL
);
    DROP TABLE public.oscenter;
       public         postgres    false    230    3            �           0    0    TABLE oscenter    COMMENT     S   COMMENT ON TABLE public.oscenter IS 'Almacena los datos referentes a los nucleos';
            public       postgres    false    272            �           0    0    COLUMN oscenter.center_id    COMMENT     @   COMMENT ON COLUMN public.oscenter.center_id IS 'Id del nucleo';
            public       postgres    false    272            �           0    0    COLUMN oscenter.partnership_id    COMMENT     H   COMMENT ON COLUMN public.oscenter.partnership_id IS 'Id de la empresa';
            public       postgres    false    272            �           0    0    COLUMN oscenter.farm_id    COMMENT     @   COMMENT ON COLUMN public.oscenter.farm_id IS 'Id de la granja';
            public       postgres    false    272            �           0    0    COLUMN oscenter.name    COMMENT     @   COMMENT ON COLUMN public.oscenter.name IS 'Nombre del nucleo
';
            public       postgres    false    272            �           0    0    COLUMN oscenter.client_id    COMMENT     A   COMMENT ON COLUMN public.oscenter.client_id IS 'Id del cliente';
            public       postgres    false    272            �           0    0    COLUMN oscenter.code    COMMENT     ?   COMMENT ON COLUMN public.oscenter.code IS 'Codigo del nucleo';
            public       postgres    false    272                       1259    83934    oscenter_oswarehouse    TABLE     �   CREATE TABLE public.oscenter_oswarehouse (
    client_id integer NOT NULL,
    partnership_id integer NOT NULL,
    farm_id integer NOT NULL,
    center_id integer NOT NULL,
    warehouse_id integer NOT NULL,
    delete_mark integer
);
 (   DROP TABLE public.oscenter_oswarehouse;
       public         postgres    false    3            �           0    0    TABLE oscenter_oswarehouse    COMMENT     p   COMMENT ON TABLE public.oscenter_oswarehouse IS 'Relación que une los núcleos con sus respectivos almacenes';
            public       postgres    false    273            �           0    0 %   COLUMN oscenter_oswarehouse.client_id    COMMENT     M   COMMENT ON COLUMN public.oscenter_oswarehouse.client_id IS 'Id del cliente';
            public       postgres    false    273            �           0    0 *   COLUMN oscenter_oswarehouse.partnership_id    COMMENT     T   COMMENT ON COLUMN public.oscenter_oswarehouse.partnership_id IS 'Id de la empresa';
            public       postgres    false    273            �           0    0 #   COLUMN oscenter_oswarehouse.farm_id    COMMENT     L   COMMENT ON COLUMN public.oscenter_oswarehouse.farm_id IS 'Id de la granja';
            public       postgres    false    273            �           0    0 %   COLUMN oscenter_oswarehouse.center_id    COMMENT     L   COMMENT ON COLUMN public.oscenter_oswarehouse.center_id IS 'Id del nucleo';
            public       postgres    false    273            �           0    0 (   COLUMN oscenter_oswarehouse.warehouse_id    COMMENT     P   COMMENT ON COLUMN public.oscenter_oswarehouse.warehouse_id IS 'Id del almacen';
            public       postgres    false    273            �           0    0 '   COLUMN oscenter_oswarehouse.delete_mark    COMMENT     Q   COMMENT ON COLUMN public.oscenter_oswarehouse.delete_mark IS 'Marca de borrado';
            public       postgres    false    273                       1259    83937    osfarm    TABLE     f  CREATE TABLE public.osfarm (
    farm_id integer DEFAULT nextval('public.farm_id_seq'::regclass) NOT NULL,
    partnership_id integer,
    code character varying(20) NOT NULL,
    name character varying(45) NOT NULL,
    state_id integer,
    city_id integer,
    property character varying(45),
    farm_type_id integer NOT NULL,
    icaregistry integer
);
    DROP TABLE public.osfarm;
       public         postgres    false    234    3            �           0    0    TABLE osfarm    COMMENT     p   COMMENT ON TABLE public.osfarm IS 'Almacena la información de la granja con sus respectivas características';
            public       postgres    false    274            �           0    0    COLUMN osfarm.farm_id    COMMENT     >   COMMENT ON COLUMN public.osfarm.farm_id IS 'Id de la granja';
            public       postgres    false    274            �           0    0    COLUMN osfarm.partnership_id    COMMENT     F   COMMENT ON COLUMN public.osfarm.partnership_id IS 'Id de la empresa';
            public       postgres    false    274            �           0    0    COLUMN osfarm.code    COMMENT     ?   COMMENT ON COLUMN public.osfarm.code IS 'Codigo de la granja';
            public       postgres    false    274            �           0    0    COLUMN osfarm.name    COMMENT     ?   COMMENT ON COLUMN public.osfarm.name IS 'Nombre de la granja';
            public       postgres    false    274            �           0    0    COLUMN osfarm.state_id    COMMENT     [   COMMENT ON COLUMN public.osfarm.state_id IS 'Id del estado en que se encuentra la granja';
            public       postgres    false    274            �           0    0    COLUMN osfarm.city_id    COMMENT     >   COMMENT ON COLUMN public.osfarm.city_id IS 'Id de la ciudad';
            public       postgres    false    274                        0    0    COLUMN osfarm.property    COMMENT     9   COMMENT ON COLUMN public.osfarm.property IS 'Propiedad';
            public       postgres    false    274                       0    0    COLUMN osfarm.farm_type_id    COMMENT     I   COMMENT ON COLUMN public.osfarm.farm_type_id IS 'Id del tipo de granja';
            public       postgres    false    274                       1259    83941    osincubator    TABLE     �  CREATE TABLE public.osincubator (
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
       public         postgres    false    239    3                       0    0    TABLE osincubator    COMMENT     y   COMMENT ON TABLE public.osincubator IS 'Almacena las máquinas de incubación pertenecientes a cada una de las plantas';
            public       postgres    false    275                       0    0    COLUMN osincubator.incubator_id    COMMENT     L   COMMENT ON COLUMN public.osincubator.incubator_id IS 'Id de la incubadora';
            public       postgres    false    275                       0    0 %   COLUMN osincubator.incubator_plant_id    COMMENT     Y   COMMENT ON COLUMN public.osincubator.incubator_plant_id IS 'Id de la planta incubadora';
            public       postgres    false    275                       0    0    COLUMN osincubator.name    COMMENT     H   COMMENT ON COLUMN public.osincubator.name IS 'Nombre de la incubadora';
            public       postgres    false    275                       0    0    COLUMN osincubator.code    COMMENT     H   COMMENT ON COLUMN public.osincubator.code IS 'Codigo de la incubadora';
            public       postgres    false    275                       0    0    COLUMN osincubator.description    COMMENT     T   COMMENT ON COLUMN public.osincubator.description IS 'Descripcion de la incubadora';
            public       postgres    false    275                       0    0    COLUMN osincubator.capacity    COMMENT     O   COMMENT ON COLUMN public.osincubator.capacity IS 'Capacidad de la incubadora';
            public       postgres    false    275            	           0    0    COLUMN osincubator.sunday    COMMENT     ]   COMMENT ON COLUMN public.osincubator.sunday IS 'Marca los dias de trabajo de la incubadora';
            public       postgres    false    275            
           0    0    COLUMN osincubator.monday    COMMENT     ^   COMMENT ON COLUMN public.osincubator.monday IS 'Marca los días de trabajo de la incubadora';
            public       postgres    false    275                       0    0    COLUMN osincubator.tuesday    COMMENT     _   COMMENT ON COLUMN public.osincubator.tuesday IS 'Marca los días de trabajo de la incubadora';
            public       postgres    false    275                       0    0    COLUMN osincubator.wednesday    COMMENT     a   COMMENT ON COLUMN public.osincubator.wednesday IS 'Marca los días de trabajo de la incubadora';
            public       postgres    false    275                       0    0    COLUMN osincubator.thursday    COMMENT     `   COMMENT ON COLUMN public.osincubator.thursday IS 'Marca los días de trabajo de la incubadora';
            public       postgres    false    275                       0    0    COLUMN osincubator.friday    COMMENT     ^   COMMENT ON COLUMN public.osincubator.friday IS 'Marca los días de trabajo de la incubadora';
            public       postgres    false    275                       0    0    COLUMN osincubator.saturday    COMMENT     `   COMMENT ON COLUMN public.osincubator.saturday IS 'Marca los días de trabajo de la incubadora';
            public       postgres    false    275                       1259    83945    osincubatorplant    TABLE     U  CREATE TABLE public.osincubatorplant (
    incubator_plant_id integer DEFAULT nextval('public.incubator_plant_id_seq'::regclass) NOT NULL,
    name character varying(45) NOT NULL,
    code character varying(20) NOT NULL,
    description character varying(250),
    partnership_id integer,
    max_storage integer,
    min_storage integer
);
 $   DROP TABLE public.osincubatorplant;
       public         postgres    false    240    3                       0    0    TABLE osincubatorplant    COMMENT     }   COMMENT ON TABLE public.osincubatorplant IS 'Almacena la información de la planta incubadora perteneciente a cada empresa';
            public       postgres    false    276                       0    0 *   COLUMN osincubatorplant.incubator_plant_id    COMMENT     ^   COMMENT ON COLUMN public.osincubatorplant.incubator_plant_id IS 'Id de la planta incubadora';
            public       postgres    false    276                       0    0    COLUMN osincubatorplant.name    COMMENT     T   COMMENT ON COLUMN public.osincubatorplant.name IS 'Nombre de la planta incubadora';
            public       postgres    false    276                       0    0    COLUMN osincubatorplant.code    COMMENT     T   COMMENT ON COLUMN public.osincubatorplant.code IS 'Codigo de la planta incubadora';
            public       postgres    false    276                       0    0 #   COLUMN osincubatorplant.description    COMMENT     a   COMMENT ON COLUMN public.osincubatorplant.description IS 'Descripción de la planta incubadora';
            public       postgres    false    276                       0    0 &   COLUMN osincubatorplant.partnership_id    COMMENT     P   COMMENT ON COLUMN public.osincubatorplant.partnership_id IS 'Id de la empresa';
            public       postgres    false    276                       0    0 #   COLUMN osincubatorplant.max_storage    COMMENT     ]   COMMENT ON COLUMN public.osincubatorplant.max_storage IS 'Numero máximo de almacenamiento';
            public       postgres    false    276                       0    0 #   COLUMN osincubatorplant.min_storage    COMMENT     \   COMMENT ON COLUMN public.osincubatorplant.min_storage IS 'Numero minimo de almacenamiento';
            public       postgres    false    276                       1259    83949    partnership_id_seq    SEQUENCE     {   CREATE SEQUENCE public.partnership_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.partnership_id_seq;
       public       postgres    false    3                       1259    83951    ospartnership    TABLE     �  CREATE TABLE public.ospartnership (
    partnership_id integer DEFAULT nextval('public.partnership_id_seq'::regclass) NOT NULL,
    name character varying(45) NOT NULL,
    address character varying(250) NOT NULL,
    description character varying(250) NOT NULL,
    country_id integer,
    state_id integer,
    city_id integer,
    zip_code character varying(45),
    code character varying(20) NOT NULL
);
 !   DROP TABLE public.ospartnership;
       public         postgres    false    277    3                       0    0    TABLE ospartnership    COMMENT     j   COMMENT ON TABLE public.ospartnership IS 'Almacena la información referente a las empresas registradas';
            public       postgres    false    278                       0    0 #   COLUMN ospartnership.partnership_id    COMMENT     M   COMMENT ON COLUMN public.ospartnership.partnership_id IS 'Id de la empresa';
            public       postgres    false    278                       0    0    COLUMN ospartnership.name    COMMENT     G   COMMENT ON COLUMN public.ospartnership.name IS 'Nombre de la empresa';
            public       postgres    false    278                       0    0    COLUMN ospartnership.address    COMMENT     M   COMMENT ON COLUMN public.ospartnership.address IS 'Direccion de la empresa';
            public       postgres    false    278                       0    0     COLUMN ospartnership.description    COMMENT     T   COMMENT ON COLUMN public.ospartnership.description IS 'Descripción de la empresa';
            public       postgres    false    278                       0    0    COLUMN ospartnership.country_id    COMMENT     D   COMMENT ON COLUMN public.ospartnership.country_id IS 'Id del pais';
            public       postgres    false    278                       0    0    COLUMN ospartnership.state_id    COMMENT     T   COMMENT ON COLUMN public.ospartnership.state_id IS 'Id de la estado de la empresa';
            public       postgres    false    278                       0    0    COLUMN ospartnership.city_id    COMMENT     E   COMMENT ON COLUMN public.ospartnership.city_id IS 'Id de la ciudad';
            public       postgres    false    278                        0    0    COLUMN ospartnership.zip_code    COMMENT     R   COMMENT ON COLUMN public.ospartnership.zip_code IS 'Codigo postal de la empresa';
            public       postgres    false    278            !           0    0    COLUMN ospartnership.code    COMMENT     G   COMMENT ON COLUMN public.ospartnership.code IS 'Codigo de la empresa';
            public       postgres    false    278                       1259    83958    shed_id_seq    SEQUENCE     t   CREATE SEQUENCE public.shed_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.shed_id_seq;
       public       postgres    false    3                       1259    83960    osshed    TABLE     �  CREATE TABLE public.osshed (
    shed_id integer DEFAULT nextval('public.shed_id_seq'::regclass) NOT NULL,
    partnership_id integer NOT NULL,
    farm_id integer NOT NULL,
    center_id integer NOT NULL,
    client_id integer,
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
       public         postgres    false    279    3            "           0    0    TABLE osshed    COMMENT     d   COMMENT ON TABLE public.osshed IS 'Almacena la informacion de los galpones asociados a la empresa';
            public       postgres    false    280            #           0    0    COLUMN osshed.shed_id    COMMENT     <   COMMENT ON COLUMN public.osshed.shed_id IS 'Id del galpon';
            public       postgres    false    280            $           0    0    COLUMN osshed.partnership_id    COMMENT     F   COMMENT ON COLUMN public.osshed.partnership_id IS 'Id de la empresa';
            public       postgres    false    280            %           0    0    COLUMN osshed.farm_id    COMMENT     >   COMMENT ON COLUMN public.osshed.farm_id IS 'Id de la granja';
            public       postgres    false    280            &           0    0    COLUMN osshed.center_id    COMMENT     >   COMMENT ON COLUMN public.osshed.center_id IS 'Id del nucleo';
            public       postgres    false    280            '           0    0    COLUMN osshed.client_id    COMMENT     ?   COMMENT ON COLUMN public.osshed.client_id IS 'Id del cliente';
            public       postgres    false    280            (           0    0    COLUMN osshed.code    COMMENT     =   COMMENT ON COLUMN public.osshed.code IS 'Codigo del galpon';
            public       postgres    false    280            )           0    0    COLUMN osshed.statusshed_id    COMMENT     _   COMMENT ON COLUMN public.osshed.statusshed_id IS 'Identificador del estado actual del galpon';
            public       postgres    false    280            *           0    0    COLUMN osshed.type_id    COMMENT     D   COMMENT ON COLUMN public.osshed.type_id IS 'Id del tipo de galpon';
            public       postgres    false    280            +           0    0    COLUMN osshed.building_date    COMMENT     c   COMMENT ON COLUMN public.osshed.building_date IS 'Almacena la fecha de construccion del edificio';
            public       postgres    false    280            ,           0    0    COLUMN osshed.stall_width    COMMENT     M   COMMENT ON COLUMN public.osshed.stall_width IS 'Indica el ancho del galpon';
            public       postgres    false    280            -           0    0    COLUMN osshed.stall_height    COMMENT     M   COMMENT ON COLUMN public.osshed.stall_height IS 'Indica el alto del galpon';
            public       postgres    false    280            .           0    0    COLUMN osshed.capacity_min    COMMENT     D   COMMENT ON COLUMN public.osshed.capacity_min IS 'Capacidad minima';
            public       postgres    false    280            /           0    0    COLUMN osshed.capacity_max    COMMENT     F   COMMENT ON COLUMN public.osshed.capacity_max IS 'Capacidad máxima ';
            public       postgres    false    280            0           0    0    COLUMN osshed.environment_id    COMMENT     E   COMMENT ON COLUMN public.osshed.environment_id IS 'Id del ambiente';
            public       postgres    false    280            1           0    0    COLUMN osshed.rotation_days    COMMENT     H   COMMENT ON COLUMN public.osshed.rotation_days IS 'Días de rotación
';
            public       postgres    false    280            2           0    0    COLUMN osshed.nests_quantity    COMMENT     I   COMMENT ON COLUMN public.osshed.nests_quantity IS 'Cantidad de nidales';
            public       postgres    false    280            3           0    0    COLUMN osshed.cages_quantity    COMMENT     H   COMMENT ON COLUMN public.osshed.cages_quantity IS 'Cantidad de jaulas';
            public       postgres    false    280            4           0    0    COLUMN osshed.birds_quantity    COMMENT     F   COMMENT ON COLUMN public.osshed.birds_quantity IS 'Cantidad de aves';
            public       postgres    false    280            5           0    0 "   COLUMN osshed.capacity_theoretical    COMMENT     O   COMMENT ON COLUMN public.osshed.capacity_theoretical IS '	Capacidad teórica';
            public       postgres    false    280                       1259    83969    silo_id_seq    SEQUENCE     t   CREATE SEQUENCE public.silo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.silo_id_seq;
       public       postgres    false    3                       1259    83971    ossilo    TABLE     �  CREATE TABLE public.ossilo (
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
       public         postgres    false    281    3            6           0    0    TABLE ossilo    COMMENT     E   COMMENT ON TABLE public.ossilo IS 'Almacena los datos de los silos';
            public       postgres    false    282            7           0    0    COLUMN ossilo.silo_id    COMMENT     :   COMMENT ON COLUMN public.ossilo.silo_id IS 'Id del silo';
            public       postgres    false    282            8           0    0    COLUMN ossilo.client_id    COMMENT     ?   COMMENT ON COLUMN public.ossilo.client_id IS 'Id del cliente';
            public       postgres    false    282            9           0    0    COLUMN ossilo.partnership_id    COMMENT     F   COMMENT ON COLUMN public.ossilo.partnership_id IS 'Id de la empresa';
            public       postgres    false    282            :           0    0    COLUMN ossilo.farm_id    COMMENT     >   COMMENT ON COLUMN public.ossilo.farm_id IS 'Id de la granja';
            public       postgres    false    282            ;           0    0    COLUMN ossilo.center_id    COMMENT     >   COMMENT ON COLUMN public.ossilo.center_id IS 'Id del nucleo';
            public       postgres    false    282            <           0    0    COLUMN ossilo.name    COMMENT     ;   COMMENT ON COLUMN public.ossilo.name IS 'Nombre del silo';
            public       postgres    false    282            =           0    0    COLUMN ossilo.rings_height    COMMENT     E   COMMENT ON COLUMN public.ossilo.rings_height IS 'Numero de anillos';
            public       postgres    false    282            >           0    0    COLUMN ossilo.rings_height_id    COMMENT     R   COMMENT ON COLUMN public.ossilo.rings_height_id IS 'Unidad de medida del anillo';
            public       postgres    false    282            ?           0    0    COLUMN ossilo.height    COMMENT     =   COMMENT ON COLUMN public.ossilo.height IS 'Altura del silo';
            public       postgres    false    282            @           0    0    COLUMN ossilo.height_unit_id    COMMENT     R   COMMENT ON COLUMN public.ossilo.height_unit_id IS 'Unidad de media de la altura';
            public       postgres    false    282            A           0    0    COLUMN ossilo.diameter    COMMENT     A   COMMENT ON COLUMN public.ossilo.diameter IS 'Diametro del silo';
            public       postgres    false    282            B           0    0    COLUMN ossilo.diameter_unit_id    COMMENT     T   COMMENT ON COLUMN public.ossilo.diameter_unit_id IS 'Unidad de media del diametro';
            public       postgres    false    282            C           0    0 "   COLUMN ossilo.total_rings_quantity    COMMENT     U   COMMENT ON COLUMN public.ossilo.total_rings_quantity IS 'Total de anillos del silo';
            public       postgres    false    282            D           0    0 !   COLUMN ossilo.measuring_mechanism    COMMENT     Y   COMMENT ON COLUMN public.ossilo.measuring_mechanism IS 'Mecanismo de medidad del silo
';
            public       postgres    false    282            E           0    0    COLUMN ossilo.cone_degrees    COMMENT     C   COMMENT ON COLUMN public.ossilo.cone_degrees IS 'Grados del cono';
            public       postgres    false    282            F           0    0    COLUMN ossilo.total_capacity_1    COMMENT     L   COMMENT ON COLUMN public.ossilo.total_capacity_1 IS 'Total de capacidad 1';
            public       postgres    false    282            G           0    0    COLUMN ossilo.total_capacity_2    COMMENT     L   COMMENT ON COLUMN public.ossilo.total_capacity_2 IS 'Total de capacidad 2';
            public       postgres    false    282            H           0    0     COLUMN ossilo.capacity_unit_id_1    COMMENT     X   COMMENT ON COLUMN public.ossilo.capacity_unit_id_1 IS 'Id de Capacidad de la unidad 1';
            public       postgres    false    282            I           0    0     COLUMN ossilo.capacity_unit_id_2    COMMENT     X   COMMENT ON COLUMN public.ossilo.capacity_unit_id_2 IS 'Id de Capacidad de la unidad 2';
            public       postgres    false    282            J           0    0    COLUMN ossilo.central    COMMENT     6   COMMENT ON COLUMN public.ossilo.central IS 'Central';
            public       postgres    false    282                       1259    83975    ossilo_osshed    TABLE     �   CREATE TABLE public.ossilo_osshed (
    silo_id integer NOT NULL,
    shed_id integer NOT NULL,
    center_id integer NOT NULL,
    farm_id integer NOT NULL,
    partnership_id integer NOT NULL,
    client_id integer NOT NULL,
    deleted_mark integer
);
 !   DROP TABLE public.ossilo_osshed;
       public         postgres    false    3            K           0    0    TABLE ossilo_osshed    COMMENT     R   COMMENT ON TABLE public.ossilo_osshed IS 'Tabla union de las tablas silo y shed';
            public       postgres    false    283            L           0    0    COLUMN ossilo_osshed.silo_id    COMMENT     A   COMMENT ON COLUMN public.ossilo_osshed.silo_id IS 'Id del silo';
            public       postgres    false    283            M           0    0    COLUMN ossilo_osshed.shed_id    COMMENT     C   COMMENT ON COLUMN public.ossilo_osshed.shed_id IS 'Id del galpon';
            public       postgres    false    283            N           0    0    COLUMN ossilo_osshed.center_id    COMMENT     E   COMMENT ON COLUMN public.ossilo_osshed.center_id IS 'Id del nucleo';
            public       postgres    false    283            O           0    0    COLUMN ossilo_osshed.farm_id    COMMENT     E   COMMENT ON COLUMN public.ossilo_osshed.farm_id IS 'Id de la granja';
            public       postgres    false    283            P           0    0 #   COLUMN ossilo_osshed.partnership_id    COMMENT     M   COMMENT ON COLUMN public.ossilo_osshed.partnership_id IS 'Id de la empresa';
            public       postgres    false    283            Q           0    0    COLUMN ossilo_osshed.client_id    COMMENT     F   COMMENT ON COLUMN public.ossilo_osshed.client_id IS 'Id del cliente';
            public       postgres    false    283            R           0    0 !   COLUMN ossilo_osshed.deleted_mark    COMMENT     K   COMMENT ON COLUMN public.ossilo_osshed.deleted_mark IS 'Marca de borrado';
            public       postgres    false    283                       1259    83978    slaughterhouse_id_seq    SEQUENCE        CREATE SEQUENCE public.slaughterhouse_id_seq
    START WITH 33
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.slaughterhouse_id_seq;
       public       postgres    false    3                       1259    83980    osslaughterhouse    TABLE     �  CREATE TABLE public.osslaughterhouse (
    slaughterhouse_id integer DEFAULT nextval('public.slaughterhouse_id_seq'::regclass) NOT NULL,
    name character varying(45) NOT NULL,
    address character varying(250) NOT NULL,
    description character varying(250) NOT NULL,
    country_id integer,
    state_id integer,
    city_id integer,
    zip_code character varying(45),
    code character varying(20) NOT NULL,
    capacity double precision
);
 $   DROP TABLE public.osslaughterhouse;
       public         postgres    false    284    3                       1259    83987    warehouse_id_seq    SEQUENCE     y   CREATE SEQUENCE public.warehouse_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.warehouse_id_seq;
       public       postgres    false    3                       1259    83989    oswarehouse    TABLE     (  CREATE TABLE public.oswarehouse (
    warehouse_id integer DEFAULT nextval('public.warehouse_id_seq'::regclass) NOT NULL,
    partnership_id integer NOT NULL,
    farm_id integer NOT NULL,
    name character varying(45) NOT NULL,
    client_id integer,
    code character varying(20) NOT NULL
);
    DROP TABLE public.oswarehouse;
       public         postgres    false    286    3            S           0    0    TABLE oswarehouse    COMMENT     \   COMMENT ON TABLE public.oswarehouse IS 'Almacena la informacion referente a los almacenes';
            public       postgres    false    287            T           0    0    COLUMN oswarehouse.warehouse_id    COMMENT     G   COMMENT ON COLUMN public.oswarehouse.warehouse_id IS 'Id del almacen';
            public       postgres    false    287            U           0    0 !   COLUMN oswarehouse.partnership_id    COMMENT     ^   COMMENT ON COLUMN public.oswarehouse.partnership_id IS 'Id de la empresa dueña del almacen';
            public       postgres    false    287            V           0    0    COLUMN oswarehouse.farm_id    COMMENT     C   COMMENT ON COLUMN public.oswarehouse.farm_id IS 'Id de la granja';
            public       postgres    false    287            W           0    0    COLUMN oswarehouse.name    COMMENT     C   COMMENT ON COLUMN public.oswarehouse.name IS 'Nombre del almacen';
            public       postgres    false    287            X           0    0    COLUMN oswarehouse.client_id    COMMENT     W   COMMENT ON COLUMN public.oswarehouse.client_id IS 'Id del cliente dueño del almacen';
            public       postgres    false    287            Y           0    0    COLUMN oswarehouse.code    COMMENT     C   COMMENT ON COLUMN public.oswarehouse.code IS 'Codigo del almacen';
            public       postgres    false    287                        1259    83993    posture_curve_id_seq    SEQUENCE     }   CREATE SEQUENCE public.posture_curve_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.posture_curve_id_seq;
       public       postgres    false    3            !           1259    83995    predecessor_id_seq    SEQUENCE     {   CREATE SEQUENCE public.predecessor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.predecessor_id_seq;
       public       postgres    false    3            "           1259    83997    programmed_eggs_id_seq    SEQUENCE        CREATE SEQUENCE public.programmed_eggs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.programmed_eggs_id_seq;
       public       postgres    false    3            #           1259    83999    raspberry_id_seq    SEQUENCE     y   CREATE SEQUENCE public.raspberry_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.raspberry_id_seq;
       public       postgres    false    3            $           1259    84001    scenario_formula_id_seq    SEQUENCE     �   CREATE SEQUENCE public.scenario_formula_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.scenario_formula_id_seq;
       public       postgres    false    3            %           1259    84003    scenario_parameter_day_seq    SEQUENCE     �   CREATE SEQUENCE public.scenario_parameter_day_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.scenario_parameter_day_seq;
       public       postgres    false    3            &           1259    84005    scenario_parameter_id_seq    SEQUENCE     �   CREATE SEQUENCE public.scenario_parameter_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.scenario_parameter_id_seq;
       public       postgres    false    3            '           1259    84007    scenario_posture_id_seq    SEQUENCE     �   CREATE SEQUENCE public.scenario_posture_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.scenario_posture_id_seq;
       public       postgres    false    3            (           1259    84009    scenario_process_id_seq    SEQUENCE     �   CREATE SEQUENCE public.scenario_process_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.scenario_process_id_seq;
       public       postgres    false    3            )           1259    84011    txavailabilitysheds    TABLE       CREATE TABLE public.txavailabilitysheds (
    availability_shed_id integer DEFAULT nextval('public.availability_shed_id_seq'::regclass) NOT NULL,
    shed_id integer NOT NULL,
    init_date date,
    end_date date,
    lot_code character varying(20) NOT NULL
);
 '   DROP TABLE public.txavailabilitysheds;
       public         postgres    false    217    3            Z           0    0    TABLE txavailabilitysheds    COMMENT     �   COMMENT ON TABLE public.txavailabilitysheds IS 'Almacena la disponibilidad en fechas de los galpones de acuerdo a la programación establecida';
            public       postgres    false    297            [           0    0 /   COLUMN txavailabilitysheds.availability_shed_id    COMMENT     �   COMMENT ON COLUMN public.txavailabilitysheds.availability_shed_id IS 'Id de la disponibilidad del almacen, indicando si este esta disponible';
            public       postgres    false    297            \           0    0 "   COLUMN txavailabilitysheds.shed_id    COMMENT     I   COMMENT ON COLUMN public.txavailabilitysheds.shed_id IS 'Id del galpon';
            public       postgres    false    297            ]           0    0 $   COLUMN txavailabilitysheds.init_date    COMMENT     r   COMMENT ON COLUMN public.txavailabilitysheds.init_date IS 'Fecha de inicio de la programacion de uso del galpon';
            public       postgres    false    297            ^           0    0 #   COLUMN txavailabilitysheds.end_date    COMMENT     r   COMMENT ON COLUMN public.txavailabilitysheds.end_date IS 'Fecha de cerrado de la programacion de uso del galpon';
            public       postgres    false    297            _           0    0 #   COLUMN txavailabilitysheds.lot_code    COMMENT     W   COMMENT ON COLUMN public.txavailabilitysheds.lot_code IS 'codigo del lote del galpon';
            public       postgres    false    297            *           1259    84015 	   txbroiler    TABLE     L  CREATE TABLE public.txbroiler (
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
       public         postgres    false    221    3            `           0    0    TABLE txbroiler    COMMENT     c   COMMENT ON TABLE public.txbroiler IS 'Almacena la proyeccion realizada para el modulo de engorde';
            public       postgres    false    298            a           0    0    COLUMN txbroiler.broiler_id    COMMENT     U   COMMENT ON COLUMN public.txbroiler.broiler_id IS 'Id de la programacion de engorde';
            public       postgres    false    298            b           0    0    COLUMN txbroiler.projected_date    COMMENT     X   COMMENT ON COLUMN public.txbroiler.projected_date IS 'Fecha de proyección de engorde';
            public       postgres    false    298            c           0    0 #   COLUMN txbroiler.projected_quantity    COMMENT     `   COMMENT ON COLUMN public.txbroiler.projected_quantity IS 'Cantidad proyectada para el engorde';
            public       postgres    false    298            d           0    0    COLUMN txbroiler.partnership_id    COMMENT     I   COMMENT ON COLUMN public.txbroiler.partnership_id IS 'Id de la empresa';
            public       postgres    false    298            e           0    0    COLUMN txbroiler.scenario_id    COMMENT     G   COMMENT ON COLUMN public.txbroiler.scenario_id IS 'Id edl escenario ';
            public       postgres    false    298            f           0    0    COLUMN txbroiler.breed_id    COMMENT     K   COMMENT ON COLUMN public.txbroiler.breed_id IS 'Id de la raza a engordar';
            public       postgres    false    298            g           0    0    COLUMN txbroiler.lot_incubator    COMMENT     u   COMMENT ON COLUMN public.txbroiler.lot_incubator IS 'Lote de incubación de donde provienen los huevos proyectados';
            public       postgres    false    298            h           0    0 #   COLUMN txbroiler.programmed_eggs_id    COMMENT     Y   COMMENT ON COLUMN public.txbroiler.programmed_eggs_id IS 'Id de los huevos programados';
            public       postgres    false    298            +           1259    84019    txbroiler_detail    TABLE     �  CREATE TABLE public.txbroiler_detail (
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
       public         postgres    false    220    3            i           0    0    TABLE txbroiler_detail    COMMENT     l   COMMENT ON TABLE public.txbroiler_detail IS 'Almacena la programacion y ejecuccion del proceso de engorde';
            public       postgres    false    299            j           0    0 )   COLUMN txbroiler_detail.broiler_detail_id    COMMENT     `   COMMENT ON COLUMN public.txbroiler_detail.broiler_detail_id IS 'Id de los detalles de engorde';
            public       postgres    false    299            k           0    0 "   COLUMN txbroiler_detail.broiler_id    COMMENT     \   COMMENT ON COLUMN public.txbroiler_detail.broiler_id IS 'Id de la programacion de engorde';
            public       postgres    false    299            l           0    0 &   COLUMN txbroiler_detail.scheduled_date    COMMENT     k   COMMENT ON COLUMN public.txbroiler_detail.scheduled_date IS 'Fecha programada para el proceso de engorde';
            public       postgres    false    299            m           0    0 *   COLUMN txbroiler_detail.scheduled_quantity    COMMENT     r   COMMENT ON COLUMN public.txbroiler_detail.scheduled_quantity IS 'Cantidad programada para el proceso de engorde';
            public       postgres    false    299            n           0    0    COLUMN txbroiler_detail.farm_id    COMMENT     H   COMMENT ON COLUMN public.txbroiler_detail.farm_id IS 'Id de la granja';
            public       postgres    false    299            o           0    0    COLUMN txbroiler_detail.shed_id    COMMENT     F   COMMENT ON COLUMN public.txbroiler_detail.shed_id IS 'Id del galpon';
            public       postgres    false    299            p           0    0    COLUMN txbroiler_detail.confirm    COMMENT     E   COMMENT ON COLUMN public.txbroiler_detail.confirm IS 'Confirmacion';
            public       postgres    false    299            q           0    0 &   COLUMN txbroiler_detail.execution_date    COMMENT     p   COMMENT ON COLUMN public.txbroiler_detail.execution_date IS 'Fecha de ejeccion de la planificacion de engorde';
            public       postgres    false    299            r           0    0 *   COLUMN txbroiler_detail.execution_quantity    COMMENT     u   COMMENT ON COLUMN public.txbroiler_detail.execution_quantity IS 'Cantidad ejecutada de la programación de engorde';
            public       postgres    false    299            s           0    0    COLUMN txbroiler_detail.lot    COMMENT     D   COMMENT ON COLUMN public.txbroiler_detail.lot IS 'Lote de engorde';
            public       postgres    false    299            t           0    0 *   COLUMN txbroiler_detail.broiler_product_id    COMMENT     ^   COMMENT ON COLUMN public.txbroiler_detail.broiler_product_id IS 'Id del producto de engorde';
            public       postgres    false    299            ,           1259    84023    txbroilereviction    TABLE     _  CREATE TABLE public.txbroilereviction (
    broilereviction_id integer DEFAULT nextval('public.broilereviction_id_seq'::regclass) NOT NULL,
    projected_date date,
    projected_quantity integer,
    partnership_id integer NOT NULL,
    scenario_id integer NOT NULL,
    breed_id integer NOT NULL,
    lot_incubator character varying(45) NOT NULL
);
 %   DROP TABLE public.txbroilereviction;
       public         postgres    false    225    3            u           0    0    TABLE txbroilereviction    COMMENT     _   COMMENT ON TABLE public.txbroilereviction IS 'Almacena las proyeccion del modula de desalojo';
            public       postgres    false    300            v           0    0 +   COLUMN txbroilereviction.broilereviction_id    COMMENT     ^   COMMENT ON COLUMN public.txbroilereviction.broilereviction_id IS 'Id del modulo de desalojo';
            public       postgres    false    300            w           0    0 '   COLUMN txbroilereviction.projected_date    COMMENT     b   COMMENT ON COLUMN public.txbroilereviction.projected_date IS 'Fecha proyectada para el desalojo';
            public       postgres    false    300            x           0    0 +   COLUMN txbroilereviction.projected_quantity    COMMENT     i   COMMENT ON COLUMN public.txbroilereviction.projected_quantity IS 'Cantidad proyectada para el desalojo';
            public       postgres    false    300            y           0    0 '   COLUMN txbroilereviction.partnership_id    COMMENT     Q   COMMENT ON COLUMN public.txbroilereviction.partnership_id IS 'Id de la empresa';
            public       postgres    false    300            z           0    0 $   COLUMN txbroilereviction.scenario_id    COMMENT     N   COMMENT ON COLUMN public.txbroilereviction.scenario_id IS 'Id del escenario';
            public       postgres    false    300            {           0    0 !   COLUMN txbroilereviction.breed_id    COMMENT     H   COMMENT ON COLUMN public.txbroilereviction.breed_id IS 'Id de la raza';
            public       postgres    false    300            |           0    0 &   COLUMN txbroilereviction.lot_incubator    COMMENT     R   COMMENT ON COLUMN public.txbroilereviction.lot_incubator IS 'Lote de incubacion';
            public       postgres    false    300            -           1259    84027    txbroilereviction_detail    TABLE     �  CREATE TABLE public.txbroilereviction_detail (
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
       public         postgres    false    224    3            }           0    0    TABLE txbroilereviction_detail    COMMENT     v   COMMENT ON TABLE public.txbroilereviction_detail IS 'Almacena la programación y ejecución del módulo de desalojo';
            public       postgres    false    301            ~           0    0 9   COLUMN txbroilereviction_detail.broilereviction_detail_id    COMMENT     ~   COMMENT ON COLUMN public.txbroilereviction_detail.broilereviction_detail_id IS 'Id de los detalles del modulo de desarrollo';
            public       postgres    false    301                       0    0 2   COLUMN txbroilereviction_detail.broilereviction_id    COMMENT     e   COMMENT ON COLUMN public.txbroilereviction_detail.broilereviction_id IS 'Id del modulo de desalojo';
            public       postgres    false    301            �           0    0 .   COLUMN txbroilereviction_detail.scheduled_date    COMMENT     i   COMMENT ON COLUMN public.txbroilereviction_detail.scheduled_date IS 'Fecha programada para el desalojo';
            public       postgres    false    301            �           0    0 2   COLUMN txbroilereviction_detail.scheduled_quantity    COMMENT     p   COMMENT ON COLUMN public.txbroilereviction_detail.scheduled_quantity IS 'Cantidad programada para el desalojo';
            public       postgres    false    301            �           0    0 '   COLUMN txbroilereviction_detail.farm_id    COMMENT     P   COMMENT ON COLUMN public.txbroilereviction_detail.farm_id IS 'Id de la granja';
            public       postgres    false    301            �           0    0 '   COLUMN txbroilereviction_detail.shed_id    COMMENT     N   COMMENT ON COLUMN public.txbroilereviction_detail.shed_id IS 'Id del galpon';
            public       postgres    false    301            �           0    0 '   COLUMN txbroilereviction_detail.confirm    COMMENT     M   COMMENT ON COLUMN public.txbroilereviction_detail.confirm IS 'Confirmacion';
            public       postgres    false    301            �           0    0 .   COLUMN txbroilereviction_detail.execution_date    COMMENT     \   COMMENT ON COLUMN public.txbroilereviction_detail.execution_date IS 'Fecha de ejecución ';
            public       postgres    false    301            �           0    0 2   COLUMN txbroilereviction_detail.execution_quantity    COMMENT     c   COMMENT ON COLUMN public.txbroilereviction_detail.execution_quantity IS 'Cantidad de ejecución ';
            public       postgres    false    301            �           0    0 #   COLUMN txbroilereviction_detail.lot    COMMENT     X   COMMENT ON COLUMN public.txbroilereviction_detail.lot IS 'Lote del modulo de desalojo';
            public       postgres    false    301            �           0    0 2   COLUMN txbroilereviction_detail.broiler_product_id    COMMENT     f   COMMENT ON COLUMN public.txbroilereviction_detail.broiler_product_id IS 'Id del producto de engorde';
            public       postgres    false    301            �           0    0 1   COLUMN txbroilereviction_detail.slaughterhouse_id    COMMENT     g   COMMENT ON COLUMN public.txbroilereviction_detail.slaughterhouse_id IS 'Id de la planta de beneficio';
            public       postgres    false    301            .           1259    84031    txbroilerproduct_detail    TABLE     �   CREATE TABLE public.txbroilerproduct_detail (
    broilerproduct_detail_id integer DEFAULT nextval('public.broiler_product_detail_id_seq'::regclass) NOT NULL,
    broiler_detail integer NOT NULL,
    broiler_product_id integer,
    quantity integer
);
 +   DROP TABLE public.txbroilerproduct_detail;
       public         postgres    false    222    3            �           0    0    TABLE txbroilerproduct_detail    COMMENT     h   COMMENT ON TABLE public.txbroilerproduct_detail IS 'Almacena los detalles de la produccion de engorde';
            public       postgres    false    302            �           0    0 7   COLUMN txbroilerproduct_detail.broilerproduct_detail_id    COMMENT     |   COMMENT ON COLUMN public.txbroilerproduct_detail.broilerproduct_detail_id IS 'Id de los detalles de produccion de engorde';
            public       postgres    false    302            �           0    0 -   COLUMN txbroilerproduct_detail.broiler_detail    COMMENT     Z   COMMENT ON COLUMN public.txbroilerproduct_detail.broiler_detail IS 'Detalles de engorde';
            public       postgres    false    302            �           0    0 1   COLUMN txbroilerproduct_detail.broiler_product_id    COMMENT     e   COMMENT ON COLUMN public.txbroilerproduct_detail.broiler_product_id IS 'Id del producto de engorde';
            public       postgres    false    302            �           0    0 '   COLUMN txbroilerproduct_detail.quantity    COMMENT     `   COMMENT ON COLUMN public.txbroilerproduct_detail.quantity IS 'Cantidad de producto de engorde';
            public       postgres    false    302            /           1259    84035    txbroodermachine    TABLE     �  CREATE TABLE public.txbroodermachine (
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
       public         postgres    false    227    3            �           0    0    TABLE txbroodermachine    COMMENT     ]   COMMENT ON TABLE public.txbroodermachine IS 'Almacena los datos de las maquinas de engorde';
            public       postgres    false    303            �           0    0 .   COLUMN txbroodermachine.brooder_machine_id_seq    COMMENT     c   COMMENT ON COLUMN public.txbroodermachine.brooder_machine_id_seq IS 'Id de la maquina de engorde';
            public       postgres    false    303            �           0    0 &   COLUMN txbroodermachine.partnership_id    COMMENT     P   COMMENT ON COLUMN public.txbroodermachine.partnership_id IS 'Id de la empresa';
            public       postgres    false    303            �           0    0    COLUMN txbroodermachine.farm_id    COMMENT     H   COMMENT ON COLUMN public.txbroodermachine.farm_id IS 'Id de la granja';
            public       postgres    false    303            �           0    0     COLUMN txbroodermachine.capacity    COMMENT     Q   COMMENT ON COLUMN public.txbroodermachine.capacity IS 'Capacidad de la maquina';
            public       postgres    false    303            �           0    0    COLUMN txbroodermachine.sunday    COMMENT     ?   COMMENT ON COLUMN public.txbroodermachine.sunday IS 'Domingo';
            public       postgres    false    303            �           0    0    COLUMN txbroodermachine.monday    COMMENT     =   COMMENT ON COLUMN public.txbroodermachine.monday IS 'Lunes';
            public       postgres    false    303            �           0    0    COLUMN txbroodermachine.tuesday    COMMENT     ?   COMMENT ON COLUMN public.txbroodermachine.tuesday IS 'Martes';
            public       postgres    false    303            �           0    0 !   COLUMN txbroodermachine.wednesday    COMMENT     D   COMMENT ON COLUMN public.txbroodermachine.wednesday IS 'Miercoles';
            public       postgres    false    303            �           0    0     COLUMN txbroodermachine.thursday    COMMENT     @   COMMENT ON COLUMN public.txbroodermachine.thursday IS 'Jueves';
            public       postgres    false    303            �           0    0    COLUMN txbroodermachine.friday    COMMENT     ?   COMMENT ON COLUMN public.txbroodermachine.friday IS 'Viernes';
            public       postgres    false    303            �           0    0     COLUMN txbroodermachine.saturday    COMMENT     @   COMMENT ON COLUMN public.txbroodermachine.saturday IS 'Sabado';
            public       postgres    false    303            �           0    0    COLUMN txbroodermachine.name    COMMENT     J   COMMENT ON COLUMN public.txbroodermachine.name IS 'Nombre de la maquina';
            public       postgres    false    303            0           1259    84039 
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
       public         postgres    false    229    3            �           0    0    TABLE txcalendar    COMMENT     n   COMMENT ON TABLE public.txcalendar IS 'Almacena la informacion del calendario con la que trabaja el sistema';
            public       postgres    false    304            �           0    0    COLUMN txcalendar.calendar_id    COMMENT     H   COMMENT ON COLUMN public.txcalendar.calendar_id IS 'Id del calendario';
            public       postgres    false    304            �           0    0    COLUMN txcalendar.description    COMMENT     S   COMMENT ON COLUMN public.txcalendar.description IS 'Descripción del calendario
';
            public       postgres    false    304            �           0    0    COLUMN txcalendar.saturday    COMMENT     Z   COMMENT ON COLUMN public.txcalendar.saturday IS 'Indica si el día sábado es laborable';
            public       postgres    false    304            �           0    0    COLUMN txcalendar.sunday    COMMENT     X   COMMENT ON COLUMN public.txcalendar.sunday IS 'Indica si el día Domingo es laborable';
            public       postgres    false    304            �           0    0    COLUMN txcalendar.week_start    COMMENT     [   COMMENT ON COLUMN public.txcalendar.week_start IS 'Semana en la que inicia el calendario';
            public       postgres    false    304            �           0    0    COLUMN txcalendar.code    COMMENT     E   COMMENT ON COLUMN public.txcalendar.code IS 'Codigo del calendario';
            public       postgres    false    304            �           0    0    COLUMN txcalendar.year_start    COMMENT     Y   COMMENT ON COLUMN public.txcalendar.year_start IS 'Año en el que inicia el calendario';
            public       postgres    false    304            �           0    0    COLUMN txcalendar.year_end    COMMENT     Y   COMMENT ON COLUMN public.txcalendar.year_end IS 'Año en el que finaliza el calendario';
            public       postgres    false    304            �           0    0    COLUMN txcalendar.generated    COMMENT     u   COMMENT ON COLUMN public.txcalendar.generated IS 'Indica si el calendario fue generado a partir de otro calendario';
            public       postgres    false    304            1           1259    84043    txcalendarday    TABLE     �  CREATE TABLE public.txcalendarday (
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
       public         postgres    false    228    3            �           0    0    TABLE txcalendarday    COMMENT     _   COMMENT ON TABLE public.txcalendarday IS 'Almacena los datos de los dias que son laborables ';
            public       postgres    false    305            �           0    0 $   COLUMN txcalendarday.calendar_day_id    COMMENT     W   COMMENT ON COLUMN public.txcalendarday.calendar_day_id IS 'Id del dia del calendario';
            public       postgres    false    305            �           0    0     COLUMN txcalendarday.calendar_id    COMMENT     K   COMMENT ON COLUMN public.txcalendarday.calendar_id IS 'Id del calendario';
            public       postgres    false    305            �           0    0    COLUMN txcalendarday.date    COMMENT     `   COMMENT ON COLUMN public.txcalendarday.date IS 'Fecha en el que se encuentra el dia laborable';
            public       postgres    false    305            �           0    0    COLUMN txcalendarday.year    COMMENT     _   COMMENT ON COLUMN public.txcalendarday.year IS 'Año en el que se encuentra el dia laborable';
            public       postgres    false    305            �           0    0    COLUMN txcalendarday.month    COMMENT     _   COMMENT ON COLUMN public.txcalendarday.month IS 'Mes en el que se encuentra el dia laborable';
            public       postgres    false    305            �           0    0    COLUMN txcalendarday.day    COMMENT     ]   COMMENT ON COLUMN public.txcalendarday.day IS 'Dia en el que se encuentra el dia laborable';
            public       postgres    false    305            �           0    0    COLUMN txcalendarday.week    COMMENT     a   COMMENT ON COLUMN public.txcalendarday.week IS 'Semana en el que se encuentra el dia laborable';
            public       postgres    false    305            �           0    0    COLUMN txcalendarday.week_day    COMMENT     l   COMMENT ON COLUMN public.txcalendarday.week_day IS 'Dia de semana en el que se encuentra el dia laborable';
            public       postgres    false    305            �           0    0     COLUMN txcalendarday.description    COMMENT     E   COMMENT ON COLUMN public.txcalendarday.description IS 'Descripcion';
            public       postgres    false    305            �           0    0     COLUMN txcalendarday.working_day    COMMENT     Z   COMMENT ON COLUMN public.txcalendarday.working_day IS 'Indica si el dia es laboral o no';
            public       postgres    false    305            2           1259    84047    txeggs_planning    TABLE       CREATE TABLE public.txeggs_planning (
    egg_planning_id integer DEFAULT nextval('public.egg_planning_id_seq'::regclass) NOT NULL,
    month_planning integer,
    year_planning integer,
    scenario_id integer,
    planned double precision,
    breed_id integer NOT NULL
);
 #   DROP TABLE public.txeggs_planning;
       public         postgres    false    231    3            �           0    0    TABLE txeggs_planning    COMMENT     g   COMMENT ON TABLE public.txeggs_planning IS 'Almacena los detalles de la planificación de los huevos';
            public       postgres    false    306            �           0    0 &   COLUMN txeggs_planning.egg_planning_id    COMMENT     [   COMMENT ON COLUMN public.txeggs_planning.egg_planning_id IS 'Id de planeación de huevos';
            public       postgres    false    306            �           0    0 %   COLUMN txeggs_planning.month_planning    COMMENT     c   COMMENT ON COLUMN public.txeggs_planning.month_planning IS 'Mes de planificación de los huevos
';
            public       postgres    false    306            �           0    0 $   COLUMN txeggs_planning.year_planning    COMMENT     b   COMMENT ON COLUMN public.txeggs_planning.year_planning IS 'Año de planificación de los huevos';
            public       postgres    false    306            �           0    0 "   COLUMN txeggs_planning.scenario_id    COMMENT     p   COMMENT ON COLUMN public.txeggs_planning.scenario_id IS 'Escenario al cual pertenecen los huevos planificados';
            public       postgres    false    306            �           0    0    COLUMN txeggs_planning.planned    COMMENT     X   COMMENT ON COLUMN public.txeggs_planning.planned IS 'Cantidad de huevos planificados
';
            public       postgres    false    306            �           0    0    COLUMN txeggs_planning.breed_id    COMMENT     T   COMMENT ON COLUMN public.txeggs_planning.breed_id IS 'Id de la raza de los huevos';
            public       postgres    false    306            3           1259    84051    txeggs_required    TABLE       CREATE TABLE public.txeggs_required (
    egg_required_id integer DEFAULT nextval('public.egg_required_id_seq'::regclass) NOT NULL,
    _month integer,
    _year integer,
    scenario_id integer NOT NULL,
    required double precision,
    breed_id integer
);
 #   DROP TABLE public.txeggs_required;
       public         postgres    false    232    3            �           0    0    TABLE txeggs_required    COMMENT     V   COMMENT ON TABLE public.txeggs_required IS 'Almacena los datos de huevos requeridos';
            public       postgres    false    307            �           0    0 &   COLUMN txeggs_required.egg_required_id    COMMENT     [   COMMENT ON COLUMN public.txeggs_required.egg_required_id IS 'Id de los huevos requeridos';
            public       postgres    false    307            �           0    0    COLUMN txeggs_required._month    COMMENT     :   COMMENT ON COLUMN public.txeggs_required._month IS 'Mes';
            public       postgres    false    307            �           0    0    COLUMN txeggs_required._year    COMMENT     :   COMMENT ON COLUMN public.txeggs_required._year IS 'Año';
            public       postgres    false    307            �           0    0 "   COLUMN txeggs_required.scenario_id    COMMENT     L   COMMENT ON COLUMN public.txeggs_required.scenario_id IS 'Id del escenario';
            public       postgres    false    307            �           0    0    COLUMN txeggs_required.required    COMMENT     K   COMMENT ON COLUMN public.txeggs_required.required IS 'Cantidad requerida';
            public       postgres    false    307            �           0    0    COLUMN txeggs_required.breed_id    COMMENT     F   COMMENT ON COLUMN public.txeggs_required.breed_id IS 'Id de la raza';
            public       postgres    false    307            4           1259    84055    txeggs_storage    TABLE     G  CREATE TABLE public.txeggs_storage (
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
       public         postgres    false    233    3            �           0    0    TABLE txeggs_storage    COMMENT     ~   COMMENT ON TABLE public.txeggs_storage IS 'Guarda la informacion de almacenamiento de los huevos en las plantas incubadoras';
            public       postgres    false    308            �           0    0 %   COLUMN txeggs_storage.eggs_storage_id    COMMENT     W   COMMENT ON COLUMN public.txeggs_storage.eggs_storage_id IS 'Id del almacen de huevos';
            public       postgres    false    308            �           0    0 (   COLUMN txeggs_storage.incubator_plant_id    COMMENT     Y   COMMENT ON COLUMN public.txeggs_storage.incubator_plant_id IS 'Id de planta incubadora';
            public       postgres    false    308            �           0    0 !   COLUMN txeggs_storage.scenario_id    COMMENT     K   COMMENT ON COLUMN public.txeggs_storage.scenario_id IS 'Id del escenario';
            public       postgres    false    308            �           0    0    COLUMN txeggs_storage.breed_id    COMMENT     E   COMMENT ON COLUMN public.txeggs_storage.breed_id IS 'Id de la raza';
            public       postgres    false    308            �           0    0    COLUMN txeggs_storage.init_date    COMMENT     H   COMMENT ON COLUMN public.txeggs_storage.init_date IS 'Fecha de inicio';
            public       postgres    false    308            �           0    0    COLUMN txeggs_storage.end_date    COMMENT     J   COMMENT ON COLUMN public.txeggs_storage.end_date IS 'Fecha de terminado';
            public       postgres    false    308            �           0    0    COLUMN txeggs_storage.lot    COMMENT     7   COMMENT ON COLUMN public.txeggs_storage.lot IS 'Lote';
            public       postgres    false    308            �           0    0    COLUMN txeggs_storage.eggs    COMMENT     F   COMMENT ON COLUMN public.txeggs_storage.eggs IS 'Cantidad de huevos';
            public       postgres    false    308            5           1259    84059    txgoals_erp    TABLE     �   CREATE TABLE public.txgoals_erp (
    goals_erp_id bigint NOT NULL,
    week date,
    value integer,
    product_id integer NOT NULL,
    code character varying(10),
    scenario_id integer NOT NULL
);
    DROP TABLE public.txgoals_erp;
       public         postgres    false    3            �           0    0    TABLE txgoals_erp    COMMENT     �   COMMENT ON TABLE public.txgoals_erp IS 'Almacena los datos generados de las metas de producción de la planificación regresiva para ser enviados al ERP';
            public       postgres    false    309            �           0    0    COLUMN txgoals_erp.goals_erp_id    COMMENT     N   COMMENT ON COLUMN public.txgoals_erp.goals_erp_id IS 'Id de la meta del ERP';
            public       postgres    false    309            �           0    0    COLUMN txgoals_erp.week    COMMENT     7   COMMENT ON COLUMN public.txgoals_erp.week IS 'Semana';
            public       postgres    false    309            �           0    0    COLUMN txgoals_erp.value    COMMENT     @   COMMENT ON COLUMN public.txgoals_erp.value IS 'Valor objetivo';
            public       postgres    false    309            �           0    0    COLUMN txgoals_erp.product_id    COMMENT     F   COMMENT ON COLUMN public.txgoals_erp.product_id IS 'Id del producto';
            public       postgres    false    309            �           0    0    COLUMN txgoals_erp.code    COMMENT     D   COMMENT ON COLUMN public.txgoals_erp.code IS 'Codigo del producto';
            public       postgres    false    309            �           0    0    COLUMN txgoals_erp.scenario_id    COMMENT     H   COMMENT ON COLUMN public.txgoals_erp.scenario_id IS 'Id del escenario';
            public       postgres    false    309            6           1259    84062    txgoals_erp_goals_erp_id_seq    SEQUENCE     �   CREATE SEQUENCE public.txgoals_erp_goals_erp_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.txgoals_erp_goals_erp_id_seq;
       public       postgres    false    309    3            �           0    0    txgoals_erp_goals_erp_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.txgoals_erp_goals_erp_id_seq OWNED BY public.txgoals_erp.goals_erp_id;
            public       postgres    false    310            7           1259    84064 	   txholiday    TABLE       CREATE TABLE public.txholiday (
    holiday_id integer DEFAULT nextval('public.holiday_id_seq'::regclass) NOT NULL,
    calendar_id integer NOT NULL,
    year integer NOT NULL,
    month integer NOT NULL,
    day integer NOT NULL,
    description character varying(250)
);
    DROP TABLE public.txholiday;
       public         postgres    false    236    3            �           0    0    TABLE txholiday    COMMENT     U   COMMENT ON TABLE public.txholiday IS 'Almacena la informacion de los dias festivos';
            public       postgres    false    311            �           0    0    COLUMN txholiday.holiday_id    COMMENT     G   COMMENT ON COLUMN public.txholiday.holiday_id IS 'Id del dia festivo';
            public       postgres    false    311            �           0    0    COLUMN txholiday.calendar_id    COMMENT     G   COMMENT ON COLUMN public.txholiday.calendar_id IS 'Id del calendario';
            public       postgres    false    311            �           0    0    COLUMN txholiday.year    COMMENT     C   COMMENT ON COLUMN public.txholiday.year IS 'Año del dia festivo';
            public       postgres    false    311            �           0    0    COLUMN txholiday.month    COMMENT     C   COMMENT ON COLUMN public.txholiday.month IS 'Mes del dia festivo';
            public       postgres    false    311            �           0    0    COLUMN txholiday.day    COMMENT     A   COMMENT ON COLUMN public.txholiday.day IS 'Dia del dia festivo';
            public       postgres    false    311            �           0    0    COLUMN txholiday.description    COMMENT     Q   COMMENT ON COLUMN public.txholiday.description IS 'Descripcion del dia festivo';
            public       postgres    false    311            8           1259    84068    txhousingway    TABLE     d  CREATE TABLE public.txhousingway (
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
       public         postgres    false    238    3            �           0    0    TABLE txhousingway    COMMENT     t   COMMENT ON TABLE public.txhousingway IS 'Almacena la proyección de los módulos de levante, cría y reproductora';
            public       postgres    false    312            �           0    0 "   COLUMN txhousingway.housing_way_id    COMMENT     �   COMMENT ON COLUMN public.txhousingway.housing_way_id IS 'Id de las proyecciones  de los módulos de levante, cría y reproductora';
            public       postgres    false    312            �           0    0 &   COLUMN txhousingway.projected_quantity    COMMENT     S   COMMENT ON COLUMN public.txhousingway.projected_quantity IS 'Cantidad proyectada';
            public       postgres    false    312            �           0    0 "   COLUMN txhousingway.projected_date    COMMENT     L   COMMENT ON COLUMN public.txhousingway.projected_date IS 'Fecha proyectada';
            public       postgres    false    312            �           0    0    COLUMN txhousingway.stage_id    COMMENT     D   COMMENT ON COLUMN public.txhousingway.stage_id IS 'Id de la etapa';
            public       postgres    false    312            �           0    0 "   COLUMN txhousingway.partnership_id    COMMENT     L   COMMENT ON COLUMN public.txhousingway.partnership_id IS 'Id de la empresa';
            public       postgres    false    312            �           0    0    COLUMN txhousingway.breed_id    COMMENT     C   COMMENT ON COLUMN public.txhousingway.breed_id IS 'Id de la raza';
            public       postgres    false    312            �           0    0 "   COLUMN txhousingway.predecessor_id    COMMENT     N   COMMENT ON COLUMN public.txhousingway.predecessor_id IS 'Id del predecesor ';
            public       postgres    false    312            9           1259    84072    txhousingway_detail    TABLE     �  CREATE TABLE public.txhousingway_detail (
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
       public         postgres    false    237    3            �           0    0    TABLE txhousingway_detail    COMMENT     �   COMMENT ON TABLE public.txhousingway_detail IS 'Almacena la programación y la ejecución de los módulos de levante y cría y reproductora';
            public       postgres    false    313            �           0    0 /   COLUMN txhousingway_detail.housingway_detail_id    COMMENT     �   COMMENT ON COLUMN public.txhousingway_detail.housingway_detail_id IS 'Id de la programación y ejecución de los modelos de levante y cría y reproductora';
            public       postgres    false    313            �           0    0 )   COLUMN txhousingway_detail.housing_way_id    COMMENT     �   COMMENT ON COLUMN public.txhousingway_detail.housing_way_id IS 'Id de las proyecciones  de los módulos de levante, cría y reproductora';
            public       postgres    false    313            �           0    0 )   COLUMN txhousingway_detail.scheduled_date    COMMENT     S   COMMENT ON COLUMN public.txhousingway_detail.scheduled_date IS 'Fecha programada';
            public       postgres    false    313            �           0    0 -   COLUMN txhousingway_detail.scheduled_quantity    COMMENT     Z   COMMENT ON COLUMN public.txhousingway_detail.scheduled_quantity IS 'Cantidad programada';
            public       postgres    false    313            �           0    0 "   COLUMN txhousingway_detail.farm_id    COMMENT     K   COMMENT ON COLUMN public.txhousingway_detail.farm_id IS 'Id de la granja';
            public       postgres    false    313            �           0    0 "   COLUMN txhousingway_detail.shed_id    COMMENT     S   COMMENT ON COLUMN public.txhousingway_detail.shed_id IS 'Id del galpon utilizado';
            public       postgres    false    313            �           0    0 "   COLUMN txhousingway_detail.confirm    COMMENT     [   COMMENT ON COLUMN public.txhousingway_detail.confirm IS 'Confirmacion de sincronizacion ';
            public       postgres    false    313            �           0    0 )   COLUMN txhousingway_detail.execution_date    COMMENT     V   COMMENT ON COLUMN public.txhousingway_detail.execution_date IS 'Fecha de ejecución';
            public       postgres    false    313            �           0    0 -   COLUMN txhousingway_detail.execution_quantity    COMMENT     Z   COMMENT ON COLUMN public.txhousingway_detail.execution_quantity IS 'Cantidad a ejecutar';
            public       postgres    false    313            �           0    0    COLUMN txhousingway_detail.lot    COMMENT     I   COMMENT ON COLUMN public.txhousingway_detail.lot IS 'Lote seleccionado';
            public       postgres    false    313            �           0    0 -   COLUMN txhousingway_detail.incubator_plant_id    COMMENT     a   COMMENT ON COLUMN public.txhousingway_detail.incubator_plant_id IS 'Id de la planta incubadora';
            public       postgres    false    313            :           1259    84076    txlot    TABLE     �  CREATE TABLE public.txlot (
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
       public         postgres    false    245    3            �           0    0    TABLE txlot    COMMENT     T   COMMENT ON TABLE public.txlot IS 'Almacena la informacion de los diferentes lotes';
            public       postgres    false    314            �           0    0    COLUMN txlot.lot_id    COMMENT     8   COMMENT ON COLUMN public.txlot.lot_id IS 'Id del lote';
            public       postgres    false    314            �           0    0    COLUMN txlot.lot_code    COMMENT     >   COMMENT ON COLUMN public.txlot.lot_code IS 'Codigo del lote';
            public       postgres    false    314            �           0    0    COLUMN txlot.process_class_id    COMMENT     N   COMMENT ON COLUMN public.txlot.process_class_id IS 'Id del proceso de clase';
            public       postgres    false    314            �           0    0    COLUMN txlot.lot_origin    COMMENT     @   COMMENT ON COLUMN public.txlot.lot_origin IS 'Origen del lote';
            public       postgres    false    314            �           0    0    COLUMN txlot.status    COMMENT     <   COMMENT ON COLUMN public.txlot.status IS 'Estado del lote';
            public       postgres    false    314            �           0    0    COLUMN txlot.proyected_date    COMMENT     E   COMMENT ON COLUMN public.txlot.proyected_date IS 'Fecha proyectada';
            public       postgres    false    314            �           0    0    COLUMN txlot.sheduled_date    COMMENT     D   COMMENT ON COLUMN public.txlot.sheduled_date IS 'Fecha programada';
            public       postgres    false    314            �           0    0    COLUMN txlot.proyected_quantity    COMMENT     L   COMMENT ON COLUMN public.txlot.proyected_quantity IS 'Cantidad proyectada';
            public       postgres    false    314            �           0    0    COLUMN txlot.sheduled_quantity    COMMENT     K   COMMENT ON COLUMN public.txlot.sheduled_quantity IS 'Cantidad programada';
            public       postgres    false    314            �           0    0    COLUMN txlot.released_quantity    COMMENT     I   COMMENT ON COLUMN public.txlot.released_quantity IS 'Cantidad liberada';
            public       postgres    false    314            �           0    0    COLUMN txlot.product_id    COMMENT     @   COMMENT ON COLUMN public.txlot.product_id IS 'Id del producto';
            public       postgres    false    314            �           0    0    COLUMN txlot.breed_id    COMMENT     <   COMMENT ON COLUMN public.txlot.breed_id IS 'Id de la raza';
            public       postgres    false    314            �           0    0    COLUMN txlot.gender    COMMENT     <   COMMENT ON COLUMN public.txlot.gender IS 'Genero del lote';
            public       postgres    false    314            �           0    0    COLUMN txlot.type_posture    COMMENT     B   COMMENT ON COLUMN public.txlot.type_posture IS 'Tipo de postura';
            public       postgres    false    314            �           0    0    COLUMN txlot.shed_id    COMMENT     ;   COMMENT ON COLUMN public.txlot.shed_id IS 'Id del galpon';
            public       postgres    false    314            �           0    0    COLUMN txlot.origin    COMMENT     3   COMMENT ON COLUMN public.txlot.origin IS 'Origen';
            public       postgres    false    314            �           0    0    COLUMN txlot.farm_id    COMMENT     =   COMMENT ON COLUMN public.txlot.farm_id IS 'Id de la granja';
            public       postgres    false    314            �           0    0    COLUMN txlot.housing_way_id    COMMENT     ~   COMMENT ON COLUMN public.txlot.housing_way_id IS 'Id del almacenamientos de la proyecciones de levante, cria y reproductora';
            public       postgres    false    314            ;           1259    84080 
   txlot_eggs    TABLE     �   CREATE TABLE public.txlot_eggs (
    lot_eggs_id integer DEFAULT nextval('public.lot_eggs_id_seq'::regclass) NOT NULL,
    theorical_performance double precision,
    week_date date,
    week integer
);
    DROP TABLE public.txlot_eggs;
       public         postgres    false    243    3            �           0    0    TABLE txlot_eggs    COMMENT     S   COMMENT ON TABLE public.txlot_eggs IS 'Almacena los datos de los lotes de huevos';
            public       postgres    false    315            �           0    0    COLUMN txlot_eggs.lot_eggs_id    COMMENT     L   COMMENT ON COLUMN public.txlot_eggs.lot_eggs_id IS 'Id del lote de huevos';
            public       postgres    false    315                        0    0 '   COLUMN txlot_eggs.theorical_performance    COMMENT     T   COMMENT ON COLUMN public.txlot_eggs.theorical_performance IS 'Rendimiento teorico';
            public       postgres    false    315                       0    0    COLUMN txlot_eggs.week_date    COMMENT     G   COMMENT ON COLUMN public.txlot_eggs.week_date IS 'Fecha de la semana';
            public       postgres    false    315                       0    0    COLUMN txlot_eggs.week    COMMENT     6   COMMENT ON COLUMN public.txlot_eggs.week IS 'Semana';
            public       postgres    false    315            <           1259    84084    txposturecurve    TABLE     �  CREATE TABLE public.txposturecurve (
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
       public         postgres    false    288    3                       0    0    TABLE txposturecurve    COMMENT        COMMENT ON TABLE public.txposturecurve IS 'Almacena la información de la curva de postura por cada raza separada por semana';
            public       postgres    false    316                       0    0 &   COLUMN txposturecurve.posture_curve_id    COMMENT     Y   COMMENT ON COLUMN public.txposturecurve.posture_curve_id IS 'Id de la curva de postura';
            public       postgres    false    316                       0    0    COLUMN txposturecurve.week    COMMENT     _   COMMENT ON COLUMN public.txposturecurve.week IS 'Semana en la que inicia la curva de postura';
            public       postgres    false    316                       0    0    COLUMN txposturecurve.breed_id    COMMENT     E   COMMENT ON COLUMN public.txposturecurve.breed_id IS 'Id de la raza';
            public       postgres    false    316                       0    0 +   COLUMN txposturecurve.theorical_performance    COMMENT     X   COMMENT ON COLUMN public.txposturecurve.theorical_performance IS 'Desempeño teórico';
            public       postgres    false    316                       0    0 ,   COLUMN txposturecurve.historical_performance    COMMENT     [   COMMENT ON COLUMN public.txposturecurve.historical_performance IS 'Desempeño histórico';
            public       postgres    false    316            	           0    0 /   COLUMN txposturecurve.theorical_accum_mortality    COMMENT     h   COMMENT ON COLUMN public.txposturecurve.theorical_accum_mortality IS 'Acumulado de mortalidad teorico';
            public       postgres    false    316            
           0    0 0   COLUMN txposturecurve.historical_accum_mortality    COMMENT     k   COMMENT ON COLUMN public.txposturecurve.historical_accum_mortality IS 'Acumulado de mortalidad historico';
            public       postgres    false    316                       0    0 *   COLUMN txposturecurve.theorical_uniformity    COMMENT     W   COMMENT ON COLUMN public.txposturecurve.theorical_uniformity IS 'Uniformidad teorica';
            public       postgres    false    316                       0    0 +   COLUMN txposturecurve.historical_uniformity    COMMENT     Z   COMMENT ON COLUMN public.txposturecurve.historical_uniformity IS 'Uniformidad historica';
            public       postgres    false    316                       0    0 "   COLUMN txposturecurve.type_posture    COMMENT     K   COMMENT ON COLUMN public.txposturecurve.type_posture IS 'Tipo de postura';
            public       postgres    false    316            =           1259    84088    txprogrammed_eggs    TABLE     �  CREATE TABLE public.txprogrammed_eggs (
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
       public         postgres    false    290    3                       0    0    TABLE txprogrammed_eggs    COMMENT        COMMENT ON TABLE public.txprogrammed_eggs IS 'Almacena la proyección, programación y ejecución del módulo de incubadoras';
            public       postgres    false    317                       0    0 +   COLUMN txprogrammed_eggs.programmed_eggs_id    COMMENT     j   COMMENT ON COLUMN public.txprogrammed_eggs.programmed_eggs_id IS 'Id de las programacion de incubadoras';
            public       postgres    false    317                       0    0 %   COLUMN txprogrammed_eggs.incubator_id    COMMENT     O   COMMENT ON COLUMN public.txprogrammed_eggs.incubator_id IS 'Id de incubadora';
            public       postgres    false    317                       0    0 "   COLUMN txprogrammed_eggs.lot_breed    COMMENT     I   COMMENT ON COLUMN public.txprogrammed_eggs.lot_breed IS 'Lote por raza';
            public       postgres    false    317                       0    0 &   COLUMN txprogrammed_eggs.lot_incubator    COMMENT     S   COMMENT ON COLUMN public.txprogrammed_eggs.lot_incubator IS 'Lote de incubadoras';
            public       postgres    false    317                       0    0    COLUMN txprogrammed_eggs.eggs    COMMENT     I   COMMENT ON COLUMN public.txprogrammed_eggs.eggs IS 'Cantidad de huevos';
            public       postgres    false    317                       0    0 !   COLUMN txprogrammed_eggs.breed_id    COMMENT     E   COMMENT ON COLUMN public.txprogrammed_eggs.breed_id IS 'Id de raza';
            public       postgres    false    317                       0    0 +   COLUMN txprogrammed_eggs.execution_quantity    COMMENT     [   COMMENT ON COLUMN public.txprogrammed_eggs.execution_quantity IS 'Cantidad de ejecución';
            public       postgres    false    317            >           1259    84092    txscenarioformula    TABLE     �  CREATE TABLE public.txscenarioformula (
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
       public         postgres    false    292    3                       0    0    TABLE txscenarioformula    COMMENT     �   COMMENT ON TABLE public.txscenarioformula IS 'Almacena los datos para la formulación de salida de la planificación regresiva';
            public       postgres    false    318                       0    0 ,   COLUMN txscenarioformula.scenario_formula_id    COMMENT     d   COMMENT ON COLUMN public.txscenarioformula.scenario_formula_id IS 'Id de la formula del escenario';
            public       postgres    false    318                       0    0 #   COLUMN txscenarioformula.process_id    COMMENT     K   COMMENT ON COLUMN public.txscenarioformula.process_id IS 'Id del proceso';
            public       postgres    false    318                       0    0 '   COLUMN txscenarioformula.predecessor_id    COMMENT     R   COMMENT ON COLUMN public.txscenarioformula.predecessor_id IS 'Id del predecesor';
            public       postgres    false    318                       0    0 %   COLUMN txscenarioformula.parameter_id    COMMENT     O   COMMENT ON COLUMN public.txscenarioformula.parameter_id IS 'Id del parametro';
            public       postgres    false    318                       0    0    COLUMN txscenarioformula.sign    COMMENT     E   COMMENT ON COLUMN public.txscenarioformula.sign IS 'Firma de datos';
            public       postgres    false    318                       0    0     COLUMN txscenarioformula.divider    COMMENT     J   COMMENT ON COLUMN public.txscenarioformula.divider IS 'divisor de datos';
            public       postgres    false    318                       0    0 !   COLUMN txscenarioformula.duration    COMMENT     Q   COMMENT ON COLUMN public.txscenarioformula.duration IS 'Duracion de la formula';
            public       postgres    false    318                       0    0    COLUMN txscenarioformula.level    COMMENT     K   COMMENT ON COLUMN public.txscenarioformula.level IS 'Nivel del escenario';
            public       postgres    false    318                       0    0 $   COLUMN txscenarioformula.scenario_id    COMMENT     N   COMMENT ON COLUMN public.txscenarioformula.scenario_id IS 'Id del escenario';
            public       postgres    false    318                        0    0 #   COLUMN txscenarioformula.measure_id    COMMENT     M   COMMENT ON COLUMN public.txscenarioformula.measure_id IS 'Id de la medida
';
            public       postgres    false    318            ?           1259    84096    txscenariohen    TABLE     �   CREATE TABLE public.txscenariohen (
    _week integer NOT NULL,
    _year integer NOT NULL,
    scenario_id integer NOT NULL,
    quantity_hen integer,
    breed_id integer NOT NULL
);
 !   DROP TABLE public.txscenariohen;
       public         postgres    false    3            @           1259    84099    txscenarioparameter    TABLE     f  CREATE TABLE public.txscenarioparameter (
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
       public         postgres    false    294    3            !           0    0    TABLE txscenarioparameter    COMMENT     s   COMMENT ON TABLE public.txscenarioparameter IS 'Almacena las metas de producción ingresadas para los escenarios';
            public       postgres    false    320            "           0    0 0   COLUMN txscenarioparameter.scenario_parameter_id    COMMENT     l   COMMENT ON COLUMN public.txscenarioparameter.scenario_parameter_id IS 'Id de los parametros del escenario';
            public       postgres    false    320            #           0    0 %   COLUMN txscenarioparameter.process_id    COMMENT     M   COMMENT ON COLUMN public.txscenarioparameter.process_id IS 'Id del proceso';
            public       postgres    false    320            $           0    0 '   COLUMN txscenarioparameter.parameter_id    COMMENT     Q   COMMENT ON COLUMN public.txscenarioparameter.parameter_id IS 'Id del parametro';
            public       postgres    false    320            %           0    0    COLUMN txscenarioparameter.year    COMMENT     K   COMMENT ON COLUMN public.txscenarioparameter.year IS 'Año del parametro';
            public       postgres    false    320            &           0    0     COLUMN txscenarioparameter.month    COMMENT     K   COMMENT ON COLUMN public.txscenarioparameter.month IS 'Mes del parametro';
            public       postgres    false    320            '           0    0     COLUMN txscenarioparameter.value    COMMENT     M   COMMENT ON COLUMN public.txscenarioparameter.value IS 'Valor del parametro';
            public       postgres    false    320            (           0    0 &   COLUMN txscenarioparameter.scenario_id    COMMENT     P   COMMENT ON COLUMN public.txscenarioparameter.scenario_id IS 'Id del escenario';
            public       postgres    false    320            )           0    0 &   COLUMN txscenarioparameter.value_units    COMMENT     U   COMMENT ON COLUMN public.txscenarioparameter.value_units IS 'Valor de las unidades';
            public       postgres    false    320            A           1259    84104    txscenarioparameterday    TABLE     k  CREATE TABLE public.txscenarioparameterday (
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
       public         postgres    false    293    3            *           0    0    TABLE txscenarioparameterday    COMMENT     V   COMMENT ON TABLE public.txscenarioparameterday IS 'Almcacena los parametros por dia';
            public       postgres    false    321            +           0    0 7   COLUMN txscenarioparameterday.scenario_parameter_day_id    COMMENT     m   COMMENT ON COLUMN public.txscenarioparameterday.scenario_parameter_day_id IS 'Id de los parametros del dia';
            public       postgres    false    321            ,           0    0 !   COLUMN txscenarioparameterday.day    COMMENT     >   COMMENT ON COLUMN public.txscenarioparameterday.day IS 'Dia';
            public       postgres    false    321            -           0    0 *   COLUMN txscenarioparameterday.parameter_id    COMMENT     c   COMMENT ON COLUMN public.txscenarioparameterday.parameter_id IS 'Id de los parametros necesarios';
            public       postgres    false    321            .           0    0 '   COLUMN txscenarioparameterday.units_day    COMMENT     U   COMMENT ON COLUMN public.txscenarioparameterday.units_day IS 'Cantidad de material';
            public       postgres    false    321            /           0    0 )   COLUMN txscenarioparameterday.scenario_id    COMMENT     u   COMMENT ON COLUMN public.txscenarioparameterday.scenario_id IS 'Escenario al cual pertenece el scanrioparameterday';
            public       postgres    false    321            0           0    0 &   COLUMN txscenarioparameterday.sequence    COMMENT     R   COMMENT ON COLUMN public.txscenarioparameterday.sequence IS 'Secuencia del dia
';
            public       postgres    false    321            1           0    0 #   COLUMN txscenarioparameterday.month    COMMENT     Y   COMMENT ON COLUMN public.txscenarioparameterday.month IS 'Mes en que se ubica el día ';
            public       postgres    false    321            2           0    0 "   COLUMN txscenarioparameterday.year    COMMENT     Y   COMMENT ON COLUMN public.txscenarioparameterday.year IS 'Año en que se ubica el día ';
            public       postgres    false    321            3           0    0 &   COLUMN txscenarioparameterday.week_day    COMMENT     P   COMMENT ON COLUMN public.txscenarioparameterday.week_day IS 'Dia de la semana';
            public       postgres    false    321            4           0    0 "   COLUMN txscenarioparameterday.week    COMMENT     B   COMMENT ON COLUMN public.txscenarioparameterday.week IS 'Semana';
            public       postgres    false    321            B           1259    84108    txscenarioposturecurve    TABLE     3  CREATE TABLE public.txscenarioposturecurve (
    scenario_posture_id integer DEFAULT nextval('public.scenario_posture_id_seq'::regclass) NOT NULL,
    posture_date date,
    eggs double precision,
    scenario_id integer NOT NULL,
    housingway_detail_id integer NOT NULL,
    breed_id integer NOT NULL
);
 *   DROP TABLE public.txscenarioposturecurve;
       public         postgres    false    295    3            5           0    0    TABLE txscenarioposturecurve    COMMENT     o   COMMENT ON TABLE public.txscenarioposturecurve IS 'Almacena los datos que se utilizan en la curva de postura';
            public       postgres    false    322            6           0    0 1   COLUMN txscenarioposturecurve.scenario_posture_id    COMMENT     i   COMMENT ON COLUMN public.txscenarioposturecurve.scenario_posture_id IS 'Id de la postura del escenario';
            public       postgres    false    322            7           0    0 *   COLUMN txscenarioposturecurve.posture_date    COMMENT     W   COMMENT ON COLUMN public.txscenarioposturecurve.posture_date IS 'Fecha de la postura';
            public       postgres    false    322            8           0    0 "   COLUMN txscenarioposturecurve.eggs    COMMENT     N   COMMENT ON COLUMN public.txscenarioposturecurve.eggs IS 'Cantidad de huevos';
            public       postgres    false    322            9           0    0 )   COLUMN txscenarioposturecurve.scenario_id    COMMENT     R   COMMENT ON COLUMN public.txscenarioposturecurve.scenario_id IS 'Id del scenario';
            public       postgres    false    322            :           0    0 2   COLUMN txscenarioposturecurve.housingway_detail_id    COMMENT     �   COMMENT ON COLUMN public.txscenarioposturecurve.housingway_detail_id IS 'Id de la programación y ejecución de los modelos de levante y cría y reproductora';
            public       postgres    false    322            ;           0    0 &   COLUMN txscenarioposturecurve.breed_id    COMMENT     M   COMMENT ON COLUMN public.txscenarioposturecurve.breed_id IS 'Id de la raza';
            public       postgres    false    322            C           1259    84112    txscenarioprocess    TABLE     4  CREATE TABLE public.txscenarioprocess (
    scenario_process_id integer DEFAULT nextval('public.scenario_process_id_seq'::regclass) NOT NULL,
    process_id integer NOT NULL,
    decrease_goal double precision,
    weight_goal double precision,
    duration_goal integer,
    scenario_id integer NOT NULL
);
 %   DROP TABLE public.txscenarioprocess;
       public         postgres    false    296    3            <           0    0    TABLE txscenarioprocess    COMMENT     m   COMMENT ON TABLE public.txscenarioprocess IS 'Almacena los procesos asociados a cada uno de los escenarios';
            public       postgres    false    323            =           0    0 ,   COLUMN txscenarioprocess.scenario_process_id    COMMENT     a   COMMENT ON COLUMN public.txscenarioprocess.scenario_process_id IS 'Id del proceso de escenario';
            public       postgres    false    323            >           0    0 #   COLUMN txscenarioprocess.process_id    COMMENT     V   COMMENT ON COLUMN public.txscenarioprocess.process_id IS 'Id del proceso a utilizar';
            public       postgres    false    323            ?           0    0 &   COLUMN txscenarioprocess.decrease_goal    COMMENT     v   COMMENT ON COLUMN public.txscenarioprocess.decrease_goal IS 'Guarda los datos de la merma historia en dicho proceso';
            public       postgres    false    323            @           0    0 $   COLUMN txscenarioprocess.weight_goal    COMMENT     q   COMMENT ON COLUMN public.txscenarioprocess.weight_goal IS 'Guarda los datos del peso historio en dicho proceso';
            public       postgres    false    323            A           0    0 &   COLUMN txscenarioprocess.duration_goal    COMMENT     y   COMMENT ON COLUMN public.txscenarioprocess.duration_goal IS 'Guarda los datos de la duracion historia en dicho proceso';
            public       postgres    false    323            B           0    0 $   COLUMN txscenarioprocess.scenario_id    COMMENT     X   COMMENT ON COLUMN public.txscenarioprocess.scenario_id IS 'Id del escenario utilizado';
            public       postgres    false    323            D           1259    84116 #   user_application_application_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_application_application_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 :   DROP SEQUENCE public.user_application_application_id_seq;
       public       postgres    false    3            E           1259    84118     user_application_user_app_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_application_user_app_id_seq
    START WITH 215
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 7   DROP SEQUENCE public.user_application_user_app_id_seq;
       public       postgres    false    3            F           1259    84120    user_application_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_application_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 3   DROP SEQUENCE public.user_application_user_id_seq;
       public       postgres    false    3            #           2604    84122    txgoals_erp goals_erp_id    DEFAULT     �   ALTER TABLE ONLY public.txgoals_erp ALTER COLUMN goals_erp_id SET DEFAULT nextval('public.txgoals_erp_goals_erp_id_seq'::regclass);
 G   ALTER TABLE public.txgoals_erp ALTER COLUMN goals_erp_id DROP DEFAULT;
       public       postgres    false    310    309                      0    83725    aba_breeds_and_stages 
   TABLE DATA               m   COPY public.aba_breeds_and_stages (id, code, name, id_aba_consumption_and_mortality, id_process) FROM stdin;
    public       postgres    false    198   k�                0    83731    aba_consumption_and_mortality 
   TABLE DATA               m   COPY public.aba_consumption_and_mortality (id, code, name, id_breed, id_stage, id_aba_time_unit) FROM stdin;
    public       postgres    false    200   ��                0    83737 $   aba_consumption_and_mortality_detail 
   TABLE DATA               �   COPY public.aba_consumption_and_mortality_detail (id, id_aba_consumption_and_mortality, time_unit_number, consumption, mortality) FROM stdin;
    public       postgres    false    202   ��                 0    83743    aba_elements 
   TABLE DATA               6   COPY public.aba_elements (id, code, name) FROM stdin;
    public       postgres    false    204         "          0    83749    aba_elements_and_concentrations 
   TABLE DATA               �   COPY public.aba_elements_and_concentrations (id, id_aba_element, id_aba_formulation, proportion, id_element_equivalent, id_aba_element_property, equivalent_quantity) FROM stdin;
    public       postgres    false    206   �      $          0    83755    aba_elements_properties 
   TABLE DATA               A   COPY public.aba_elements_properties (id, code, name) FROM stdin;
    public       postgres    false    208   �      &          0    83761    aba_formulation 
   TABLE DATA               9   COPY public.aba_formulation (id, code, name) FROM stdin;
    public       postgres    false    210   1�      (          0    83767    aba_results 
   TABLE DATA               C   COPY public.aba_results (id, id_aba_element, quantity) FROM stdin;
    public       postgres    false    212   U�      *          0    83773    aba_stages_of_breeds_and_stages 
   TABLE DATA               w   COPY public.aba_stages_of_breeds_and_stages (id, id_aba_breeds_and_stages, id_formulation, name, duration) FROM stdin;
    public       postgres    false    214   r�      +          0    83777    aba_time_unit 
   TABLE DATA               G   COPY public.aba_time_unit (id, singular_name, plural_name) FROM stdin;
    public       postgres    false    215   ��      K          0    83843    mdapplication 
   TABLE DATA               I   COPY public.mdapplication (application_id, application_name) FROM stdin;
    public       postgres    false    247   ��      L          0    83847    mdapplication_rol 
   TABLE DATA               G   COPY public.mdapplication_rol (application_id, rol_id, id) FROM stdin;
    public       postgres    false    248   t�      M          0    83850    mdbreed 
   TABLE DATA               7   COPY public.mdbreed (breed_id, code, name) FROM stdin;
    public       postgres    false    249   ۆ      N          0    83854    mdbroiler_product 
   TABLE DATA               \   COPY public.mdbroiler_product (broiler_product_id, name, days_eviction, weight) FROM stdin;
    public       postgres    false    250   �      O          0    83858 
   mdfarmtype 
   TABLE DATA               8   COPY public.mdfarmtype (farm_type_id, name) FROM stdin;
    public       postgres    false    251   D�      P          0    83862 
   mdindustry 
   TABLE DATA               7   COPY public.mdindustry (industry_id, name) FROM stdin;
    public       postgres    false    252   ��      R          0    83868 	   mdmeasure 
   TABLE DATA               Y   COPY public.mdmeasure (measure_id, name, abbreviation, originvalue, valuekg) FROM stdin;
    public       postgres    false    254   ��      T          0    83874    mdparameter 
   TABLE DATA               d   COPY public.mdparameter (parameter_id, description, type, measure_id, process_id, name) FROM stdin;
    public       postgres    false    256   ��      V          0    83883 	   mdprocess 
   TABLE DATA               \  COPY public.mdprocess (process_id, process_order, product_id, stage_id, historical_decrease, theoretical_decrease, historical_weight, theoretical_weight, historical_duration, theoretical_duration, calendar_id, visible, name, predecessor_id, capacity, breed_id, gender, fattening_goal, type_posture, process_class_id, biological_active) FROM stdin;
    public       postgres    false    258   h�      X          0    83889    mdprocessclass 
   TABLE DATA               M   COPY public.mdprocessclass (process_class_id, name, industry_id) FROM stdin;
    public       postgres    false    260   3�      Z          0    83895 	   mdproduct 
   TABLE DATA               ;   COPY public.mdproduct (product_id, code, name) FROM stdin;
    public       postgres    false    262   ��      [          0    83899    mdrol 
   TABLE DATA               T   COPY public.mdrol (rol_id, rol_name, admin_user_creator, creation_date) FROM stdin;
    public       postgres    false    263   
�      ]          0    83904 
   mdscenario 
   TABLE DATA               b   COPY public.mdscenario (scenario_id, description, date_start, date_end, name, status) FROM stdin;
    public       postgres    false    265   e�      _          0    83914    mdshedstatus 
   TABLE DATA               I   COPY public.mdshedstatus (shed_status_id, name, description) FROM stdin;
    public       postgres    false    267   ��      a          0    83920    mdstage 
   TABLE DATA               9   COPY public.mdstage (stage_id, order_, name) FROM stdin;
    public       postgres    false    269   a�      c          0    83926    mduser 
   TABLE DATA               �   COPY public.mduser (username, password, type_user, name, lastname, active, admi_user_creator, rol_id, creation_date, user_id) FROM stdin;
    public       postgres    false    271   ��      d          0    83930    oscenter 
   TABLE DATA               ]   COPY public.oscenter (center_id, partnership_id, farm_id, name, client_id, code) FROM stdin;
    public       postgres    false    272   ̍      e          0    83934    oscenter_oswarehouse 
   TABLE DATA               x   COPY public.oscenter_oswarehouse (client_id, partnership_id, farm_id, center_id, warehouse_id, delete_mark) FROM stdin;
    public       postgres    false    273   ��      f          0    83937    osfarm 
   TABLE DATA               }   COPY public.osfarm (farm_id, partnership_id, code, name, state_id, city_id, property, farm_type_id, icaregistry) FROM stdin;
    public       postgres    false    274   ��      g          0    83941    osincubator 
   TABLE DATA               �   COPY public.osincubator (incubator_id, incubator_plant_id, name, code, description, capacity, sunday, monday, tuesday, wednesday, thursday, friday, saturday) FROM stdin;
    public       postgres    false    275   ��      h          0    83945    osincubatorplant 
   TABLE DATA               �   COPY public.osincubatorplant (incubator_plant_id, name, code, description, partnership_id, max_storage, min_storage) FROM stdin;
    public       postgres    false    276   �      j          0    83951    ospartnership 
   TABLE DATA               �   COPY public.ospartnership (partnership_id, name, address, description, country_id, state_id, city_id, zip_code, code) FROM stdin;
    public       postgres    false    278   %�      l          0    83960    osshed 
   TABLE DATA               !  COPY public.osshed (shed_id, partnership_id, farm_id, center_id, client_id, code, statusshed_id, type_id, building_date, stall_width, stall_height, capacity_min, capacity_max, environment_id, rotation_days, nests_quantity, cages_quantity, birds_quantity, capacity_theoretical) FROM stdin;
    public       postgres    false    280   ې      n          0    83971    ossilo 
   TABLE DATA               ?  COPY public.ossilo (silo_id, client_id, partnership_id, farm_id, center_id, name, rings_height, rings_height_id, height, height_unit_id, diameter, diameter_unit_id, total_rings_quantity, measuring_mechanism, cone_degrees, total_capacity_1, total_capacity_2, capacity_unit_id_1, capacity_unit_id_2, central) FROM stdin;
    public       postgres    false    282   ��      o          0    83975    ossilo_osshed 
   TABLE DATA               v   COPY public.ossilo_osshed (silo_id, shed_id, center_id, farm_id, partnership_id, client_id, deleted_mark) FROM stdin;
    public       postgres    false    283   ��      q          0    83980    osslaughterhouse 
   TABLE DATA               �   COPY public.osslaughterhouse (slaughterhouse_id, name, address, description, country_id, state_id, city_id, zip_code, code, capacity) FROM stdin;
    public       postgres    false    285   ɑ      s          0    83989    oswarehouse 
   TABLE DATA               c   COPY public.oswarehouse (warehouse_id, partnership_id, farm_id, name, client_id, code) FROM stdin;
    public       postgres    false    287   �      }          0    84011    txavailabilitysheds 
   TABLE DATA               k   COPY public.txavailabilitysheds (availability_shed_id, shed_id, init_date, end_date, lot_code) FROM stdin;
    public       postgres    false    297   ��      ~          0    84015 	   txbroiler 
   TABLE DATA               �   COPY public.txbroiler (broiler_id, projected_date, projected_quantity, partnership_id, scenario_id, breed_id, lot_incubator, programmed_eggs_id) FROM stdin;
    public       postgres    false    298   ��                0    84019    txbroiler_detail 
   TABLE DATA               �   COPY public.txbroiler_detail (broiler_detail_id, broiler_id, scheduled_date, scheduled_quantity, farm_id, shed_id, confirm, execution_date, execution_quantity, lot, broiler_product_id) FROM stdin;
    public       postgres    false    299   ��      �          0    84023    txbroilereviction 
   TABLE DATA               �   COPY public.txbroilereviction (broilereviction_id, projected_date, projected_quantity, partnership_id, scenario_id, breed_id, lot_incubator) FROM stdin;
    public       postgres    false    300   >�      �          0    84027    txbroilereviction_detail 
   TABLE DATA               �   COPY public.txbroilereviction_detail (broilereviction_detail_id, broilereviction_id, scheduled_date, scheduled_quantity, farm_id, shed_id, confirm, execution_date, execution_quantity, lot, broiler_product_id, slaughterhouse_id) FROM stdin;
    public       postgres    false    301   z�      �          0    84031    txbroilerproduct_detail 
   TABLE DATA               y   COPY public.txbroilerproduct_detail (broilerproduct_detail_id, broiler_detail, broiler_product_id, quantity) FROM stdin;
    public       postgres    false    302   Ó      �          0    84035    txbroodermachine 
   TABLE DATA               �   COPY public.txbroodermachine (brooder_machine_id_seq, partnership_id, farm_id, capacity, sunday, monday, tuesday, wednesday, thursday, friday, saturday, name) FROM stdin;
    public       postgres    false    303   ��      �          0    84039 
   txcalendar 
   TABLE DATA               �   COPY public.txcalendar (calendar_id, description, saturday, sunday, week_start, code, year_start, year_end, generated) FROM stdin;
    public       postgres    false    304   ��      �          0    84043    txcalendarday 
   TABLE DATA               �   COPY public.txcalendarday (calendar_day_id, calendar_id, date, year, month, day, week, week_day, description, sequence, working_day) FROM stdin;
    public       postgres    false    305   ̔      �          0    84047    txeggs_planning 
   TABLE DATA               y   COPY public.txeggs_planning (egg_planning_id, month_planning, year_planning, scenario_id, planned, breed_id) FROM stdin;
    public       postgres    false    306   s�      �          0    84051    txeggs_required 
   TABLE DATA               j   COPY public.txeggs_required (egg_required_id, _month, _year, scenario_id, required, breed_id) FROM stdin;
    public       postgres    false    307   �      �          0    84055    txeggs_storage 
   TABLE DATA               �   COPY public.txeggs_storage (eggs_storage_id, incubator_plant_id, scenario_id, breed_id, init_date, end_date, lot, eggs) FROM stdin;
    public       postgres    false    308   ��      �          0    84059    txgoals_erp 
   TABLE DATA               _   COPY public.txgoals_erp (goals_erp_id, week, value, product_id, code, scenario_id) FROM stdin;
    public       postgres    false    309   ]�      �          0    84064 	   txholiday 
   TABLE DATA               [   COPY public.txholiday (holiday_id, calendar_id, year, month, day, description) FROM stdin;
    public       postgres    false    311   z�      �          0    84068    txhousingway 
   TABLE DATA               �   COPY public.txhousingway (housing_way_id, projected_quantity, projected_date, stage_id, partnership_id, scenario_id, breed_id, predecessor_id) FROM stdin;
    public       postgres    false    312   F�      �          0    84072    txhousingway_detail 
   TABLE DATA               �   COPY public.txhousingway_detail (housingway_detail_id, housing_way_id, scheduled_date, scheduled_quantity, farm_id, shed_id, confirm, execution_date, execution_quantity, lot, incubator_plant_id) FROM stdin;
    public       postgres    false    313   ��      �          0    84076    txlot 
   TABLE DATA                 COPY public.txlot (lot_id, lot_code, process_class_id, lot_origin, status, proyected_date, sheduled_date, proyected_quantity, sheduled_quantity, released_quantity, product_id, breed_id, gender, type_posture, shed_id, origin, farm_id, housing_way_id) FROM stdin;
    public       postgres    false    314   �      �          0    84080 
   txlot_eggs 
   TABLE DATA               Y   COPY public.txlot_eggs (lot_eggs_id, theorical_performance, week_date, week) FROM stdin;
    public       postgres    false    315   -�      �          0    84084    txposturecurve 
   TABLE DATA               �   COPY public.txposturecurve (posture_curve_id, week, breed_id, theorical_performance, historical_performance, theorical_accum_mortality, historical_accum_mortality, theorical_uniformity, historical_uniformity, type_posture) FROM stdin;
    public       postgres    false    316   J�      �          0    84088    txprogrammed_eggs 
   TABLE DATA               �   COPY public.txprogrammed_eggs (programmed_eggs_id, incubator_id, lot_breed, lot_incubator, _date, eggs, breed_id, execution_quantity, eggs_storage_id, confirm) FROM stdin;
    public       postgres    false    317   ��      �          0    84092    txscenarioformula 
   TABLE DATA               �   COPY public.txscenarioformula (scenario_formula_id, process_id, predecessor_id, parameter_id, sign, divider, duration, level, scenario_id, measure_id) FROM stdin;
    public       postgres    false    318   ��      �          0    84096    txscenariohen 
   TABLE DATA               Z   COPY public.txscenariohen (_week, _year, scenario_id, quantity_hen, breed_id) FROM stdin;
    public       postgres    false    319   k�      �          0    84099    txscenarioparameter 
   TABLE DATA               �   COPY public.txscenarioparameter (scenario_parameter_id, process_id, parameter_id, year, month, value, scenario_id, value_units) FROM stdin;
    public       postgres    false    320   ��      �          0    84104    txscenarioparameterday 
   TABLE DATA               �   COPY public.txscenarioparameterday (scenario_parameter_day_id, day, parameter_id, units_day, scenario_id, sequence, month, year, week_day, week) FROM stdin;
    public       postgres    false    321   x�      �          0    84108    txscenarioposturecurve 
   TABLE DATA               �   COPY public.txscenarioposturecurve (scenario_posture_id, posture_date, eggs, scenario_id, housingway_detail_id, breed_id) FROM stdin;
    public       postgres    false    322   �      �          0    84112    txscenarioprocess 
   TABLE DATA               �   COPY public.txscenarioprocess (scenario_process_id, process_id, decrease_goal, weight_goal, duration_goal, scenario_id) FROM stdin;
    public       postgres    false    323   /�      C           0    0    abaTimeUnit_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."abaTimeUnit_id_seq"', 2, false);
            public       postgres    false    196            D           0    0    aba_breeds_and_stages_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.aba_breeds_and_stages_id_seq', 8, false);
            public       postgres    false    197            E           0    0 +   aba_consumption_and_mortality_detail_id_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public.aba_consumption_and_mortality_detail_id_seq', 203, false);
            public       postgres    false    201            F           0    0 $   aba_consumption_and_mortality_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.aba_consumption_and_mortality_id_seq', 8, false);
            public       postgres    false    199            G           0    0 &   aba_elements_and_concentrations_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.aba_elements_and_concentrations_id_seq', 105, true);
            public       postgres    false    205            H           0    0    aba_elements_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.aba_elements_id_seq', 22, true);
            public       postgres    false    203            I           0    0    aba_elements_properties_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.aba_elements_properties_id_seq', 1, false);
            public       postgres    false    207            J           0    0    aba_formulation_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.aba_formulation_id_seq', 68, true);
            public       postgres    false    209            K           0    0    aba_results_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.aba_results_id_seq', 1, false);
            public       postgres    false    211            L           0    0 &   aba_stages_of_breeds_and_stages_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.aba_stages_of_breeds_and_stages_id_seq', 24, false);
            public       postgres    false    213            M           0    0    application_application_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.application_application_id_seq', 1, false);
            public       postgres    false    216            N           0    0    availability_shed_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.availability_shed_id_seq', 301, true);
            public       postgres    false    217            O           0    0    base_day_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.base_day_id_seq', 3, true);
            public       postgres    false    218            P           0    0    breed_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.breed_id_seq', 15, true);
            public       postgres    false    219            Q           0    0    broiler_detail_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.broiler_detail_id_seq', 55, true);
            public       postgres    false    220            R           0    0    broiler_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.broiler_id_seq', 77, true);
            public       postgres    false    221            S           0    0    broiler_product_detail_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.broiler_product_detail_id_seq', 2, true);
            public       postgres    false    222            T           0    0    broiler_product_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.broiler_product_id_seq', 21, true);
            public       postgres    false    223            U           0    0    broilereviction_detail_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.broilereviction_detail_id_seq', 133, true);
            public       postgres    false    224            V           0    0    broilereviction_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.broilereviction_id_seq', 83, true);
            public       postgres    false    225            W           0    0    brooder_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.brooder_id_seq', 52, true);
            public       postgres    false    226            X           0    0    brooder_machines_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.brooder_machines_id_seq', 7, true);
            public       postgres    false    227            Y           0    0    calendar_day_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.calendar_day_id_seq', 10952, true);
            public       postgres    false    228            Z           0    0    calendar_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.calendar_id_seq', 12, true);
            public       postgres    false    229            [           0    0    center_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.center_id_seq', 126, true);
            public       postgres    false    230            \           0    0    egg_planning_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.egg_planning_id_seq', 2734, true);
            public       postgres    false    231            ]           0    0    egg_required_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.egg_required_id_seq', 2831, true);
            public       postgres    false    232            ^           0    0    eggs_storage_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.eggs_storage_id_seq', 25047, true);
            public       postgres    false    233            _           0    0    farm_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.farm_id_seq', 159, true);
            public       postgres    false    234            `           0    0    farm_type_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.farm_type_id_seq', 3, true);
            public       postgres    false    235            a           0    0    holiday_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.holiday_id_seq', 297, true);
            public       postgres    false    236            b           0    0    housing_way_detail_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.housing_way_detail_id_seq', 554, true);
            public       postgres    false    237            c           0    0    housing_way_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.housing_way_id_seq', 768, true);
            public       postgres    false    238            d           0    0    incubator_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.incubator_id_seq', 23, true);
            public       postgres    false    239            e           0    0    incubator_plant_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.incubator_plant_id_seq', 19, true);
            public       postgres    false    240            f           0    0    industry_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.industry_id_seq', 1, true);
            public       postgres    false    241            g           0    0    line_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.line_id_seq', 1, true);
            public       postgres    false    242            h           0    0    lot_eggs_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.lot_eggs_id_seq', 108, true);
            public       postgres    false    243            i           0    0    lot_fattening_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.lot_fattening_id_seq', 1, false);
            public       postgres    false    244            j           0    0 
   lot_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.lot_id_seq', 316, true);
            public       postgres    false    245            k           0    0    lot_liftbreeding_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.lot_liftbreeding_id_seq', 4, true);
            public       postgres    false    246            l           0    0    measure_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.measure_id_seq', 15, true);
            public       postgres    false    253            m           0    0    parameter_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.parameter_id_seq', 48, true);
            public       postgres    false    255            n           0    0    partnership_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.partnership_id_seq', 30, true);
            public       postgres    false    277            o           0    0    posture_curve_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.posture_curve_id_seq', 325, true);
            public       postgres    false    288            p           0    0    predecessor_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.predecessor_id_seq', 13, true);
            public       postgres    false    289            q           0    0    process_class_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.process_class_id_seq', 5, true);
            public       postgres    false    259            r           0    0    process_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.process_id_seq', 74, true);
            public       postgres    false    257            s           0    0    product_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.product_id_seq', 86, true);
            public       postgres    false    261            t           0    0    programmed_eggs_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.programmed_eggs_id_seq', 261, true);
            public       postgres    false    290            u           0    0    raspberry_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.raspberry_id_seq', 5, true);
            public       postgres    false    291            v           0    0    scenario_formula_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.scenario_formula_id_seq', 1155, true);
            public       postgres    false    292            w           0    0    scenario_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.scenario_id_seq', 148, true);
            public       postgres    false    264            x           0    0    scenario_parameter_day_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.scenario_parameter_day_seq', 37771, true);
            public       postgres    false    293            y           0    0    scenario_parameter_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.scenario_parameter_id_seq', 3833, true);
            public       postgres    false    294            z           0    0    scenario_posture_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.scenario_posture_id_seq', 48754, true);
            public       postgres    false    295            {           0    0    scenario_process_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.scenario_process_id_seq', 759, true);
            public       postgres    false    296            |           0    0    shed_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.shed_id_seq', 363, true);
            public       postgres    false    279            }           0    0    silo_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.silo_id_seq', 4, true);
            public       postgres    false    281            ~           0    0    slaughterhouse_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.slaughterhouse_id_seq', 35, true);
            public       postgres    false    284                       0    0    stage_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.stage_id_seq', 27, true);
            public       postgres    false    268            �           0    0    status_shed_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.status_shed_id_seq', 10, true);
            public       postgres    false    266            �           0    0    txgoals_erp_goals_erp_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.txgoals_erp_goals_erp_id_seq', 1920, true);
            public       postgres    false    310            �           0    0 #   user_application_application_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.user_application_application_id_seq', 1, false);
            public       postgres    false    324            �           0    0     user_application_user_app_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.user_application_user_app_id_seq', 215, true);
            public       postgres    false    325            �           0    0    user_application_user_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.user_application_user_id_seq', 1, false);
            public       postgres    false    326            �           0    0    user_user_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.user_user_id_seq', 40, false);
            public       postgres    false    270            �           0    0    warehouse_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.warehouse_id_seq', 110, true);
            public       postgres    false    286            P           2606    84124    aba_time_unit abaTimeUnit_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.aba_time_unit
    ADD CONSTRAINT "abaTimeUnit_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.aba_time_unit DROP CONSTRAINT "abaTimeUnit_pkey";
       public         postgres    false    215            2           2606    84126 0   aba_breeds_and_stages aba_breeds_and_stages_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.aba_breeds_and_stages
    ADD CONSTRAINT aba_breeds_and_stages_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.aba_breeds_and_stages DROP CONSTRAINT aba_breeds_and_stages_pkey;
       public         postgres    false    198            ;           2606    84128 N   aba_consumption_and_mortality_detail aba_consumption_and_mortality_detail_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.aba_consumption_and_mortality_detail
    ADD CONSTRAINT aba_consumption_and_mortality_detail_pkey PRIMARY KEY (id);
 x   ALTER TABLE ONLY public.aba_consumption_and_mortality_detail DROP CONSTRAINT aba_consumption_and_mortality_detail_pkey;
       public         postgres    false    202            6           2606    84130 @   aba_consumption_and_mortality aba_consumption_and_mortality_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.aba_consumption_and_mortality
    ADD CONSTRAINT aba_consumption_and_mortality_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.aba_consumption_and_mortality DROP CONSTRAINT aba_consumption_and_mortality_pkey;
       public         postgres    false    200            @           2606    84132 D   aba_elements_and_concentrations aba_elements_and_concentrations_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.aba_elements_and_concentrations
    ADD CONSTRAINT aba_elements_and_concentrations_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.aba_elements_and_concentrations DROP CONSTRAINT aba_elements_and_concentrations_pkey;
       public         postgres    false    206            >           2606    84134    aba_elements aba_elements_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.aba_elements
    ADD CONSTRAINT aba_elements_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.aba_elements DROP CONSTRAINT aba_elements_pkey;
       public         postgres    false    204            E           2606    84136 4   aba_elements_properties aba_elements_properties_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.aba_elements_properties
    ADD CONSTRAINT aba_elements_properties_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.aba_elements_properties DROP CONSTRAINT aba_elements_properties_pkey;
       public         postgres    false    208            G           2606    84138 $   aba_formulation aba_formulation_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.aba_formulation
    ADD CONSTRAINT aba_formulation_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.aba_formulation DROP CONSTRAINT aba_formulation_pkey;
       public         postgres    false    210            I           2606    84140    aba_results aba_results_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.aba_results
    ADD CONSTRAINT aba_results_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.aba_results DROP CONSTRAINT aba_results_pkey;
       public         postgres    false    212            L           2606    84142 D   aba_stages_of_breeds_and_stages aba_stages_of_breeds_and_stages_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.aba_stages_of_breeds_and_stages
    ADD CONSTRAINT aba_stages_of_breeds_and_stages_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.aba_stages_of_breeds_and_stages DROP CONSTRAINT aba_stages_of_breeds_and_stages_pkey;
       public         postgres    false    214            R           2606    84144    mdapplication application_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.mdapplication
    ADD CONSTRAINT application_pkey PRIMARY KEY (application_id);
 H   ALTER TABLE ONLY public.mdapplication DROP CONSTRAINT application_pkey;
       public         postgres    false    247            T           2606    84146 &   mdapplication_rol application_rol_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.mdapplication_rol
    ADD CONSTRAINT application_rol_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.mdapplication_rol DROP CONSTRAINT application_rol_pkey;
       public         postgres    false    248            V           2606    84148    mdbreed mdbreed_code_key 
   CONSTRAINT     S   ALTER TABLE ONLY public.mdbreed
    ADD CONSTRAINT mdbreed_code_key UNIQUE (code);
 B   ALTER TABLE ONLY public.mdbreed DROP CONSTRAINT mdbreed_code_key;
       public         postgres    false    249            X           2606    84150    mdbreed mdbreed_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.mdbreed
    ADD CONSTRAINT mdbreed_pkey PRIMARY KEY (breed_id);
 >   ALTER TABLE ONLY public.mdbreed DROP CONSTRAINT mdbreed_pkey;
       public         postgres    false    249            Z           2606    84152 (   mdbroiler_product mdbroiler_product_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.mdbroiler_product
    ADD CONSTRAINT mdbroiler_product_pkey PRIMARY KEY (broiler_product_id);
 R   ALTER TABLE ONLY public.mdbroiler_product DROP CONSTRAINT mdbroiler_product_pkey;
       public         postgres    false    250            \           2606    84154    mdfarmtype mdfarmtype_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.mdfarmtype
    ADD CONSTRAINT mdfarmtype_pkey PRIMARY KEY (farm_type_id);
 D   ALTER TABLE ONLY public.mdfarmtype DROP CONSTRAINT mdfarmtype_pkey;
       public         postgres    false    251            ^           2606    84156 !   mdindustry mdindustry_name_unique 
   CONSTRAINT     \   ALTER TABLE ONLY public.mdindustry
    ADD CONSTRAINT mdindustry_name_unique UNIQUE (name);
 K   ALTER TABLE ONLY public.mdindustry DROP CONSTRAINT mdindustry_name_unique;
       public         postgres    false    252            `           2606    84158    mdindustry mdindustry_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.mdindustry
    ADD CONSTRAINT mdindustry_pkey PRIMARY KEY (industry_id);
 D   ALTER TABLE ONLY public.mdindustry DROP CONSTRAINT mdindustry_pkey;
       public         postgres    false    252            b           2606    84160    mdmeasure mdmeasure_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.mdmeasure
    ADD CONSTRAINT mdmeasure_pkey PRIMARY KEY (measure_id);
 B   ALTER TABLE ONLY public.mdmeasure DROP CONSTRAINT mdmeasure_pkey;
       public         postgres    false    254            f           2606    84162    mdparameter mdparameter_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.mdparameter
    ADD CONSTRAINT mdparameter_pkey PRIMARY KEY (parameter_id);
 F   ALTER TABLE ONLY public.mdparameter DROP CONSTRAINT mdparameter_pkey;
       public         postgres    false    256            m           2606    84164    mdprocess mdprocess_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.mdprocess
    ADD CONSTRAINT mdprocess_pkey PRIMARY KEY (process_id);
 B   ALTER TABLE ONLY public.mdprocess DROP CONSTRAINT mdprocess_pkey;
       public         postgres    false    258            p           2606    84166 "   mdprocessclass mdprocessclass_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.mdprocessclass
    ADD CONSTRAINT mdprocessclass_pkey PRIMARY KEY (process_class_id);
 L   ALTER TABLE ONLY public.mdprocessclass DROP CONSTRAINT mdprocessclass_pkey;
       public         postgres    false    260            r           2606    84168    mdproduct mdproduct_code_unique 
   CONSTRAINT     Z   ALTER TABLE ONLY public.mdproduct
    ADD CONSTRAINT mdproduct_code_unique UNIQUE (code);
 I   ALTER TABLE ONLY public.mdproduct DROP CONSTRAINT mdproduct_code_unique;
       public         postgres    false    262            t           2606    84170    mdproduct mdproduct_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.mdproduct
    ADD CONSTRAINT mdproduct_pkey PRIMARY KEY (product_id);
 B   ALTER TABLE ONLY public.mdproduct DROP CONSTRAINT mdproduct_pkey;
       public         postgres    false    262            x           2606    84172 !   mdscenario mdscenario_name_unique 
   CONSTRAINT     \   ALTER TABLE ONLY public.mdscenario
    ADD CONSTRAINT mdscenario_name_unique UNIQUE (name);
 K   ALTER TABLE ONLY public.mdscenario DROP CONSTRAINT mdscenario_name_unique;
       public         postgres    false    265            z           2606    84174    mdscenario mdscenario_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.mdscenario
    ADD CONSTRAINT mdscenario_pkey PRIMARY KEY (scenario_id);
 D   ALTER TABLE ONLY public.mdscenario DROP CONSTRAINT mdscenario_pkey;
       public         postgres    false    265            |           2606    84176    mdshedstatus mdshedstatus_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.mdshedstatus
    ADD CONSTRAINT mdshedstatus_pkey PRIMARY KEY (shed_status_id);
 H   ALTER TABLE ONLY public.mdshedstatus DROP CONSTRAINT mdshedstatus_pkey;
       public         postgres    false    267            ~           2606    84178    mdstage mdstage_name_unique 
   CONSTRAINT     V   ALTER TABLE ONLY public.mdstage
    ADD CONSTRAINT mdstage_name_unique UNIQUE (name);
 E   ALTER TABLE ONLY public.mdstage DROP CONSTRAINT mdstage_name_unique;
       public         postgres    false    269            �           2606    84180    mdstage mdstage_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.mdstage
    ADD CONSTRAINT mdstage_pkey PRIMARY KEY (stage_id);
 >   ALTER TABLE ONLY public.mdstage DROP CONSTRAINT mdstage_pkey;
       public         postgres    false    269            �           2606    84182 .   oscenter_oswarehouse oscenter_oswarehouse_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.oscenter_oswarehouse
    ADD CONSTRAINT oscenter_oswarehouse_pkey PRIMARY KEY (client_id, partnership_id, farm_id, center_id, warehouse_id);
 X   ALTER TABLE ONLY public.oscenter_oswarehouse DROP CONSTRAINT oscenter_oswarehouse_pkey;
       public         postgres    false    273    273    273    273    273            �           2606    84184    oscenter oscenter_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.oscenter
    ADD CONSTRAINT oscenter_pkey PRIMARY KEY (center_id);
 @   ALTER TABLE ONLY public.oscenter DROP CONSTRAINT oscenter_pkey;
       public         postgres    false    272            �           2606    84186    osfarm osfarm_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.osfarm
    ADD CONSTRAINT osfarm_pkey PRIMARY KEY (farm_id);
 <   ALTER TABLE ONLY public.osfarm DROP CONSTRAINT osfarm_pkey;
       public         postgres    false    274            �           2606    84188    osshed oshed_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.osshed
    ADD CONSTRAINT oshed_pkey PRIMARY KEY (shed_id);
 ;   ALTER TABLE ONLY public.osshed DROP CONSTRAINT oshed_pkey;
       public         postgres    false    280            �           2606    84190    osincubator osincubator_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.osincubator
    ADD CONSTRAINT osincubator_pkey PRIMARY KEY (incubator_id);
 F   ALTER TABLE ONLY public.osincubator DROP CONSTRAINT osincubator_pkey;
       public         postgres    false    275            �           2606    84192 &   osincubatorplant osincubatorplant_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.osincubatorplant
    ADD CONSTRAINT osincubatorplant_pkey PRIMARY KEY (incubator_plant_id);
 P   ALTER TABLE ONLY public.osincubatorplant DROP CONSTRAINT osincubatorplant_pkey;
       public         postgres    false    276            �           2606    84194 '   ospartnership ospartnership_code_unique 
   CONSTRAINT     b   ALTER TABLE ONLY public.ospartnership
    ADD CONSTRAINT ospartnership_code_unique UNIQUE (code);
 Q   ALTER TABLE ONLY public.ospartnership DROP CONSTRAINT ospartnership_code_unique;
       public         postgres    false    278            �           2606    84196     ospartnership ospartnership_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.ospartnership
    ADD CONSTRAINT ospartnership_pkey PRIMARY KEY (partnership_id);
 J   ALTER TABLE ONLY public.ospartnership DROP CONSTRAINT ospartnership_pkey;
       public         postgres    false    278            �           2606    84198     ossilo_osshed ossilo_osshed_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.ossilo_osshed
    ADD CONSTRAINT ossilo_osshed_pkey PRIMARY KEY (silo_id, shed_id);
 J   ALTER TABLE ONLY public.ossilo_osshed DROP CONSTRAINT ossilo_osshed_pkey;
       public         postgres    false    283    283            �           2606    84200    ossilo ossilo_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.ossilo
    ADD CONSTRAINT ossilo_pkey PRIMARY KEY (silo_id);
 <   ALTER TABLE ONLY public.ossilo DROP CONSTRAINT ossilo_pkey;
       public         postgres    false    282            �           2606    84202 &   osslaughterhouse osslaughterhouse_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.osslaughterhouse
    ADD CONSTRAINT osslaughterhouse_pkey PRIMARY KEY (slaughterhouse_id);
 P   ALTER TABLE ONLY public.osslaughterhouse DROP CONSTRAINT osslaughterhouse_pkey;
       public         postgres    false    285            �           2606    84204    oswarehouse oswarehouse_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.oswarehouse
    ADD CONSTRAINT oswarehouse_pkey PRIMARY KEY (warehouse_id);
 F   ALTER TABLE ONLY public.oswarehouse DROP CONSTRAINT oswarehouse_pkey;
       public         postgres    false    287            v           2606    84206    mdrol rol_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.mdrol
    ADD CONSTRAINT rol_pkey PRIMARY KEY (rol_id);
 8   ALTER TABLE ONLY public.mdrol DROP CONSTRAINT rol_pkey;
       public         postgres    false    263            �           2606    84208 ,   txavailabilitysheds txavailabilitysheds_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.txavailabilitysheds
    ADD CONSTRAINT txavailabilitysheds_pkey PRIMARY KEY (availability_shed_id);
 V   ALTER TABLE ONLY public.txavailabilitysheds DROP CONSTRAINT txavailabilitysheds_pkey;
       public         postgres    false    297            �           2606    84210 &   txbroiler_detail txbroiler_detail_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.txbroiler_detail
    ADD CONSTRAINT txbroiler_detail_pkey PRIMARY KEY (broiler_detail_id);
 P   ALTER TABLE ONLY public.txbroiler_detail DROP CONSTRAINT txbroiler_detail_pkey;
       public         postgres    false    299            �           2606    84212    txbroiler txbroiler_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.txbroiler
    ADD CONSTRAINT txbroiler_pkey PRIMARY KEY (broiler_id);
 B   ALTER TABLE ONLY public.txbroiler DROP CONSTRAINT txbroiler_pkey;
       public         postgres    false    298            �           2606    84214 6   txbroilereviction_detail txbroilereviction_detail_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.txbroilereviction_detail
    ADD CONSTRAINT txbroilereviction_detail_pkey PRIMARY KEY (broilereviction_detail_id);
 `   ALTER TABLE ONLY public.txbroilereviction_detail DROP CONSTRAINT txbroilereviction_detail_pkey;
       public         postgres    false    301            �           2606    84216 (   txbroilereviction txbroilereviction_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.txbroilereviction
    ADD CONSTRAINT txbroilereviction_pkey PRIMARY KEY (broilereviction_id);
 R   ALTER TABLE ONLY public.txbroilereviction DROP CONSTRAINT txbroilereviction_pkey;
       public         postgres    false    300            �           2606    84218 4   txbroilerproduct_detail txbroilerproduct_detail_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.txbroilerproduct_detail
    ADD CONSTRAINT txbroilerproduct_detail_pkey PRIMARY KEY (broilerproduct_detail_id);
 ^   ALTER TABLE ONLY public.txbroilerproduct_detail DROP CONSTRAINT txbroilerproduct_detail_pkey;
       public         postgres    false    302            �           2606    84220 &   txbroodermachine txbroodermachine_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.txbroodermachine
    ADD CONSTRAINT txbroodermachine_pkey PRIMARY KEY (brooder_machine_id_seq);
 P   ALTER TABLE ONLY public.txbroodermachine DROP CONSTRAINT txbroodermachine_pkey;
       public         postgres    false    303            �           2606    84222    txcalendar txcalendar_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.txcalendar
    ADD CONSTRAINT txcalendar_pkey PRIMARY KEY (calendar_id);
 D   ALTER TABLE ONLY public.txcalendar DROP CONSTRAINT txcalendar_pkey;
       public         postgres    false    304            �           2606    84224     txcalendarday txcalendarday_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.txcalendarday
    ADD CONSTRAINT txcalendarday_pkey PRIMARY KEY (calendar_day_id);
 J   ALTER TABLE ONLY public.txcalendarday DROP CONSTRAINT txcalendarday_pkey;
       public         postgres    false    305            �           2606    84226 $   txeggs_planning txeggs_planning_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.txeggs_planning
    ADD CONSTRAINT txeggs_planning_pkey PRIMARY KEY (egg_planning_id);
 N   ALTER TABLE ONLY public.txeggs_planning DROP CONSTRAINT txeggs_planning_pkey;
       public         postgres    false    306            �           2606    84228 $   txeggs_required txeggs_required_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.txeggs_required
    ADD CONSTRAINT txeggs_required_pkey PRIMARY KEY (egg_required_id);
 N   ALTER TABLE ONLY public.txeggs_required DROP CONSTRAINT txeggs_required_pkey;
       public         postgres    false    307            �           2606    84230 "   txeggs_storage txeggs_storage_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.txeggs_storage
    ADD CONSTRAINT txeggs_storage_pkey PRIMARY KEY (eggs_storage_id);
 L   ALTER TABLE ONLY public.txeggs_storage DROP CONSTRAINT txeggs_storage_pkey;
       public         postgres    false    308            �           2606    84232    txgoals_erp txgoals_erp_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.txgoals_erp
    ADD CONSTRAINT txgoals_erp_pkey PRIMARY KEY (goals_erp_id);
 F   ALTER TABLE ONLY public.txgoals_erp DROP CONSTRAINT txgoals_erp_pkey;
       public         postgres    false    309            �           2606    84234    txholiday txholiday_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.txholiday
    ADD CONSTRAINT txholiday_pkey PRIMARY KEY (holiday_id);
 B   ALTER TABLE ONLY public.txholiday DROP CONSTRAINT txholiday_pkey;
       public         postgres    false    311            �           2606    84236 ,   txhousingway_detail txhousingway_detail_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.txhousingway_detail
    ADD CONSTRAINT txhousingway_detail_pkey PRIMARY KEY (housingway_detail_id);
 V   ALTER TABLE ONLY public.txhousingway_detail DROP CONSTRAINT txhousingway_detail_pkey;
       public         postgres    false    313            �           2606    84238    txhousingway txhousingway_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.txhousingway
    ADD CONSTRAINT txhousingway_pkey PRIMARY KEY (housing_way_id);
 H   ALTER TABLE ONLY public.txhousingway DROP CONSTRAINT txhousingway_pkey;
       public         postgres    false    312            
           2606    84240    txlot_eggs txlot_eggs_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.txlot_eggs
    ADD CONSTRAINT txlot_eggs_pkey PRIMARY KEY (lot_eggs_id);
 D   ALTER TABLE ONLY public.txlot_eggs DROP CONSTRAINT txlot_eggs_pkey;
       public         postgres    false    315                       2606    84242    txlot txlot_lot_code_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.txlot
    ADD CONSTRAINT txlot_lot_code_key UNIQUE (lot_code);
 B   ALTER TABLE ONLY public.txlot DROP CONSTRAINT txlot_lot_code_key;
       public         postgres    false    314                       2606    84244    txlot txlot_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.txlot
    ADD CONSTRAINT txlot_pkey PRIMARY KEY (lot_id);
 :   ALTER TABLE ONLY public.txlot DROP CONSTRAINT txlot_pkey;
       public         postgres    false    314                       2606    84246 "   txposturecurve txposturecurve_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.txposturecurve
    ADD CONSTRAINT txposturecurve_pkey PRIMARY KEY (posture_curve_id);
 L   ALTER TABLE ONLY public.txposturecurve DROP CONSTRAINT txposturecurve_pkey;
       public         postgres    false    316                       2606    84248 (   txprogrammed_eggs txprogrammed_eggs_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.txprogrammed_eggs
    ADD CONSTRAINT txprogrammed_eggs_pkey PRIMARY KEY (programmed_eggs_id);
 R   ALTER TABLE ONLY public.txprogrammed_eggs DROP CONSTRAINT txprogrammed_eggs_pkey;
       public         postgres    false    317                       2606    84250 (   txscenarioformula txscenarioformula_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.txscenarioformula
    ADD CONSTRAINT txscenarioformula_pkey PRIMARY KEY (scenario_formula_id);
 R   ALTER TABLE ONLY public.txscenarioformula DROP CONSTRAINT txscenarioformula_pkey;
       public         postgres    false    318                       2606    84252     txscenariohen txscenariohen_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.txscenariohen
    ADD CONSTRAINT txscenariohen_pkey PRIMARY KEY (_week, _year);
 J   ALTER TABLE ONLY public.txscenariohen DROP CONSTRAINT txscenariohen_pkey;
       public         postgres    false    319    319            !           2606    84254 ,   txscenarioparameter txscenarioparameter_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public.txscenarioparameter
    ADD CONSTRAINT txscenarioparameter_pkey PRIMARY KEY (scenario_parameter_id);
 V   ALTER TABLE ONLY public.txscenarioparameter DROP CONSTRAINT txscenarioparameter_pkey;
       public         postgres    false    320            %           2606    84256 2   txscenarioparameterday txscenarioparameterday_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.txscenarioparameterday
    ADD CONSTRAINT txscenarioparameterday_pkey PRIMARY KEY (scenario_parameter_day_id);
 \   ALTER TABLE ONLY public.txscenarioparameterday DROP CONSTRAINT txscenarioparameterday_pkey;
       public         postgres    false    321            +           2606    84258 2   txscenarioposturecurve txscenarioposturecurve_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.txscenarioposturecurve
    ADD CONSTRAINT txscenarioposturecurve_pkey PRIMARY KEY (scenario_posture_id);
 \   ALTER TABLE ONLY public.txscenarioposturecurve DROP CONSTRAINT txscenarioposturecurve_pkey;
       public         postgres    false    322            /           2606    84260 (   txscenarioprocess txscenarioprocess_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.txscenarioprocess
    ADD CONSTRAINT txscenarioprocess_pkey PRIMARY KEY (scenario_process_id);
 R   ALTER TABLE ONLY public.txscenarioprocess DROP CONSTRAINT txscenarioprocess_pkey;
       public         postgres    false    323            �           2606    84262    mduser user_id 
   CONSTRAINT     Q   ALTER TABLE ONLY public.mduser
    ADD CONSTRAINT user_id PRIMARY KEY (user_id);
 8   ALTER TABLE ONLY public.mduser DROP CONSTRAINT user_id;
       public         postgres    false    271            �           2606    84264    mduser username unique 
   CONSTRAINT     W   ALTER TABLE ONLY public.mduser
    ADD CONSTRAINT "username unique" UNIQUE (username);
 B   ALTER TABLE ONLY public.mduser DROP CONSTRAINT "username unique";
       public         postgres    false    271            �           1259    84265    calendar_index    INDEX     N   CREATE INDEX calendar_index ON public.txcalendarday USING hash (calendar_id);
 "   DROP INDEX public.calendar_index;
       public         postgres    false    305            g           1259    84266    calendarid_index    INDEX     L   CREATE INDEX calendarid_index ON public.mdprocess USING hash (calendar_id);
 $   DROP INDEX public.calendarid_index;
       public         postgres    false    258            �           1259    84267 
   code_index    INDEX     H   CREATE UNIQUE INDEX code_index ON public.txcalendar USING btree (code);
    DROP INDEX public.code_index;
       public         postgres    false    304            �           1259    84268 
   date_index    INDEX     C   CREATE INDEX date_index ON public.txcalendarday USING hash (date);
    DROP INDEX public.date_index;
       public         postgres    false    305            7           1259    84269    fki_FK_ id_aba_time_unit    INDEX     p   CREATE INDEX "fki_FK_ id_aba_time_unit" ON public.aba_consumption_and_mortality USING btree (id_aba_time_unit);
 .   DROP INDEX public."fki_FK_ id_aba_time_unit";
       public         postgres    false    200            M           1259    84270    fki_FK_id_aba_breeds_and_stages    INDEX     �   CREATE INDEX "fki_FK_id_aba_breeds_and_stages" ON public.aba_stages_of_breeds_and_stages USING btree (id_aba_breeds_and_stages);
 5   DROP INDEX public."fki_FK_id_aba_breeds_and_stages";
       public         postgres    false    214            3           1259    84271 '   fki_FK_id_aba_consumption_and_mortality    INDEX     �   CREATE INDEX "fki_FK_id_aba_consumption_and_mortality" ON public.aba_breeds_and_stages USING btree (id_aba_consumption_and_mortality);
 =   DROP INDEX public."fki_FK_id_aba_consumption_and_mortality";
       public         postgres    false    198            <           1259    84272 (   fki_FK_id_aba_consumption_and_mortality2    INDEX     �   CREATE INDEX "fki_FK_id_aba_consumption_and_mortality2" ON public.aba_consumption_and_mortality_detail USING btree (id_aba_consumption_and_mortality);
 >   DROP INDEX public."fki_FK_id_aba_consumption_and_mortality2";
       public         postgres    false    202            A           1259    84273    fki_FK_id_aba_element    INDEX     m   CREATE INDEX "fki_FK_id_aba_element" ON public.aba_elements_and_concentrations USING btree (id_aba_element);
 +   DROP INDEX public."fki_FK_id_aba_element";
       public         postgres    false    206            J           1259    84274    fki_FK_id_aba_element2    INDEX     Z   CREATE INDEX "fki_FK_id_aba_element2" ON public.aba_results USING btree (id_aba_element);
 ,   DROP INDEX public."fki_FK_id_aba_element2";
       public         postgres    false    212            B           1259    84275    fki_FK_id_aba_element_property    INDEX        CREATE INDEX "fki_FK_id_aba_element_property" ON public.aba_elements_and_concentrations USING btree (id_aba_element_property);
 4   DROP INDEX public."fki_FK_id_aba_element_property";
       public         postgres    false    206            C           1259    84276    fki_FK_id_aba_formulation    INDEX     u   CREATE INDEX "fki_FK_id_aba_formulation" ON public.aba_elements_and_concentrations USING btree (id_aba_formulation);
 /   DROP INDEX public."fki_FK_id_aba_formulation";
       public         postgres    false    206            8           1259    84277    fki_FK_id_breed    INDEX     _   CREATE INDEX "fki_FK_id_breed" ON public.aba_consumption_and_mortality USING btree (id_breed);
 %   DROP INDEX public."fki_FK_id_breed";
       public         postgres    false    200            N           1259    84278    fki_FK_id_formulation    INDEX     m   CREATE INDEX "fki_FK_id_formulation" ON public.aba_stages_of_breeds_and_stages USING btree (id_formulation);
 +   DROP INDEX public."fki_FK_id_formulation";
       public         postgres    false    214            4           1259    84279    fki_FK_id_process    INDEX     [   CREATE INDEX "fki_FK_id_process" ON public.aba_breeds_and_stages USING btree (id_process);
 '   DROP INDEX public."fki_FK_id_process";
       public         postgres    false    198            9           1259    84280    fki_FK_id_stage    INDEX     _   CREATE INDEX "fki_FK_id_stage" ON public.aba_consumption_and_mortality USING btree (id_stage);
 %   DROP INDEX public."fki_FK_id_stage";
       public         postgres    false    200            c           1259    84281    fki_mdparameter_measure_id_fkey    INDEX     ]   CREATE INDEX fki_mdparameter_measure_id_fkey ON public.mdparameter USING btree (measure_id);
 3   DROP INDEX public.fki_mdparameter_measure_id_fkey;
       public         postgres    false    256            d           1259    84282    fki_mdparameter_process_id_fkey    INDEX     ]   CREATE INDEX fki_mdparameter_process_id_fkey ON public.mdparameter USING btree (process_id);
 3   DROP INDEX public.fki_mdparameter_process_id_fkey;
       public         postgres    false    256            h           1259    84283    fki_mdprocess_breed_id_fkey    INDEX     U   CREATE INDEX fki_mdprocess_breed_id_fkey ON public.mdprocess USING btree (breed_id);
 /   DROP INDEX public.fki_mdprocess_breed_id_fkey;
       public         postgres    false    258            i           1259    84284 #   fki_mdprocess_process_class_id_fkey    INDEX     e   CREATE INDEX fki_mdprocess_process_class_id_fkey ON public.mdprocess USING btree (process_class_id);
 7   DROP INDEX public.fki_mdprocess_process_class_id_fkey;
       public         postgres    false    258            n           1259    84285 #   fki_mdprocessclass_industry_id_fkey    INDEX     e   CREATE INDEX fki_mdprocessclass_industry_id_fkey ON public.mdprocessclass USING btree (industry_id);
 7   DROP INDEX public.fki_mdprocessclass_industry_id_fkey;
       public         postgres    false    260            �           1259    84286    fki_oscenter_farm_id_fkey    INDEX     Q   CREATE INDEX fki_oscenter_farm_id_fkey ON public.oscenter USING btree (farm_id);
 -   DROP INDEX public.fki_oscenter_farm_id_fkey;
       public         postgres    false    272            �           1259    84287 '   fki_oscenter_oswarehouse_center_id_fkey    INDEX     m   CREATE INDEX fki_oscenter_oswarehouse_center_id_fkey ON public.oscenter_oswarehouse USING btree (center_id);
 ;   DROP INDEX public.fki_oscenter_oswarehouse_center_id_fkey;
       public         postgres    false    273            �           1259    84288 %   fki_oscenter_oswarehouse_farm_id_fkey    INDEX     i   CREATE INDEX fki_oscenter_oswarehouse_farm_id_fkey ON public.oscenter_oswarehouse USING btree (farm_id);
 9   DROP INDEX public.fki_oscenter_oswarehouse_farm_id_fkey;
       public         postgres    false    273            �           1259    84289 ,   fki_oscenter_oswarehouse_partnership_id_fkey    INDEX     w   CREATE INDEX fki_oscenter_oswarehouse_partnership_id_fkey ON public.oscenter_oswarehouse USING btree (partnership_id);
 @   DROP INDEX public.fki_oscenter_oswarehouse_partnership_id_fkey;
       public         postgres    false    273            �           1259    84290 *   fki_oscenter_oswarehouse_warehouse_id_fkey    INDEX     s   CREATE INDEX fki_oscenter_oswarehouse_warehouse_id_fkey ON public.oscenter_oswarehouse USING btree (warehouse_id);
 >   DROP INDEX public.fki_oscenter_oswarehouse_warehouse_id_fkey;
       public         postgres    false    273            �           1259    84291     fki_oscenter_partnership_id_fkey    INDEX     _   CREATE INDEX fki_oscenter_partnership_id_fkey ON public.oscenter USING btree (partnership_id);
 4   DROP INDEX public.fki_oscenter_partnership_id_fkey;
       public         postgres    false    272            �           1259    84292    fki_osfarm_farm_type_id_fkey    INDEX     W   CREATE INDEX fki_osfarm_farm_type_id_fkey ON public.osfarm USING btree (farm_type_id);
 0   DROP INDEX public.fki_osfarm_farm_type_id_fkey;
       public         postgres    false    274            �           1259    84293    fki_osfarm_partnership_id_fkey    INDEX     [   CREATE INDEX fki_osfarm_partnership_id_fkey ON public.osfarm USING btree (partnership_id);
 2   DROP INDEX public.fki_osfarm_partnership_id_fkey;
       public         postgres    false    274            �           1259    84294 '   fki_osincubator_incubator_plant_id_fkey    INDEX     m   CREATE INDEX fki_osincubator_incubator_plant_id_fkey ON public.osincubator USING btree (incubator_plant_id);
 ;   DROP INDEX public.fki_osincubator_incubator_plant_id_fkey;
       public         postgres    false    275            �           1259    84295 (   fki_osincubatorplant_partnership_id_fkey    INDEX     o   CREATE INDEX fki_osincubatorplant_partnership_id_fkey ON public.osincubatorplant USING btree (partnership_id);
 <   DROP INDEX public.fki_osincubatorplant_partnership_id_fkey;
       public         postgres    false    276            �           1259    84296    fki_osshed_center_id_fkey    INDEX     Q   CREATE INDEX fki_osshed_center_id_fkey ON public.osshed USING btree (center_id);
 -   DROP INDEX public.fki_osshed_center_id_fkey;
       public         postgres    false    280            �           1259    84297    fki_osshed_farm_id_fkey    INDEX     M   CREATE INDEX fki_osshed_farm_id_fkey ON public.osshed USING btree (farm_id);
 +   DROP INDEX public.fki_osshed_farm_id_fkey;
       public         postgres    false    280            �           1259    84298    fki_osshed_partnership_id_fkey    INDEX     [   CREATE INDEX fki_osshed_partnership_id_fkey ON public.osshed USING btree (partnership_id);
 2   DROP INDEX public.fki_osshed_partnership_id_fkey;
       public         postgres    false    280            �           1259    84299    fki_osshed_statusshed_id_fkey    INDEX     Y   CREATE INDEX fki_osshed_statusshed_id_fkey ON public.osshed USING btree (statusshed_id);
 1   DROP INDEX public.fki_osshed_statusshed_id_fkey;
       public         postgres    false    280            �           1259    84300    fki_ossilo_center_id_fkey    INDEX     Q   CREATE INDEX fki_ossilo_center_id_fkey ON public.ossilo USING btree (center_id);
 -   DROP INDEX public.fki_ossilo_center_id_fkey;
       public         postgres    false    282            �           1259    84301    fki_ossilo_farm_id_fkey    INDEX     M   CREATE INDEX fki_ossilo_farm_id_fkey ON public.ossilo USING btree (farm_id);
 +   DROP INDEX public.fki_ossilo_farm_id_fkey;
       public         postgres    false    282            �           1259    84302     fki_ossilo_osshed_center_id_fkey    INDEX     _   CREATE INDEX fki_ossilo_osshed_center_id_fkey ON public.ossilo_osshed USING btree (center_id);
 4   DROP INDEX public.fki_ossilo_osshed_center_id_fkey;
       public         postgres    false    283            �           1259    84303    fki_ossilo_osshed_farm_id_fkey    INDEX     [   CREATE INDEX fki_ossilo_osshed_farm_id_fkey ON public.ossilo_osshed USING btree (farm_id);
 2   DROP INDEX public.fki_ossilo_osshed_farm_id_fkey;
       public         postgres    false    283            �           1259    84304 %   fki_ossilo_osshed_partnership_id_fkey    INDEX     i   CREATE INDEX fki_ossilo_osshed_partnership_id_fkey ON public.ossilo_osshed USING btree (partnership_id);
 9   DROP INDEX public.fki_ossilo_osshed_partnership_id_fkey;
       public         postgres    false    283            �           1259    84305    fki_ossilo_osshed_shed_id_fkey    INDEX     [   CREATE INDEX fki_ossilo_osshed_shed_id_fkey ON public.ossilo_osshed USING btree (shed_id);
 2   DROP INDEX public.fki_ossilo_osshed_shed_id_fkey;
       public         postgres    false    283            �           1259    84306    fki_ossilo_osshed_silo_id_fkey    INDEX     [   CREATE INDEX fki_ossilo_osshed_silo_id_fkey ON public.ossilo_osshed USING btree (silo_id);
 2   DROP INDEX public.fki_ossilo_osshed_silo_id_fkey;
       public         postgres    false    283            �           1259    84307    fki_ossilo_partnership_id_fkey    INDEX     [   CREATE INDEX fki_ossilo_partnership_id_fkey ON public.ossilo USING btree (partnership_id);
 2   DROP INDEX public.fki_ossilo_partnership_id_fkey;
       public         postgres    false    282            �           1259    84308    fki_oswarehouse_farm_id_fkey    INDEX     W   CREATE INDEX fki_oswarehouse_farm_id_fkey ON public.oswarehouse USING btree (farm_id);
 0   DROP INDEX public.fki_oswarehouse_farm_id_fkey;
       public         postgres    false    287            �           1259    84309 #   fki_oswarehouse_partnership_id_fkey    INDEX     e   CREATE INDEX fki_oswarehouse_partnership_id_fkey ON public.oswarehouse USING btree (partnership_id);
 7   DROP INDEX public.fki_oswarehouse_partnership_id_fkey;
       public         postgres    false    287            j           1259    84310    fki_process_product_id_fkey    INDEX     W   CREATE INDEX fki_process_product_id_fkey ON public.mdprocess USING btree (product_id);
 /   DROP INDEX public.fki_process_product_id_fkey;
       public         postgres    false    258            k           1259    84311    fki_process_stage_id_fkey    INDEX     S   CREATE INDEX fki_process_stage_id_fkey ON public.mdprocess USING btree (stage_id);
 -   DROP INDEX public.fki_process_stage_id_fkey;
       public         postgres    false    258            �           1259    84312 %   fki_txavailabilitysheds_lot_code_fkey    INDEX     i   CREATE INDEX fki_txavailabilitysheds_lot_code_fkey ON public.txavailabilitysheds USING btree (lot_code);
 9   DROP INDEX public.fki_txavailabilitysheds_lot_code_fkey;
       public         postgres    false    297            �           1259    84313 $   fki_txavailabilitysheds_shed_id_fkey    INDEX     g   CREATE INDEX fki_txavailabilitysheds_shed_id_fkey ON public.txavailabilitysheds USING btree (shed_id);
 8   DROP INDEX public.fki_txavailabilitysheds_shed_id_fkey;
       public         postgres    false    297            �           1259    84314 $   fki_txbroiler_detail_broiler_id_fkey    INDEX     g   CREATE INDEX fki_txbroiler_detail_broiler_id_fkey ON public.txbroiler_detail USING btree (broiler_id);
 8   DROP INDEX public.fki_txbroiler_detail_broiler_id_fkey;
       public         postgres    false    299            �           1259    84315 !   fki_txbroiler_detail_farm_id_fkey    INDEX     a   CREATE INDEX fki_txbroiler_detail_farm_id_fkey ON public.txbroiler_detail USING btree (farm_id);
 5   DROP INDEX public.fki_txbroiler_detail_farm_id_fkey;
       public         postgres    false    299            �           1259    84316 !   fki_txbroiler_detail_shed_id_fkey    INDEX     a   CREATE INDEX fki_txbroiler_detail_shed_id_fkey ON public.txbroiler_detail USING btree (shed_id);
 5   DROP INDEX public.fki_txbroiler_detail_shed_id_fkey;
       public         postgres    false    299            �           1259    84317 %   fki_txbroiler_programmed_eggs_id_fkey    INDEX     i   CREATE INDEX fki_txbroiler_programmed_eggs_id_fkey ON public.txbroiler USING btree (programmed_eggs_id);
 9   DROP INDEX public.fki_txbroiler_programmed_eggs_id_fkey;
       public         postgres    false    298            �           1259    84318 #   fki_txbroilereviction_breed_id_fkey    INDEX     e   CREATE INDEX fki_txbroilereviction_breed_id_fkey ON public.txbroilereviction USING btree (breed_id);
 7   DROP INDEX public.fki_txbroilereviction_breed_id_fkey;
       public         postgres    false    300            �           1259    84319 ,   fki_txbroilereviction_detail_broiler_id_fkey    INDEX        CREATE INDEX fki_txbroilereviction_detail_broiler_id_fkey ON public.txbroilereviction_detail USING btree (broilereviction_id);
 @   DROP INDEX public.fki_txbroilereviction_detail_broiler_id_fkey;
       public         postgres    false    301            �           1259    84320 4   fki_txbroilereviction_detail_broiler_product_id_fkey    INDEX     �   CREATE INDEX fki_txbroilereviction_detail_broiler_product_id_fkey ON public.txbroilereviction_detail USING btree (broiler_product_id);
 H   DROP INDEX public.fki_txbroilereviction_detail_broiler_product_id_fkey;
       public         postgres    false    301            �           1259    84321 )   fki_txbroilereviction_detail_farm_id_fkey    INDEX     q   CREATE INDEX fki_txbroilereviction_detail_farm_id_fkey ON public.txbroilereviction_detail USING btree (farm_id);
 =   DROP INDEX public.fki_txbroilereviction_detail_farm_id_fkey;
       public         postgres    false    301            �           1259    84322 )   fki_txbroilereviction_detail_shed_id_fkey    INDEX     q   CREATE INDEX fki_txbroilereviction_detail_shed_id_fkey ON public.txbroilereviction_detail USING btree (shed_id);
 =   DROP INDEX public.fki_txbroilereviction_detail_shed_id_fkey;
       public         postgres    false    301            �           1259    84323 3   fki_txbroilereviction_detail_slaughterhouse_id_fkey    INDEX     �   CREATE INDEX fki_txbroilereviction_detail_slaughterhouse_id_fkey ON public.txbroilereviction_detail USING btree (slaughterhouse_id);
 G   DROP INDEX public.fki_txbroilereviction_detail_slaughterhouse_id_fkey;
       public         postgres    false    301            �           1259    84324 )   fki_txbroilereviction_partnership_id_fkey    INDEX     q   CREATE INDEX fki_txbroilereviction_partnership_id_fkey ON public.txbroilereviction USING btree (partnership_id);
 =   DROP INDEX public.fki_txbroilereviction_partnership_id_fkey;
       public         postgres    false    300            �           1259    84325 &   fki_txbroilereviction_scenario_id_fkey    INDEX     k   CREATE INDEX fki_txbroilereviction_scenario_id_fkey ON public.txbroilereviction USING btree (scenario_id);
 :   DROP INDEX public.fki_txbroilereviction_scenario_id_fkey;
       public         postgres    false    300            �           1259    84326 /   fki_txbroilerproduct_detail_broiler_detail_fkey    INDEX     }   CREATE INDEX fki_txbroilerproduct_detail_broiler_detail_fkey ON public.txbroilerproduct_detail USING btree (broiler_detail);
 C   DROP INDEX public.fki_txbroilerproduct_detail_broiler_detail_fkey;
       public         postgres    false    302            �           1259    84327 "   fki_txbroodermachines_farm_id_fkey    INDEX     b   CREATE INDEX fki_txbroodermachines_farm_id_fkey ON public.txbroodermachine USING btree (farm_id);
 6   DROP INDEX public.fki_txbroodermachines_farm_id_fkey;
       public         postgres    false    303            �           1259    84328 )   fki_txbroodermachines_partnership_id_fkey    INDEX     p   CREATE INDEX fki_txbroodermachines_partnership_id_fkey ON public.txbroodermachine USING btree (partnership_id);
 =   DROP INDEX public.fki_txbroodermachines_partnership_id_fkey;
       public         postgres    false    303            �           1259    84329 !   fki_txeggs_planning_breed_id_fkey    INDEX     a   CREATE INDEX fki_txeggs_planning_breed_id_fkey ON public.txeggs_planning USING btree (breed_id);
 5   DROP INDEX public.fki_txeggs_planning_breed_id_fkey;
       public         postgres    false    306            �           1259    84330 $   fki_txeggs_planning_scenario_id_fkey    INDEX     g   CREATE INDEX fki_txeggs_planning_scenario_id_fkey ON public.txeggs_planning USING btree (scenario_id);
 8   DROP INDEX public.fki_txeggs_planning_scenario_id_fkey;
       public         postgres    false    306            �           1259    84331 !   fki_txeggs_required_breed_id_fkey    INDEX     a   CREATE INDEX fki_txeggs_required_breed_id_fkey ON public.txeggs_required USING btree (breed_id);
 5   DROP INDEX public.fki_txeggs_required_breed_id_fkey;
       public         postgres    false    307            �           1259    84332 $   fki_txeggs_required_scenario_id_fkey    INDEX     g   CREATE INDEX fki_txeggs_required_scenario_id_fkey ON public.txeggs_required USING btree (scenario_id);
 8   DROP INDEX public.fki_txeggs_required_scenario_id_fkey;
       public         postgres    false    307            �           1259    84333     fki_txeggs_storage_breed_id_fkey    INDEX     _   CREATE INDEX fki_txeggs_storage_breed_id_fkey ON public.txeggs_storage USING btree (breed_id);
 4   DROP INDEX public.fki_txeggs_storage_breed_id_fkey;
       public         postgres    false    308            �           1259    84334 *   fki_txeggs_storage_incubator_plant_id_fkey    INDEX     s   CREATE INDEX fki_txeggs_storage_incubator_plant_id_fkey ON public.txeggs_storage USING btree (incubator_plant_id);
 >   DROP INDEX public.fki_txeggs_storage_incubator_plant_id_fkey;
       public         postgres    false    308            �           1259    84335 #   fki_txeggs_storage_scenario_id_fkey    INDEX     e   CREATE INDEX fki_txeggs_storage_scenario_id_fkey ON public.txeggs_storage USING btree (scenario_id);
 7   DROP INDEX public.fki_txeggs_storage_scenario_id_fkey;
       public         postgres    false    308            �           1259    84336    fki_txfattening_breed_id_fkey    INDEX     W   CREATE INDEX fki_txfattening_breed_id_fkey ON public.txbroiler USING btree (breed_id);
 1   DROP INDEX public.fki_txfattening_breed_id_fkey;
       public         postgres    false    298            �           1259    84337 #   fki_txfattening_partnership_id_fkey    INDEX     c   CREATE INDEX fki_txfattening_partnership_id_fkey ON public.txbroiler USING btree (partnership_id);
 7   DROP INDEX public.fki_txfattening_partnership_id_fkey;
       public         postgres    false    298            �           1259    84338     fki_txfattening_scenario_id_fkey    INDEX     ]   CREATE INDEX fki_txfattening_scenario_id_fkey ON public.txbroiler USING btree (scenario_id);
 4   DROP INDEX public.fki_txfattening_scenario_id_fkey;
       public         postgres    false    298            �           1259    84339    fki_txgoals_erp_product_id_fkey    INDEX     ]   CREATE INDEX fki_txgoals_erp_product_id_fkey ON public.txgoals_erp USING btree (product_id);
 3   DROP INDEX public.fki_txgoals_erp_product_id_fkey;
       public         postgres    false    309            �           1259    84340     fki_txgoals_erp_scenario_id_fkey    INDEX     _   CREATE INDEX fki_txgoals_erp_scenario_id_fkey ON public.txgoals_erp USING btree (scenario_id);
 4   DROP INDEX public.fki_txgoals_erp_scenario_id_fkey;
       public         postgres    false    309            �           1259    84341    fki_txholiday_calendar_id_fkey    INDEX     [   CREATE INDEX fki_txholiday_calendar_id_fkey ON public.txholiday USING btree (calendar_id);
 2   DROP INDEX public.fki_txholiday_calendar_id_fkey;
       public         postgres    false    311            �           1259    84342    fki_txhousingway_breed_id_fkey    INDEX     [   CREATE INDEX fki_txhousingway_breed_id_fkey ON public.txhousingway USING btree (breed_id);
 2   DROP INDEX public.fki_txhousingway_breed_id_fkey;
       public         postgres    false    312            �           1259    84343 $   fki_txhousingway_detail_farm_id_fkey    INDEX     g   CREATE INDEX fki_txhousingway_detail_farm_id_fkey ON public.txhousingway_detail USING btree (farm_id);
 8   DROP INDEX public.fki_txhousingway_detail_farm_id_fkey;
       public         postgres    false    313            �           1259    84344 +   fki_txhousingway_detail_housing_way_id_fkey    INDEX     u   CREATE INDEX fki_txhousingway_detail_housing_way_id_fkey ON public.txhousingway_detail USING btree (housing_way_id);
 ?   DROP INDEX public.fki_txhousingway_detail_housing_way_id_fkey;
       public         postgres    false    313            �           1259    84345 /   fki_txhousingway_detail_incubator_plant_id_fkey    INDEX     }   CREATE INDEX fki_txhousingway_detail_incubator_plant_id_fkey ON public.txhousingway_detail USING btree (incubator_plant_id);
 C   DROP INDEX public.fki_txhousingway_detail_incubator_plant_id_fkey;
       public         postgres    false    313            �           1259    84346 $   fki_txhousingway_detail_shed_id_fkey    INDEX     g   CREATE INDEX fki_txhousingway_detail_shed_id_fkey ON public.txhousingway_detail USING btree (shed_id);
 8   DROP INDEX public.fki_txhousingway_detail_shed_id_fkey;
       public         postgres    false    313            �           1259    84347 $   fki_txhousingway_partnership_id_fkey    INDEX     g   CREATE INDEX fki_txhousingway_partnership_id_fkey ON public.txhousingway USING btree (partnership_id);
 8   DROP INDEX public.fki_txhousingway_partnership_id_fkey;
       public         postgres    false    312            �           1259    84348 !   fki_txhousingway_scenario_id_fkey    INDEX     a   CREATE INDEX fki_txhousingway_scenario_id_fkey ON public.txhousingway USING btree (scenario_id);
 5   DROP INDEX public.fki_txhousingway_scenario_id_fkey;
       public         postgres    false    312            �           1259    84349    fki_txhousingway_stage_id_fkey    INDEX     [   CREATE INDEX fki_txhousingway_stage_id_fkey ON public.txhousingway USING btree (stage_id);
 2   DROP INDEX public.fki_txhousingway_stage_id_fkey;
       public         postgres    false    312            �           1259    84350    fki_txlot_breed_id_fkey    INDEX     M   CREATE INDEX fki_txlot_breed_id_fkey ON public.txlot USING btree (breed_id);
 +   DROP INDEX public.fki_txlot_breed_id_fkey;
       public         postgres    false    314                        1259    84351    fki_txlot_farm_id_fkey    INDEX     K   CREATE INDEX fki_txlot_farm_id_fkey ON public.txlot USING btree (farm_id);
 *   DROP INDEX public.fki_txlot_farm_id_fkey;
       public         postgres    false    314                       1259    84352    fki_txlot_housin_way_id_fkey    INDEX     X   CREATE INDEX fki_txlot_housin_way_id_fkey ON public.txlot USING btree (housing_way_id);
 0   DROP INDEX public.fki_txlot_housin_way_id_fkey;
       public         postgres    false    314                       1259    84353    fki_txlot_process_class_id_fkey    INDEX     ]   CREATE INDEX fki_txlot_process_class_id_fkey ON public.txlot USING btree (process_class_id);
 3   DROP INDEX public.fki_txlot_process_class_id_fkey;
       public         postgres    false    314                       1259    84354    fki_txlot_product_id_fkey    INDEX     Q   CREATE INDEX fki_txlot_product_id_fkey ON public.txlot USING btree (product_id);
 -   DROP INDEX public.fki_txlot_product_id_fkey;
       public         postgres    false    314                       1259    84355    fki_txlot_shed_id_fkey    INDEX     K   CREATE INDEX fki_txlot_shed_id_fkey ON public.txlot USING btree (shed_id);
 *   DROP INDEX public.fki_txlot_shed_id_fkey;
       public         postgres    false    314                       1259    84356     fki_txposturecurve_breed_id_fkey    INDEX     _   CREATE INDEX fki_txposturecurve_breed_id_fkey ON public.txposturecurve USING btree (breed_id);
 4   DROP INDEX public.fki_txposturecurve_breed_id_fkey;
       public         postgres    false    316                       1259    84357 #   fki_txprogrammed_eggs_breed_id_fkey    INDEX     e   CREATE INDEX fki_txprogrammed_eggs_breed_id_fkey ON public.txprogrammed_eggs USING btree (breed_id);
 7   DROP INDEX public.fki_txprogrammed_eggs_breed_id_fkey;
       public         postgres    false    317                       1259    84358 *   fki_txprogrammed_eggs_eggs_storage_id_fkey    INDEX     s   CREATE INDEX fki_txprogrammed_eggs_eggs_storage_id_fkey ON public.txprogrammed_eggs USING btree (eggs_storage_id);
 >   DROP INDEX public.fki_txprogrammed_eggs_eggs_storage_id_fkey;
       public         postgres    false    317                       1259    84359 '   fki_txprogrammed_eggs_incubator_id_fkey    INDEX     m   CREATE INDEX fki_txprogrammed_eggs_incubator_id_fkey ON public.txprogrammed_eggs USING btree (incubator_id);
 ;   DROP INDEX public.fki_txprogrammed_eggs_incubator_id_fkey;
       public         postgres    false    317                       1259    84360 %   fki_txscenarioformula_measure_id_fkey    INDEX     i   CREATE INDEX fki_txscenarioformula_measure_id_fkey ON public.txscenarioformula USING btree (measure_id);
 9   DROP INDEX public.fki_txscenarioformula_measure_id_fkey;
       public         postgres    false    318                       1259    84361 '   fki_txscenarioformula_parameter_id_fkey    INDEX     m   CREATE INDEX fki_txscenarioformula_parameter_id_fkey ON public.txscenarioformula USING btree (parameter_id);
 ;   DROP INDEX public.fki_txscenarioformula_parameter_id_fkey;
       public         postgres    false    318                       1259    84362 %   fki_txscenarioformula_process_id_fkey    INDEX     i   CREATE INDEX fki_txscenarioformula_process_id_fkey ON public.txscenarioformula USING btree (process_id);
 9   DROP INDEX public.fki_txscenarioformula_process_id_fkey;
       public         postgres    false    318                       1259    84363 &   fki_txscenarioformula_scenario_id_fkey    INDEX     k   CREATE INDEX fki_txscenarioformula_scenario_id_fkey ON public.txscenarioformula USING btree (scenario_id);
 :   DROP INDEX public.fki_txscenarioformula_scenario_id_fkey;
       public         postgres    false    318                       1259    84364    fki_txscenariohen_breed_id_fkey    INDEX     ]   CREATE INDEX fki_txscenariohen_breed_id_fkey ON public.txscenariohen USING btree (breed_id);
 3   DROP INDEX public.fki_txscenariohen_breed_id_fkey;
       public         postgres    false    319                       1259    84365 "   fki_txscenariohen_scenario_id_fkey    INDEX     c   CREATE INDEX fki_txscenariohen_scenario_id_fkey ON public.txscenariohen USING btree (scenario_id);
 6   DROP INDEX public.fki_txscenariohen_scenario_id_fkey;
       public         postgres    false    319                       1259    84366 )   fki_txscenarioparameter_parameter_id_fkey    INDEX     q   CREATE INDEX fki_txscenarioparameter_parameter_id_fkey ON public.txscenarioparameter USING btree (parameter_id);
 =   DROP INDEX public.fki_txscenarioparameter_parameter_id_fkey;
       public         postgres    false    320                       1259    84367 '   fki_txscenarioparameter_process_id_fkey    INDEX     m   CREATE INDEX fki_txscenarioparameter_process_id_fkey ON public.txscenarioparameter USING btree (process_id);
 ;   DROP INDEX public.fki_txscenarioparameter_process_id_fkey;
       public         postgres    false    320                       1259    84368 (   fki_txscenarioparameter_scenario_id_fkey    INDEX     o   CREATE INDEX fki_txscenarioparameter_scenario_id_fkey ON public.txscenarioparameter USING btree (scenario_id);
 <   DROP INDEX public.fki_txscenarioparameter_scenario_id_fkey;
       public         postgres    false    320            "           1259    84369 ,   fki_txscenarioparameterday_parameter_id_fkey    INDEX     w   CREATE INDEX fki_txscenarioparameterday_parameter_id_fkey ON public.txscenarioparameterday USING btree (parameter_id);
 @   DROP INDEX public.fki_txscenarioparameterday_parameter_id_fkey;
       public         postgres    false    321            #           1259    84370 +   fki_txscenarioparameterday_scenario_id_fkey    INDEX     u   CREATE INDEX fki_txscenarioparameterday_scenario_id_fkey ON public.txscenarioparameterday USING btree (scenario_id);
 ?   DROP INDEX public.fki_txscenarioparameterday_scenario_id_fkey;
       public         postgres    false    321            &           1259    84371 (   fki_txscenarioposturecurve_breed_id_fkey    INDEX     o   CREATE INDEX fki_txscenarioposturecurve_breed_id_fkey ON public.txscenarioposturecurve USING btree (breed_id);
 <   DROP INDEX public.fki_txscenarioposturecurve_breed_id_fkey;
       public         postgres    false    322            '           1259    84372 4   fki_txscenarioposturecurve_housingway_detail_id_fkey    INDEX     �   CREATE INDEX fki_txscenarioposturecurve_housingway_detail_id_fkey ON public.txscenarioposturecurve USING btree (housingway_detail_id);
 H   DROP INDEX public.fki_txscenarioposturecurve_housingway_detail_id_fkey;
       public         postgres    false    322            (           1259    84373 +   fki_txscenarioposturecurve_scenario_id_fkey    INDEX     u   CREATE INDEX fki_txscenarioposturecurve_scenario_id_fkey ON public.txscenarioposturecurve USING btree (scenario_id);
 ?   DROP INDEX public.fki_txscenarioposturecurve_scenario_id_fkey;
       public         postgres    false    322            ,           1259    84374 %   fki_txscenarioprocess_process_id_fkey    INDEX     i   CREATE INDEX fki_txscenarioprocess_process_id_fkey ON public.txscenarioprocess USING btree (process_id);
 9   DROP INDEX public.fki_txscenarioprocess_process_id_fkey;
       public         postgres    false    323            -           1259    84375 &   fki_txscenarioprocess_scenario_id_fkey    INDEX     k   CREATE INDEX fki_txscenarioprocess_scenario_id_fkey ON public.txscenarioprocess USING btree (scenario_id);
 :   DROP INDEX public.fki_txscenarioprocess_scenario_id_fkey;
       public         postgres    false    323            )           1259    84376    posturedate_index    INDEX     [   CREATE INDEX posturedate_index ON public.txscenarioposturecurve USING hash (posture_date);
 %   DROP INDEX public.posturedate_index;
       public         postgres    false    322            �           1259    84377    sequence_index    INDEX     L   CREATE INDEX sequence_index ON public.txcalendarday USING btree (sequence);
 "   DROP INDEX public.sequence_index;
       public         postgres    false    305            :           2606    84378 ;   aba_stages_of_breeds_and_stages FK_id_aba_breeds_and_stages    FK CONSTRAINT     �   ALTER TABLE ONLY public.aba_stages_of_breeds_and_stages
    ADD CONSTRAINT "FK_id_aba_breeds_and_stages" FOREIGN KEY (id_aba_breeds_and_stages) REFERENCES public.aba_breeds_and_stages(id) ON DELETE CASCADE;
 g   ALTER TABLE ONLY public.aba_stages_of_breeds_and_stages DROP CONSTRAINT "FK_id_aba_breeds_and_stages";
       public       postgres    false    3122    198    214            0           2606    84383 9   aba_breeds_and_stages FK_id_aba_consumption_and_mortality    FK CONSTRAINT     �   ALTER TABLE ONLY public.aba_breeds_and_stages
    ADD CONSTRAINT "FK_id_aba_consumption_and_mortality" FOREIGN KEY (id_aba_consumption_and_mortality) REFERENCES public.aba_consumption_and_mortality(id);
 e   ALTER TABLE ONLY public.aba_breeds_and_stages DROP CONSTRAINT "FK_id_aba_consumption_and_mortality";
       public       postgres    false    198    200    3126            5           2606    84388 I   aba_consumption_and_mortality_detail FK_id_aba_consumption_and_mortality2    FK CONSTRAINT     �   ALTER TABLE ONLY public.aba_consumption_and_mortality_detail
    ADD CONSTRAINT "FK_id_aba_consumption_and_mortality2" FOREIGN KEY (id_aba_consumption_and_mortality) REFERENCES public.aba_consumption_and_mortality(id) ON DELETE CASCADE;
 u   ALTER TABLE ONLY public.aba_consumption_and_mortality_detail DROP CONSTRAINT "FK_id_aba_consumption_and_mortality2";
       public       postgres    false    202    3126    200            6           2606    84393 1   aba_elements_and_concentrations FK_id_aba_element    FK CONSTRAINT     �   ALTER TABLE ONLY public.aba_elements_and_concentrations
    ADD CONSTRAINT "FK_id_aba_element" FOREIGN KEY (id_aba_element) REFERENCES public.aba_elements(id);
 ]   ALTER TABLE ONLY public.aba_elements_and_concentrations DROP CONSTRAINT "FK_id_aba_element";
       public       postgres    false    206    3134    204            9           2606    84398    aba_results FK_id_aba_element2    FK CONSTRAINT     �   ALTER TABLE ONLY public.aba_results
    ADD CONSTRAINT "FK_id_aba_element2" FOREIGN KEY (id_aba_element) REFERENCES public.aba_elements(id);
 J   ALTER TABLE ONLY public.aba_results DROP CONSTRAINT "FK_id_aba_element2";
       public       postgres    false    3134    204    212            7           2606    84403 :   aba_elements_and_concentrations FK_id_aba_element_property    FK CONSTRAINT     �   ALTER TABLE ONLY public.aba_elements_and_concentrations
    ADD CONSTRAINT "FK_id_aba_element_property" FOREIGN KEY (id_aba_element_property) REFERENCES public.aba_elements_properties(id);
 f   ALTER TABLE ONLY public.aba_elements_and_concentrations DROP CONSTRAINT "FK_id_aba_element_property";
       public       postgres    false    206    3141    208            8           2606    84408 5   aba_elements_and_concentrations FK_id_aba_formulation    FK CONSTRAINT     �   ALTER TABLE ONLY public.aba_elements_and_concentrations
    ADD CONSTRAINT "FK_id_aba_formulation" FOREIGN KEY (id_aba_formulation) REFERENCES public.aba_formulation(id) ON DELETE CASCADE;
 a   ALTER TABLE ONLY public.aba_elements_and_concentrations DROP CONSTRAINT "FK_id_aba_formulation";
       public       postgres    false    206    3143    210            2           2606    84413 1   aba_consumption_and_mortality FK_id_aba_time_unit    FK CONSTRAINT     �   ALTER TABLE ONLY public.aba_consumption_and_mortality
    ADD CONSTRAINT "FK_id_aba_time_unit" FOREIGN KEY (id_aba_time_unit) REFERENCES public.aba_time_unit(id);
 ]   ALTER TABLE ONLY public.aba_consumption_and_mortality DROP CONSTRAINT "FK_id_aba_time_unit";
       public       postgres    false    3152    215    200            3           2606    84418 )   aba_consumption_and_mortality FK_id_breed    FK CONSTRAINT     �   ALTER TABLE ONLY public.aba_consumption_and_mortality
    ADD CONSTRAINT "FK_id_breed" FOREIGN KEY (id_breed) REFERENCES public.mdbreed(breed_id);
 U   ALTER TABLE ONLY public.aba_consumption_and_mortality DROP CONSTRAINT "FK_id_breed";
       public       postgres    false    200    3160    249            ;           2606    84423 1   aba_stages_of_breeds_and_stages FK_id_formulation    FK CONSTRAINT     �   ALTER TABLE ONLY public.aba_stages_of_breeds_and_stages
    ADD CONSTRAINT "FK_id_formulation" FOREIGN KEY (id_formulation) REFERENCES public.aba_formulation(id);
 ]   ALTER TABLE ONLY public.aba_stages_of_breeds_and_stages DROP CONSTRAINT "FK_id_formulation";
       public       postgres    false    210    3143    214            1           2606    84428 #   aba_breeds_and_stages FK_id_process    FK CONSTRAINT     �   ALTER TABLE ONLY public.aba_breeds_and_stages
    ADD CONSTRAINT "FK_id_process" FOREIGN KEY (id_process) REFERENCES public.mdprocess(process_id);
 O   ALTER TABLE ONLY public.aba_breeds_and_stages DROP CONSTRAINT "FK_id_process";
       public       postgres    false    198    258    3181            4           2606    84433 )   aba_consumption_and_mortality FK_id_stage    FK CONSTRAINT     �   ALTER TABLE ONLY public.aba_consumption_and_mortality
    ADD CONSTRAINT "FK_id_stage" FOREIGN KEY (id_stage) REFERENCES public.mdstage(stage_id);
 U   ALTER TABLE ONLY public.aba_consumption_and_mortality DROP CONSTRAINT "FK_id_stage";
       public       postgres    false    200    3200    269            <           2606    84438    mdapplication_rol aplication fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mdapplication_rol
    ADD CONSTRAINT "aplication fk" FOREIGN KEY (application_id) REFERENCES public.mdapplication(application_id);
 K   ALTER TABLE ONLY public.mdapplication_rol DROP CONSTRAINT "aplication fk";
       public       postgres    false    3154    248    247            >           2606    84443 '   mdparameter mdparameter_measure_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mdparameter
    ADD CONSTRAINT mdparameter_measure_id_fkey FOREIGN KEY (measure_id) REFERENCES public.mdmeasure(measure_id) ON UPDATE CASCADE ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.mdparameter DROP CONSTRAINT mdparameter_measure_id_fkey;
       public       postgres    false    3170    256    254            ?           2606    84448 '   mdparameter mdparameter_process_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mdparameter
    ADD CONSTRAINT mdparameter_process_id_fkey FOREIGN KEY (process_id) REFERENCES public.mdprocess(process_id) ON UPDATE CASCADE ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.mdparameter DROP CONSTRAINT mdparameter_process_id_fkey;
       public       postgres    false    256    258    3181            @           2606    84453 !   mdprocess mdprocess_breed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mdprocess
    ADD CONSTRAINT mdprocess_breed_id_fkey FOREIGN KEY (breed_id) REFERENCES public.mdbreed(breed_id) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.mdprocess DROP CONSTRAINT mdprocess_breed_id_fkey;
       public       postgres    false    3160    258    249            A           2606    84458 $   mdprocess mdprocess_calendar_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mdprocess
    ADD CONSTRAINT mdprocess_calendar_id_fkey FOREIGN KEY (calendar_id) REFERENCES public.txcalendar(calendar_id) ON UPDATE CASCADE ON DELETE CASCADE;
 N   ALTER TABLE ONLY public.mdprocess DROP CONSTRAINT mdprocess_calendar_id_fkey;
       public       postgres    false    3289    304    258            B           2606    84463 )   mdprocess mdprocess_process_class_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mdprocess
    ADD CONSTRAINT mdprocess_process_class_id_fkey FOREIGN KEY (process_class_id) REFERENCES public.mdprocessclass(process_class_id) ON UPDATE CASCADE ON DELETE CASCADE;
 S   ALTER TABLE ONLY public.mdprocess DROP CONSTRAINT mdprocess_process_class_id_fkey;
       public       postgres    false    260    3184    258            C           2606    84468 #   mdprocess mdprocess_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mdprocess
    ADD CONSTRAINT mdprocess_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.mdproduct(product_id) ON UPDATE CASCADE ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.mdprocess DROP CONSTRAINT mdprocess_product_id_fkey;
       public       postgres    false    258    262    3188            D           2606    84473 !   mdprocess mdprocess_stage_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mdprocess
    ADD CONSTRAINT mdprocess_stage_id_fkey FOREIGN KEY (stage_id) REFERENCES public.mdstage(stage_id) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.mdprocess DROP CONSTRAINT mdprocess_stage_id_fkey;
       public       postgres    false    258    3200    269            E           2606    84478 .   mdprocessclass mdprocessclass_industry_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mdprocessclass
    ADD CONSTRAINT mdprocessclass_industry_id_fkey FOREIGN KEY (industry_id) REFERENCES public.mdindustry(industry_id) ON UPDATE CASCADE ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.mdprocessclass DROP CONSTRAINT mdprocessclass_industry_id_fkey;
       public       postgres    false    3168    260    252            G           2606    84483    oscenter oscenter_farm_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.oscenter
    ADD CONSTRAINT oscenter_farm_id_fkey FOREIGN KEY (farm_id) REFERENCES public.osfarm(farm_id) ON UPDATE CASCADE ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.oscenter DROP CONSTRAINT oscenter_farm_id_fkey;
       public       postgres    false    3218    274    272            I           2606    84488 8   oscenter_oswarehouse oscenter_oswarehouse_center_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.oscenter_oswarehouse
    ADD CONSTRAINT oscenter_oswarehouse_center_id_fkey FOREIGN KEY (center_id) REFERENCES public.oscenter(center_id) ON UPDATE CASCADE ON DELETE CASCADE;
 b   ALTER TABLE ONLY public.oscenter_oswarehouse DROP CONSTRAINT oscenter_oswarehouse_center_id_fkey;
       public       postgres    false    3208    273    272            J           2606    84493 6   oscenter_oswarehouse oscenter_oswarehouse_farm_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.oscenter_oswarehouse
    ADD CONSTRAINT oscenter_oswarehouse_farm_id_fkey FOREIGN KEY (farm_id) REFERENCES public.osfarm(farm_id) ON UPDATE CASCADE ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.oscenter_oswarehouse DROP CONSTRAINT oscenter_oswarehouse_farm_id_fkey;
       public       postgres    false    274    273    3218            K           2606    84498 =   oscenter_oswarehouse oscenter_oswarehouse_partnership_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.oscenter_oswarehouse
    ADD CONSTRAINT oscenter_oswarehouse_partnership_id_fkey FOREIGN KEY (partnership_id) REFERENCES public.ospartnership(partnership_id) ON UPDATE CASCADE ON DELETE CASCADE;
 g   ALTER TABLE ONLY public.oscenter_oswarehouse DROP CONSTRAINT oscenter_oswarehouse_partnership_id_fkey;
       public       postgres    false    278    273    3228            L           2606    84503 ;   oscenter_oswarehouse oscenter_oswarehouse_warehouse_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.oscenter_oswarehouse
    ADD CONSTRAINT oscenter_oswarehouse_warehouse_id_fkey FOREIGN KEY (warehouse_id) REFERENCES public.oswarehouse(warehouse_id) ON UPDATE CASCADE ON DELETE CASCADE;
 e   ALTER TABLE ONLY public.oscenter_oswarehouse DROP CONSTRAINT oscenter_oswarehouse_warehouse_id_fkey;
       public       postgres    false    287    3252    273            H           2606    84508 %   oscenter oscenter_partnership_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.oscenter
    ADD CONSTRAINT oscenter_partnership_id_fkey FOREIGN KEY (partnership_id) REFERENCES public.ospartnership(partnership_id) ON UPDATE CASCADE ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.oscenter DROP CONSTRAINT oscenter_partnership_id_fkey;
       public       postgres    false    3228    272    278            M           2606    84513    osfarm osfarm_farm_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.osfarm
    ADD CONSTRAINT osfarm_farm_type_id_fkey FOREIGN KEY (farm_type_id) REFERENCES public.mdfarmtype(farm_type_id) ON UPDATE CASCADE ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.osfarm DROP CONSTRAINT osfarm_farm_type_id_fkey;
       public       postgres    false    274    251    3164            N           2606    84518 !   osfarm osfarm_partnership_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.osfarm
    ADD CONSTRAINT osfarm_partnership_id_fkey FOREIGN KEY (partnership_id) REFERENCES public.ospartnership(partnership_id) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.osfarm DROP CONSTRAINT osfarm_partnership_id_fkey;
       public       postgres    false    274    278    3228            O           2606    84523 /   osincubator osincubator_incubator_plant_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.osincubator
    ADD CONSTRAINT osincubator_incubator_plant_id_fkey FOREIGN KEY (incubator_plant_id) REFERENCES public.osincubatorplant(incubator_plant_id) ON UPDATE CASCADE ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.osincubator DROP CONSTRAINT osincubator_incubator_plant_id_fkey;
       public       postgres    false    276    3224    275            P           2606    84528 5   osincubatorplant osincubatorplant_partnership_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.osincubatorplant
    ADD CONSTRAINT osincubatorplant_partnership_id_fkey FOREIGN KEY (partnership_id) REFERENCES public.ospartnership(partnership_id) ON UPDATE CASCADE ON DELETE CASCADE;
 _   ALTER TABLE ONLY public.osincubatorplant DROP CONSTRAINT osincubatorplant_partnership_id_fkey;
       public       postgres    false    3228    276    278            Q           2606    84533    osshed osshed_center_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.osshed
    ADD CONSTRAINT osshed_center_id_fkey FOREIGN KEY (center_id) REFERENCES public.oscenter(center_id) ON UPDATE CASCADE ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.osshed DROP CONSTRAINT osshed_center_id_fkey;
       public       postgres    false    280    3208    272            R           2606    84538    osshed osshed_farm_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.osshed
    ADD CONSTRAINT osshed_farm_id_fkey FOREIGN KEY (farm_id) REFERENCES public.osfarm(farm_id) ON UPDATE CASCADE ON DELETE CASCADE;
 D   ALTER TABLE ONLY public.osshed DROP CONSTRAINT osshed_farm_id_fkey;
       public       postgres    false    274    3218    280            S           2606    84543 !   osshed osshed_partnership_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.osshed
    ADD CONSTRAINT osshed_partnership_id_fkey FOREIGN KEY (partnership_id) REFERENCES public.ospartnership(partnership_id) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.osshed DROP CONSTRAINT osshed_partnership_id_fkey;
       public       postgres    false    280    278    3228            T           2606    84548     osshed osshed_statusshed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.osshed
    ADD CONSTRAINT osshed_statusshed_id_fkey FOREIGN KEY (statusshed_id) REFERENCES public.mdshedstatus(shed_status_id) ON UPDATE CASCADE ON DELETE CASCADE;
 J   ALTER TABLE ONLY public.osshed DROP CONSTRAINT osshed_statusshed_id_fkey;
       public       postgres    false    3196    267    280            U           2606    84553    ossilo ossilo_center_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ossilo
    ADD CONSTRAINT ossilo_center_id_fkey FOREIGN KEY (center_id) REFERENCES public.oscenter(center_id) ON UPDATE CASCADE ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.ossilo DROP CONSTRAINT ossilo_center_id_fkey;
       public       postgres    false    282    3208    272            V           2606    84558    ossilo ossilo_farm_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ossilo
    ADD CONSTRAINT ossilo_farm_id_fkey FOREIGN KEY (farm_id) REFERENCES public.osfarm(farm_id) ON UPDATE CASCADE ON DELETE CASCADE;
 D   ALTER TABLE ONLY public.ossilo DROP CONSTRAINT ossilo_farm_id_fkey;
       public       postgres    false    282    3218    274            X           2606    84563 *   ossilo_osshed ossilo_osshed_center_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ossilo_osshed
    ADD CONSTRAINT ossilo_osshed_center_id_fkey FOREIGN KEY (center_id) REFERENCES public.oscenter(center_id) ON UPDATE CASCADE ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.ossilo_osshed DROP CONSTRAINT ossilo_osshed_center_id_fkey;
       public       postgres    false    272    3208    283            Y           2606    84568 (   ossilo_osshed ossilo_osshed_farm_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ossilo_osshed
    ADD CONSTRAINT ossilo_osshed_farm_id_fkey FOREIGN KEY (farm_id) REFERENCES public.osfarm(farm_id) ON UPDATE CASCADE ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.ossilo_osshed DROP CONSTRAINT ossilo_osshed_farm_id_fkey;
       public       postgres    false    3218    274    283            Z           2606    84573 /   ossilo_osshed ossilo_osshed_partnership_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ossilo_osshed
    ADD CONSTRAINT ossilo_osshed_partnership_id_fkey FOREIGN KEY (partnership_id) REFERENCES public.ospartnership(partnership_id) ON UPDATE CASCADE ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.ossilo_osshed DROP CONSTRAINT ossilo_osshed_partnership_id_fkey;
       public       postgres    false    3228    283    278            [           2606    84578 (   ossilo_osshed ossilo_osshed_shed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ossilo_osshed
    ADD CONSTRAINT ossilo_osshed_shed_id_fkey FOREIGN KEY (shed_id) REFERENCES public.osshed(shed_id) ON UPDATE CASCADE ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.ossilo_osshed DROP CONSTRAINT ossilo_osshed_shed_id_fkey;
       public       postgres    false    3234    280    283            \           2606    84583 (   ossilo_osshed ossilo_osshed_silo_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ossilo_osshed
    ADD CONSTRAINT ossilo_osshed_silo_id_fkey FOREIGN KEY (silo_id) REFERENCES public.ossilo(silo_id) ON UPDATE CASCADE ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.ossilo_osshed DROP CONSTRAINT ossilo_osshed_silo_id_fkey;
       public       postgres    false    283    282    3239            W           2606    84588 !   ossilo ossilo_partnership_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ossilo
    ADD CONSTRAINT ossilo_partnership_id_fkey FOREIGN KEY (partnership_id) REFERENCES public.ospartnership(partnership_id) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.ossilo DROP CONSTRAINT ossilo_partnership_id_fkey;
       public       postgres    false    282    3228    278            ]           2606    84593 $   oswarehouse oswarehouse_farm_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.oswarehouse
    ADD CONSTRAINT oswarehouse_farm_id_fkey FOREIGN KEY (farm_id) REFERENCES public.osfarm(farm_id) ON UPDATE CASCADE ON DELETE CASCADE;
 N   ALTER TABLE ONLY public.oswarehouse DROP CONSTRAINT oswarehouse_farm_id_fkey;
       public       postgres    false    3218    274    287            ^           2606    84598 +   oswarehouse oswarehouse_partnership_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.oswarehouse
    ADD CONSTRAINT oswarehouse_partnership_id_fkey FOREIGN KEY (partnership_id) REFERENCES public.ospartnership(partnership_id) ON UPDATE CASCADE ON DELETE CASCADE;
 U   ALTER TABLE ONLY public.oswarehouse DROP CONSTRAINT oswarehouse_partnership_id_fkey;
       public       postgres    false    287    3228    278            =           2606    84603    mdapplication_rol rol fk    FK CONSTRAINT     |   ALTER TABLE ONLY public.mdapplication_rol
    ADD CONSTRAINT "rol fk" FOREIGN KEY (rol_id) REFERENCES public.mdrol(rol_id);
 D   ALTER TABLE ONLY public.mdapplication_rol DROP CONSTRAINT "rol fk";
       public       postgres    false    263    3190    248            F           2606    84608    mduser rol fk     FK CONSTRAINT     r   ALTER TABLE ONLY public.mduser
    ADD CONSTRAINT "rol fk " FOREIGN KEY (rol_id) REFERENCES public.mdrol(rol_id);
 :   ALTER TABLE ONLY public.mduser DROP CONSTRAINT "rol fk ";
       public       postgres    false    271    263    3190            _           2606    84613 5   txavailabilitysheds txavailabilitysheds_lot_code_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txavailabilitysheds
    ADD CONSTRAINT txavailabilitysheds_lot_code_fkey FOREIGN KEY (lot_code) REFERENCES public.txlot(lot_code) ON UPDATE CASCADE ON DELETE CASCADE;
 _   ALTER TABLE ONLY public.txavailabilitysheds DROP CONSTRAINT txavailabilitysheds_lot_code_fkey;
       public       postgres    false    314    3334    297            `           2606    84618 4   txavailabilitysheds txavailabilitysheds_shed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txavailabilitysheds
    ADD CONSTRAINT txavailabilitysheds_shed_id_fkey FOREIGN KEY (shed_id) REFERENCES public.osshed(shed_id) ON UPDATE CASCADE ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.txavailabilitysheds DROP CONSTRAINT txavailabilitysheds_shed_id_fkey;
       public       postgres    false    297    3234    280            a           2606    84623 !   txbroiler txbroiler_breed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroiler
    ADD CONSTRAINT txbroiler_breed_id_fkey FOREIGN KEY (breed_id) REFERENCES public.mdbreed(breed_id) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.txbroiler DROP CONSTRAINT txbroiler_breed_id_fkey;
       public       postgres    false    3160    298    249            e           2606    84628 1   txbroiler_detail txbroiler_detail_broiler_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroiler_detail
    ADD CONSTRAINT txbroiler_detail_broiler_id_fkey FOREIGN KEY (broiler_id) REFERENCES public.txbroiler(broiler_id) ON UPDATE CASCADE ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.txbroiler_detail DROP CONSTRAINT txbroiler_detail_broiler_id_fkey;
       public       postgres    false    3262    299    298            f           2606    84633 .   txbroiler_detail txbroiler_detail_farm_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroiler_detail
    ADD CONSTRAINT txbroiler_detail_farm_id_fkey FOREIGN KEY (farm_id) REFERENCES public.osfarm(farm_id) ON UPDATE CASCADE ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.txbroiler_detail DROP CONSTRAINT txbroiler_detail_farm_id_fkey;
       public       postgres    false    299    3218    274            g           2606    84638 .   txbroiler_detail txbroiler_detail_shed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroiler_detail
    ADD CONSTRAINT txbroiler_detail_shed_id_fkey FOREIGN KEY (shed_id) REFERENCES public.osshed(shed_id) ON UPDATE CASCADE ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.txbroiler_detail DROP CONSTRAINT txbroiler_detail_shed_id_fkey;
       public       postgres    false    299    280    3234            b           2606    84643 '   txbroiler txbroiler_partnership_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroiler
    ADD CONSTRAINT txbroiler_partnership_id_fkey FOREIGN KEY (partnership_id) REFERENCES public.ospartnership(partnership_id) ON UPDATE CASCADE ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.txbroiler DROP CONSTRAINT txbroiler_partnership_id_fkey;
       public       postgres    false    298    3228    278            c           2606    84648 +   txbroiler txbroiler_programmed_eggs_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroiler
    ADD CONSTRAINT txbroiler_programmed_eggs_id_fkey FOREIGN KEY (programmed_eggs_id) REFERENCES public.txprogrammed_eggs(programmed_eggs_id) ON UPDATE CASCADE ON DELETE CASCADE;
 U   ALTER TABLE ONLY public.txbroiler DROP CONSTRAINT txbroiler_programmed_eggs_id_fkey;
       public       postgres    false    317    3346    298            d           2606    84653 $   txbroiler txbroiler_scenario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroiler
    ADD CONSTRAINT txbroiler_scenario_id_fkey FOREIGN KEY (scenario_id) REFERENCES public.mdscenario(scenario_id) ON UPDATE CASCADE ON DELETE CASCADE;
 N   ALTER TABLE ONLY public.txbroiler DROP CONSTRAINT txbroiler_scenario_id_fkey;
       public       postgres    false    298    3194    265            h           2606    84658 1   txbroilereviction txbroilereviction_breed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroilereviction
    ADD CONSTRAINT txbroilereviction_breed_id_fkey FOREIGN KEY (breed_id) REFERENCES public.mdbreed(breed_id) ON UPDATE CASCADE ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.txbroilereviction DROP CONSTRAINT txbroilereviction_breed_id_fkey;
       public       postgres    false    3160    300    249            k           2606    84663 A   txbroilereviction_detail txbroilereviction_detail_broiler_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroilereviction_detail
    ADD CONSTRAINT txbroilereviction_detail_broiler_id_fkey FOREIGN KEY (broilereviction_id) REFERENCES public.txbroilereviction(broilereviction_id) ON UPDATE CASCADE ON DELETE CASCADE;
 k   ALTER TABLE ONLY public.txbroilereviction_detail DROP CONSTRAINT txbroilereviction_detail_broiler_id_fkey;
       public       postgres    false    301    300    3272            l           2606    84668 I   txbroilereviction_detail txbroilereviction_detail_broiler_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroilereviction_detail
    ADD CONSTRAINT txbroilereviction_detail_broiler_product_id_fkey FOREIGN KEY (broiler_product_id) REFERENCES public.mdbroiler_product(broiler_product_id) ON UPDATE CASCADE ON DELETE CASCADE;
 s   ALTER TABLE ONLY public.txbroilereviction_detail DROP CONSTRAINT txbroilereviction_detail_broiler_product_id_fkey;
       public       postgres    false    301    250    3162            m           2606    84673 >   txbroilereviction_detail txbroilereviction_detail_farm_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroilereviction_detail
    ADD CONSTRAINT txbroilereviction_detail_farm_id_fkey FOREIGN KEY (farm_id) REFERENCES public.osfarm(farm_id) ON UPDATE CASCADE ON DELETE CASCADE;
 h   ALTER TABLE ONLY public.txbroilereviction_detail DROP CONSTRAINT txbroilereviction_detail_farm_id_fkey;
       public       postgres    false    3218    301    274            n           2606    84678 >   txbroilereviction_detail txbroilereviction_detail_shed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroilereviction_detail
    ADD CONSTRAINT txbroilereviction_detail_shed_id_fkey FOREIGN KEY (shed_id) REFERENCES public.osshed(shed_id) ON UPDATE CASCADE ON DELETE CASCADE;
 h   ALTER TABLE ONLY public.txbroilereviction_detail DROP CONSTRAINT txbroilereviction_detail_shed_id_fkey;
       public       postgres    false    3234    301    280            o           2606    84683 H   txbroilereviction_detail txbroilereviction_detail_slaughterhouse_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroilereviction_detail
    ADD CONSTRAINT txbroilereviction_detail_slaughterhouse_id_fkey FOREIGN KEY (slaughterhouse_id) REFERENCES public.osslaughterhouse(slaughterhouse_id) ON UPDATE CASCADE ON DELETE CASCADE;
 r   ALTER TABLE ONLY public.txbroilereviction_detail DROP CONSTRAINT txbroilereviction_detail_slaughterhouse_id_fkey;
       public       postgres    false    301    3248    285            i           2606    84688 7   txbroilereviction txbroilereviction_partnership_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroilereviction
    ADD CONSTRAINT txbroilereviction_partnership_id_fkey FOREIGN KEY (partnership_id) REFERENCES public.ospartnership(partnership_id) ON UPDATE CASCADE ON DELETE CASCADE;
 a   ALTER TABLE ONLY public.txbroilereviction DROP CONSTRAINT txbroilereviction_partnership_id_fkey;
       public       postgres    false    3228    278    300            j           2606    84693 4   txbroilereviction txbroilereviction_scenario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroilereviction
    ADD CONSTRAINT txbroilereviction_scenario_id_fkey FOREIGN KEY (scenario_id) REFERENCES public.mdscenario(scenario_id) ON UPDATE CASCADE ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.txbroilereviction DROP CONSTRAINT txbroilereviction_scenario_id_fkey;
       public       postgres    false    300    3194    265            p           2606    84698 C   txbroilerproduct_detail txbroilerproduct_detail_broiler_detail_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroilerproduct_detail
    ADD CONSTRAINT txbroilerproduct_detail_broiler_detail_fkey FOREIGN KEY (broiler_detail) REFERENCES public.txbroiler_detail(broiler_detail_id) ON UPDATE CASCADE ON DELETE CASCADE;
 m   ALTER TABLE ONLY public.txbroilerproduct_detail DROP CONSTRAINT txbroilerproduct_detail_broiler_detail_fkey;
       public       postgres    false    3267    302    299            q           2606    84703 .   txbroodermachine txbroodermachine_farm_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroodermachine
    ADD CONSTRAINT txbroodermachine_farm_id_fkey FOREIGN KEY (farm_id) REFERENCES public.osfarm(farm_id) ON UPDATE CASCADE ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.txbroodermachine DROP CONSTRAINT txbroodermachine_farm_id_fkey;
       public       postgres    false    303    3218    274            r           2606    84708 5   txbroodermachine txbroodermachine_partnership_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroodermachine
    ADD CONSTRAINT txbroodermachine_partnership_id_fkey FOREIGN KEY (partnership_id) REFERENCES public.ospartnership(partnership_id) ON UPDATE CASCADE ON DELETE CASCADE;
 _   ALTER TABLE ONLY public.txbroodermachine DROP CONSTRAINT txbroodermachine_partnership_id_fkey;
       public       postgres    false    303    3228    278            s           2606    84713 ,   txcalendarday txcalendarday_calendar_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txcalendarday
    ADD CONSTRAINT txcalendarday_calendar_id_fkey FOREIGN KEY (calendar_id) REFERENCES public.txcalendar(calendar_id) ON UPDATE CASCADE ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.txcalendarday DROP CONSTRAINT txcalendarday_calendar_id_fkey;
       public       postgres    false    305    304    3289            t           2606    84718 -   txeggs_planning txeggs_planning_breed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txeggs_planning
    ADD CONSTRAINT txeggs_planning_breed_id_fkey FOREIGN KEY (breed_id) REFERENCES public.mdbreed(breed_id) ON UPDATE CASCADE ON DELETE CASCADE;
 W   ALTER TABLE ONLY public.txeggs_planning DROP CONSTRAINT txeggs_planning_breed_id_fkey;
       public       postgres    false    249    3160    306            u           2606    84723 0   txeggs_planning txeggs_planning_scenario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txeggs_planning
    ADD CONSTRAINT txeggs_planning_scenario_id_fkey FOREIGN KEY (scenario_id) REFERENCES public.mdscenario(scenario_id);
 Z   ALTER TABLE ONLY public.txeggs_planning DROP CONSTRAINT txeggs_planning_scenario_id_fkey;
       public       postgres    false    3194    265    306            v           2606    84728 -   txeggs_required txeggs_required_breed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txeggs_required
    ADD CONSTRAINT txeggs_required_breed_id_fkey FOREIGN KEY (breed_id) REFERENCES public.mdbreed(breed_id);
 W   ALTER TABLE ONLY public.txeggs_required DROP CONSTRAINT txeggs_required_breed_id_fkey;
       public       postgres    false    3160    307    249            w           2606    84733 0   txeggs_required txeggs_required_scenario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txeggs_required
    ADD CONSTRAINT txeggs_required_scenario_id_fkey FOREIGN KEY (scenario_id) REFERENCES public.mdscenario(scenario_id);
 Z   ALTER TABLE ONLY public.txeggs_required DROP CONSTRAINT txeggs_required_scenario_id_fkey;
       public       postgres    false    307    3194    265            x           2606    84738 +   txeggs_storage txeggs_storage_breed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txeggs_storage
    ADD CONSTRAINT txeggs_storage_breed_id_fkey FOREIGN KEY (breed_id) REFERENCES public.mdbreed(breed_id);
 U   ALTER TABLE ONLY public.txeggs_storage DROP CONSTRAINT txeggs_storage_breed_id_fkey;
       public       postgres    false    249    308    3160            y           2606    84743 5   txeggs_storage txeggs_storage_incubator_plant_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txeggs_storage
    ADD CONSTRAINT txeggs_storage_incubator_plant_id_fkey FOREIGN KEY (incubator_plant_id) REFERENCES public.osincubatorplant(incubator_plant_id);
 _   ALTER TABLE ONLY public.txeggs_storage DROP CONSTRAINT txeggs_storage_incubator_plant_id_fkey;
       public       postgres    false    276    3224    308            z           2606    84748 .   txeggs_storage txeggs_storage_scenario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txeggs_storage
    ADD CONSTRAINT txeggs_storage_scenario_id_fkey FOREIGN KEY (scenario_id) REFERENCES public.mdscenario(scenario_id);
 X   ALTER TABLE ONLY public.txeggs_storage DROP CONSTRAINT txeggs_storage_scenario_id_fkey;
       public       postgres    false    308    265    3194            {           2606    84753 '   txgoals_erp txgoals_erp_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txgoals_erp
    ADD CONSTRAINT txgoals_erp_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.mdproduct(product_id);
 Q   ALTER TABLE ONLY public.txgoals_erp DROP CONSTRAINT txgoals_erp_product_id_fkey;
       public       postgres    false    3188    309    262            |           2606    84758 (   txgoals_erp txgoals_erp_scenario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txgoals_erp
    ADD CONSTRAINT txgoals_erp_scenario_id_fkey FOREIGN KEY (scenario_id) REFERENCES public.mdscenario(scenario_id);
 R   ALTER TABLE ONLY public.txgoals_erp DROP CONSTRAINT txgoals_erp_scenario_id_fkey;
       public       postgres    false    309    265    3194            }           2606    84763 $   txholiday txholiday_calendar_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txholiday
    ADD CONSTRAINT txholiday_calendar_id_fkey FOREIGN KEY (calendar_id) REFERENCES public.txcalendar(calendar_id);
 N   ALTER TABLE ONLY public.txholiday DROP CONSTRAINT txholiday_calendar_id_fkey;
       public       postgres    false    3289    304    311            ~           2606    84768 '   txhousingway txhousingway_breed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txhousingway
    ADD CONSTRAINT txhousingway_breed_id_fkey FOREIGN KEY (breed_id) REFERENCES public.mdbreed(breed_id) ON UPDATE CASCADE ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.txhousingway DROP CONSTRAINT txhousingway_breed_id_fkey;
       public       postgres    false    3160    312    249            �           2606    84773 4   txhousingway_detail txhousingway_detail_farm_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txhousingway_detail
    ADD CONSTRAINT txhousingway_detail_farm_id_fkey FOREIGN KEY (farm_id) REFERENCES public.osfarm(farm_id) ON UPDATE CASCADE ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.txhousingway_detail DROP CONSTRAINT txhousingway_detail_farm_id_fkey;
       public       postgres    false    3218    313    274            �           2606    84778 ;   txhousingway_detail txhousingway_detail_housing_way_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txhousingway_detail
    ADD CONSTRAINT txhousingway_detail_housing_way_id_fkey FOREIGN KEY (housing_way_id) REFERENCES public.txhousingway(housing_way_id) ON UPDATE CASCADE ON DELETE CASCADE;
 e   ALTER TABLE ONLY public.txhousingway_detail DROP CONSTRAINT txhousingway_detail_housing_way_id_fkey;
       public       postgres    false    312    3320    313            �           2606    84783 4   txhousingway_detail txhousingway_detail_shed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txhousingway_detail
    ADD CONSTRAINT txhousingway_detail_shed_id_fkey FOREIGN KEY (shed_id) REFERENCES public.osshed(shed_id) ON UPDATE CASCADE ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.txhousingway_detail DROP CONSTRAINT txhousingway_detail_shed_id_fkey;
       public       postgres    false    280    3234    313                       2606    84788 -   txhousingway txhousingway_partnership_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txhousingway
    ADD CONSTRAINT txhousingway_partnership_id_fkey FOREIGN KEY (partnership_id) REFERENCES public.ospartnership(partnership_id) ON UPDATE CASCADE ON DELETE CASCADE;
 W   ALTER TABLE ONLY public.txhousingway DROP CONSTRAINT txhousingway_partnership_id_fkey;
       public       postgres    false    278    312    3228            �           2606    84793 *   txhousingway txhousingway_scenario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txhousingway
    ADD CONSTRAINT txhousingway_scenario_id_fkey FOREIGN KEY (scenario_id) REFERENCES public.mdscenario(scenario_id) ON UPDATE CASCADE ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.txhousingway DROP CONSTRAINT txhousingway_scenario_id_fkey;
       public       postgres    false    312    3194    265            �           2606    84798 '   txhousingway txhousingway_stage_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txhousingway
    ADD CONSTRAINT txhousingway_stage_id_fkey FOREIGN KEY (stage_id) REFERENCES public.mdstage(stage_id);
 Q   ALTER TABLE ONLY public.txhousingway DROP CONSTRAINT txhousingway_stage_id_fkey;
       public       postgres    false    269    3200    312            �           2606    84803    txlot txlot_breed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txlot
    ADD CONSTRAINT txlot_breed_id_fkey FOREIGN KEY (breed_id) REFERENCES public.mdbreed(breed_id);
 C   ALTER TABLE ONLY public.txlot DROP CONSTRAINT txlot_breed_id_fkey;
       public       postgres    false    3160    314    249            �           2606    84808    txlot txlot_farm_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txlot
    ADD CONSTRAINT txlot_farm_id_fkey FOREIGN KEY (farm_id) REFERENCES public.osfarm(farm_id) ON UPDATE CASCADE ON DELETE CASCADE;
 B   ALTER TABLE ONLY public.txlot DROP CONSTRAINT txlot_farm_id_fkey;
       public       postgres    false    3218    314    274            �           2606    84813    txlot txlot_housing_way_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txlot
    ADD CONSTRAINT txlot_housing_way_id_fkey FOREIGN KEY (housing_way_id) REFERENCES public.txhousingway(housing_way_id) ON UPDATE CASCADE ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.txlot DROP CONSTRAINT txlot_housing_way_id_fkey;
       public       postgres    false    312    3320    314            �           2606    84818 !   txlot txlot_process_class_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txlot
    ADD CONSTRAINT txlot_process_class_id_fkey FOREIGN KEY (process_class_id) REFERENCES public.mdprocessclass(process_class_id);
 K   ALTER TABLE ONLY public.txlot DROP CONSTRAINT txlot_process_class_id_fkey;
       public       postgres    false    260    314    3184            �           2606    84823    txlot txlot_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txlot
    ADD CONSTRAINT txlot_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.mdproduct(product_id);
 E   ALTER TABLE ONLY public.txlot DROP CONSTRAINT txlot_product_id_fkey;
       public       postgres    false    3188    262    314            �           2606    84828    txlot txlot_shed_id_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY public.txlot
    ADD CONSTRAINT txlot_shed_id_fkey FOREIGN KEY (shed_id) REFERENCES public.osshed(shed_id);
 B   ALTER TABLE ONLY public.txlot DROP CONSTRAINT txlot_shed_id_fkey;
       public       postgres    false    314    280    3234            �           2606    84833 +   txposturecurve txposturecurve_breed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txposturecurve
    ADD CONSTRAINT txposturecurve_breed_id_fkey FOREIGN KEY (breed_id) REFERENCES public.mdbreed(breed_id) ON UPDATE CASCADE ON DELETE CASCADE;
 U   ALTER TABLE ONLY public.txposturecurve DROP CONSTRAINT txposturecurve_breed_id_fkey;
       public       postgres    false    3160    249    316            �           2606    84838 1   txprogrammed_eggs txprogrammed_eggs_breed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txprogrammed_eggs
    ADD CONSTRAINT txprogrammed_eggs_breed_id_fkey FOREIGN KEY (breed_id) REFERENCES public.mdbreed(breed_id) ON UPDATE CASCADE ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.txprogrammed_eggs DROP CONSTRAINT txprogrammed_eggs_breed_id_fkey;
       public       postgres    false    317    249    3160            �           2606    84843 8   txprogrammed_eggs txprogrammed_eggs_eggs_storage_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txprogrammed_eggs
    ADD CONSTRAINT txprogrammed_eggs_eggs_storage_id_fkey FOREIGN KEY (eggs_storage_id) REFERENCES public.txeggs_storage(eggs_storage_id) ON UPDATE CASCADE ON DELETE CASCADE;
 b   ALTER TABLE ONLY public.txprogrammed_eggs DROP CONSTRAINT txprogrammed_eggs_eggs_storage_id_fkey;
       public       postgres    false    3307    308    317            �           2606    84848 5   txprogrammed_eggs txprogrammed_eggs_incubator_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txprogrammed_eggs
    ADD CONSTRAINT txprogrammed_eggs_incubator_id_fkey FOREIGN KEY (incubator_id) REFERENCES public.osincubator(incubator_id) ON UPDATE CASCADE ON DELETE CASCADE;
 _   ALTER TABLE ONLY public.txprogrammed_eggs DROP CONSTRAINT txprogrammed_eggs_incubator_id_fkey;
       public       postgres    false    275    317    3221            �           2606    84853 3   txscenarioformula txscenarioformula_measure_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txscenarioformula
    ADD CONSTRAINT txscenarioformula_measure_id_fkey FOREIGN KEY (measure_id) REFERENCES public.mdmeasure(measure_id) ON UPDATE CASCADE ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public.txscenarioformula DROP CONSTRAINT txscenarioformula_measure_id_fkey;
       public       postgres    false    318    3170    254            �           2606    84858 5   txscenarioformula txscenarioformula_parameter_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txscenarioformula
    ADD CONSTRAINT txscenarioformula_parameter_id_fkey FOREIGN KEY (parameter_id) REFERENCES public.mdparameter(parameter_id) ON UPDATE CASCADE ON DELETE CASCADE;
 _   ALTER TABLE ONLY public.txscenarioformula DROP CONSTRAINT txscenarioformula_parameter_id_fkey;
       public       postgres    false    318    3174    256            �           2606    84863 3   txscenarioformula txscenarioformula_process_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txscenarioformula
    ADD CONSTRAINT txscenarioformula_process_id_fkey FOREIGN KEY (process_id) REFERENCES public.mdprocess(process_id) ON UPDATE CASCADE;
 ]   ALTER TABLE ONLY public.txscenarioformula DROP CONSTRAINT txscenarioformula_process_id_fkey;
       public       postgres    false    318    3181    258            �           2606    84868 4   txscenarioformula txscenarioformula_scenario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txscenarioformula
    ADD CONSTRAINT txscenarioformula_scenario_id_fkey FOREIGN KEY (scenario_id) REFERENCES public.mdscenario(scenario_id) ON UPDATE CASCADE ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.txscenarioformula DROP CONSTRAINT txscenarioformula_scenario_id_fkey;
       public       postgres    false    318    3194    265            �           2606    84873 )   txscenariohen txscenariohen_breed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txscenariohen
    ADD CONSTRAINT txscenariohen_breed_id_fkey FOREIGN KEY (breed_id) REFERENCES public.mdbreed(breed_id) ON UPDATE CASCADE ON DELETE CASCADE;
 S   ALTER TABLE ONLY public.txscenariohen DROP CONSTRAINT txscenariohen_breed_id_fkey;
       public       postgres    false    319    3160    249            �           2606    84878 ,   txscenariohen txscenariohen_scenario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txscenariohen
    ADD CONSTRAINT txscenariohen_scenario_id_fkey FOREIGN KEY (scenario_id) REFERENCES public.mdscenario(scenario_id) ON UPDATE CASCADE ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.txscenariohen DROP CONSTRAINT txscenariohen_scenario_id_fkey;
       public       postgres    false    3194    265    319            �           2606    84883 9   txscenarioparameter txscenarioparameter_parameter_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txscenarioparameter
    ADD CONSTRAINT txscenarioparameter_parameter_id_fkey FOREIGN KEY (parameter_id) REFERENCES public.mdparameter(parameter_id) ON UPDATE CASCADE ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.txscenarioparameter DROP CONSTRAINT txscenarioparameter_parameter_id_fkey;
       public       postgres    false    320    3174    256            �           2606    84888 7   txscenarioparameter txscenarioparameter_process_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txscenarioparameter
    ADD CONSTRAINT txscenarioparameter_process_id_fkey FOREIGN KEY (process_id) REFERENCES public.mdprocess(process_id) ON UPDATE CASCADE ON DELETE CASCADE;
 a   ALTER TABLE ONLY public.txscenarioparameter DROP CONSTRAINT txscenarioparameter_process_id_fkey;
       public       postgres    false    258    3181    320            �           2606    84893 8   txscenarioparameter txscenarioparameter_scenario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txscenarioparameter
    ADD CONSTRAINT txscenarioparameter_scenario_id_fkey FOREIGN KEY (scenario_id) REFERENCES public.mdscenario(scenario_id) ON UPDATE CASCADE ON DELETE CASCADE;
 b   ALTER TABLE ONLY public.txscenarioparameter DROP CONSTRAINT txscenarioparameter_scenario_id_fkey;
       public       postgres    false    265    3194    320            �           2606    84898 ?   txscenarioparameterday txscenarioparameterday_parameter_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txscenarioparameterday
    ADD CONSTRAINT txscenarioparameterday_parameter_id_fkey FOREIGN KEY (parameter_id) REFERENCES public.mdparameter(parameter_id);
 i   ALTER TABLE ONLY public.txscenarioparameterday DROP CONSTRAINT txscenarioparameterday_parameter_id_fkey;
       public       postgres    false    256    3174    321            �           2606    84903 >   txscenarioparameterday txscenarioparameterday_scenario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txscenarioparameterday
    ADD CONSTRAINT txscenarioparameterday_scenario_id_fkey FOREIGN KEY (scenario_id) REFERENCES public.mdscenario(scenario_id);
 h   ALTER TABLE ONLY public.txscenarioparameterday DROP CONSTRAINT txscenarioparameterday_scenario_id_fkey;
       public       postgres    false    265    3194    321            �           2606    84908 ;   txscenarioposturecurve txscenarioposturecurve_breed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txscenarioposturecurve
    ADD CONSTRAINT txscenarioposturecurve_breed_id_fkey FOREIGN KEY (breed_id) REFERENCES public.mdbreed(breed_id) ON UPDATE CASCADE ON DELETE CASCADE;
 e   ALTER TABLE ONLY public.txscenarioposturecurve DROP CONSTRAINT txscenarioposturecurve_breed_id_fkey;
       public       postgres    false    249    3160    322            �           2606    84913 G   txscenarioposturecurve txscenarioposturecurve_housingway_detail_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txscenarioposturecurve
    ADD CONSTRAINT txscenarioposturecurve_housingway_detail_id_fkey FOREIGN KEY (housingway_detail_id) REFERENCES public.txhousingway_detail(housingway_detail_id) ON UPDATE CASCADE ON DELETE CASCADE;
 q   ALTER TABLE ONLY public.txscenarioposturecurve DROP CONSTRAINT txscenarioposturecurve_housingway_detail_id_fkey;
       public       postgres    false    3326    322    313            �           2606    84918 >   txscenarioposturecurve txscenarioposturecurve_scenario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txscenarioposturecurve
    ADD CONSTRAINT txscenarioposturecurve_scenario_id_fkey FOREIGN KEY (scenario_id) REFERENCES public.mdscenario(scenario_id) ON UPDATE CASCADE ON DELETE CASCADE;
 h   ALTER TABLE ONLY public.txscenarioposturecurve DROP CONSTRAINT txscenarioposturecurve_scenario_id_fkey;
       public       postgres    false    265    322    3194            �           2606    84923 3   txscenarioprocess txscenarioprocess_process_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txscenarioprocess
    ADD CONSTRAINT txscenarioprocess_process_id_fkey FOREIGN KEY (process_id) REFERENCES public.mdprocess(process_id) ON UPDATE CASCADE ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public.txscenarioprocess DROP CONSTRAINT txscenarioprocess_process_id_fkey;
       public       postgres    false    258    3181    323            �           2606    84928 4   txscenarioprocess txscenarioprocess_scenario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txscenarioprocess
    ADD CONSTRAINT txscenarioprocess_scenario_id_fkey FOREIGN KEY (scenario_id) REFERENCES public.mdscenario(scenario_id) ON UPDATE CASCADE ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.txscenarioprocess DROP CONSTRAINT txscenarioprocess_scenario_id_fkey;
       public       postgres    false    3194    323    265                  x������ � �            x������ � �            x������ � �             x�32�4�4����� 8�      "      x�340�42�4��4�1~@����� 9�;      $      x������ � �      &      x�3��4�4����� ��      (      x������ � �      *      x������ � �      +      x������ � �      K   �   x�e��jAEk�_���I�"ł? �<+��R�h��G6���=\�'�r�g�D�]%՜#�a!VY�5�[a%k�)u�;kѝ��O�ϰ���$3����^A��=������')!������4��
��Q�Pݚd�NWsX�DRϣ�d)�܃����a�v�r�L9S����	~?"��mZ�      L   W   x����0��YL`���K��#�|�� ���44�P�ԤS�.m�u�ѥW���e�Z.���<�@����Bd6$s0��-zy��>�>I��      M   $   x�3�40�t�OJ�24�433�,J�J4����� V2�      N   %   x�32�,(�O)M.�W0�41�4�3�D\1z\\\ �	G      O   9   x�3�J-(�O)MN�<�9�ˈ�5/=�(%�˘�'�,1�$U�R�����D�=... �6>      P      x�3���K)-.)�LT0����� 9V�      R   0   x�3�tIMK,�)���4�4�24���LILpYp��qqq �H	�      T   `   x�m�1
�0@�99EN ��z��%�Q��Zz~ũ���?�a���E!ɧ��tqaj�+S���+'�#�����jԴ��v�rhP���D| �_)|      V   �   x��P1�0���DN�6�@baf	iA�P�J���x�i�TT�9_��s�( �rP҂�L�C����M۸�r��rD䱃{��ք��>>��Z'�KL�	(�p^jYN�:��6V�������ċ0_6��6�ʉ�J\w��g7y�l���l�w $M9+ˋҿ�DT���p�m�?�'�$�_{4X�      X   F   x�3�t�K�/JI�4�2���K.MJL�<�9�7�J-(�O)M���r:^��P���Z��W����� =�s      Z   q   x�U�A�0��+������R���S?�w�1"�н��:��u�hJ1+�,�a��M�y�GלR����R�-���#�<��
;���U�Ұ�,Ǆ�qF|DJ%��w�"v      [   K   x�3�(�O/J-�,��LL����,.)JL�/���2�tD�P`���S�)g@Nb^fZf2v�&Hv��1'F��� �_:�      ]   F   x�34��,N�K�WH-NN�K,���4204�54�50T02�2 !]������������+\�!W� n��      _   �   x�}�M�@���N�	����wz7e��fl'��#��(���}}/msWHM��E�(���]X��a���U�9z1���3y��c���^���kj�㓝�U:���DG҆Uޏ��qmܓ��l���oҫC@>M|�R�t�p� x ��l#      a   N   x�3�4�t�K�/JI�2�4���K.MJL����2�4�J-(�O)M.�/J,�2�4�t.:�6Q�R�'�,1�$�+F��� ۏ�      c   �  x���]o�0�k��ح�-E(w�!�����K�M="�B��s�%gf�r�^�M���i��Zy��#�ZC2[<��V�T�����^�p�iϏ�u�_�v�::�T�s%E,x��֌�f�}�eyą��+�+�¢}�'e%XT�("�/�> dA�BttHMԂDA���7�)/c�{�X���;/"?��7���W1\`�˭·���&��b������y�TӢ�_� ��������]�O�~�zυ�Mv�� ݂��w��g�
.�C���$�ɗ'����_��5��Td���\���F�L�����Y���u��Dly��dR*n�7,��t��^��EL@�f�$���o6 N�O�aӋ:��o��7m��Ӧ��zF��A0opI�V���ʻ�\��f"� �yy�+����C�咣|�N���e��}\�h���2��f}�K<���� �9t�i��ⱇ[��"�M�[�X�u��W�����~ ���      d   �   x�%�A�0@��p
N`:m)�ԅ+1����6��A�x�)�����o��"�5��`���-_�Bd�%SGۇ�1�*�B@c'�ÔDF�Y��?Pk��s{�;J]ǎ�%�h�rI�(��b��ϳ�L4Ŧ��W����uw^W�J�%h|{�[r�ke��4�\�z��B�ti�d�>��,��n�,��k�A�      e      x������ � �      f   �   x�e�M
�0FדS�2I���peK�m���H�o�Y���qQ��^�7�L
P%H����������2)����:N�c�P�z7�d"C8�n��I3#u�P�z׎�i ����ɽ����;r��.�U�]CY�`��׶� �Y�Ov��i)j��}�����qq��t�ڍ�0X�      g   I   x�32�4���J�M-.O�40��b��K3�`✆&&���H���E�P��V� D7�~�=... iI      h   3   x�3��H,�,��4245��I�+ITHIU(H,J	pZps��qqq &M�      j   �   x�]�;�0�99�U�k�hS"�1r�
$.ř�I��,Yl7)\�}tyK�qG0�8��Zf'13��v�k`��;}ޙ�p�`��)&�%�	�z�T{�4LèZk��b�zX�_�d6�Yyr�p�0֐�7z�)�Lp+-,���O��j��_�L;n      l   �   x�}��� г����	��5p(��
���V3�Jȅ '�,1��6 3!v��I@<���7�����p��hNfK<�%P\���X��t�?/�\JS�s&���^��4�3u�<9�ny!X���d��Xwג����p�Q��zi��\�|���T�V�      n      x������ � �      o      x������ � �      q   ;   x�36��I�+ITHIUpJ�KM�L��W00��M��L�G�MB��� ' �� �b���� ��z      s   z   x�}�+�@�a={�=�ҳ`e.�EP��Dp{#���W�� Zy�K����ӽ~mقLOQ N1����i3�uFf�u21����:�:��d��f"3jF�����ނ������f
ι2Lf      }      x������ � �      ~   /   x�37�420��50�54�46 !CN#NO]CN#3C�=... �*�         4   x�Mȹ  ���.�s1�����T7fN-��F:XBv��A�A��6�Y	<      �   ,   x��0�420��50�54�42�4��44��4�0������� p��      �   9   x�=ɱ�0�Xߋ��d����#��=ڈ�fFg(���k����!�W�UU<�	�      �      x������ � �      �      x������ � �      �   �   x��ѱ
�0���y��5vl�����v9�B $%šo_�T��$������E�U�Q��S��.5-��[�/�ʚ���N,���q�K�$+Sl���5E��$[�I\�$d�'3�u?�:e�9.d �@��Ӎ}�tPu�(���e��;�3�mq(�C�>�����qm-�t��^�j���z�B>=G�{      �      x�}]ݑt;n{���	���r�����;M�(,q�ʵn��C�lj��?��ԧ�?��O������������O�y��������?�_��C8M�ן�S�NW8����4ǩ�3�x��8�q�L�3�p�/�p�N8K�7���3g�){�Y�8�q&�l���>�ܻ9κqʣp����~��	Tހ>7���� ��������z���uioH��/.�E?�HY��������^$�"�]��Gť�H�EJ�̷����^$�"�]��� ��ɻHy{Cr��	�H�����*p�/�x������5�H�Uj��7��
�k|�ƫۯ��QAu�i�J���vࣂ�7�x����G}�\�F�R�u�!}TP]�F�R�u�!}TP]�F�R�u�!}TP]�F�R��ސ\�q#�W��ߐ\�q#�7����p�ƍ4ޤ�[y�Q���q�4^�9����+��.����e�?���4W�.$~W����G��+�_�ze9��Q@s}�F@�7�^i� }�\޻��E�'�I���  �{RO����Ž'�_�z2�����ދ��oI=�N��wio��T�S#�IH���.�M�V�N�d'!}�?��i[%;����(�WG"q�d�F��|$Л#яT�N�d'��Rw$��Jvj$;	�#�>������NBrC0�����NBr,G"��d�F���\�H$q���Hv��`;i\%;5��tࣂ�8i\%;5����>H��BW�N�d'!}T0\�4����NB��`��i\%;5������5^H�*٩��$��
�k���U�S#�IH�x!��d�F���
\�4����N�Q$�x�4�d:�~����%^��������G�^6	5������t�ׇ����O���Zj?��#��򮕀���I�������H(��t �����vBj'H@�럮�:H��vҁ���Ү�R�@�t !����+I[�-ҁ��pmWҶJ���!w%q�t�E:�|$�\ݍԭҁ�@�Q$�w#y�t�E:��>"X��F�V�@�t !}T�\��U�@�t !}T�\��ҁ�@B��`��I\�-ҁ��*p�7ҸJZ�逫�5�H�*h���Ar�7ҸJZ�	�s�7ҸJZ�	�s�wҸJZ�	�s�wҸJZ�	�s�wҸJZ�	�s�wҸJZ��W�]�4�ҁ�@�Q$�x'���G��GBr��;i\�>Z�>���5�I��Ѣ���\��~)���������s��'��)�� ��F# ��~2��!i��  !�~��'������X7������o:�Q�v����j�?~z��$������g|��oT��Q	�+��s>�s���ǟ����9��>�u���_��u��i�D�
�=y��wj�"�U����ex�e/�]��a3A��/�Ѯ�]�h��\��؋hWA�G�JP.�B�w0dl?��Eh�{���\�	.	ɥ��}�里.�D���J�:����C��q�K�܅���}�ć�/#�K�r!xQ|Q��_�j���&�U�`����{�*��0#���o��� 3"�$(���}�&�U�`Z�N�&�U�`�ç�Z��!�U�a���S��"�U�b���S���"�U�c��XD�
2#��HI�cm`]�OY���\��\��U�)�,��Y�b����6e�d�I�-o�Ȧ�l�S�HP�����֔%�yJ	��0@{!�U)aF)!a�&x�Ļ*�(���W"^Y��=a�&��ļ��3,w�rALP_�ze�gX�t�1�}%�ŝaq��}#�5�aM�kb��F�+K9�R&,�����WVp��)�9�oĽ�p3,\�rM,p[�%���)oP.	��_2ܬn���q^2ܬn��@��w�7넛�z0�~��%��:�&A��w�]���f�$�gc�� �U�Yn��a��Aīp�"�$,���W�fE�I\��^���&a�"6�Ľ
7+�M���O�^���&a�$��'q��͊p�R*�X�~�*ܬ7	��wp?�{nV�����+p?�{U�YQ�I|^���ۻ��c����|ة��ۻ�4dvY�rE0{W��̎#KP0�w5i��X2K�͡���]Mz2O��\��L�ѿ[�j�F�+Wf���Lсy#�-��e	�QA��ʗY���动�ވ{e�~�ް\�o�^93gf)�9��Ľrf�,a�&��Ľrf�,a�&��Ľrf�,pM4p��{��,�Y��D�s_n'�e��O���\0��6�[�J��J	�[n�e��O��Shs��EP��>�R�r=�Ŗ��n�*�*%(�\l)D�J�v�J��6��]�J;R���r��-��W�ҎT)a�`dK!�U��#UJX.8�R�z�*�H�v�m,8�R�{�*�H��K������oO�ym�x���! q����Ͻ{��Q	H\`?�9	装�m�A]�{���M�a{onLW��oM��7���~gz����7��It�_��2	
}'|��7��oL�rs�8�K�����x��I��ߗ�/	
M,�}��ץǯK�B��i_D�2=�E�B��i_D��=|En9�Ӿ�ve+z؊��9�hW����HPhb9���Cr���"���h]8���:��-㪘>��C�/u���C�q�KB�7����CF�q�KBr!�(����!��8�%���7b\ŗ�%A�m�o�\ŗ�%A�m�o�\ŗ�%p!���&�U|_�+���&�U|_zXN�&�U|_z�Ļ
0#Ln9V�"̈��\���_,b^��!&a�>�XD��1#bL:�>���W������������\̟�7���T�&n^��J���c�SV.�\��C��{zy���<���&x�����\̨\$,4-�{%�U�b�q M_�xU��Q�HX��	�+1�*3*	�1A}��I}�7,4��}%�U���X����}#�U�bF�"a�i�q�*3*	�5��}#�U�bF�"pM,p߈{U��Q�HXhd��Fܫ�Ō�E�B���S�Kƛ������\2ެ�R��⊁�{�q�x��J���+��Q�%��:�&A���o��/u�M:��xĻ�7����D��7+�M�·��� �U�Yo�b��Aԫx�"��6�c��Aܫx�"�$,t-��$�U�Yo��~�*ެ�7逗�p?�{oVě��%��O�^ś�&a���'q��͊x��и ��y5i���Ƀ���ͫIGfWS��u�y5i��j*7U�. �6����P��st����f��Q혲��h7�]�2W��д �F�+[fa��ˡ�x#�/��e��X`ވye�,�Y�B#�Q����3KXhZ��M�+kfa��4-��&�5��f	�5���&�5��f	�5���&�5��f	�,p��{e�,�Y�y��A���W��%,4.*�.�L��O}�rI�ɖ���΋C���]0��6�[�J��J	
],�����O���е ﷍�2Uڑ*%,t-�{!�U��m�7F�"^�J;R����%`��*Uڑ*%,t�@}!�U��#UJ\����*Uڑ*%,��l�ĽJ�v�J	+Z�}���];bW�r�0�X*u�T������[���];bW�_�U���];bW�r�0�X�y���T������0�X�y�_,����&K��29�+�k^���Z%�|����C�W,׼��Q����K�{��5��{T��y��R>����b�Ľ\����)��(0�X:�/w�='c�`�
-�N��ee�I�26��N��-c�ə~O��ӊ��҉��9ISsa`r�� ���9YSse`t�� ���9�'��.&\������{2�KËe��X�	>̥���2����D�滋0�X&]�\:�������:�����J̳3c�� �/�k~����<�,3�oz��b����*ʳ�2�M�_,��byY#y�Hf,,����byY; 3����cYD�\�X���e�Ʋ�}�u1�.����    �@�"���ؗ��\�c,���{c�asa`��1"Ɔ�|�I�btr�`��`.�2��+c'`si`��]�����2�KÌ������W�¿�˦���b}^si`��\�Eo����˕�q�r�3�g��Es����g,zC\9+�2����g,z�[9��2����g,z+[��l�e�����2�T:!�[�Hc}�}~bZsY`��>D�?��,�ai��/�O��'\l��.@���'��20�X]�?5�Osi`��� ~j�������B �O��7y9.����S#�$0��k���F�I`.|Q��k���)���x��ϱ��kz'�}w�+(�lo=���:o���VP.
��z\��M���ĭ�\0���^�K���D�Բn��h����k��z�筍x����j��r�筍���κiu�� �[1���5�
+=A}'����Ya�"`yk'�}���Ya�$�xk'�{��N���f��������d�嚀߭�������b�嚀ݭ�������au�5�[q����u�
�5�[�Žʜ��WA�$`u�X��r�wA��rE��ֱ	*�ݰ�f]S+|�:ln����_���UP��&��vC���.[��Gar�$�s�dg�:��car�$�s�dgw���0�u�9e���Ua��V�ܺ���1��ժ�|�*<n]�}N���X5��ձ��"�s�dg7��rM���E��t��NS�����~�9[���TpM��V#�s�dg���rM��V��W�?���SA�$`n��t������`�A	�ډy��C�x�%�j'F$(�lm��R1�E�HX��ں�w#�:��� ~�*F��	�� W[71�bD���\_W[�_��Ǝ��3�b7�K�~�r;�krSɱЯ�ԯSfc�xM�B��F�:�5v��$,�@Я��E�[~;��n�?�k�����z�UhUU�?�k����rzϩt$,����5��{T��T: ���m"(��D�㑏�T@�N��J�8�LN�d�ľ�t<Q�H`.A�N��J���t�1�߉Y�x�ґ�� �bDV:�������t���D�#��40	Y]��t<Q��m%�� Y�x�ґ���� Y�x�ґ���L� Y�x�ґN����!��tx�˭���i����Y�Z��iLC�k��<]V���|�Ӑ嚆,/ώ�w�DS�{ ���,/O��7�2��~��e�}e0W"�"�e�:���'\�,�ؗ-�x`+��5��/[��2VC���/[��UC�`t�eoQ������.@�����'vpF [���SCk`t�e�6���6]�lY�{K-\��>��>�y���Ǆ��5Y��D�<L��\�,�pd�/
���)9ؿ�#�~��ǀ2�Za)��3>�
�?{8_���	W�#?��&�D����d}�}}�ś�Θ���'���`h��B���ö������&�O���\���.@F��'��40'Y]��>5�O:��.����S#�$0�@p�.@F��'��	��tr`���Lsi`V��k�Y��!+[J���5���}�UP芁��zM��jߗ[� ���^��q({�=���j*%j*	��[�j*����6"^�TJ�T�b`��R���s,�[��Nԫ�k��k�B�w�^�]�c2
�%�[;q��%��k��v�^�]K�]�b����Z�����Wu�uׄ�.��}vnv��M%����^�N�}RA�A?P?&A�v]�Z�j�p�ѭ�Jt��iQ�����!(Ѭ��E��������ӢNPx��O�]��k�����q�$�U��F�:���O"^��k��Z `~�E]�E������W-�-�t��[q�Z�5Z�	�%�[q�Z�5Z�	m1p��{բ�ѢNXh��{#�U��F�:����Žz,ξ��)(��m�NP����ޠ\���&A	��	�s��@�A	��		
-��:m'D$(t@@�&�U�h"����n�]��!"���o"^��!"a�+�71�BD���\_S��Y����M�r�0��֩���T��W����q*�i��$,�S���n��nZd7	|-`Q�Ne7-��t��0��^e7-�����e�}!�Uv�"�IX�;�	�V.�ՂA�.TP.	�?�2J�
���+S��"(��O�JP.�>��	J������������Е>w9`�U�]���+a�0��*�BW�Е�\�|l��W��G�JX��>�J̫��#t�'�>X�}l��W�M��&a�"0��q����M�rI`��5�^e7=��t�5���ֈ{����n�kÏ��*���$,��['�� ^������c����A�.�@�/Nu�>�{�Qm���A���c�G��A��TPx�ߓ�j�}���]|l��Z<h�Ń
�倹�6�vnF����r��cĻ
7#�M���� ~�*܌7��)��W�fD�IX��6F�$�U�n������6�{nF��t o���Iܫp3"�$,���m�*܌7	����c�Ľ
7#�M���1��q��͈p�ߠr,p��{5�;b�7a�&0����G�~о��K���}T���~P}���c�'��A��TPx��߃�j��}�*(���=����Y?��\|lF������?0�،�Wu�u��z��c3b^՝gԝ���m�ʙ�pf�+��m�ʙ}�*,�f�&�3����k��m�ʙ�pf	�5��Ƕ�{��f8���N�?Ľrf3�Y�rM�����W�l�3KX�	8�~;Y�~о���.	�~Y�~о��+>��>V����A傀����U���~PA��b{�7��oV�7Kک��l/������M���Woz}K�]\��,i����V�W�$	�u�j�ė�IV�$	�u�&j�ė�IV�$�u~�2�9Ɋ�$a�=���q�r�9I��{D�7�^�$+r���ZE�7�^�$+r��Sб���G5#���Q��F5#��tQ��E5#�Ĉ��M�~7QM�;1"A��C�wU=�d�1'��z@�w�]�$���P{��*'��I�R�z�}�*'��I�=�>�z��X�$	��jĽ�I��9�.	4Q� �UNb��$,���}�*'��I�Gm�>�{��X�$	k9��Ľ�I,r��Tб��$�UNb��$��X��n��ǜ��������>�z�ɾ�9��?��h�����s��cN
�9�����1'�>椠\h�����s��cN
��j_D�Jov�7y��c�SiD�4"@S��p*�h�F$,/Qa��3�~a�\moX^��\c{��҈iD�B���5�T�"��]"�E<�E�*�h�F$,�5�}!�U�"�HX^��Lc���ܙy�����K�s���.ӈ~҈�6�/FP"���F$(�5@���w�F��F$(t5�����7���K�X��*���Q�O���*��F$,4��|%�U�#�H�� ���WiD�4"a���q�҈iD�rI o��UiD�4"a�&���Fܫ4�G��D��q�҈iD�B_�w�^�=҈�����ĽJ#z��k�x�S�!���y�Y.	d���ć�7�7�P�x��!�͸��"TG��<<�	�P����#ow>d�o��ixĻ�7�S�[G���͈x����1��͈x���� ���W�fD�IXhk��Iܫx3"�$,�yH��$�U�or�ȱ��$�U�oZ]�~�*ތ�7	}p��{oFět �p��{oFě��@*��T|J�2^�@.	���Nŧ�-�A����i��2�C��\�>��=�8�m�Ƕ$(�5��=�8�m�Ƕ$(�f��ʶ̰-��Ì͈wU��Q�MXht�x#�U�yF�9a���71�*�3*�	]P��ze�fX��&r,p��{e�fX����<c�Ľ�f3�Y�B��o�^Y��,@[��!�5�a�    �0�q���k��\�����K���Sޠ\p��v��a(��zb�n�����.n��x�rA���B�un��z�r=���B�un��~��� ��Q�%3��R�Y���[��ʔ��n���[��*SZ�)%,Ѕ�[�KT�kE�JX����Ej婬kE֕�q�^^�^�ʺVd]	�1�+ݣʺ��Y),�U�ld�t�*�Z�u%,��{�t�*�Z�u�N�c�+q���YW�B��7�^e]+������ldoĽʺVd]�k�����4��υ^��G#M�A� ry�����4�
���F�{0�d�Mn�����\��0h'&(��"{'�U�e�u%,t��{'�U�e�u�h��Nī�e��6`~�*�Ⱥ���}�*�Ⱥ�+��}�*�Ⱥr#̱�� �U�e�u%,���� �U�e�u%,4n��$�U�e�u�޹�ld�Ľʺ,�����F�Iܫ��EA<a�����H���}߳RPh��{4R�ge���L���u���H���}߳RP���`d�#�{V�}�JA�0��H�������t���"�Uڵ��ah���G%�a�0ٍ�W�ҎT)a� 0ٍ�W�ҎTi˧?'f#��*U��g��\���FܫTiG���\���FܫTiG���&0�7q�R��R�rM`6�o�^�J;R����ld�ĽJ�v�J	�5���~�F�݄vv�z�ʱ��5)w��M��\���l��Mhg7��rM`6r\��r7��݄�k��㚍��	-v*0�#�C�����tW�#�C����	;�e�	�Q�~���9qG<y�`��r��sOsa��B �[|w*0W�(tr��sBO>�ҀC�.@��xN��`.��Q��~����Ҁ��.@.�xN��`.�Q�䆋��䕃�.g+w��M��\p��r�r7��݄
˅g;.g+w��M��.�l��l�nB;�	���v\�V�&���Pa�*`mG#��S�CsU�܎F�˷�1����vtb_>��1d0���D�|�!�c�`�X�щ�C�ǐO�0�qG���1ă̕�;:]�|�!^d�`.��1���$Csi��A �d�7ċW�t�M�x�!��4`t�et�n�Oɳ�a�2`t�et�n�V{;�Ƃ��ѕ�	?X��9ؿ���M��ZoXñ@�et�n��~�Z��'q/�O��^9ȟD��>�g'�}T�`v�"�e�E;l:�_D��>�i'�p]���E����v2��w,� }jD��ʀ��.@F��'��4�y����S#��`t2�Ԉ>	̥�;�.@F��'��4`{���'a��.��q|�ֻ	w�&�P.��ql�ֻ	w�&�P.��q\�ֻ	w�&�P.
��qL�ֻ	�w7�V�]9�?�w�݄��&TX�xޱ��l���)j�w>t4;�}v��x��������Pa� �y�C�g���nB�劀�q���>�	�K�w>�}vo��&�����,�}6o��&TX�	��Y������M��\����ٺ���PpM���B�g��nB�嚀ٝ��^�N���PA�$`ug-��v��nB劀ѝ�T�˱��	�z�ʡ@|��n��nB�z�ɝuT�����	��wV�=gM��&T\��9i�g7��r9���F��i�݄
�� �;1�S�}v*,<�lD}Θ��M��{W��q��}v*,����}Η��M��\0���9]�g7�:����������>�	�k�v��{��pw*(�ķ�{,n�����.�>1�ΖJ�wt���!�Gs�X��W0����-������� �,v��m��~G78a���-#�Uj�����m ���W���npn�8��ĽJ�wt��k3�}�*���NX�	�,�kfQ4LP-oЁ�����Qe���������Y���zNQ!a��P�U	K����k3��1�Ky��������x�{YTx����Ђ2�����DQ!��� ���#�
O�	t@!�eQቢBs]`xq�_�(*$0��7
]�,*<QTH`hB�
]�,*<QT����*]�,*<QTH`h5�*]�,*<QTH`.|oT� YTx���N�4�e�Q�dQቢBC
p}��<xP~^���6����x��Ńr5��S���׷��cN��q@5'�m�q}���yp=�X.|o\��+/�ī-(�߈|�.�@��wb_6��݃�V��D�l���u�o�N���p�|��\�N��t�9O����:]�l���\�����x� ��׀t�9��.|5o� ���2�K���.@6�����..��r^��\�~���v����'^sVT5�4����弢_�.�*k�q������yE?u]�[�ˍ ��7�/牆	�N�I'Ѓ��ȗ�����k ��ؗ�'���`�5���?W�_���_�����'��,� ~j���6.`���S#�$0�pF �O��N�׀0� ~j���Ҁ�F �O���\���d��~�P��c|�z�	e��a���;��u(Q�)Wo���2l�8�סD��\��j�p��^�2q����K�w��GE���g�B�	�o�]�8K�8�:Ļ*q�(q&,t*��xU�,Q��9�cu`��Y�ę�\��!�U��D�3a�e�"�U��D�3@���^�8K�8�����Y�ę�\����Y�ę�\����ٺ}��{�1x���B�g����-t�}��W�ӧ��������Dcy����;k'(�Cڤ�\���N�m�z��	
�'�^�R������vxoĻ��jc��ɝ��J�K�r=���F̫np�np�rA���Fԫnp�np:��oĽ��%��v��Ľ���',��}'�U7�F78a�&`pg'�U7�F78�o�w�^u�kt�ZP�_�7#�O}�rI���������>wE���Q	J��N�HP.��%~���~����!�!�(%����W�8�u�����Nҕ��19� (�ק��+A�ѫԫSIW��+��O:�w�t�H�����s�*�j�t%��X`~�*�j�t%��X�~�*�j�t���O�^%]-�����O�^%]-����фar.�^%]-��t�8�_ĽJ�Z$]	�5�)ȹ�{�t�H��kC�s�*�j�t%,�f 纸W��w��.��& �������\���J�~j�rA`�q� (�ק��+}�z���uC���Gҕ�\}�F�������v=`�qn"^%]=����z����ļJ�z$]��+����WIW��+a�"0�87q���IW�rI`�qn�^%]=��t�5�����*��t%,���Cܫ��Gҕ�\\q���IW�rM`�q=Ľ��1����r���{��pw*(���=��v��.C���㺇�.���e�>wA`�qݳ�j����2TP��>�{�Q�2�g���r=`�q�]ś���>�Jīx3"��7��Wb^ś�&a� 0��*�'�x3"�$,W�W%�U���2T\�\��W�fD�IX�	�?�Fܫx3"�$,��W#�U�o�k��*ތ�7��+����W�fD�IX�	�?�{�Q�2��]�
�%���u�?�]����P}���㺧�.���e��\~\���e��������}T��w���r9`�qu�]Y��,?y����]�xW�l�5KX.�5�xe�fX���z��]��W�l�5K\��k�ʚͰf	�+�q���k��>�ذ�k�ʚͰf	k9��Ľ�f3�Y~�ʱ��$�5�a�Vw,p?�{e�fX��5��VV�2��]���$6�캝��e���Ts(0Y��pw*(|�}��e�����6v�6V�2��]�[=x�P�}�*ܬ7	�� ��xW�fE�IX.��eD�
7+�M:�z��]F̫p�"�$,��2�^���&a�"�d��*ܬ7	�%'�6q��͊p�:��Ľ
7+�M�rM�ɮMܫp�"�$,����Ľ
7 �  +�M:����]��W�����嚀���ɚtf����vI���mdM:3;�,A�"�c���y)�C��\�#6l��6֤3�����.�nkҙY8���z���B�+gfp=��Z!�3�pf	�� #k��W��%,���^93g��\p�V�{�̾�cm����'k��W��%,���U�^93g��\����פTۑjj�xWÍs�JI��T:J��)�r�BU�1�8'�ߔT[H5a����ۤ���j�&,��4�&Q���B��g��m���WRm!Մ����Ľ�j�&,4��"�T[H5a�� �q��-��#�X�~���Т���\k���WE�E�����_��	�x!��s�@�=%2�~�����JP"��'�OP.�3N�f��o�����ӌ�&A�����>�c
�Ѯ��Y}�B� �o�]e�=�������D���{d����s�*���',��&�UV�#�OX�)��Mܫ��GV���?xP�'�UV�#��Ǫ�"�UV�#�OX�	4~��/,�}]oX�	4���WY}��>@Oɀuq?d�W�QI�a�q��C��q����?���`~\�F%��i�uO3���j��b��a�q�ÌC��q�M�B?	��]���&a�} �+��͈p��} �+��͈p��\�f\��W�fD�IX.�3�Jԫp3"�$,���}%�U�nr?�K���*܌7	�p߈{nF�����<�jĽ
7#�M:���<�jĽ
7#�M�BK	�7�^FZ���g���0^9@����='���j2b�q�ӌS�)"$(��=�8�3�Ǚ%(����=˘[ u�Y:��xĻrf����D�rf3�Y�r=`�qb^9��,a� �d���I}	�՗�Nv�^9�����~�ʙ�pf	�p?�{��f8�t��Ap�k�ʙ�pf	ˋAp�k�ʙ�pf	=%p?�{��f8������l~���bj|.
Fv�Fv�x����_�����Kƛu�M�rA�Ʈ���&�C���h(���Ū��y�Ia�� ލxW�f���F���͊x��\0�ˈyoVěܑq,PoD��7+�M�BS	�q�����&����Ľ�7+�M:���Ľ�7+�M�rM�ʮMܫx�"�$,����Ľ�7+�M�BS	�o�^ś�&wd�����q�i��G�zP��D�jWW��mY���z�iiR�� �c���ꑦ�}�IA��d�����fv�Y�B� ��]Y3k���? �xW��册c��B�+kfa���N�
1����5KX�)��B�+kfa��W��U�^Y3k��\��V�{e�,�Y�rM��Z%�5��f	�5+k��W���\��ae��ʚYX���X_��B�EHMp���U����jR�=�J=8R-Bj��{�D���[���Sޠ�1�h�@�!u������v�3nR�	�	
���q�-C�>!5A��5��f�2��R��.L3Z'�UH�R���։wRw�Ԅ�r�<�u"^��!5a�0�h��W!uGH�U9��D�
�;Bj�rE`��q�Bꎐ��\�h�Aܫ��#���	L4� �UH�R�k�6�{Rw�Ԅ��D��^��!5a}4Q�4�5�(W��p��� ���F��p�]�
��_C�r��>�������}��`��k�Q�;�gݡk��F[trW�sBOF@�,��-�9�'�Ao�EW �e<'�����;Xtrc�sPF�<
.a�%ȝ�	A����݂ܚ� �O@ t4�[�{3��2�QG3��9�9�(�A!v4�[��3��2�qG3��=�9�H<\�hx�M� �g<���Ѡ�<�5�(W��P�A �y�k�Q�>�g��: }`�Ѯ�G��p��
��ԣ]S�r��>�ԁ��}�=���;�*4������/+����h�FW �V��2ԁ�������y��y`r?t	�}�x`!��>0����B<��� �A�B� �X�G2�A�]��+��BF�B0
�݂|g!Z�X�P��K��BF�B0�+݂|k![�hP"�5)7!�?�� ���}9a�
�����X�}Ya��6�� x�}ya��󱽁A0��2�r��D��.�p�n@F�J�xQ��m���@F�X�Ѡ����d4��>��c�]��F��'�A�ƻ�-�hT#%4�xw��jD�����N� �Q�h��i n��-�hT#%4(yw��jD����%�A� �Q�h�N@!_�ܨ��2-�)�TgBe�{*$ב��o����P��C![Ƶ}��	�7fB�	�2���uLP�ɡ�y��l���:&(�`P¼'B�{���w.kZ��;���_�1��`&�:��َ�c�r=`(�:1�bَ�c:����D��d;��	5p?�{Ǿ�+,�`�� �U��uLX�	L�� �U��u�E-����WlG�<a�.�q��׎y��`@�$�U��Q#O��ͅ���y�\����������>O�+0�u�d�]�!���}�<W`��.������蹬j�^��fC��;^=Wh��n`��\�~�z4�4\��+����T:u`H�̥݁�ȥڷ>�KXt	2�z"�Jh��n���K}�>Wh��n��d.�D.��Z@�-݂̥�ȥ�y3��K=�K%�o}�`t2�z"�J'���¦[����TB�`p�Ԉ| }������F��������̍�57"�@��	tY����o�����V_�KSuóm:�}�/`t�����	��#���M��)�'4�$��+�%��9�Ѿ�9݁,�����-��
]�,���iQ�n��-�zl��hfIv�[�%��=�ѠL��B� K�}:����p�nA��c�tF��_p�nA��cuF��_p�K�Ϋ��Pɾ�J���9�!���&�&��;8/{f�omWp���'�?`��[|�\fX����o��\@���(���h�nt2���'ލ�@�x�3�}�s��Fw �Q��)�Z���:]�F��gF��^p�nA��(�A pǻ�-�`T#�P���t2�F	�[��-t��j����#�A� �Q�`�Р��=�d?�F?/W���{�����׿�XF{�      �   �   x�e��!�w(%v��뿎;�n���ȶ�Đ����L��1͑�Z��a"d�Ȗ#��qqД|ý�����La(��%�E�-Q�.E��*͘��8�4�Տ����ȳ��+j�Q��,RP�Ϩ�m�RԒ����[k_��A�      �   �   x�m��C!Ϧ������_GX�H�`4���Nܿ�!Ҍ�q`^p@��l�>@�<xX�=����b�0�e(��+!� �s��J�gW��߆��qAze���Y�9<kYE��w�YWwCJ9�Z�&�A��_��$z>r      �   �  x�m�Mr���]���y�w�s|��jj�EF��l��T����?v������������.�9����&���~��`O�ϛ�{q�5{ƤoA�G�A?1�#�]�}�Ͽ�2==H{��Q��A�L�7=��xf�X��c�E;']<��1ޙ.&���L�s}�=���\��tq9�c�#���\�e����^.o�&=�˹>Ɩi�����L���L�F�vgZ�4��'�¥ѥ�L�F��\>͎I�F�~dZ�4�t˴pit����!\:]z˴p�t�g��K�W��K������.�.wa�.�.wc�.�.wc�.�.wc�._�m�i�2�Qd�&\Fc;���E��H�L��E�(r��eg�;�tq�Y�"]\v���A��E�(r��eg�;����zO���,rG��..;��Qd�^\v���A��E�(r�¥ѥ��.�5^�.�..�&-\]ړi����z��K�K�pit�"�.�.Q�M7���E-\:]�ȗ�I�N�(2h��_�i���E-\:]�Ƞ�K�K�p�t�"�.�.Qd�>i���E��)\F�G�pEQd��eyD�A��EQd���`�Gtq9X�E>�g���`�Gtq9X�E]\yD�A��EQ�M_��`�Gtq9X�E]\yD���MZ�4�D�A���L�F�(2h���E-\]�Ƞ�K�K�pit��|�{~޷pit���pit���p�t���p�t���p��ʴp�t���p�t��|��d�¥��.r�¥��.r�¥��.2�G�D��@c�.Q��.Q��2��r��q�||�˭�Z��o�k}�w��]��1>��v����3��r��qd���Z�q7t��Y��.�>?�r����v����2-\]��pi��ʴpit�{�¥�%�!@�F���8���.�>k}�#�¥�%��r��m�.�.�X�¥�%Z�t�DcA���˶��˽�Z�i����-\:]����K�K4�p�t��.z�{��>h˴p��(��Ǥ��h�E�A�8�~�����Mr���S�o�ŝs|o�x�&;�}��k�x�?syF���(=��KoQz��1�ޢ���3b,�E�-�<#��[�~��>i�ǈ҃.ψ���]�c�-J�<#��[��pit�҃.�5n�����(�Ik}�w��K�K��pit�҃.�.Q�M����#JZ�4�D�A�F��g��OZ�t��?�A�N���A���L�N���A�N���A�N���A�N������؇.�Ik=�]����(���A�QzG��.��v]\:�hl�ť����]\:�h���j����>�'�ť����]\:�h,�r���c܍��t6��ؠ�Kgc���t6����9�I�F���A���L�F���A�F���A�F���A�F�����}�Z�q7�j�w��'��A[��K�K4�p�t�Ƃ.�.�X�¥��+�¥�%Z�t�Dc[[��p�t�Ƃ.�.��M����#Z�|5�Y������n�p��hϴp�NӋn��.�>�3ӷ�_��GЍ��.�c6��� ��1���w �ǘ��'a=F��>����>	��.�>���.�.-�|�K{���#\]Zv��F��]>¥ѥe�]�4����F��]v���ҳ�.\]zvمK�K�.�p�t�"�:�t��_�i���E-\:]�Ƞ�K�Ky�C�t�D�A�N�(2h���E�g~��2��32h�2��32h�2��32��g�5��..�E�tq�,2�Ƞ�Kg�yF�����8�Kg�yF]\:��32���Yd��A��"���t�gd�ť��<#�.�.w�?�.�5^�.�.w��.�.w�A�pit���pit���pit���pit���y�m�¥�%�A�N��-\:]�"-\�k�2-\:]��b�¥�%�-޴�N���������e���A�Q�-\F�:tq����]\6v��������xtq���o �}��ec[���l�`�7�7݊���xtq���o �..;�������6t0h���l�=i��^�i���-\]����K�Kt�pit�n�.�.�A�¥�%:h���O���2~G�i���2~K�i���-\�k�2-\:]���شp�t���C�O}_���!7?��{��F��78n����������E      �      x������ � �      �   �  x���Mn�0F��)r�*q�q�l���aQU]uc�U�	?�b�3p�N�I�N���=��f�%,���寉WG{j"�&T,�lq9����[]؝şzS����G{��?Z�6[S4-�r`\�s0UE׼d�u�$s����.��}�?�6��r���A\8�w~���m��ʜ�����Z����lY���N-˺�놎8�ʓT1<�>�6'Sa�yA�bp~�����cYo�Bt�߹TH/�/�݉[RR���٭��UM��ͱmm}@=��֤"&hM攇�I�Y2�|$n��B��_�#���l����`�] ��W���
PT�W9��*@T���*T��*w�<�Be�Pb<Jՠ
�;��7�Kr?ɻ�Ɔ�U�����H��HPH��$ hD�2�Ĝ�;�z̉�Uu|H��W+�Xj�z���`ڞm      �   O   x�u�A�@��/kڮmٿ��wX�^$$Be��W�Pk#0���lvc���.,>�F�w�]ag��ű��	
�      �   [   x�e��� �o�����D'p�9z��1)�����$��dΈGUJ�ؿ�)P(�#y�����o�y'<	�~���f��8T�8�      �      x������ � �      �      x������ � �      �   K  x���;r�0�k|�zq��!��&]��f2Q�����K����稶������q�`*�0N�V��}d�:6�վQA衢��[7b%������k�j'`�;���S���$�a�Cc?e��=e��x�z�3����q^єSZZ�c���&d�2%T�2Ѷa�&���޶Nv,u7���[Z������%e�Ămu�[6����Zʂ��n!�}�I�e�u+�L�V���Fr�VOI�N�`%�� ��f��C"���a���yQ��7�}}�^�D[���D���	�l��5��R�#�~	���ͶQ]Y���q������q��30�      �   5   x���  �w��T@Wp��C�: �J8���ٮD�a�khw����       �   q   x�]�K!�uy�e�ѻ���1:�lX^(H�Q������d.�k'W�~*3紲��%Qk����9����T���z�:�3����~p�G���si�¬���J)_M�0      �      x������ � �      �   �   x�u�K�0е9�'��.��9Z�xRfG4OƎ!rtɐ��j)����X�[��XS[R��!�1$���se�t�������]Lڑ�?�=]��)�c��5ʼ��2�FH�`�Θ��2a������a�8�_k�_߭>�eENШ(��YE���� ?	�Ɠ h�?#��A��\��+'w�к�K��Y~��.�sxC/W�_�j���B�׾m���ο      �      x�}�m��:���g/}�/��^���1�$;q�`��9�A�I�IQqU���_�k�����l���\������K������_E�n�"���qÂ����o�ֿ�p�����/+���U4�hO���U�h����iI��۷���`��r�6}��Uv�n��˰�n��R&}5	��;���Ұʑ�����V9*w��I�_�*�p7��� �aL�L�u�ÔLX�U��t�翎p9<as���7	�vx�}u
K4=<c�������![��W,�'nߚ(o,V��o���!ݸ����:���aF�D]�1���0#��n[�*G�n���X�(��M���U�vx��^�`�H�ד�`����,��i���²���[�7|_F��f�����n�=�_�ܴ"��i����C�սqO���X����"s��=t�����ؿ�.��~��̳��gt�*�q7��i��wp�rO�.�;Xt�zO�]����-�FJ���}�/��U?��B��F&��5$��g���-���7}��_��M�t����7}��?�XcN���h���]7}�z�/���l���*��E�[|����,z�B�k���q:�=�*K�������Yٮ���l���u����ױ�_���}u��|�|��Kq��}|`�/�V�M+�J_֭>%懞w='�/�V�+ҝ��[ؾ�����!TqXW��
+5>pF��J�WC�n^s�
7\Q�Z��7���6�����*O�j��g���v�Mi���Ȧ;���2_����������*�_��u/:��j�׽�B*����}�a����o���jR��oZhkj��u�J[Sk��-�hkjM٢;mM��ý\����I�{����[S���rә��&����)�gقe��_����@�����]����q���@�_�T{_��_p����g��s �E?V���/�)Q�~��ݻ��|h�ܾ<{ݞ�/�r�6�|����s �Ew��I?_��n�9��=s7�|ѕ;�i۪�k��p����E�����V_72n���'�#\w}��V_t;<4sF��:c����f��V_t?<6�n�j����۷f���X��ߦ��r��7p�v9}���t������\3r}���'�ࢯ�\��^�������ݸ�5M��Z۵�	^��鬵]+��Uo��Z�ܺ�7Lg�m���Y�%�0���k5��M`>km�P���6�i>kmc`��_nN��J�ؾ��VI���|�*I��%O��Z%wp�|�*ip7�g��3wp�|�*�rK�4��J��鬵u�"�4:km�c�7�鬵��%>0���k��
�Du>km�q����6�gd�|��F�Y���UR��4��J*<#��VI�gd�|�*I32'��Y��~��I>k������V�����|�*���EW�r}Z(]Ȃ������k',(�����e<��l����F�A�ܴ!�I6HyJ,�W����/���������Йd�����}��Y�-��MW�R�;��F�A��nZH6H���"�V��*wp�F�A�p7�q#���P�֒nd������O���%Α*��!\������=��J�=��(?��K?�Ȣ�62��0"�V�Ȥ�È,�h#���jv��L��E�Ȥ��C6i?��*[���������md�wp���\���bk*���k��u<�����%߰ �(�ڍ�}�e�\�_ǘ4�V�~��E�Zn�<��l�5�$D/mo�y��BT��V�Q�|k�f�w���%�ɦQ+ܓMQk|w6�,DM��S?���R���a�w,i���5%����'�5n	w,��wf�w,�vxf�@5V�"r��E�j��U/�U��8\���62�tx���q5s�kX��X+�ߦ;k\�Mָj|݋��1i\��5��'i\���MָV�ߛ��qM���A�v�/d�B�=ݰ"��A|�R�}��M�胸��w���7-H����h@_�I�=��C���k2iZG��=t�i��Е�u(7��n_�4��s7-4��wp�JӪ�p7m4��w�ؤ;M�&�n�~�3,�@��$��������Sx�7L?Iʵ�S�k��~��k��7�?IJ7�M�O����(�$ed�M+�QyD6�Y����`E2�0"���G)�1#��L�DS�n��"�T�?ig -��lэ�&;<d�\����]���7�>���ǿ4�=σ.7\��y8�����7�z���/�����yޘ���E��?�n�(x��9󟼯�~���7��_����������m�*��h|_6mx��%��t��-��̦��h�Ý�fWa�,��t��-�;��Bg/Z3w��IW:{�Z���nt��U���:{�j��M+6hI���I6h)��,��a��v����A�Z�0U�����,�0U��tؠ5�jх����A����;��F�Z�;�iA���|z]IN�E���-?tC�P�/S�u%����&�?t�� ������f>�5p(t�}��3)]�O��x!��R]�oc�kPP�ȡ�o$vU��Ǎ�]�qh�|ź�<X��C#7n�w���΂W��ȍV�j�F��b����������o!����,����un��芪W�$��e�e��n�ݜ��u��~z��$|U��[���U)�&�骝��J;tqヴ��ڸ�H���C7�I���Ӹ��j�寖C#7^Y�j;4r���鹛��/b��O��$�/|�.}�F���t��$��>�}�y��Y��2���hI$�}{z�C>tfl�2��Ң�,>��������JM|���u����E�C��U��E�>n�X_�|h��;�Q���`�1�����b��cء��}�]�=��������7�uN �Fye�͟�{Ӈ�ŗy�����N0�E[K/�X�am��4 ?�-]O0q;,.�����u;l.#����V�QNO����h�F����2��ȍ����ܸ����.}ӆ������$���uP��]��1��o��C���|�z;M>t&�a�Sfy�w�B��Άx%�a�R��ư,�.�e�����ƍ��ǡ��W֭�C#7��[��F����K�V��ȅ~k݊�q~m��84�NY:
Uz����Z*�B׀�����v�sӂ��-���i�]�R?���a�ZN�yYx�]�r9���킖�i^w���������[x�]�J:=x��Z)�F��FA,��C#7.�Z�C#7��Z�Fn��sڟ���a��+�d0���蛍"ܯho6L`h���� ������܅���0~�]���ܱ���0|��
���
���
��
��
s�k
cܵY��0ua9��#�.���ϋ�2�z��u��ȅ���y�%H\p����(p��G�Gy�2�P^������inI�P`��6��Yn_-P`�����Inu-P`�����9��1n�\�u?�l�R�Aۀ�B�|�3��ف�"�~��G	m��󂣀��_�y�Q��;E3��+�)2C�a���J�+���@�a��;PF+�ٲ@�a���U+�13�E�
���f;^�ö����}Q�B�/����׻Y���6�Tp�g� G�
n���~��s,d��ퟛ*�3/C}a���H3�)���@�a��{N�T�a
n�+P`������Q
n|��I
���f� 7*�Q���^ߟ�q��[�8NQp,|�!
nO�o�8C����G(�)޽��v[����(�F�	n�5��(>���(=��3�7�'��{���_�qt��.A���	nE'�CQ���MPDql�{�@ũ	n�E�&�AQ����OPDqd���`׉�(
�N���;�u�w�®�%�Mv�8-�����a	n�]'�Jp��b�３����W�������FA	��7�$�v �$��0CqaJ��e3T�$��0CyaF�k3�F$ �  �S1C�aB��p$���@�a>�v�#��@�a:��{�#Ȕ@�)���܀퇛�ضu���E����F�nj�:�G�����p���兩n��P_��v����-P`��޺��n-P`��F��yn1-P`�ঽ
�inG��0A
�y�Yn\��0
����5&!H�3�8�=�(��wâ�
c�_�*LAp�,H�8�����wق�#ܷ: N@pG.�8 �=����w����	: N?p�/H�0��������	~��(��]n���it��#7�0��훸q��n���+N=p�'(�8���v����7��#ܘ
?N<p_(�8����������d!}*�i"�@v �@�Y��@u ZP�I��@t ��y~�(�@TP�1��B N9}�<?pr ;��G��@q �P�	b�@p ;��G�2:|�\o�6�
l��V`�������F�nL�F��޸z�Q����`���ܟ	[T�k0?#��0��͜�Eũn��-*5p�'lQq��{�`��#�%
[T�h�;آ�@w�C��ܢ�a��{O�!L3Xf�7�� �g� �G���d�d�AT�a���_QM�9�'D5��S�d�b��CT�a���jQM��SD5F��0��-�Ћh�0���(��͏Љ0��]�Ј0��m��<��M�<��7���S	[T�\��C��ap�0Q���nOD���[ej�Z�^F��ah�[;Q����{D�F�ej�X����7���
t��7��[��
�w����z��GY���Y�
���&���3*p� �g�S��O�0��ͅ0�qJ��Da<�7"�x��)��#
ܴ��QB�V��/(p{#|�(��������>��t�隄��p��;���l�鰄��h��Q���d��Ƅ�`����s	ܹ�
#�%p�(�8��M��0�P�Ɂ3	�

#�$������	t���b�@��	�Q�N�f�8��`�4��E��rF�n����TNF�(��)�Q��[;�Q����(�`a��0�`Z	��0�`zf��0�`���0����p2G�ANF�'�d$ p/#����ne���8~��cp2�L�#<|a������fL�$<~a������&��������@�;��K8�c��qꀻ4�@ pW�[�����S��#�@:'N�����������L�(��Lc��LS)�LTg��ꏨ���`��4�vUT�qЀ�Q��9�mE����Ek�20��0�aȀ+��0c@�o�o8�p�"�8a�-��{ i�
[�/0��Pb/0-aPc�.0ݏPd.0dPe�-�^IЯ?��n�G��;+Q����MC	�
�5l+�F6�q���l�?��P7��M�)`�g�7F
�?�h�D���[(0�tPa�'0]�Pb�'��1^��	L�)�	L�Tg	�C%��>Tq���WQ2�An�C����EC#�^A��q���bA��!Vh׈3�@R5����F� `�׍8@�*�q~�U^8�� ��q��Vy�����gX�#���[G�`�׎88��qn����!��V@5�H�VA5���@5���&�~DXST?�����:��y���q&����� z[�GX�	���#+�����`B/l�H
0�7���+�?r̳h�Ƈ16_�}�aJ�ɀ��GH�i���GF��M�M��׷	�{	��6\�~��
�o?�̏s������@�q8���Tg�\�~D�%\�~$\Z
׷0��������J�      �     x���;v�:E�X���X�c.o��xR�Z�@з8�̈́��M�j���Q[�������yZY}�k���Q>���v��{AyR,.���J��pAM]`\�R.�_X9��x��o��4.+�)\v�ӷ>	��;�<������������7xK��	^�#�|&x���画ۿW������Ip��%8U�H��ZMp�ZKp�ZOp��w�9��ũj3���{�8U}���o��T�%V���ÂU}��>�ԋS�7Xq��+NU_`ũ��8U}���/��T�^v>���T��௪+[���K��&x������������>|�W�O�N���}�������>؊S�{]�K��T��V��>؊S�F�S�f�S�V�S�v�S5{��n�T��~�Uc��j��T����1؂S5[p��`��m��T����1؂S�[q��`�_Uw��/	^�����z�N^�-��'x�����|�w��_�=�q����>؊S�[q�ZMp�ZKp�ZOp����T�7�r��T�7l��o؂S5�=�T����1؂S5[p��`��մnN�l���-8Uc��j��T����1����|ɞ�~�?��:]��%��&x��o��>|�g�O�w�q~5}=�'_������{��g�S5�8�j�qN�8���q�q����}S�Xq��+NU_`ũ��8U}����P�Xq���q�v΋S�Xq��+NU_`ũ��8U}���/��T-qy��rq��Gs�j�U�l��$x��o���A����>|�g�/�J�ߚ�Ζ�x��T����1���f�j��T����1؂S5[p��`N�l���m�}?ρG�j��T����1؂S5[p��`N�l���m�O���T����1؂S5�=oT���U��,��^�£����.��-�;�'�������|÷毳�/���by|�_KЩ��8U}���/��T�V�����S�Xq�����ʮ!�D������� �ϯ�����>�B�ӷWhr�����'�1��ӫ89}z'�O�����U��>��O���*NRWVܛ~�-�R+^�%��&x�'�8T
�x�P)x�!�C���� ��'�8T
�x�Pɹ%�EUKT]T�D�EUKT]T�D�EUKT]T�D�EUKT]T�D�MUKT�T-�������wRY7�j̵�T����1؂S5[p��`N�l���}�(y�"�|��-8Uc��j�௪?�֊7xI��	>����If���|�G�o����Jp��/�<[p��`���ũ�-8Uc��j��T����1؂S5�=/T���>�b��1�b����|}L���c*��^s�cP����>�m���Y��>��s�}@��eP�_w��f)^�%�+�&x��o	���2k����>|�W�o�ּ=��7Kq��f�v~W̋S�7Kq��f)NU�,ũꛥ8U}���o��T��j�|���kT��S�7Mq���)NU�<ũ��8U}����~~~�p�-g      �   N   x�e��� ��0Q��t�9J+>���Ng�J���UH�i"���W����Dx�[O���j��J��v3{ ߨW     