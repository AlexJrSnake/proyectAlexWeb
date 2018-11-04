PGDMP         "                v            planning    10.3    10.3 �   %           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            &           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            '           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            (           1262    70117    planning    DATABASE     �   CREATE DATABASE planning WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Venezuela.1252' LC_CTYPE = 'Spanish_Venezuela.1252';
    DROP DATABASE planning;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            )           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            *           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            h           1247    70118    sme_bool    DOMAIN     i   CREATE DOMAIN public.sme_bool AS integer
	CONSTRAINT sme_bool_check CHECK ((VALUE = ANY (ARRAY[0, 1])));
    DROP DOMAIN public.sme_bool;
       public       postgres    false    3            j           1247    70120 
   sme_gender    DOMAIN     �   CREATE DOMAIN public.sme_gender AS character varying(30)
	CONSTRAINT sme_gender_check CHECK (((VALUE)::text = ANY (ARRAY[('Masculino'::character varying)::text, ('Femenino'::character varying)::text, ('Mixto'::character varying)::text])));
    DROP DOMAIN public.sme_gender;
       public       postgres    false    3            l           1247    70122    sme_lot_origin    DOMAIN     �   CREATE DOMAIN public.sme_lot_origin AS character varying(30)
	CONSTRAINT sme_lot_origin_check CHECK (((VALUE)::text = ANY (ARRAY[('Producido'::character varying)::text, ('Comprado'::character varying)::text])));
 #   DROP DOMAIN public.sme_lot_origin;
       public       postgres    false    3            n           1247    70124    sme_lot_status    DOMAIN     �   CREATE DOMAIN public.sme_lot_status AS character varying(30)
	CONSTRAINT sme_lot_status_check CHECK (((VALUE)::text = ANY (ARRAY[('Proyectado'::character varying)::text, ('Programado'::character varying)::text, ('Realizado'::character varying)::text])));
 #   DROP DOMAIN public.sme_lot_status;
       public       postgres    false    3            �           1247    70126    sme_parameter_measure    DOMAIN     �   CREATE DOMAIN public.sme_parameter_measure AS character varying(10)
	CONSTRAINT sme_parameter_measure_check CHECK (((VALUE)::text = ANY (ARRAY[('Unidades'::character varying)::text, ('Peso'::character varying)::text])));
 *   DROP DOMAIN public.sme_parameter_measure;
       public       postgres    false    3            �           1247    70128    sme_type_breed    DOMAIN     �   CREATE DOMAIN public.sme_type_breed AS character varying(30)
	CONSTRAINT sme_type_breed_check CHECK (((VALUE)::text = ANY (ARRAY[('Reproductora Pesada'::character varying)::text, ('Reproductora Liviana'::character varying)::text])));
 #   DROP DOMAIN public.sme_type_breed;
       public       postgres    false    3            �           1247    70130    sme_type_parameter    DOMAIN     �   CREATE DOMAIN public.sme_type_parameter AS character varying(10)
	CONSTRAINT sme_type_parameter_check CHECK (((VALUE)::text = ANY (ARRAY[('Entrada'::character varying)::text, ('Salida'::character varying)::text])));
 '   DROP DOMAIN public.sme_type_parameter;
       public       postgres    false    3            �           1247    70132    sme_type_posture    DOMAIN     �   CREATE DOMAIN public.sme_type_posture AS character varying(30)
	CONSTRAINT sme_type_posture_check CHECK (((VALUE)::text = ANY (ARRAY[('Joven'::character varying)::text, ('Intermedia'::character varying)::text, ('Vieja'::character varying)::text])));
 %   DROP DOMAIN public.sme_type_posture;
       public       postgres    false    3            �           1247    70134 	   type_bool    DOMAIN     �   CREATE DOMAIN public.type_bool AS character(2)
	CONSTRAINT type_bool_check CHECK ((VALUE = ANY (ARRAY['No'::bpchar, 'Si'::bpchar])));
    DROP DOMAIN public.type_bool;
       public       postgres    false    3            �           1247    70136 	   type_code    DOMAIN     1   CREATE DOMAIN public.type_code AS character(10);
    DROP DOMAIN public.type_code;
       public       postgres    false    3            �           1247    70137    type_description    DOMAIN     A   CREATE DOMAIN public.type_description AS character varying(250);
 %   DROP DOMAIN public.type_description;
       public       postgres    false    3            �           1247    70138 	   type_name    DOMAIN     9   CREATE DOMAIN public.type_name AS character varying(10);
    DROP DOMAIN public.type_name;
       public       postgres    false    3            �           1247    70139    type_start_week    DOMAIN     �   CREATE DOMAIN public.type_start_week AS character(10)
	CONSTRAINT type_start_week_check CHECK ((VALUE = ANY (ARRAY['Sunday'::bpchar, 'Monday'::bpchar])));
 $   DROP DOMAIN public.type_start_week;
       public       postgres    false    3            �           1247    70141    type_working_day    DOMAIN     �   CREATE DOMAIN public.type_working_day AS character varying(15)
	CONSTRAINT type_working_day_check CHECK (((VALUE)::text = ANY (ARRAY[('Laborable'::character varying)::text, ('NO Laborable'::character varying)::text])));
 %   DROP DOMAIN public.type_working_day;
       public       postgres    false    3            �            1259    70143    application_application_id_seq    SEQUENCE     �   CREATE SEQUENCE public.application_application_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 5   DROP SEQUENCE public.application_application_id_seq;
       public       postgres    false    3            �            1259    70145    application    TABLE     �   CREATE TABLE public.application (
    application_id integer DEFAULT nextval('public.application_application_id_seq'::regclass) NOT NULL,
    application_name character varying(30) NOT NULL,
    tile_number integer,
    type_app character varying(30)
);
    DROP TABLE public.application;
       public         postgres    false    196    3            �            1259    70149    availability_shed_id_seq    SEQUENCE     �   CREATE SEQUENCE public.availability_shed_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.availability_shed_id_seq;
       public       postgres    false    3            �            1259    70151    base_day_id_seq    SEQUENCE     x   CREATE SEQUENCE public.base_day_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.base_day_id_seq;
       public       postgres    false    3            �            1259    70153    base_day    TABLE     #  CREATE TABLE public.base_day (
    base_day_id integer DEFAULT nextval('public.base_day_id_seq'::regclass) NOT NULL,
    date timestamp with time zone,
    year integer,
    month integer,
    day integer,
    week timestamp with time zone,
    week_day integer,
    "pruebaAqui" integer
);
    DROP TABLE public.base_day;
       public         postgres    false    199    3            �            1259    70157    breed_id_seq    SEQUENCE     u   CREATE SEQUENCE public.breed_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.breed_id_seq;
       public       postgres    false    3            �            1259    70159    broiler_detail_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.broiler_detail_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.broiler_detail_id_seq;
       public       postgres    false    3            �            1259    70161    broiler_id_seq    SEQUENCE     w   CREATE SEQUENCE public.broiler_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.broiler_id_seq;
       public       postgres    false    3            �            1259    70163    broiler_product_detail_id_seq    SEQUENCE     �   CREATE SEQUENCE public.broiler_product_detail_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.broiler_product_detail_id_seq;
       public       postgres    false    3            �            1259    70165    broiler_product_id_seq    SEQUENCE        CREATE SEQUENCE public.broiler_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.broiler_product_id_seq;
       public       postgres    false    3            �            1259    70167    broilereviction_detail_id_seq    SEQUENCE     �   CREATE SEQUENCE public.broilereviction_detail_id_seq
    START WITH 124
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.broilereviction_detail_id_seq;
       public       postgres    false    3            �            1259    70169    broilereviction_id_seq    SEQUENCE     �   CREATE SEQUENCE public.broilereviction_id_seq
    START WITH 70
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.broilereviction_id_seq;
       public       postgres    false    3            �            1259    70171    brooder_id_seq    SEQUENCE     w   CREATE SEQUENCE public.brooder_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.brooder_id_seq;
       public       postgres    false    3            �            1259    70173    brooder_machines_id_seq    SEQUENCE     �   CREATE SEQUENCE public.brooder_machines_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.brooder_machines_id_seq;
       public       postgres    false    3            �            1259    70175    calendar_day_id_seq    SEQUENCE     |   CREATE SEQUENCE public.calendar_day_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.calendar_day_id_seq;
       public       postgres    false    3            �            1259    70177    calendar_id_seq    SEQUENCE     x   CREATE SEQUENCE public.calendar_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.calendar_id_seq;
       public       postgres    false    3            �            1259    70179    center_id_seq    SEQUENCE     v   CREATE SEQUENCE public.center_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.center_id_seq;
       public       postgres    false    3            �            1259    70181    egg_planning_id_seq    SEQUENCE     |   CREATE SEQUENCE public.egg_planning_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.egg_planning_id_seq;
       public       postgres    false    3            �            1259    70183    egg_required_id_seq    SEQUENCE     |   CREATE SEQUENCE public.egg_required_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.egg_required_id_seq;
       public       postgres    false    3            �            1259    70185    eggs_storage_id_seq    SEQUENCE     |   CREATE SEQUENCE public.eggs_storage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.eggs_storage_id_seq;
       public       postgres    false    3            �            1259    70187    farm_id_seq    SEQUENCE     t   CREATE SEQUENCE public.farm_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.farm_id_seq;
       public       postgres    false    3            �            1259    70189    farm_type_id_seq    SEQUENCE     y   CREATE SEQUENCE public.farm_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.farm_type_id_seq;
       public       postgres    false    3            �            1259    70191    holiday_id_seq    SEQUENCE     w   CREATE SEQUENCE public.holiday_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.holiday_id_seq;
       public       postgres    false    3            �            1259    70193    housing_way_detail_id_seq    SEQUENCE     �   CREATE SEQUENCE public.housing_way_detail_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.housing_way_detail_id_seq;
       public       postgres    false    3            �            1259    70195    housing_way_id_seq    SEQUENCE     {   CREATE SEQUENCE public.housing_way_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.housing_way_id_seq;
       public       postgres    false    3            �            1259    70197    incubator_id_seq    SEQUENCE     y   CREATE SEQUENCE public.incubator_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.incubator_id_seq;
       public       postgres    false    3            �            1259    70199    incubator_plant_id_seq    SEQUENCE        CREATE SEQUENCE public.incubator_plant_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.incubator_plant_id_seq;
       public       postgres    false    3            �            1259    70201    industry_id_seq    SEQUENCE     x   CREATE SEQUENCE public.industry_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.industry_id_seq;
       public       postgres    false    3            �            1259    70203    line_id_seq    SEQUENCE     t   CREATE SEQUENCE public.line_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.line_id_seq;
       public       postgres    false    3            �            1259    70205    lot_eggs_id_seq    SEQUENCE     x   CREATE SEQUENCE public.lot_eggs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.lot_eggs_id_seq;
       public       postgres    false    3            �            1259    70207    lot_fattening_id_seq    SEQUENCE     }   CREATE SEQUENCE public.lot_fattening_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.lot_fattening_id_seq;
       public       postgres    false    3            �            1259    70209 
   lot_id_seq    SEQUENCE     s   CREATE SEQUENCE public.lot_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.lot_id_seq;
       public       postgres    false    3            �            1259    70211    lot_liftbreeding_id_seq    SEQUENCE     �   CREATE SEQUENCE public.lot_liftbreeding_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.lot_liftbreeding_id_seq;
       public       postgres    false    3            �            1259    70213    mdbreed    TABLE     �   CREATE TABLE public.mdbreed (
    breed_id integer DEFAULT nextval('public.breed_id_seq'::regclass) NOT NULL,
    code character varying(20) NOT NULL,
    name character varying(45) NOT NULL
);
    DROP TABLE public.mdbreed;
       public         postgres    false    201    3            �            1259    70217    mdbroiler_product    TABLE     �   CREATE TABLE public.mdbroiler_product (
    broiler_product_id integer DEFAULT nextval('public.broiler_product_id_seq'::regclass) NOT NULL,
    name character varying(45) NOT NULL,
    days_eviction integer,
    weight double precision
);
 %   DROP TABLE public.mdbroiler_product;
       public         postgres    false    205    3            �            1259    70221 
   mdfarmtype    TABLE     �   CREATE TABLE public.mdfarmtype (
    farm_type_id integer DEFAULT nextval('public.farm_type_id_seq'::regclass) NOT NULL,
    name character varying(45) NOT NULL
);
    DROP TABLE public.mdfarmtype;
       public         postgres    false    217    3            �            1259    70225 
   mdindustry    TABLE     �   CREATE TABLE public.mdindustry (
    industry_id integer DEFAULT nextval('public.industry_id_seq'::regclass) NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.mdindustry;
       public         postgres    false    223    3            �            1259    70229    measure_id_seq    SEQUENCE     w   CREATE SEQUENCE public.measure_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.measure_id_seq;
       public       postgres    false    3            �            1259    70231 	   mdmeasure    TABLE     
  CREATE TABLE public.mdmeasure (
    measure_id integer DEFAULT nextval('public.measure_id_seq'::regclass) NOT NULL,
    name public.type_name NOT NULL,
    abbreviation character varying(5) NOT NULL,
    originvalue double precision,
    valuekg double precision
);
    DROP TABLE public.mdmeasure;
       public         postgres    false    233    715    3            �            1259    70238    parameter_id_seq    SEQUENCE     y   CREATE SEQUENCE public.parameter_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.parameter_id_seq;
       public       postgres    false    3            �            1259    70240    mdparameter    TABLE     -  CREATE TABLE public.mdparameter (
    parameter_id integer DEFAULT nextval('public.parameter_id_seq'::regclass) NOT NULL,
    description public.type_description NOT NULL,
    type public.sme_type_parameter,
    measure_id integer,
    process_id integer,
    name public.type_description NOT NULL
);
    DROP TABLE public.mdparameter;
       public         postgres    false    235    707    3    714    714            �            1259    70247    process_id_seq    SEQUENCE     w   CREATE SEQUENCE public.process_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.process_id_seq;
       public       postgres    false    3            �            1259    70249 	   mdprocess    TABLE     g  CREATE TABLE public.mdprocess (
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
    gender public.sme_gender,
    fattening_goal double precision,
    type_posture public.sme_type_posture,
    process_class_id integer NOT NULL,
    biological_active boolean
);
    DROP TABLE public.mdprocess;
       public         postgres    false    237    3    618    709            �            1259    70256    process_class_id_seq    SEQUENCE     }   CREATE SEQUENCE public.process_class_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.process_class_id_seq;
       public       postgres    false    3            �            1259    70258    mdprocessclass    TABLE     �   CREATE TABLE public.mdprocessclass (
    process_class_id integer DEFAULT nextval('public.process_class_id_seq'::regclass) NOT NULL,
    name character varying(45) NOT NULL,
    industry_id integer
);
 "   DROP TABLE public.mdprocessclass;
       public         postgres    false    239    3            �            1259    70262    product_id_seq    SEQUENCE     w   CREATE SEQUENCE public.product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.product_id_seq;
       public       postgres    false    3            �            1259    70264 	   mdproduct    TABLE     �   CREATE TABLE public.mdproduct (
    product_id integer DEFAULT nextval('public.product_id_seq'::regclass) NOT NULL,
    code character varying(20) NOT NULL,
    name character varying(45) NOT NULL
);
    DROP TABLE public.mdproduct;
       public         postgres    false    241    3            �            1259    70268    scenario_id_seq    SEQUENCE     x   CREATE SEQUENCE public.scenario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.scenario_id_seq;
       public       postgres    false    3            �            1259    70270 
   mdscenario    TABLE     C  CREATE TABLE public.mdscenario (
    scenario_id integer DEFAULT nextval('public.scenario_id_seq'::regclass) NOT NULL,
    description public.type_description NOT NULL,
    date_start timestamp with time zone,
    date_end timestamp with time zone,
    name character varying(250) NOT NULL,
    status integer DEFAULT 0
);
    DROP TABLE public.mdscenario;
       public         postgres    false    243    714    3            �            1259    70278    status_shed_id_seq    SEQUENCE     {   CREATE SEQUENCE public.status_shed_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.status_shed_id_seq;
       public       postgres    false    3            �            1259    70280    mdshedstatus    TABLE     �   CREATE TABLE public.mdshedstatus (
    shed_status_id integer DEFAULT nextval('public.status_shed_id_seq'::regclass) NOT NULL,
    name character varying(50) NOT NULL,
    description character varying(250) NOT NULL
);
     DROP TABLE public.mdshedstatus;
       public         postgres    false    245    3            �            1259    70284    stage_id_seq    SEQUENCE     u   CREATE SEQUENCE public.stage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.stage_id_seq;
       public       postgres    false    3            �            1259    70286    mdstage    TABLE     �   CREATE TABLE public.mdstage (
    stage_id integer DEFAULT nextval('public.stage_id_seq'::regclass) NOT NULL,
    order_ integer,
    name character varying(250) NOT NULL
);
    DROP TABLE public.mdstage;
       public         postgres    false    247    3            �            1259    70290    oscenter    TABLE       CREATE TABLE public.oscenter (
    center_id integer DEFAULT nextval('public.center_id_seq'::regclass) NOT NULL,
    partnership_id integer NOT NULL,
    farm_id integer NOT NULL,
    name character varying(45) NOT NULL,
    client_id integer,
    code character varying(20) NOT NULL
);
    DROP TABLE public.oscenter;
       public         postgres    false    212    3            �            1259    70294    oscenter_oswarehouse    TABLE     �   CREATE TABLE public.oscenter_oswarehouse (
    client_id integer NOT NULL,
    partnership_id integer NOT NULL,
    farm_id integer NOT NULL,
    center_id integer NOT NULL,
    warehouse_id integer NOT NULL,
    delete_mark integer
);
 (   DROP TABLE public.oscenter_oswarehouse;
       public         postgres    false    3            �            1259    70297    osfarm    TABLE     �  CREATE TABLE public.osfarm (
    farm_id integer DEFAULT nextval('public.farm_id_seq'::regclass) NOT NULL,
    partnership_id integer,
    code character varying(20) NOT NULL,
    name character varying(45) NOT NULL,
    state_id integer,
    city_id integer,
    property character varying(45),
    icaregistry integer,
    water_harvesting_type_id integer,
    water_storage_capacity double precision,
    water_storage_measure_id integer,
    water_harvesting_license integer,
    fumigating_type_id integer,
    shower_system integer,
    local_min_temperature double precision,
    local_max_temperature double precision,
    temperature_measure_id integer,
    local_min_rh double precision,
    local_max_rh double precision,
    rh_measure_id integer,
    local_min_airpressure double precision,
    local_max_airpressure double precision,
    airpressure_measure_id integer,
    gps_latitude1 double precision,
    gps_longitude1 double precision,
    gps_latitude2 double precision,
    gps_longitude2 double precision,
    gps_latitude3 double precision,
    gps_longitude3 double precision,
    gps_latitude4 double precision,
    gps_longitude4 double precision,
    farm_type_id integer NOT NULL
);
    DROP TABLE public.osfarm;
       public         postgres    false    216    3            �            1259    70301    osincubator    TABLE     �  CREATE TABLE public.osincubator (
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
       public         postgres    false    221    3            +           0    0    TABLE osincubator    COMMENT     K   COMMENT ON TABLE public.osincubator IS 'maquinas de la planta incubadora';
            public       postgres    false    252            �            1259    70305    osincubatorplant    TABLE     U  CREATE TABLE public.osincubatorplant (
    incubator_plant_id integer DEFAULT nextval('public.incubator_plant_id_seq'::regclass) NOT NULL,
    name character varying(45) NOT NULL,
    code character varying(20) NOT NULL,
    description character varying(250),
    partnership_id integer,
    max_storage integer,
    min_storage integer
);
 $   DROP TABLE public.osincubatorplant;
       public         postgres    false    222    3            �            1259    70309    partnership_id_seq    SEQUENCE     {   CREATE SEQUENCE public.partnership_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.partnership_id_seq;
       public       postgres    false    3            �            1259    70311    ospartnership    TABLE     �  CREATE TABLE public.ospartnership (
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
       public         postgres    false    254    3                        1259    70318    shed_id_seq    SEQUENCE     t   CREATE SEQUENCE public.shed_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.shed_id_seq;
       public       postgres    false    3                       1259    70320    osshed    TABLE     �  CREATE TABLE public.osshed (
    shed_id integer DEFAULT nextval('public.shed_id_seq'::regclass) NOT NULL,
    partnership_id integer NOT NULL,
    farm_id integer NOT NULL,
    center_id integer NOT NULL,
    client_id integer,
    code character varying(20) NOT NULL,
    statusshed_id integer NOT NULL,
    type_id integer,
    building_date date,
    stall_longitude double precision,
    stall_width double precision NOT NULL,
    stall_height double precision NOT NULL,
    stall_measure_id integer,
    usable_area double precision,
    area_measure_id integer,
    stall_orientation double precision,
    stall_orientation_measure_id integer,
    stall_shading integer,
    illumination_max double precision,
    illumination_measure_id integer,
    total_air_flow double precision,
    air_flow_measure_id integer,
    water_origin_id integer,
    workers_quantity integer,
    gps_latitude1 double precision,
    gps_longitude1 double precision,
    gps_latitude2 double precision,
    gps_longitude2 double precision,
    gps_latitude3 double precision,
    gps_longitude3 double precision,
    gps_latitude4 double precision,
    gps_longitude4 double precision,
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
       public         postgres    false    256    3                       1259    70329    silo_id_seq    SEQUENCE     t   CREATE SEQUENCE public.silo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.silo_id_seq;
       public       postgres    false    3                       1259    70331    ossilo    TABLE     �  CREATE TABLE public.ossilo (
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
       public         postgres    false    258    3                       1259    70335    ossilo_osshed    TABLE     �   CREATE TABLE public.ossilo_osshed (
    silo_id integer NOT NULL,
    shed_id integer NOT NULL,
    center_id integer NOT NULL,
    farm_id integer NOT NULL,
    partnership_id integer NOT NULL,
    client_id integer NOT NULL,
    deleted_mark integer
);
 !   DROP TABLE public.ossilo_osshed;
       public         postgres    false    3                       1259    70338    slaughterhouse_id_seq    SEQUENCE        CREATE SEQUENCE public.slaughterhouse_id_seq
    START WITH 33
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.slaughterhouse_id_seq;
       public       postgres    false    3                       1259    70340    osslaughterhouse    TABLE     �  CREATE TABLE public.osslaughterhouse (
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
       public         postgres    false    261    3                       1259    70347    warehouse_id_seq    SEQUENCE     y   CREATE SEQUENCE public.warehouse_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.warehouse_id_seq;
       public       postgres    false    3                       1259    70349    oswarehouse    TABLE     (  CREATE TABLE public.oswarehouse (
    warehouse_id integer DEFAULT nextval('public.warehouse_id_seq'::regclass) NOT NULL,
    partnership_id integer NOT NULL,
    farm_id integer NOT NULL,
    name character varying(45) NOT NULL,
    client_id integer,
    code character varying(20) NOT NULL
);
    DROP TABLE public.oswarehouse;
       public         postgres    false    263    3            	           1259    70353    posture_curve_id_seq    SEQUENCE     }   CREATE SEQUENCE public.posture_curve_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.posture_curve_id_seq;
       public       postgres    false    3            
           1259    70355    predecessor_id_seq    SEQUENCE     {   CREATE SEQUENCE public.predecessor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.predecessor_id_seq;
       public       postgres    false    3                       1259    70357    programmed_eggs_id_seq    SEQUENCE        CREATE SEQUENCE public.programmed_eggs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.programmed_eggs_id_seq;
       public       postgres    false    3                       1259    70359    raspberry_id_seq    SEQUENCE     y   CREATE SEQUENCE public.raspberry_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.raspberry_id_seq;
       public       postgres    false    3                       1259    70361    scenario_formula_id_seq    SEQUENCE     �   CREATE SEQUENCE public.scenario_formula_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.scenario_formula_id_seq;
       public       postgres    false    3                       1259    70363    scenario_parameter_day_seq    SEQUENCE     �   CREATE SEQUENCE public.scenario_parameter_day_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.scenario_parameter_day_seq;
       public       postgres    false    3                       1259    70365    scenario_parameter_id_seq    SEQUENCE     �   CREATE SEQUENCE public.scenario_parameter_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.scenario_parameter_id_seq;
       public       postgres    false    3                       1259    70367    scenario_posture_id_seq    SEQUENCE     �   CREATE SEQUENCE public.scenario_posture_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.scenario_posture_id_seq;
       public       postgres    false    3                       1259    70369    scenario_process_id_seq    SEQUENCE     �   CREATE SEQUENCE public.scenario_process_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.scenario_process_id_seq;
       public       postgres    false    3                       1259    70371    txavailabilitysheds    TABLE       CREATE TABLE public.txavailabilitysheds (
    availability_shed_id integer DEFAULT nextval('public.availability_shed_id_seq'::regclass) NOT NULL,
    shed_id integer NOT NULL,
    init_date date,
    end_date date,
    lot_code character varying(20) NOT NULL
);
 '   DROP TABLE public.txavailabilitysheds;
       public         postgres    false    198    3                       1259    70375 	   txbroiler    TABLE     L  CREATE TABLE public.txbroiler (
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
       public         postgres    false    203    3                       1259    70379    txbroiler_detail    TABLE     �  CREATE TABLE public.txbroiler_detail (
    broiler_detail_id integer DEFAULT nextval('public.broiler_detail_id_seq'::regclass) NOT NULL,
    broiler_id integer NOT NULL,
    scheduled_date date,
    scheduled_quantity integer,
    farm_id integer NOT NULL,
    shed_id integer NOT NULL,
    confirm integer,
    execution_date date,
    execution_quantity integer,
    lot character varying(45) NOT NULL,
    broiler_product_id integer
);
 $   DROP TABLE public.txbroiler_detail;
       public         postgres    false    202    3                       1259    70383    txbroilereviction    TABLE     _  CREATE TABLE public.txbroilereviction (
    broilereviction_id integer DEFAULT nextval('public.broilereviction_id_seq'::regclass) NOT NULL,
    projected_date date,
    projected_quantity integer,
    partnership_id integer NOT NULL,
    scenario_id integer NOT NULL,
    breed_id integer NOT NULL,
    lot_incubator character varying(45) NOT NULL
);
 %   DROP TABLE public.txbroilereviction;
       public         postgres    false    207    3                       1259    70387    txbroilereviction_detail    TABLE       CREATE TABLE public.txbroilereviction_detail (
    broilereviction_detail_id integer DEFAULT nextval('public.broilereviction_detail_id_seq'::regclass) NOT NULL,
    broilereviction_id integer NOT NULL,
    scheduled_date date,
    scheduled_quantity integer,
    farm_id integer NOT NULL,
    shed_id integer NOT NULL,
    confirm integer,
    execution_date date,
    execution_quantity integer,
    lot character varying(45) NOT NULL,
    broiler_product_id integer NOT NULL,
    slaughterhouse_id integer NOT NULL
);
 ,   DROP TABLE public.txbroilereviction_detail;
       public         postgres    false    206    3                       1259    70391    txbroilerproduct_detail    TABLE     �   CREATE TABLE public.txbroilerproduct_detail (
    broilerproduct_detail_id integer DEFAULT nextval('public.broiler_product_detail_id_seq'::regclass) NOT NULL,
    broiler_detail integer NOT NULL,
    broiler_product_id integer,
    quantity integer
);
 +   DROP TABLE public.txbroilerproduct_detail;
       public         postgres    false    204    3                       1259    70395 	   txbrooder    TABLE     '  CREATE TABLE public.txbrooder (
    brooder_id integer DEFAULT nextval('public.brooder_id_seq'::regclass) NOT NULL,
    brooder_day integer,
    brooder_month integer,
    eggs_farm integer,
    eggs_minimum integer,
    eggs_maximum integer,
    eggs_brooder integer,
    old_chicks integer
);
    DROP TABLE public.txbrooder;
       public         postgres    false    208    3                       1259    70399    txbroodermachine    TABLE     �  CREATE TABLE public.txbroodermachine (
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
       public         postgres    false    209    3                       1259    70403 
   txcalendar    TABLE     �  CREATE TABLE public.txcalendar (
    calendar_id integer DEFAULT nextval('public.calendar_id_seq'::regclass) NOT NULL,
    description public.type_description NOT NULL,
    saturday public.type_working_day,
    sunday public.type_working_day,
    week_start character varying(15),
    code public.type_code NOT NULL,
    year_start integer,
    year_end integer,
    generated public.sme_bool
);
    DROP TABLE public.txcalendar;
       public         postgres    false    211    3    616    713    718    718    714                       1259    70410    txcalendarday    TABLE     �  CREATE TABLE public.txcalendarday (
    calendar_day_id integer DEFAULT nextval('public.calendar_day_id_seq'::regclass) NOT NULL,
    calendar_id integer NOT NULL,
    date timestamp with time zone NOT NULL,
    year integer NOT NULL,
    month integer NOT NULL,
    day integer NOT NULL,
    week timestamp with time zone NOT NULL,
    week_day integer NOT NULL,
    description public.type_description,
    sequence integer NOT NULL,
    working_day public.sme_bool NOT NULL
);
 !   DROP TABLE public.txcalendarday;
       public         postgres    false    210    714    3    616                       1259    70417    txeggs_planning    TABLE       CREATE TABLE public.txeggs_planning (
    egg_planning_id integer DEFAULT nextval('public.egg_planning_id_seq'::regclass) NOT NULL,
    month_planning integer,
    year_planning integer,
    scenario_id integer,
    planned double precision,
    breed_id integer NOT NULL
);
 #   DROP TABLE public.txeggs_planning;
       public         postgres    false    213    3                       1259    70421    txeggs_required    TABLE       CREATE TABLE public.txeggs_required (
    egg_required_id integer DEFAULT nextval('public.egg_required_id_seq'::regclass) NOT NULL,
    _month integer,
    _year integer,
    scenario_id integer NOT NULL,
    required double precision,
    breed_id integer
);
 #   DROP TABLE public.txeggs_required;
       public         postgres    false    214    3                       1259    70425    txeggs_storage    TABLE     9  CREATE TABLE public.txeggs_storage (
    eggs_storage_id integer DEFAULT nextval('public.eggs_storage_id_seq'::regclass) NOT NULL,
    incubator_plant_id integer NOT NULL,
    scenario_id integer NOT NULL,
    breed_id integer NOT NULL,
    init_date date,
    end_date date,
    lot integer,
    eggs integer
);
 "   DROP TABLE public.txeggs_storage;
       public         postgres    false    215    3                       1259    70429    txgoals_erp    TABLE     �   CREATE TABLE public.txgoals_erp (
    goals_erp_id bigint NOT NULL,
    week date,
    value integer,
    product_id integer NOT NULL,
    code character varying(10),
    scenario_id integer NOT NULL
);
    DROP TABLE public.txgoals_erp;
       public         postgres    false    3                        1259    70432    txgoals_erp_goals_erp_id_seq    SEQUENCE     �   CREATE SEQUENCE public.txgoals_erp_goals_erp_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.txgoals_erp_goals_erp_id_seq;
       public       postgres    false    287    3            ,           0    0    txgoals_erp_goals_erp_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.txgoals_erp_goals_erp_id_seq OWNED BY public.txgoals_erp.goals_erp_id;
            public       postgres    false    288            !           1259    70434 	   txholiday    TABLE       CREATE TABLE public.txholiday (
    holiday_id integer DEFAULT nextval('public.holiday_id_seq'::regclass) NOT NULL,
    calendar_id integer NOT NULL,
    year integer NOT NULL,
    month integer NOT NULL,
    day integer NOT NULL,
    description public.type_description
);
    DROP TABLE public.txholiday;
       public         postgres    false    218    3    714            "           1259    70441    txhousingway    TABLE     d  CREATE TABLE public.txhousingway (
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
       public         postgres    false    220    3            #           1259    70445    txhousingway_detail    TABLE     �  CREATE TABLE public.txhousingway_detail (
    housingway_detail_id integer DEFAULT nextval('public.housing_way_detail_id_seq'::regclass) NOT NULL,
    housing_way_id integer NOT NULL,
    scheduled_date date,
    scheduled_quantity integer,
    farm_id integer NOT NULL,
    shed_id integer NOT NULL,
    confirm integer,
    execution_date date,
    execution_quantity integer,
    lot integer,
    incubator_plant_id integer NOT NULL
);
 '   DROP TABLE public.txhousingway_detail;
       public         postgres    false    219    3            $           1259    70449    txlot    TABLE     �  CREATE TABLE public.txlot (
    lot_id integer DEFAULT nextval('public.lot_id_seq'::regclass) NOT NULL,
    lot_code character varying(20) NOT NULL,
    process_class_id integer NOT NULL,
    lot_origin character varying(150),
    status public.sme_lot_status,
    proyected_date date,
    sheduled_date date,
    proyected_quantity integer,
    sheduled_quantity integer,
    released_quantity integer,
    product_id integer NOT NULL,
    breed_id integer NOT NULL,
    gender public.sme_gender,
    type_posture public.sme_type_posture,
    shed_id integer NOT NULL,
    origin public.sme_lot_origin,
    farm_id integer NOT NULL,
    housing_way_id integer NOT NULL
);
    DROP TABLE public.txlot;
       public         postgres    false    227    620    622    618    709    3            %           1259    70456 
   txlot_eggs    TABLE     �   CREATE TABLE public.txlot_eggs (
    lot_eggs_id integer DEFAULT nextval('public.lot_eggs_id_seq'::regclass) NOT NULL,
    theorical_performance double precision,
    week_date date,
    week integer
);
    DROP TABLE public.txlot_eggs;
       public         postgres    false    225    3            &           1259    70460    txposturecurve    TABLE     �  CREATE TABLE public.txposturecurve (
    posture_curve_id integer DEFAULT nextval('public.posture_curve_id_seq'::regclass) NOT NULL,
    week integer,
    breed_id integer NOT NULL,
    theorical_performance double precision,
    historical_performance double precision,
    theorical_accum_mortality integer,
    historical_accum_mortality integer,
    theorical_uniformity double precision,
    historical_uniformity double precision,
    type_posture public.sme_type_posture
);
 "   DROP TABLE public.txposturecurve;
       public         postgres    false    265    709    3            '           1259    70467    txprogrammed_eggs    TABLE     �  CREATE TABLE public.txprogrammed_eggs (
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
       public         postgres    false    267    3            (           1259    70471    txscenarioformula    TABLE     �  CREATE TABLE public.txscenarioformula (
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
       public         postgres    false    269    3            )           1259    70475    txscenariohen    TABLE     �   CREATE TABLE public.txscenariohen (
    _week integer NOT NULL,
    _year integer NOT NULL,
    scenario_id integer NOT NULL,
    quantity_hen integer,
    breed_id integer NOT NULL
);
 !   DROP TABLE public.txscenariohen;
       public         postgres    false    3            *           1259    70478    txscenarioparameter    TABLE     f  CREATE TABLE public.txscenarioparameter (
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
       public         postgres    false    271    3            +           1259    70483    txscenarioparameterday    TABLE     k  CREATE TABLE public.txscenarioparameterday (
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
       public         postgres    false    270    3            ,           1259    70487    txscenarioposturecurve    TABLE     3  CREATE TABLE public.txscenarioposturecurve (
    scenario_posture_id integer DEFAULT nextval('public.scenario_posture_id_seq'::regclass) NOT NULL,
    posture_date date,
    eggs double precision,
    scenario_id integer NOT NULL,
    housingway_detail_id integer NOT NULL,
    breed_id integer NOT NULL
);
 *   DROP TABLE public.txscenarioposturecurve;
       public         postgres    false    272    3            -           1259    70491    txscenarioprocess    TABLE     4  CREATE TABLE public.txscenarioprocess (
    scenario_process_id integer DEFAULT nextval('public.scenario_process_id_seq'::regclass) NOT NULL,
    process_id integer NOT NULL,
    decrease_goal double precision,
    weight_goal double precision,
    duration_goal integer,
    scenario_id integer NOT NULL
);
 %   DROP TABLE public.txscenarioprocess;
       public         postgres    false    273    3            .           1259    70495    user_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_user_id_seq
    START WITH 40
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 '   DROP SEQUENCE public.user_user_id_seq;
       public       postgres    false    3            /           1259    70497    user    TABLE     e  CREATE TABLE public."user" (
    user_id integer DEFAULT nextval('public.user_user_id_seq'::regclass) NOT NULL,
    username character varying(30) NOT NULL,
    password character varying(200) NOT NULL,
    type_user character varying(30) NOT NULL,
    name character varying(30) NOT NULL,
    lastname character varying(30) NOT NULL,
    active boolean
);
    DROP TABLE public."user";
       public         postgres    false    302    3            0           1259    70501 #   user_application_application_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_application_application_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 :   DROP SEQUENCE public.user_application_application_id_seq;
       public       postgres    false    3            1           1259    70503     user_application_user_app_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_application_user_app_id_seq
    START WITH 215
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 7   DROP SEQUENCE public.user_application_user_app_id_seq;
       public       postgres    false    3            2           1259    70505    user_application_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_application_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 3   DROP SEQUENCE public.user_application_user_id_seq;
       public       postgres    false    3            3           1259    70507    user_application    TABLE     \  CREATE TABLE public.user_application (
    user_app_id integer DEFAULT nextval('public.user_application_user_app_id_seq'::regclass) NOT NULL,
    user_id integer DEFAULT nextval('public.user_application_user_id_seq'::regclass) NOT NULL,
    application_id integer DEFAULT nextval('public.user_application_application_id_seq'::regclass) NOT NULL
);
 $   DROP TABLE public.user_application;
       public         postgres    false    305    306    304    3                       2604    70513    txgoals_erp goals_erp_id    DEFAULT     �   ALTER TABLE ONLY public.txgoals_erp ALTER COLUMN goals_erp_id SET DEFAULT nextval('public.txgoals_erp_goals_erp_id_seq'::regclass);
 G   ALTER TABLE public.txgoals_erp ALTER COLUMN goals_erp_id DROP DEFAULT;
       public       postgres    false    288    287            �          0    70145    application 
   TABLE DATA               ^   COPY public.application (application_id, application_name, tile_number, type_app) FROM stdin;
    public       postgres    false    197   ��      �          0    70153    base_day 
   TABLE DATA               e   COPY public.base_day (base_day_id, date, year, month, day, week, week_day, "pruebaAqui") FROM stdin;
    public       postgres    false    200   ��      �          0    70213    mdbreed 
   TABLE DATA               7   COPY public.mdbreed (breed_id, code, name) FROM stdin;
    public       postgres    false    229   	�      �          0    70217    mdbroiler_product 
   TABLE DATA               \   COPY public.mdbroiler_product (broiler_product_id, name, days_eviction, weight) FROM stdin;
    public       postgres    false    230   E�      �          0    70221 
   mdfarmtype 
   TABLE DATA               8   COPY public.mdfarmtype (farm_type_id, name) FROM stdin;
    public       postgres    false    231   ��      �          0    70225 
   mdindustry 
   TABLE DATA               7   COPY public.mdindustry (industry_id, name) FROM stdin;
    public       postgres    false    232   B�      �          0    70231 	   mdmeasure 
   TABLE DATA               Y   COPY public.mdmeasure (measure_id, name, abbreviation, originvalue, valuekg) FROM stdin;
    public       postgres    false    234   m�      �          0    70240    mdparameter 
   TABLE DATA               d   COPY public.mdparameter (parameter_id, description, type, measure_id, process_id, name) FROM stdin;
    public       postgres    false    236   ��      �          0    70249 	   mdprocess 
   TABLE DATA               \  COPY public.mdprocess (process_id, process_order, product_id, stage_id, historical_decrease, theoretical_decrease, historical_weight, theoretical_weight, historical_duration, theoretical_duration, calendar_id, visible, name, predecessor_id, capacity, breed_id, gender, fattening_goal, type_posture, process_class_id, biological_active) FROM stdin;
    public       postgres    false    238   s�      �          0    70258    mdprocessclass 
   TABLE DATA               M   COPY public.mdprocessclass (process_class_id, name, industry_id) FROM stdin;
    public       postgres    false    240   ��      �          0    70264 	   mdproduct 
   TABLE DATA               ;   COPY public.mdproduct (product_id, code, name) FROM stdin;
    public       postgres    false    242   �      �          0    70270 
   mdscenario 
   TABLE DATA               b   COPY public.mdscenario (scenario_id, description, date_start, date_end, name, status) FROM stdin;
    public       postgres    false    244   ��      �          0    70280    mdshedstatus 
   TABLE DATA               I   COPY public.mdshedstatus (shed_status_id, name, description) FROM stdin;
    public       postgres    false    246   ܢ      �          0    70286    mdstage 
   TABLE DATA               9   COPY public.mdstage (stage_id, order_, name) FROM stdin;
    public       postgres    false    248   ��      �          0    70290    oscenter 
   TABLE DATA               ]   COPY public.oscenter (center_id, partnership_id, farm_id, name, client_id, code) FROM stdin;
    public       postgres    false    249   �      �          0    70294    oscenter_oswarehouse 
   TABLE DATA               x   COPY public.oscenter_oswarehouse (client_id, partnership_id, farm_id, center_id, warehouse_id, delete_mark) FROM stdin;
    public       postgres    false    250   ��      �          0    70297    osfarm 
   TABLE DATA               9  COPY public.osfarm (farm_id, partnership_id, code, name, state_id, city_id, property, icaregistry, water_harvesting_type_id, water_storage_capacity, water_storage_measure_id, water_harvesting_license, fumigating_type_id, shower_system, local_min_temperature, local_max_temperature, temperature_measure_id, local_min_rh, local_max_rh, rh_measure_id, local_min_airpressure, local_max_airpressure, airpressure_measure_id, gps_latitude1, gps_longitude1, gps_latitude2, gps_longitude2, gps_latitude3, gps_longitude3, gps_latitude4, gps_longitude4, farm_type_id) FROM stdin;
    public       postgres    false    251   ��      �          0    70301    osincubator 
   TABLE DATA               �   COPY public.osincubator (incubator_id, incubator_plant_id, name, code, description, capacity, sunday, monday, tuesday, wednesday, thursday, friday, saturday) FROM stdin;
    public       postgres    false    252   �      �          0    70305    osincubatorplant 
   TABLE DATA               �   COPY public.osincubatorplant (incubator_plant_id, name, code, description, partnership_id, max_storage, min_storage) FROM stdin;
    public       postgres    false    253   N�      �          0    70311    ospartnership 
   TABLE DATA               �   COPY public.ospartnership (partnership_id, name, address, description, country_id, state_id, city_id, zip_code, code) FROM stdin;
    public       postgres    false    255   ��      �          0    70320    osshed 
   TABLE DATA               �  COPY public.osshed (shed_id, partnership_id, farm_id, center_id, client_id, code, statusshed_id, type_id, building_date, stall_longitude, stall_width, stall_height, stall_measure_id, usable_area, area_measure_id, stall_orientation, stall_orientation_measure_id, stall_shading, illumination_max, illumination_measure_id, total_air_flow, air_flow_measure_id, water_origin_id, workers_quantity, gps_latitude1, gps_longitude1, gps_latitude2, gps_longitude2, gps_latitude3, gps_longitude3, gps_latitude4, gps_longitude4, capacity_min, capacity_max, environment_id, rotation_days, nests_quantity, cages_quantity, birds_quantity, capacity_theoretical) FROM stdin;
    public       postgres    false    257   �      �          0    70331    ossilo 
   TABLE DATA               ?  COPY public.ossilo (silo_id, client_id, partnership_id, farm_id, center_id, name, rings_height, rings_height_id, height, height_unit_id, diameter, diameter_unit_id, total_rings_quantity, measuring_mechanism, cone_degrees, total_capacity_1, total_capacity_2, capacity_unit_id_1, capacity_unit_id_2, central) FROM stdin;
    public       postgres    false    259   `�      �          0    70335    ossilo_osshed 
   TABLE DATA               v   COPY public.ossilo_osshed (silo_id, shed_id, center_id, farm_id, partnership_id, client_id, deleted_mark) FROM stdin;
    public       postgres    false    260   }�      �          0    70340    osslaughterhouse 
   TABLE DATA               �   COPY public.osslaughterhouse (slaughterhouse_id, name, address, description, country_id, state_id, city_id, zip_code, code, capacity) FROM stdin;
    public       postgres    false    262   ��      �          0    70349    oswarehouse 
   TABLE DATA               c   COPY public.oswarehouse (warehouse_id, partnership_id, farm_id, name, client_id, code) FROM stdin;
    public       postgres    false    264   �                0    70371    txavailabilitysheds 
   TABLE DATA               k   COPY public.txavailabilitysheds (availability_shed_id, shed_id, init_date, end_date, lot_code) FROM stdin;
    public       postgres    false    274   "�                0    70375 	   txbroiler 
   TABLE DATA               �   COPY public.txbroiler (broiler_id, projected_date, projected_quantity, partnership_id, scenario_id, breed_id, lot_incubator, programmed_eggs_id) FROM stdin;
    public       postgres    false    275   ?�                0    70379    txbroiler_detail 
   TABLE DATA               �   COPY public.txbroiler_detail (broiler_detail_id, broiler_id, scheduled_date, scheduled_quantity, farm_id, shed_id, confirm, execution_date, execution_quantity, lot, broiler_product_id) FROM stdin;
    public       postgres    false    276   \�                0    70383    txbroilereviction 
   TABLE DATA               �   COPY public.txbroilereviction (broilereviction_id, projected_date, projected_quantity, partnership_id, scenario_id, breed_id, lot_incubator) FROM stdin;
    public       postgres    false    277   y�                0    70387    txbroilereviction_detail 
   TABLE DATA               �   COPY public.txbroilereviction_detail (broilereviction_detail_id, broilereviction_id, scheduled_date, scheduled_quantity, farm_id, shed_id, confirm, execution_date, execution_quantity, lot, broiler_product_id, slaughterhouse_id) FROM stdin;
    public       postgres    false    278   ��                0    70391    txbroilerproduct_detail 
   TABLE DATA               y   COPY public.txbroilerproduct_detail (broilerproduct_detail_id, broiler_detail, broiler_product_id, quantity) FROM stdin;
    public       postgres    false    279   ��                0    70395 	   txbrooder 
   TABLE DATA               �   COPY public.txbrooder (brooder_id, brooder_day, brooder_month, eggs_farm, eggs_minimum, eggs_maximum, eggs_brooder, old_chicks) FROM stdin;
    public       postgres    false    280   Щ                0    70399    txbroodermachine 
   TABLE DATA               �   COPY public.txbroodermachine (brooder_machine_id_seq, partnership_id, farm_id, capacity, sunday, monday, tuesday, wednesday, thursday, friday, saturday, name) FROM stdin;
    public       postgres    false    281   ��      	          0    70403 
   txcalendar 
   TABLE DATA               �   COPY public.txcalendar (calendar_id, description, saturday, sunday, week_start, code, year_start, year_end, generated) FROM stdin;
    public       postgres    false    282   
�      
          0    70410    txcalendarday 
   TABLE DATA               �   COPY public.txcalendarday (calendar_day_id, calendar_id, date, year, month, day, week, week_day, description, sequence, working_day) FROM stdin;
    public       postgres    false    283   ת                0    70417    txeggs_planning 
   TABLE DATA               y   COPY public.txeggs_planning (egg_planning_id, month_planning, year_planning, scenario_id, planned, breed_id) FROM stdin;
    public       postgres    false    284   ~�                0    70421    txeggs_required 
   TABLE DATA               j   COPY public.txeggs_required (egg_required_id, _month, _year, scenario_id, required, breed_id) FROM stdin;
    public       postgres    false    285   ��                0    70425    txeggs_storage 
   TABLE DATA               �   COPY public.txeggs_storage (eggs_storage_id, incubator_plant_id, scenario_id, breed_id, init_date, end_date, lot, eggs) FROM stdin;
    public       postgres    false    286   �                0    70429    txgoals_erp 
   TABLE DATA               _   COPY public.txgoals_erp (goals_erp_id, week, value, product_id, code, scenario_id) FROM stdin;
    public       postgres    false    287   5�                0    70434 	   txholiday 
   TABLE DATA               [   COPY public.txholiday (holiday_id, calendar_id, year, month, day, description) FROM stdin;
    public       postgres    false    289   R�                0    70441    txhousingway 
   TABLE DATA               �   COPY public.txhousingway (housing_way_id, projected_quantity, projected_date, stage_id, partnership_id, scenario_id, breed_id, predecessor_id) FROM stdin;
    public       postgres    false    290   �                0    70445    txhousingway_detail 
   TABLE DATA               �   COPY public.txhousingway_detail (housingway_detail_id, housing_way_id, scheduled_date, scheduled_quantity, farm_id, shed_id, confirm, execution_date, execution_quantity, lot, incubator_plant_id) FROM stdin;
    public       postgres    false    291   ;�                0    70449    txlot 
   TABLE DATA                 COPY public.txlot (lot_id, lot_code, process_class_id, lot_origin, status, proyected_date, sheduled_date, proyected_quantity, sheduled_quantity, released_quantity, product_id, breed_id, gender, type_posture, shed_id, origin, farm_id, housing_way_id) FROM stdin;
    public       postgres    false    292   X�                0    70456 
   txlot_eggs 
   TABLE DATA               Y   COPY public.txlot_eggs (lot_eggs_id, theorical_performance, week_date, week) FROM stdin;
    public       postgres    false    293   u�                0    70460    txposturecurve 
   TABLE DATA               �   COPY public.txposturecurve (posture_curve_id, week, breed_id, theorical_performance, historical_performance, theorical_accum_mortality, historical_accum_mortality, theorical_uniformity, historical_uniformity, type_posture) FROM stdin;
    public       postgres    false    294   ��                0    70467    txprogrammed_eggs 
   TABLE DATA               �   COPY public.txprogrammed_eggs (programmed_eggs_id, incubator_id, lot_breed, lot_incubator, _date, eggs, breed_id, execution_quantity, eggs_storage_id, confirm) FROM stdin;
    public       postgres    false    295   .�                0    70471    txscenarioformula 
   TABLE DATA               �   COPY public.txscenarioformula (scenario_formula_id, process_id, predecessor_id, parameter_id, sign, divider, duration, level, scenario_id, measure_id) FROM stdin;
    public       postgres    false    296   K�                0    70475    txscenariohen 
   TABLE DATA               Z   COPY public.txscenariohen (_week, _year, scenario_id, quantity_hen, breed_id) FROM stdin;
    public       postgres    false    297   D�                0    70478    txscenarioparameter 
   TABLE DATA               �   COPY public.txscenarioparameter (scenario_parameter_id, process_id, parameter_id, year, month, value, scenario_id, value_units) FROM stdin;
    public       postgres    false    298   a�                0    70483    txscenarioparameterday 
   TABLE DATA               �   COPY public.txscenarioparameterday (scenario_parameter_day_id, day, parameter_id, units_day, scenario_id, sequence, month, year, week_day, week) FROM stdin;
    public       postgres    false    299   �                0    70487    txscenarioposturecurve 
   TABLE DATA               �   COPY public.txscenarioposturecurve (scenario_posture_id, posture_date, eggs, scenario_id, housingway_detail_id, breed_id) FROM stdin;
    public       postgres    false    300   �x                0    70491    txscenarioprocess 
   TABLE DATA               �   COPY public.txscenarioprocess (scenario_process_id, process_id, decrease_goal, weight_goal, duration_goal, scenario_id) FROM stdin;
    public       postgres    false    301   �x                0    70497    user 
   TABLE DATA               `   COPY public."user" (user_id, username, password, type_user, name, lastname, active) FROM stdin;
    public       postgres    false    303   Ry      "          0    70507    user_application 
   TABLE DATA               P   COPY public.user_application (user_app_id, user_id, application_id) FROM stdin;
    public       postgres    false    307   �y      -           0    0    application_application_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.application_application_id_seq', 1, false);
            public       postgres    false    196            .           0    0    availability_shed_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.availability_shed_id_seq', 301, true);
            public       postgres    false    198            /           0    0    base_day_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.base_day_id_seq', 3, true);
            public       postgres    false    199            0           0    0    breed_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.breed_id_seq', 17, true);
            public       postgres    false    201            1           0    0    broiler_detail_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.broiler_detail_id_seq', 55, true);
            public       postgres    false    202            2           0    0    broiler_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.broiler_id_seq', 80, true);
            public       postgres    false    203            3           0    0    broiler_product_detail_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.broiler_product_detail_id_seq', 2, true);
            public       postgres    false    204            4           0    0    broiler_product_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.broiler_product_id_seq', 40, true);
            public       postgres    false    205            5           0    0    broilereviction_detail_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.broilereviction_detail_id_seq', 133, true);
            public       postgres    false    206            6           0    0    broilereviction_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.broilereviction_id_seq', 83, true);
            public       postgres    false    207            7           0    0    brooder_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.brooder_id_seq', 52, true);
            public       postgres    false    208            8           0    0    brooder_machines_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.brooder_machines_id_seq', 7, true);
            public       postgres    false    209            9           0    0    calendar_day_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.calendar_day_id_seq', 10952, true);
            public       postgres    false    210            :           0    0    calendar_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.calendar_id_seq', 12, true);
            public       postgres    false    211            ;           0    0    center_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.center_id_seq', 135, true);
            public       postgres    false    212            <           0    0    egg_planning_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.egg_planning_id_seq', 2734, true);
            public       postgres    false    213            =           0    0    egg_required_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.egg_required_id_seq', 2859, true);
            public       postgres    false    214            >           0    0    eggs_storage_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.eggs_storage_id_seq', 25047, true);
            public       postgres    false    215            ?           0    0    farm_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.farm_id_seq', 180, true);
            public       postgres    false    216            @           0    0    farm_type_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.farm_type_id_seq', 3, true);
            public       postgres    false    217            A           0    0    holiday_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.holiday_id_seq', 297, true);
            public       postgres    false    218            B           0    0    housing_way_detail_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.housing_way_detail_id_seq', 447, true);
            public       postgres    false    219            C           0    0    housing_way_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.housing_way_id_seq', 766, true);
            public       postgres    false    220            D           0    0    incubator_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.incubator_id_seq', 51, true);
            public       postgres    false    221            E           0    0    incubator_plant_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.incubator_plant_id_seq', 19, true);
            public       postgres    false    222            F           0    0    industry_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.industry_id_seq', 1, true);
            public       postgres    false    223            G           0    0    line_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.line_id_seq', 1, true);
            public       postgres    false    224            H           0    0    lot_eggs_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.lot_eggs_id_seq', 108, true);
            public       postgres    false    225            I           0    0    lot_fattening_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.lot_fattening_id_seq', 1, false);
            public       postgres    false    226            J           0    0 
   lot_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.lot_id_seq', 316, true);
            public       postgres    false    227            K           0    0    lot_liftbreeding_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.lot_liftbreeding_id_seq', 4, true);
            public       postgres    false    228            L           0    0    measure_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.measure_id_seq', 15, true);
            public       postgres    false    233            M           0    0    parameter_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.parameter_id_seq', 56, true);
            public       postgres    false    235            N           0    0    partnership_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.partnership_id_seq', 31, true);
            public       postgres    false    254            O           0    0    posture_curve_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.posture_curve_id_seq', 445, true);
            public       postgres    false    265            P           0    0    predecessor_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.predecessor_id_seq', 13, true);
            public       postgres    false    266            Q           0    0    process_class_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.process_class_id_seq', 5, true);
            public       postgres    false    239            R           0    0    process_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.process_id_seq', 85, true);
            public       postgres    false    237            S           0    0    product_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.product_id_seq', 97, true);
            public       postgres    false    241            T           0    0    programmed_eggs_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.programmed_eggs_id_seq', 266, true);
            public       postgres    false    267            U           0    0    raspberry_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.raspberry_id_seq', 5, true);
            public       postgres    false    268            V           0    0    scenario_formula_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.scenario_formula_id_seq', 1181, true);
            public       postgres    false    269            W           0    0    scenario_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.scenario_id_seq', 149, true);
            public       postgres    false    243            X           0    0    scenario_parameter_day_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.scenario_parameter_day_seq', 44421, true);
            public       postgres    false    270            Y           0    0    scenario_parameter_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.scenario_parameter_id_seq', 3959, true);
            public       postgres    false    271            Z           0    0    scenario_posture_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.scenario_posture_id_seq', 48754, true);
            public       postgres    false    272            [           0    0    scenario_process_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.scenario_process_id_seq', 771, true);
            public       postgres    false    273            \           0    0    shed_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.shed_id_seq', 362, true);
            public       postgres    false    256            ]           0    0    silo_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.silo_id_seq', 4, true);
            public       postgres    false    258            ^           0    0    slaughterhouse_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.slaughterhouse_id_seq', 36, true);
            public       postgres    false    261            _           0    0    stage_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.stage_id_seq', 27, true);
            public       postgres    false    247            `           0    0    status_shed_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.status_shed_id_seq', 10, true);
            public       postgres    false    245            a           0    0    txgoals_erp_goals_erp_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.txgoals_erp_goals_erp_id_seq', 1920, true);
            public       postgres    false    288            b           0    0 #   user_application_application_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.user_application_application_id_seq', 1, false);
            public       postgres    false    304            c           0    0     user_application_user_app_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.user_application_user_app_id_seq', 215, true);
            public       postgres    false    305            d           0    0    user_application_user_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.user_application_user_id_seq', 1, false);
            public       postgres    false    306            e           0    0    user_user_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.user_user_id_seq', 40, false);
            public       postgres    false    302            f           0    0    warehouse_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.warehouse_id_seq', 110, true);
            public       postgres    false    263                       2606    70515    application application_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.application
    ADD CONSTRAINT application_pkey PRIMARY KEY (application_id);
 F   ALTER TABLE ONLY public.application DROP CONSTRAINT application_pkey;
       public         postgres    false    197                       2606    70517    base_day base_day_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.base_day
    ADD CONSTRAINT base_day_pkey PRIMARY KEY (base_day_id);
 @   ALTER TABLE ONLY public.base_day DROP CONSTRAINT base_day_pkey;
       public         postgres    false    200            �           2606    70519    txcalendarday calendar_day_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.txcalendarday
    ADD CONSTRAINT calendar_day_pkey PRIMARY KEY (calendar_day_id);
 I   ALTER TABLE ONLY public.txcalendarday DROP CONSTRAINT calendar_day_pkey;
       public         postgres    false    283            �           2606    70521    txcalendar calendar_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.txcalendar
    ADD CONSTRAINT calendar_pkey PRIMARY KEY (calendar_id);
 B   ALTER TABLE ONLY public.txcalendar DROP CONSTRAINT calendar_pkey;
       public         postgres    false    282                       2606    70523    mdbreed mdbreed_code_key 
   CONSTRAINT     S   ALTER TABLE ONLY public.mdbreed
    ADD CONSTRAINT mdbreed_code_key UNIQUE (code);
 B   ALTER TABLE ONLY public.mdbreed DROP CONSTRAINT mdbreed_code_key;
       public         postgres    false    229                       2606    70525    mdbreed mdbreed_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.mdbreed
    ADD CONSTRAINT mdbreed_pkey PRIMARY KEY (breed_id);
 >   ALTER TABLE ONLY public.mdbreed DROP CONSTRAINT mdbreed_pkey;
       public         postgres    false    229                       2606    70527 (   mdbroiler_product mdbroiler_product_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.mdbroiler_product
    ADD CONSTRAINT mdbroiler_product_pkey PRIMARY KEY (broiler_product_id);
 R   ALTER TABLE ONLY public.mdbroiler_product DROP CONSTRAINT mdbroiler_product_pkey;
       public         postgres    false    230                       2606    70529    mdfarmtype mdfarmtype_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.mdfarmtype
    ADD CONSTRAINT mdfarmtype_pkey PRIMARY KEY (farm_type_id);
 D   ALTER TABLE ONLY public.mdfarmtype DROP CONSTRAINT mdfarmtype_pkey;
       public         postgres    false    231            !           2606    70531 !   mdindustry mdindustry_name_unique 
   CONSTRAINT     \   ALTER TABLE ONLY public.mdindustry
    ADD CONSTRAINT mdindustry_name_unique UNIQUE (name);
 K   ALTER TABLE ONLY public.mdindustry DROP CONSTRAINT mdindustry_name_unique;
       public         postgres    false    232            #           2606    70533    mdindustry mdindustry_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.mdindustry
    ADD CONSTRAINT mdindustry_pkey PRIMARY KEY (industry_id);
 D   ALTER TABLE ONLY public.mdindustry DROP CONSTRAINT mdindustry_pkey;
       public         postgres    false    232            %           2606    70535    mdmeasure mdmeasure_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.mdmeasure
    ADD CONSTRAINT mdmeasure_pkey PRIMARY KEY (measure_id);
 B   ALTER TABLE ONLY public.mdmeasure DROP CONSTRAINT mdmeasure_pkey;
       public         postgres    false    234            3           2606    70537 "   mdprocessclass mdprocessclass_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.mdprocessclass
    ADD CONSTRAINT mdprocessclass_pkey PRIMARY KEY (process_class_id);
 L   ALTER TABLE ONLY public.mdprocessclass DROP CONSTRAINT mdprocessclass_pkey;
       public         postgres    false    240            =           2606    70539    mdshedstatus mdstatusshed_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.mdshedstatus
    ADD CONSTRAINT mdstatusshed_pkey PRIMARY KEY (shed_status_id);
 H   ALTER TABLE ONLY public.mdshedstatus DROP CONSTRAINT mdstatusshed_pkey;
       public         postgres    false    246            I           2606    70541 .   oscenter_oswarehouse oscenter_oswarehouse_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.oscenter_oswarehouse
    ADD CONSTRAINT oscenter_oswarehouse_pkey PRIMARY KEY (client_id, partnership_id, farm_id, center_id, warehouse_id);
 X   ALTER TABLE ONLY public.oscenter_oswarehouse DROP CONSTRAINT oscenter_oswarehouse_pkey;
       public         postgres    false    250    250    250    250    250            C           2606    70543    oscenter oscenter_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.oscenter
    ADD CONSTRAINT oscenter_pkey PRIMARY KEY (center_id);
 @   ALTER TABLE ONLY public.oscenter DROP CONSTRAINT oscenter_pkey;
       public         postgres    false    249            M           2606    70545    osfarm osfarm_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.osfarm
    ADD CONSTRAINT osfarm_pkey PRIMARY KEY (farm_id);
 <   ALTER TABLE ONLY public.osfarm DROP CONSTRAINT osfarm_pkey;
       public         postgres    false    251            [           2606    70547    osshed oshed_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.osshed
    ADD CONSTRAINT oshed_pkey PRIMARY KEY (shed_id);
 ;   ALTER TABLE ONLY public.osshed DROP CONSTRAINT oshed_pkey;
       public         postgres    false    257            P           2606    70549    osincubator osincubator_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.osincubator
    ADD CONSTRAINT osincubator_pkey PRIMARY KEY (incubator_id);
 F   ALTER TABLE ONLY public.osincubator DROP CONSTRAINT osincubator_pkey;
       public         postgres    false    252            S           2606    70551 &   osincubatorplant osincubatorplant_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.osincubatorplant
    ADD CONSTRAINT osincubatorplant_pkey PRIMARY KEY (incubator_plant_id);
 P   ALTER TABLE ONLY public.osincubatorplant DROP CONSTRAINT osincubatorplant_pkey;
       public         postgres    false    253            U           2606    70553     ospartnership ospartnership_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.ospartnership
    ADD CONSTRAINT ospartnership_pkey PRIMARY KEY (partnership_id);
 J   ALTER TABLE ONLY public.ospartnership DROP CONSTRAINT ospartnership_pkey;
       public         postgres    false    255            g           2606    70555     ossilo_osshed ossilo_osshed_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.ossilo_osshed
    ADD CONSTRAINT ossilo_osshed_pkey PRIMARY KEY (silo_id, shed_id);
 J   ALTER TABLE ONLY public.ossilo_osshed DROP CONSTRAINT ossilo_osshed_pkey;
       public         postgres    false    260    260            `           2606    70557    ossilo ossilo_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.ossilo
    ADD CONSTRAINT ossilo_pkey PRIMARY KEY (silo_id);
 <   ALTER TABLE ONLY public.ossilo DROP CONSTRAINT ossilo_pkey;
       public         postgres    false    259            i           2606    70559 &   osslaughterhouse osslaughterhouse_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.osslaughterhouse
    ADD CONSTRAINT osslaughterhouse_pkey PRIMARY KEY (slaughterhouse_id);
 P   ALTER TABLE ONLY public.osslaughterhouse DROP CONSTRAINT osslaughterhouse_pkey;
       public         postgres    false    262            m           2606    70561    oswarehouse oswarehouse_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.oswarehouse
    ADD CONSTRAINT oswarehouse_pkey PRIMARY KEY (warehouse_id);
 F   ALTER TABLE ONLY public.oswarehouse DROP CONSTRAINT oswarehouse_pkey;
       public         postgres    false    264            )           2606    70563    mdparameter parameter_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.mdparameter
    ADD CONSTRAINT parameter_pkey PRIMARY KEY (parameter_id);
 D   ALTER TABLE ONLY public.mdparameter DROP CONSTRAINT parameter_pkey;
       public         postgres    false    236            0           2606    70565    mdprocess process_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.mdprocess
    ADD CONSTRAINT process_pkey PRIMARY KEY (process_id);
 @   ALTER TABLE ONLY public.mdprocess DROP CONSTRAINT process_pkey;
       public         postgres    false    238            5           2606    70567    mdproduct product_code_unique 
   CONSTRAINT     X   ALTER TABLE ONLY public.mdproduct
    ADD CONSTRAINT product_code_unique UNIQUE (code);
 G   ALTER TABLE ONLY public.mdproduct DROP CONSTRAINT product_code_unique;
       public         postgres    false    242            7           2606    70569    mdproduct product_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.mdproduct
    ADD CONSTRAINT product_pkey PRIMARY KEY (product_id);
 @   ALTER TABLE ONLY public.mdproduct DROP CONSTRAINT product_pkey;
       public         postgres    false    242            �           2606    70571 '   txscenarioformula scenario_formula_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.txscenarioformula
    ADD CONSTRAINT scenario_formula_pkey PRIMARY KEY (scenario_formula_id);
 Q   ALTER TABLE ONLY public.txscenarioformula DROP CONSTRAINT scenario_formula_pkey;
       public         postgres    false    296            9           2606    70573    mdscenario scenario_name_unique 
   CONSTRAINT     Z   ALTER TABLE ONLY public.mdscenario
    ADD CONSTRAINT scenario_name_unique UNIQUE (name);
 I   ALTER TABLE ONLY public.mdscenario DROP CONSTRAINT scenario_name_unique;
       public         postgres    false    244            �           2606    70575 +   txscenarioparameter scenario_parameter_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.txscenarioparameter
    ADD CONSTRAINT scenario_parameter_pkey PRIMARY KEY (scenario_parameter_id);
 U   ALTER TABLE ONLY public.txscenarioparameter DROP CONSTRAINT scenario_parameter_pkey;
       public         postgres    false    298            ;           2606    70577    mdscenario scenario_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.mdscenario
    ADD CONSTRAINT scenario_pkey PRIMARY KEY (scenario_id);
 B   ALTER TABLE ONLY public.mdscenario DROP CONSTRAINT scenario_pkey;
       public         postgres    false    244            �           2606    70579 '   txscenarioprocess scenario_process_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.txscenarioprocess
    ADD CONSTRAINT scenario_process_pkey PRIMARY KEY (scenario_process_id);
 Q   ALTER TABLE ONLY public.txscenarioprocess DROP CONSTRAINT scenario_process_pkey;
       public         postgres    false    301            �           2606    70581    user some_restriction 
   CONSTRAINT     V   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT some_restriction UNIQUE (username);
 A   ALTER TABLE ONLY public."user" DROP CONSTRAINT some_restriction;
       public         postgres    false    303            ?           2606    70583    mdstage stage_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.mdstage
    ADD CONSTRAINT stage_pkey PRIMARY KEY (stage_id);
 <   ALTER TABLE ONLY public.mdstage DROP CONSTRAINT stage_pkey;
       public         postgres    false    248            q           2606    70585 ,   txavailabilitysheds txavailabilitysheds_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.txavailabilitysheds
    ADD CONSTRAINT txavailabilitysheds_pkey PRIMARY KEY (availability_shed_id);
 V   ALTER TABLE ONLY public.txavailabilitysheds DROP CONSTRAINT txavailabilitysheds_pkey;
       public         postgres    false    274            |           2606    70587 &   txbroiler_detail txbroiler_detail_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.txbroiler_detail
    ADD CONSTRAINT txbroiler_detail_pkey PRIMARY KEY (broiler_detail_id);
 P   ALTER TABLE ONLY public.txbroiler_detail DROP CONSTRAINT txbroiler_detail_pkey;
       public         postgres    false    276            �           2606    70589 5   txbroilerproduct_detail txbroiler_product_detail_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.txbroilerproduct_detail
    ADD CONSTRAINT txbroiler_product_detail_pkey PRIMARY KEY (broilerproduct_detail_id);
 _   ALTER TABLE ONLY public.txbroilerproduct_detail DROP CONSTRAINT txbroiler_product_detail_pkey;
       public         postgres    false    279            �           2606    70591 6   txbroilereviction_detail txbroilereviction_detail_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.txbroilereviction_detail
    ADD CONSTRAINT txbroilereviction_detail_pkey PRIMARY KEY (broilereviction_detail_id);
 `   ALTER TABLE ONLY public.txbroilereviction_detail DROP CONSTRAINT txbroilereviction_detail_pkey;
       public         postgres    false    278            �           2606    70593 (   txbroilereviction txbroilereviction_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.txbroilereviction
    ADD CONSTRAINT txbroilereviction_pkey PRIMARY KEY (broilereviction_id);
 R   ALTER TABLE ONLY public.txbroilereviction DROP CONSTRAINT txbroilereviction_pkey;
       public         postgres    false    277            �           2606    70595    txbrooder txbrooder_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.txbrooder
    ADD CONSTRAINT txbrooder_pkey PRIMARY KEY (brooder_id);
 B   ALTER TABLE ONLY public.txbrooder DROP CONSTRAINT txbrooder_pkey;
       public         postgres    false    280            �           2606    70597 '   txbroodermachine txbroodermachines_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public.txbroodermachine
    ADD CONSTRAINT txbroodermachines_pkey PRIMARY KEY (brooder_machine_id_seq);
 Q   ALTER TABLE ONLY public.txbroodermachine DROP CONSTRAINT txbroodermachines_pkey;
       public         postgres    false    281            �           2606    70599 $   txeggs_planning txeggs_planning_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.txeggs_planning
    ADD CONSTRAINT txeggs_planning_pkey PRIMARY KEY (egg_planning_id);
 N   ALTER TABLE ONLY public.txeggs_planning DROP CONSTRAINT txeggs_planning_pkey;
       public         postgres    false    284            �           2606    70601 $   txeggs_required txeggs_required_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.txeggs_required
    ADD CONSTRAINT txeggs_required_pkey PRIMARY KEY (egg_required_id);
 N   ALTER TABLE ONLY public.txeggs_required DROP CONSTRAINT txeggs_required_pkey;
       public         postgres    false    285            �           2606    70603 "   txeggs_storage txeggs_storage_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.txeggs_storage
    ADD CONSTRAINT txeggs_storage_pkey PRIMARY KEY (eggs_storage_id);
 L   ALTER TABLE ONLY public.txeggs_storage DROP CONSTRAINT txeggs_storage_pkey;
       public         postgres    false    286            w           2606    70605    txbroiler txfattening_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.txbroiler
    ADD CONSTRAINT txfattening_pkey PRIMARY KEY (broiler_id);
 D   ALTER TABLE ONLY public.txbroiler DROP CONSTRAINT txfattening_pkey;
       public         postgres    false    275            �           2606    70607    txgoals_erp txgoals_erp_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.txgoals_erp
    ADD CONSTRAINT txgoals_erp_pkey PRIMARY KEY (goals_erp_id);
 F   ALTER TABLE ONLY public.txgoals_erp DROP CONSTRAINT txgoals_erp_pkey;
       public         postgres    false    287            �           2606    70609 "   txholiday txholiday_holiday_id_key 
   CONSTRAINT     c   ALTER TABLE ONLY public.txholiday
    ADD CONSTRAINT txholiday_holiday_id_key UNIQUE (holiday_id);
 L   ALTER TABLE ONLY public.txholiday DROP CONSTRAINT txholiday_holiday_id_key;
       public         postgres    false    289            �           2606    70611    txholiday txholiday_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.txholiday
    ADD CONSTRAINT txholiday_pkey PRIMARY KEY (calendar_id, year, month, day);
 B   ALTER TABLE ONLY public.txholiday DROP CONSTRAINT txholiday_pkey;
       public         postgres    false    289    289    289    289            �           2606    70613 ,   txhousingway_detail txhousingway_detail_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.txhousingway_detail
    ADD CONSTRAINT txhousingway_detail_pkey PRIMARY KEY (housingway_detail_id);
 V   ALTER TABLE ONLY public.txhousingway_detail DROP CONSTRAINT txhousingway_detail_pkey;
       public         postgres    false    291            �           2606    70615    txhousingway txhousingway_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.txhousingway
    ADD CONSTRAINT txhousingway_pkey PRIMARY KEY (housing_way_id);
 H   ALTER TABLE ONLY public.txhousingway DROP CONSTRAINT txhousingway_pkey;
       public         postgres    false    290            �           2606    70617    txlot_eggs txlot_eggs_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.txlot_eggs
    ADD CONSTRAINT txlot_eggs_pkey PRIMARY KEY (lot_eggs_id);
 D   ALTER TABLE ONLY public.txlot_eggs DROP CONSTRAINT txlot_eggs_pkey;
       public         postgres    false    293            �           2606    70619    txlot txlot_lot_code_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.txlot
    ADD CONSTRAINT txlot_lot_code_key UNIQUE (lot_code);
 B   ALTER TABLE ONLY public.txlot DROP CONSTRAINT txlot_lot_code_key;
       public         postgres    false    292            �           2606    70621    txlot txlot_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.txlot
    ADD CONSTRAINT txlot_pkey PRIMARY KEY (lot_id);
 :   ALTER TABLE ONLY public.txlot DROP CONSTRAINT txlot_pkey;
       public         postgres    false    292            �           2606    70623 "   txposturecurve txposturecurve_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.txposturecurve
    ADD CONSTRAINT txposturecurve_pkey PRIMARY KEY (posture_curve_id);
 L   ALTER TABLE ONLY public.txposturecurve DROP CONSTRAINT txposturecurve_pkey;
       public         postgres    false    294            �           2606    70625 (   txprogrammed_eggs txprogrammed_eggs_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.txprogrammed_eggs
    ADD CONSTRAINT txprogrammed_eggs_pkey PRIMARY KEY (programmed_eggs_id);
 R   ALTER TABLE ONLY public.txprogrammed_eggs DROP CONSTRAINT txprogrammed_eggs_pkey;
       public         postgres    false    295            �           2606    70627     txscenariohen txscenariohen_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.txscenariohen
    ADD CONSTRAINT txscenariohen_pkey PRIMARY KEY (_week, _year);
 J   ALTER TABLE ONLY public.txscenariohen DROP CONSTRAINT txscenariohen_pkey;
       public         postgres    false    297    297            �           2606    70629 2   txscenarioparameterday txscenarioparameterday_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.txscenarioparameterday
    ADD CONSTRAINT txscenarioparameterday_pkey PRIMARY KEY (scenario_parameter_day_id);
 \   ALTER TABLE ONLY public.txscenarioparameterday DROP CONSTRAINT txscenarioparameterday_pkey;
       public         postgres    false    299            �           2606    70631 2   txscenarioposturecurve txscenarioposturecurve_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.txscenarioposturecurve
    ADD CONSTRAINT txscenarioposturecurve_pkey PRIMARY KEY (scenario_posture_id);
 \   ALTER TABLE ONLY public.txscenarioposturecurve DROP CONSTRAINT txscenarioposturecurve_pkey;
       public         postgres    false    300            �           2606    70633 &   user_application user_application_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.user_application
    ADD CONSTRAINT user_application_pkey PRIMARY KEY (user_app_id);
 P   ALTER TABLE ONLY public.user_application DROP CONSTRAINT user_application_pkey;
       public         postgres    false    307            �           2606    70635    user user_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (user_id);
 :   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey;
       public         postgres    false    303            �           1259    70636    calendar_index    INDEX     N   CREATE INDEX calendar_index ON public.txcalendarday USING hash (calendar_id);
 "   DROP INDEX public.calendar_index;
       public         postgres    false    283            *           1259    70637    calendarid_index    INDEX     L   CREATE INDEX calendarid_index ON public.mdprocess USING hash (calendar_id);
 $   DROP INDEX public.calendarid_index;
       public         postgres    false    238            �           1259    70638 
   code_index    INDEX     H   CREATE UNIQUE INDEX code_index ON public.txcalendar USING btree (code);
    DROP INDEX public.code_index;
       public         postgres    false    282            �           1259    70639 
   date_index    INDEX     C   CREATE INDEX date_index ON public.txcalendarday USING hash (date);
    DROP INDEX public.date_index;
       public         postgres    false    283            �           1259    70640 
   fki_app_id    INDEX     Q   CREATE INDEX fki_app_id ON public.user_application USING btree (application_id);
    DROP INDEX public.fki_app_id;
       public         postgres    false    307            &           1259    70641    fki_mdparameter_measure_id_fkey    INDEX     ]   CREATE INDEX fki_mdparameter_measure_id_fkey ON public.mdparameter USING btree (measure_id);
 3   DROP INDEX public.fki_mdparameter_measure_id_fkey;
       public         postgres    false    236            '           1259    70642    fki_mdparameter_process_id_fkey    INDEX     ]   CREATE INDEX fki_mdparameter_process_id_fkey ON public.mdparameter USING btree (process_id);
 3   DROP INDEX public.fki_mdparameter_process_id_fkey;
       public         postgres    false    236            +           1259    70643    fki_mdprocess_breed_id_fkey    INDEX     U   CREATE INDEX fki_mdprocess_breed_id_fkey ON public.mdprocess USING btree (breed_id);
 /   DROP INDEX public.fki_mdprocess_breed_id_fkey;
       public         postgres    false    238            ,           1259    70644 #   fki_mdprocess_process_class_id_fkey    INDEX     e   CREATE INDEX fki_mdprocess_process_class_id_fkey ON public.mdprocess USING btree (process_class_id);
 7   DROP INDEX public.fki_mdprocess_process_class_id_fkey;
       public         postgres    false    238            1           1259    70645 #   fki_mdprocessclass_industry_id_fkey    INDEX     e   CREATE INDEX fki_mdprocessclass_industry_id_fkey ON public.mdprocessclass USING btree (industry_id);
 7   DROP INDEX public.fki_mdprocessclass_industry_id_fkey;
       public         postgres    false    240            @           1259    70646    fki_oscenter_farm_id_fkey    INDEX     Q   CREATE INDEX fki_oscenter_farm_id_fkey ON public.oscenter USING btree (farm_id);
 -   DROP INDEX public.fki_oscenter_farm_id_fkey;
       public         postgres    false    249            D           1259    70647 '   fki_oscenter_oswarehouse_center_id_fkey    INDEX     m   CREATE INDEX fki_oscenter_oswarehouse_center_id_fkey ON public.oscenter_oswarehouse USING btree (center_id);
 ;   DROP INDEX public.fki_oscenter_oswarehouse_center_id_fkey;
       public         postgres    false    250            E           1259    70648 %   fki_oscenter_oswarehouse_farm_id_fkey    INDEX     i   CREATE INDEX fki_oscenter_oswarehouse_farm_id_fkey ON public.oscenter_oswarehouse USING btree (farm_id);
 9   DROP INDEX public.fki_oscenter_oswarehouse_farm_id_fkey;
       public         postgres    false    250            F           1259    70649 ,   fki_oscenter_oswarehouse_partnership_id_fkey    INDEX     w   CREATE INDEX fki_oscenter_oswarehouse_partnership_id_fkey ON public.oscenter_oswarehouse USING btree (partnership_id);
 @   DROP INDEX public.fki_oscenter_oswarehouse_partnership_id_fkey;
       public         postgres    false    250            G           1259    70650 *   fki_oscenter_oswarehouse_warehouse_id_fkey    INDEX     s   CREATE INDEX fki_oscenter_oswarehouse_warehouse_id_fkey ON public.oscenter_oswarehouse USING btree (warehouse_id);
 >   DROP INDEX public.fki_oscenter_oswarehouse_warehouse_id_fkey;
       public         postgres    false    250            A           1259    70651     fki_oscenter_partnership_id_fkey    INDEX     _   CREATE INDEX fki_oscenter_partnership_id_fkey ON public.oscenter USING btree (partnership_id);
 4   DROP INDEX public.fki_oscenter_partnership_id_fkey;
       public         postgres    false    249            J           1259    70652    fki_osfarm_farm_type_id_fkey    INDEX     W   CREATE INDEX fki_osfarm_farm_type_id_fkey ON public.osfarm USING btree (farm_type_id);
 0   DROP INDEX public.fki_osfarm_farm_type_id_fkey;
       public         postgres    false    251            K           1259    70653    fki_osfarm_partnership_id_fkey    INDEX     [   CREATE INDEX fki_osfarm_partnership_id_fkey ON public.osfarm USING btree (partnership_id);
 2   DROP INDEX public.fki_osfarm_partnership_id_fkey;
       public         postgres    false    251            N           1259    70654 '   fki_osincubator_incubator_plant_id_fkey    INDEX     m   CREATE INDEX fki_osincubator_incubator_plant_id_fkey ON public.osincubator USING btree (incubator_plant_id);
 ;   DROP INDEX public.fki_osincubator_incubator_plant_id_fkey;
       public         postgres    false    252            Q           1259    70655 (   fki_osincubatorplant_partnership_id_fkey    INDEX     o   CREATE INDEX fki_osincubatorplant_partnership_id_fkey ON public.osincubatorplant USING btree (partnership_id);
 <   DROP INDEX public.fki_osincubatorplant_partnership_id_fkey;
       public         postgres    false    253            V           1259    70656    fki_osshed_center_id_fkey    INDEX     Q   CREATE INDEX fki_osshed_center_id_fkey ON public.osshed USING btree (center_id);
 -   DROP INDEX public.fki_osshed_center_id_fkey;
       public         postgres    false    257            W           1259    70657    fki_osshed_farm_id_fkey    INDEX     M   CREATE INDEX fki_osshed_farm_id_fkey ON public.osshed USING btree (farm_id);
 +   DROP INDEX public.fki_osshed_farm_id_fkey;
       public         postgres    false    257            X           1259    70658    fki_osshed_partnership_id_fkey    INDEX     [   CREATE INDEX fki_osshed_partnership_id_fkey ON public.osshed USING btree (partnership_id);
 2   DROP INDEX public.fki_osshed_partnership_id_fkey;
       public         postgres    false    257            Y           1259    70659    fki_osshed_statusshed_id_fkey    INDEX     Y   CREATE INDEX fki_osshed_statusshed_id_fkey ON public.osshed USING btree (statusshed_id);
 1   DROP INDEX public.fki_osshed_statusshed_id_fkey;
       public         postgres    false    257            \           1259    70660    fki_ossilo_center_id_fkey    INDEX     Q   CREATE INDEX fki_ossilo_center_id_fkey ON public.ossilo USING btree (center_id);
 -   DROP INDEX public.fki_ossilo_center_id_fkey;
       public         postgres    false    259            ]           1259    70661    fki_ossilo_farm_id_fkey    INDEX     M   CREATE INDEX fki_ossilo_farm_id_fkey ON public.ossilo USING btree (farm_id);
 +   DROP INDEX public.fki_ossilo_farm_id_fkey;
       public         postgres    false    259            a           1259    70662     fki_ossilo_osshed_center_id_fkey    INDEX     _   CREATE INDEX fki_ossilo_osshed_center_id_fkey ON public.ossilo_osshed USING btree (center_id);
 4   DROP INDEX public.fki_ossilo_osshed_center_id_fkey;
       public         postgres    false    260            b           1259    70663    fki_ossilo_osshed_farm_id_fkey    INDEX     [   CREATE INDEX fki_ossilo_osshed_farm_id_fkey ON public.ossilo_osshed USING btree (farm_id);
 2   DROP INDEX public.fki_ossilo_osshed_farm_id_fkey;
       public         postgres    false    260            c           1259    70664 %   fki_ossilo_osshed_partnership_id_fkey    INDEX     i   CREATE INDEX fki_ossilo_osshed_partnership_id_fkey ON public.ossilo_osshed USING btree (partnership_id);
 9   DROP INDEX public.fki_ossilo_osshed_partnership_id_fkey;
       public         postgres    false    260            d           1259    70665    fki_ossilo_osshed_shed_id_fkey    INDEX     [   CREATE INDEX fki_ossilo_osshed_shed_id_fkey ON public.ossilo_osshed USING btree (shed_id);
 2   DROP INDEX public.fki_ossilo_osshed_shed_id_fkey;
       public         postgres    false    260            e           1259    70666    fki_ossilo_osshed_silo_id_fkey    INDEX     [   CREATE INDEX fki_ossilo_osshed_silo_id_fkey ON public.ossilo_osshed USING btree (silo_id);
 2   DROP INDEX public.fki_ossilo_osshed_silo_id_fkey;
       public         postgres    false    260            ^           1259    70667    fki_ossilo_partnership_id_fkey    INDEX     [   CREATE INDEX fki_ossilo_partnership_id_fkey ON public.ossilo USING btree (partnership_id);
 2   DROP INDEX public.fki_ossilo_partnership_id_fkey;
       public         postgres    false    259            j           1259    70668    fki_oswarehouse_farm_id_fkey    INDEX     W   CREATE INDEX fki_oswarehouse_farm_id_fkey ON public.oswarehouse USING btree (farm_id);
 0   DROP INDEX public.fki_oswarehouse_farm_id_fkey;
       public         postgres    false    264            k           1259    70669 #   fki_oswarehouse_partnership_id_fkey    INDEX     e   CREATE INDEX fki_oswarehouse_partnership_id_fkey ON public.oswarehouse USING btree (partnership_id);
 7   DROP INDEX public.fki_oswarehouse_partnership_id_fkey;
       public         postgres    false    264            -           1259    70670    fki_process_product_id_fkey    INDEX     W   CREATE INDEX fki_process_product_id_fkey ON public.mdprocess USING btree (product_id);
 /   DROP INDEX public.fki_process_product_id_fkey;
       public         postgres    false    238            .           1259    70671    fki_process_stage_id_fkey    INDEX     S   CREATE INDEX fki_process_stage_id_fkey ON public.mdprocess USING btree (stage_id);
 -   DROP INDEX public.fki_process_stage_id_fkey;
       public         postgres    false    238            n           1259    70672 %   fki_txavailabilitysheds_lot_code_fkey    INDEX     i   CREATE INDEX fki_txavailabilitysheds_lot_code_fkey ON public.txavailabilitysheds USING btree (lot_code);
 9   DROP INDEX public.fki_txavailabilitysheds_lot_code_fkey;
       public         postgres    false    274            o           1259    70673 $   fki_txavailabilitysheds_shed_id_fkey    INDEX     g   CREATE INDEX fki_txavailabilitysheds_shed_id_fkey ON public.txavailabilitysheds USING btree (shed_id);
 8   DROP INDEX public.fki_txavailabilitysheds_shed_id_fkey;
       public         postgres    false    274            x           1259    70674 $   fki_txbroiler_detail_broiler_id_fkey    INDEX     g   CREATE INDEX fki_txbroiler_detail_broiler_id_fkey ON public.txbroiler_detail USING btree (broiler_id);
 8   DROP INDEX public.fki_txbroiler_detail_broiler_id_fkey;
       public         postgres    false    276            y           1259    70675 !   fki_txbroiler_detail_farm_id_fkey    INDEX     a   CREATE INDEX fki_txbroiler_detail_farm_id_fkey ON public.txbroiler_detail USING btree (farm_id);
 5   DROP INDEX public.fki_txbroiler_detail_farm_id_fkey;
       public         postgres    false    276            z           1259    70676 !   fki_txbroiler_detail_shed_id_fkey    INDEX     a   CREATE INDEX fki_txbroiler_detail_shed_id_fkey ON public.txbroiler_detail USING btree (shed_id);
 5   DROP INDEX public.fki_txbroiler_detail_shed_id_fkey;
       public         postgres    false    276            r           1259    70677 %   fki_txbroiler_programmed_eggs_id_fkey    INDEX     i   CREATE INDEX fki_txbroiler_programmed_eggs_id_fkey ON public.txbroiler USING btree (programmed_eggs_id);
 9   DROP INDEX public.fki_txbroiler_programmed_eggs_id_fkey;
       public         postgres    false    275            }           1259    70678 #   fki_txbroilereviction_breed_id_fkey    INDEX     e   CREATE INDEX fki_txbroilereviction_breed_id_fkey ON public.txbroilereviction USING btree (breed_id);
 7   DROP INDEX public.fki_txbroilereviction_breed_id_fkey;
       public         postgres    false    277            �           1259    70679 ,   fki_txbroilereviction_detail_broiler_id_fkey    INDEX        CREATE INDEX fki_txbroilereviction_detail_broiler_id_fkey ON public.txbroilereviction_detail USING btree (broilereviction_id);
 @   DROP INDEX public.fki_txbroilereviction_detail_broiler_id_fkey;
       public         postgres    false    278            �           1259    70680 4   fki_txbroilereviction_detail_broiler_product_id_fkey    INDEX     �   CREATE INDEX fki_txbroilereviction_detail_broiler_product_id_fkey ON public.txbroilereviction_detail USING btree (broiler_product_id);
 H   DROP INDEX public.fki_txbroilereviction_detail_broiler_product_id_fkey;
       public         postgres    false    278            �           1259    70681 )   fki_txbroilereviction_detail_farm_id_fkey    INDEX     q   CREATE INDEX fki_txbroilereviction_detail_farm_id_fkey ON public.txbroilereviction_detail USING btree (farm_id);
 =   DROP INDEX public.fki_txbroilereviction_detail_farm_id_fkey;
       public         postgres    false    278            �           1259    70682 )   fki_txbroilereviction_detail_shed_id_fkey    INDEX     q   CREATE INDEX fki_txbroilereviction_detail_shed_id_fkey ON public.txbroilereviction_detail USING btree (shed_id);
 =   DROP INDEX public.fki_txbroilereviction_detail_shed_id_fkey;
       public         postgres    false    278            �           1259    70683 3   fki_txbroilereviction_detail_slaughterhouse_id_fkey    INDEX     �   CREATE INDEX fki_txbroilereviction_detail_slaughterhouse_id_fkey ON public.txbroilereviction_detail USING btree (slaughterhouse_id);
 G   DROP INDEX public.fki_txbroilereviction_detail_slaughterhouse_id_fkey;
       public         postgres    false    278            ~           1259    70684 )   fki_txbroilereviction_partnership_id_fkey    INDEX     q   CREATE INDEX fki_txbroilereviction_partnership_id_fkey ON public.txbroilereviction USING btree (partnership_id);
 =   DROP INDEX public.fki_txbroilereviction_partnership_id_fkey;
       public         postgres    false    277                       1259    70685 &   fki_txbroilereviction_scenario_id_fkey    INDEX     k   CREATE INDEX fki_txbroilereviction_scenario_id_fkey ON public.txbroilereviction USING btree (scenario_id);
 :   DROP INDEX public.fki_txbroilereviction_scenario_id_fkey;
       public         postgres    false    277            �           1259    70686 /   fki_txbroilerproduct_detail_broiler_detail_fkey    INDEX     }   CREATE INDEX fki_txbroilerproduct_detail_broiler_detail_fkey ON public.txbroilerproduct_detail USING btree (broiler_detail);
 C   DROP INDEX public.fki_txbroilerproduct_detail_broiler_detail_fkey;
       public         postgres    false    279            �           1259    70687 "   fki_txbroodermachines_farm_id_fkey    INDEX     b   CREATE INDEX fki_txbroodermachines_farm_id_fkey ON public.txbroodermachine USING btree (farm_id);
 6   DROP INDEX public.fki_txbroodermachines_farm_id_fkey;
       public         postgres    false    281            �           1259    70688 )   fki_txbroodermachines_partnership_id_fkey    INDEX     p   CREATE INDEX fki_txbroodermachines_partnership_id_fkey ON public.txbroodermachine USING btree (partnership_id);
 =   DROP INDEX public.fki_txbroodermachines_partnership_id_fkey;
       public         postgres    false    281            �           1259    70689 !   fki_txeggs_planning_breed_id_fkey    INDEX     a   CREATE INDEX fki_txeggs_planning_breed_id_fkey ON public.txeggs_planning USING btree (breed_id);
 5   DROP INDEX public.fki_txeggs_planning_breed_id_fkey;
       public         postgres    false    284            s           1259    70690    fki_txfattening_breed_id_fkey    INDEX     W   CREATE INDEX fki_txfattening_breed_id_fkey ON public.txbroiler USING btree (breed_id);
 1   DROP INDEX public.fki_txfattening_breed_id_fkey;
       public         postgres    false    275            t           1259    70691 #   fki_txfattening_partnership_id_fkey    INDEX     c   CREATE INDEX fki_txfattening_partnership_id_fkey ON public.txbroiler USING btree (partnership_id);
 7   DROP INDEX public.fki_txfattening_partnership_id_fkey;
       public         postgres    false    275            u           1259    70692     fki_txfattening_scenario_id_fkey    INDEX     ]   CREATE INDEX fki_txfattening_scenario_id_fkey ON public.txbroiler USING btree (scenario_id);
 4   DROP INDEX public.fki_txfattening_scenario_id_fkey;
       public         postgres    false    275            �           1259    70693    fki_txgoals_erp_product_id_fkey    INDEX     ]   CREATE INDEX fki_txgoals_erp_product_id_fkey ON public.txgoals_erp USING btree (product_id);
 3   DROP INDEX public.fki_txgoals_erp_product_id_fkey;
       public         postgres    false    287            �           1259    70694    fki_txholiday_calendar_id_fkey    INDEX     [   CREATE INDEX fki_txholiday_calendar_id_fkey ON public.txholiday USING btree (calendar_id);
 2   DROP INDEX public.fki_txholiday_calendar_id_fkey;
       public         postgres    false    289            �           1259    70695    fki_txhousingway_breed_id_fkey    INDEX     [   CREATE INDEX fki_txhousingway_breed_id_fkey ON public.txhousingway USING btree (breed_id);
 2   DROP INDEX public.fki_txhousingway_breed_id_fkey;
       public         postgres    false    290            �           1259    70696 $   fki_txhousingway_detail_farm_id_fkey    INDEX     g   CREATE INDEX fki_txhousingway_detail_farm_id_fkey ON public.txhousingway_detail USING btree (farm_id);
 8   DROP INDEX public.fki_txhousingway_detail_farm_id_fkey;
       public         postgres    false    291            �           1259    70697 +   fki_txhousingway_detail_housing_way_id_fkey    INDEX     u   CREATE INDEX fki_txhousingway_detail_housing_way_id_fkey ON public.txhousingway_detail USING btree (housing_way_id);
 ?   DROP INDEX public.fki_txhousingway_detail_housing_way_id_fkey;
       public         postgres    false    291            �           1259    70698 $   fki_txhousingway_detail_shed_id_fkey    INDEX     g   CREATE INDEX fki_txhousingway_detail_shed_id_fkey ON public.txhousingway_detail USING btree (shed_id);
 8   DROP INDEX public.fki_txhousingway_detail_shed_id_fkey;
       public         postgres    false    291            �           1259    70699 $   fki_txhousingway_partnership_id_fkey    INDEX     g   CREATE INDEX fki_txhousingway_partnership_id_fkey ON public.txhousingway USING btree (partnership_id);
 8   DROP INDEX public.fki_txhousingway_partnership_id_fkey;
       public         postgres    false    290            �           1259    70700 !   fki_txhousingway_scenario_id_fkey    INDEX     a   CREATE INDEX fki_txhousingway_scenario_id_fkey ON public.txhousingway USING btree (scenario_id);
 5   DROP INDEX public.fki_txhousingway_scenario_id_fkey;
       public         postgres    false    290            �           1259    70701    fki_txlot_farm_id_fkey    INDEX     K   CREATE INDEX fki_txlot_farm_id_fkey ON public.txlot USING btree (farm_id);
 *   DROP INDEX public.fki_txlot_farm_id_fkey;
       public         postgres    false    292            �           1259    70702    fki_txlot_housin_way_id_fkey    INDEX     X   CREATE INDEX fki_txlot_housin_way_id_fkey ON public.txlot USING btree (housing_way_id);
 0   DROP INDEX public.fki_txlot_housin_way_id_fkey;
       public         postgres    false    292            �           1259    70703     fki_txposturecurve_breed_id_fkey    INDEX     _   CREATE INDEX fki_txposturecurve_breed_id_fkey ON public.txposturecurve USING btree (breed_id);
 4   DROP INDEX public.fki_txposturecurve_breed_id_fkey;
       public         postgres    false    294            �           1259    70704 #   fki_txprogrammed_eggs_breed_id_fkey    INDEX     e   CREATE INDEX fki_txprogrammed_eggs_breed_id_fkey ON public.txprogrammed_eggs USING btree (breed_id);
 7   DROP INDEX public.fki_txprogrammed_eggs_breed_id_fkey;
       public         postgres    false    295            �           1259    70705 *   fki_txprogrammed_eggs_eggs_storage_id_fkey    INDEX     s   CREATE INDEX fki_txprogrammed_eggs_eggs_storage_id_fkey ON public.txprogrammed_eggs USING btree (eggs_storage_id);
 >   DROP INDEX public.fki_txprogrammed_eggs_eggs_storage_id_fkey;
       public         postgres    false    295            �           1259    70706 '   fki_txprogrammed_eggs_incubator_id_fkey    INDEX     m   CREATE INDEX fki_txprogrammed_eggs_incubator_id_fkey ON public.txprogrammed_eggs USING btree (incubator_id);
 ;   DROP INDEX public.fki_txprogrammed_eggs_incubator_id_fkey;
       public         postgres    false    295            �           1259    70707 %   fki_txscenarioformula_measure_id_fkey    INDEX     i   CREATE INDEX fki_txscenarioformula_measure_id_fkey ON public.txscenarioformula USING btree (measure_id);
 9   DROP INDEX public.fki_txscenarioformula_measure_id_fkey;
       public         postgres    false    296            �           1259    70708 '   fki_txscenarioformula_parameter_id_fkey    INDEX     m   CREATE INDEX fki_txscenarioformula_parameter_id_fkey ON public.txscenarioformula USING btree (parameter_id);
 ;   DROP INDEX public.fki_txscenarioformula_parameter_id_fkey;
       public         postgres    false    296            �           1259    70709 %   fki_txscenarioformula_process_id_fkey    INDEX     i   CREATE INDEX fki_txscenarioformula_process_id_fkey ON public.txscenarioformula USING btree (process_id);
 9   DROP INDEX public.fki_txscenarioformula_process_id_fkey;
       public         postgres    false    296            �           1259    70710 &   fki_txscenarioformula_scenario_id_fkey    INDEX     k   CREATE INDEX fki_txscenarioformula_scenario_id_fkey ON public.txscenarioformula USING btree (scenario_id);
 :   DROP INDEX public.fki_txscenarioformula_scenario_id_fkey;
       public         postgres    false    296            �           1259    70711    fki_txscenariohen_breed_id_fkey    INDEX     ]   CREATE INDEX fki_txscenariohen_breed_id_fkey ON public.txscenariohen USING btree (breed_id);
 3   DROP INDEX public.fki_txscenariohen_breed_id_fkey;
       public         postgres    false    297            �           1259    70712 "   fki_txscenariohen_scenario_id_fkey    INDEX     c   CREATE INDEX fki_txscenariohen_scenario_id_fkey ON public.txscenariohen USING btree (scenario_id);
 6   DROP INDEX public.fki_txscenariohen_scenario_id_fkey;
       public         postgres    false    297            �           1259    70713 )   fki_txscenarioparameter_parameter_id_fkey    INDEX     q   CREATE INDEX fki_txscenarioparameter_parameter_id_fkey ON public.txscenarioparameter USING btree (parameter_id);
 =   DROP INDEX public.fki_txscenarioparameter_parameter_id_fkey;
       public         postgres    false    298            �           1259    70714 '   fki_txscenarioparameter_process_id_fkey    INDEX     m   CREATE INDEX fki_txscenarioparameter_process_id_fkey ON public.txscenarioparameter USING btree (process_id);
 ;   DROP INDEX public.fki_txscenarioparameter_process_id_fkey;
       public         postgres    false    298            �           1259    70715 (   fki_txscenarioparameter_scenario_id_fkey    INDEX     o   CREATE INDEX fki_txscenarioparameter_scenario_id_fkey ON public.txscenarioparameter USING btree (scenario_id);
 <   DROP INDEX public.fki_txscenarioparameter_scenario_id_fkey;
       public         postgres    false    298            �           1259    70716 (   fki_txscenarioposturecurve_breed_id_fkey    INDEX     o   CREATE INDEX fki_txscenarioposturecurve_breed_id_fkey ON public.txscenarioposturecurve USING btree (breed_id);
 <   DROP INDEX public.fki_txscenarioposturecurve_breed_id_fkey;
       public         postgres    false    300            �           1259    70717 4   fki_txscenarioposturecurve_housingway_detail_id_fkey    INDEX     �   CREATE INDEX fki_txscenarioposturecurve_housingway_detail_id_fkey ON public.txscenarioposturecurve USING btree (housingway_detail_id);
 H   DROP INDEX public.fki_txscenarioposturecurve_housingway_detail_id_fkey;
       public         postgres    false    300            �           1259    70718 +   fki_txscenarioposturecurve_scenario_id_fkey    INDEX     u   CREATE INDEX fki_txscenarioposturecurve_scenario_id_fkey ON public.txscenarioposturecurve USING btree (scenario_id);
 ?   DROP INDEX public.fki_txscenarioposturecurve_scenario_id_fkey;
       public         postgres    false    300            �           1259    70719 %   fki_txscenarioprocess_process_id_fkey    INDEX     i   CREATE INDEX fki_txscenarioprocess_process_id_fkey ON public.txscenarioprocess USING btree (process_id);
 9   DROP INDEX public.fki_txscenarioprocess_process_id_fkey;
       public         postgres    false    301            �           1259    70720 &   fki_txscenarioprocess_scenario_id_fkey    INDEX     k   CREATE INDEX fki_txscenarioprocess_scenario_id_fkey ON public.txscenarioprocess USING btree (scenario_id);
 :   DROP INDEX public.fki_txscenarioprocess_scenario_id_fkey;
       public         postgres    false    301            �           1259    70721    fki_user_id    INDEX     K   CREATE INDEX fki_user_id ON public.user_application USING btree (user_id);
    DROP INDEX public.fki_user_id;
       public         postgres    false    307            �           1259    70722    posturedate_index    INDEX     [   CREATE INDEX posturedate_index ON public.txscenarioposturecurve USING hash (posture_date);
 %   DROP INDEX public.posturedate_index;
       public         postgres    false    300            �           1259    70723    sequence_index    INDEX     L   CREATE INDEX sequence_index ON public.txcalendarday USING btree (sequence);
 "   DROP INDEX public.sequence_index;
       public         postgres    false    283            8           2606    70724    user_application app_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_application
    ADD CONSTRAINT app_id FOREIGN KEY (application_id) REFERENCES public.application(application_id);
 A   ALTER TABLE ONLY public.user_application DROP CONSTRAINT app_id;
       public       postgres    false    307    197    3093                       2606    70729 +   txcalendarday calendar_day_calendar_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txcalendarday
    ADD CONSTRAINT calendar_day_calendar_id_fkey FOREIGN KEY (calendar_id) REFERENCES public.txcalendar(calendar_id) ON UPDATE CASCADE ON DELETE CASCADE;
 U   ALTER TABLE ONLY public.txcalendarday DROP CONSTRAINT calendar_day_calendar_id_fkey;
       public       postgres    false    282    283    3219            �           2606    70734 '   mdparameter mdparameter_measure_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mdparameter
    ADD CONSTRAINT mdparameter_measure_id_fkey FOREIGN KEY (measure_id) REFERENCES public.mdmeasure(measure_id) ON UPDATE CASCADE ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.mdparameter DROP CONSTRAINT mdparameter_measure_id_fkey;
       public       postgres    false    236    3109    234            �           2606    70739 '   mdparameter mdparameter_process_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mdparameter
    ADD CONSTRAINT mdparameter_process_id_fkey FOREIGN KEY (process_id) REFERENCES public.mdprocess(process_id) ON UPDATE CASCADE ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.mdparameter DROP CONSTRAINT mdparameter_process_id_fkey;
       public       postgres    false    3120    236    238            �           2606    70744 !   mdprocess mdprocess_breed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mdprocess
    ADD CONSTRAINT mdprocess_breed_id_fkey FOREIGN KEY (breed_id) REFERENCES public.mdbreed(breed_id) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.mdprocess DROP CONSTRAINT mdprocess_breed_id_fkey;
       public       postgres    false    3099    229    238            �           2606    70749 )   mdprocess mdprocess_process_class_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mdprocess
    ADD CONSTRAINT mdprocess_process_class_id_fkey FOREIGN KEY (process_class_id) REFERENCES public.mdprocessclass(process_class_id) ON UPDATE CASCADE ON DELETE CASCADE;
 S   ALTER TABLE ONLY public.mdprocess DROP CONSTRAINT mdprocess_process_class_id_fkey;
       public       postgres    false    3123    238    240            �           2606    70754 .   mdprocessclass mdprocessclass_industry_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mdprocessclass
    ADD CONSTRAINT mdprocessclass_industry_id_fkey FOREIGN KEY (industry_id) REFERENCES public.mdindustry(industry_id) ON UPDATE CASCADE ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.mdprocessclass DROP CONSTRAINT mdprocessclass_industry_id_fkey;
       public       postgres    false    3107    240    232            �           2606    70759    oscenter oscenter_farm_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.oscenter
    ADD CONSTRAINT oscenter_farm_id_fkey FOREIGN KEY (farm_id) REFERENCES public.osfarm(farm_id) ON UPDATE CASCADE ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.oscenter DROP CONSTRAINT oscenter_farm_id_fkey;
       public       postgres    false    3149    251    249            �           2606    70764 8   oscenter_oswarehouse oscenter_oswarehouse_center_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.oscenter_oswarehouse
    ADD CONSTRAINT oscenter_oswarehouse_center_id_fkey FOREIGN KEY (center_id) REFERENCES public.oscenter(center_id) ON UPDATE CASCADE ON DELETE CASCADE;
 b   ALTER TABLE ONLY public.oscenter_oswarehouse DROP CONSTRAINT oscenter_oswarehouse_center_id_fkey;
       public       postgres    false    3139    250    249            �           2606    70769 6   oscenter_oswarehouse oscenter_oswarehouse_farm_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.oscenter_oswarehouse
    ADD CONSTRAINT oscenter_oswarehouse_farm_id_fkey FOREIGN KEY (farm_id) REFERENCES public.osfarm(farm_id) ON UPDATE CASCADE ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.oscenter_oswarehouse DROP CONSTRAINT oscenter_oswarehouse_farm_id_fkey;
       public       postgres    false    3149    251    250            �           2606    70774 =   oscenter_oswarehouse oscenter_oswarehouse_partnership_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.oscenter_oswarehouse
    ADD CONSTRAINT oscenter_oswarehouse_partnership_id_fkey FOREIGN KEY (partnership_id) REFERENCES public.ospartnership(partnership_id) ON UPDATE CASCADE ON DELETE CASCADE;
 g   ALTER TABLE ONLY public.oscenter_oswarehouse DROP CONSTRAINT oscenter_oswarehouse_partnership_id_fkey;
       public       postgres    false    3157    250    255            �           2606    70779 ;   oscenter_oswarehouse oscenter_oswarehouse_warehouse_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.oscenter_oswarehouse
    ADD CONSTRAINT oscenter_oswarehouse_warehouse_id_fkey FOREIGN KEY (warehouse_id) REFERENCES public.oswarehouse(warehouse_id) ON UPDATE CASCADE ON DELETE CASCADE;
 e   ALTER TABLE ONLY public.oscenter_oswarehouse DROP CONSTRAINT oscenter_oswarehouse_warehouse_id_fkey;
       public       postgres    false    250    264    3181            �           2606    70784 %   oscenter oscenter_partnership_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.oscenter
    ADD CONSTRAINT oscenter_partnership_id_fkey FOREIGN KEY (partnership_id) REFERENCES public.ospartnership(partnership_id) ON UPDATE CASCADE ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.oscenter DROP CONSTRAINT oscenter_partnership_id_fkey;
       public       postgres    false    255    3157    249            �           2606    70789    osfarm osfarm_farm_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.osfarm
    ADD CONSTRAINT osfarm_farm_type_id_fkey FOREIGN KEY (farm_type_id) REFERENCES public.mdfarmtype(farm_type_id) ON UPDATE CASCADE ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.osfarm DROP CONSTRAINT osfarm_farm_type_id_fkey;
       public       postgres    false    231    3103    251            �           2606    70794 !   osfarm osfarm_partnership_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.osfarm
    ADD CONSTRAINT osfarm_partnership_id_fkey FOREIGN KEY (partnership_id) REFERENCES public.ospartnership(partnership_id) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.osfarm DROP CONSTRAINT osfarm_partnership_id_fkey;
       public       postgres    false    251    255    3157            �           2606    70799 /   osincubator osincubator_incubator_plant_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.osincubator
    ADD CONSTRAINT osincubator_incubator_plant_id_fkey FOREIGN KEY (incubator_plant_id) REFERENCES public.osincubatorplant(incubator_plant_id) ON UPDATE CASCADE ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.osincubator DROP CONSTRAINT osincubator_incubator_plant_id_fkey;
       public       postgres    false    3155    252    253            �           2606    70804 5   osincubatorplant osincubatorplant_partnership_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.osincubatorplant
    ADD CONSTRAINT osincubatorplant_partnership_id_fkey FOREIGN KEY (partnership_id) REFERENCES public.ospartnership(partnership_id) ON UPDATE CASCADE ON DELETE CASCADE;
 _   ALTER TABLE ONLY public.osincubatorplant DROP CONSTRAINT osincubatorplant_partnership_id_fkey;
       public       postgres    false    255    253    3157            �           2606    70809    osshed osshed_center_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.osshed
    ADD CONSTRAINT osshed_center_id_fkey FOREIGN KEY (center_id) REFERENCES public.oscenter(center_id) ON UPDATE CASCADE ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.osshed DROP CONSTRAINT osshed_center_id_fkey;
       public       postgres    false    257    249    3139            �           2606    70814    osshed osshed_farm_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.osshed
    ADD CONSTRAINT osshed_farm_id_fkey FOREIGN KEY (farm_id) REFERENCES public.osfarm(farm_id) ON UPDATE CASCADE ON DELETE CASCADE;
 D   ALTER TABLE ONLY public.osshed DROP CONSTRAINT osshed_farm_id_fkey;
       public       postgres    false    257    3149    251            �           2606    70819 !   osshed osshed_partnership_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.osshed
    ADD CONSTRAINT osshed_partnership_id_fkey FOREIGN KEY (partnership_id) REFERENCES public.ospartnership(partnership_id) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.osshed DROP CONSTRAINT osshed_partnership_id_fkey;
       public       postgres    false    255    3157    257            �           2606    70824     osshed osshed_statusshed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.osshed
    ADD CONSTRAINT osshed_statusshed_id_fkey FOREIGN KEY (statusshed_id) REFERENCES public.mdshedstatus(shed_status_id) ON UPDATE CASCADE ON DELETE CASCADE;
 J   ALTER TABLE ONLY public.osshed DROP CONSTRAINT osshed_statusshed_id_fkey;
       public       postgres    false    257    3133    246            �           2606    70829    ossilo ossilo_center_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ossilo
    ADD CONSTRAINT ossilo_center_id_fkey FOREIGN KEY (center_id) REFERENCES public.oscenter(center_id) ON UPDATE CASCADE ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.ossilo DROP CONSTRAINT ossilo_center_id_fkey;
       public       postgres    false    259    3139    249            �           2606    70834    ossilo ossilo_farm_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ossilo
    ADD CONSTRAINT ossilo_farm_id_fkey FOREIGN KEY (farm_id) REFERENCES public.osfarm(farm_id) ON UPDATE CASCADE ON DELETE CASCADE;
 D   ALTER TABLE ONLY public.ossilo DROP CONSTRAINT ossilo_farm_id_fkey;
       public       postgres    false    259    3149    251            �           2606    70839 *   ossilo_osshed ossilo_osshed_center_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ossilo_osshed
    ADD CONSTRAINT ossilo_osshed_center_id_fkey FOREIGN KEY (center_id) REFERENCES public.oscenter(center_id) ON UPDATE CASCADE ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.ossilo_osshed DROP CONSTRAINT ossilo_osshed_center_id_fkey;
       public       postgres    false    249    260    3139                        2606    70844 (   ossilo_osshed ossilo_osshed_farm_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ossilo_osshed
    ADD CONSTRAINT ossilo_osshed_farm_id_fkey FOREIGN KEY (farm_id) REFERENCES public.osfarm(farm_id) ON UPDATE CASCADE ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.ossilo_osshed DROP CONSTRAINT ossilo_osshed_farm_id_fkey;
       public       postgres    false    260    251    3149                       2606    70849 /   ossilo_osshed ossilo_osshed_partnership_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ossilo_osshed
    ADD CONSTRAINT ossilo_osshed_partnership_id_fkey FOREIGN KEY (partnership_id) REFERENCES public.ospartnership(partnership_id) ON UPDATE CASCADE ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.ossilo_osshed DROP CONSTRAINT ossilo_osshed_partnership_id_fkey;
       public       postgres    false    260    3157    255                       2606    70854 (   ossilo_osshed ossilo_osshed_shed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ossilo_osshed
    ADD CONSTRAINT ossilo_osshed_shed_id_fkey FOREIGN KEY (shed_id) REFERENCES public.osshed(shed_id) ON UPDATE CASCADE ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.ossilo_osshed DROP CONSTRAINT ossilo_osshed_shed_id_fkey;
       public       postgres    false    257    260    3163                       2606    70859 (   ossilo_osshed ossilo_osshed_silo_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ossilo_osshed
    ADD CONSTRAINT ossilo_osshed_silo_id_fkey FOREIGN KEY (silo_id) REFERENCES public.ossilo(silo_id) ON UPDATE CASCADE ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.ossilo_osshed DROP CONSTRAINT ossilo_osshed_silo_id_fkey;
       public       postgres    false    3168    259    260            �           2606    70864 !   ossilo ossilo_partnership_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ossilo
    ADD CONSTRAINT ossilo_partnership_id_fkey FOREIGN KEY (partnership_id) REFERENCES public.ospartnership(partnership_id) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.ossilo DROP CONSTRAINT ossilo_partnership_id_fkey;
       public       postgres    false    3157    255    259                       2606    70869 $   oswarehouse oswarehouse_farm_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.oswarehouse
    ADD CONSTRAINT oswarehouse_farm_id_fkey FOREIGN KEY (farm_id) REFERENCES public.osfarm(farm_id) ON UPDATE CASCADE ON DELETE CASCADE;
 N   ALTER TABLE ONLY public.oswarehouse DROP CONSTRAINT oswarehouse_farm_id_fkey;
       public       postgres    false    264    251    3149                       2606    70874 +   oswarehouse oswarehouse_partnership_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.oswarehouse
    ADD CONSTRAINT oswarehouse_partnership_id_fkey FOREIGN KEY (partnership_id) REFERENCES public.ospartnership(partnership_id) ON UPDATE CASCADE ON DELETE CASCADE;
 U   ALTER TABLE ONLY public.oswarehouse DROP CONSTRAINT oswarehouse_partnership_id_fkey;
       public       postgres    false    3157    264    255            �           2606    70879 "   mdprocess process_calendar_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mdprocess
    ADD CONSTRAINT process_calendar_id_fkey FOREIGN KEY (calendar_id) REFERENCES public.txcalendar(calendar_id) ON UPDATE CASCADE ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.mdprocess DROP CONSTRAINT process_calendar_id_fkey;
       public       postgres    false    238    282    3219            �           2606    70884 !   mdprocess process_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mdprocess
    ADD CONSTRAINT process_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.mdproduct(product_id) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.mdprocess DROP CONSTRAINT process_product_id_fkey;
       public       postgres    false    238    242    3127            �           2606    70889    mdprocess process_stage_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mdprocess
    ADD CONSTRAINT process_stage_id_fkey FOREIGN KEY (stage_id) REFERENCES public.mdstage(stage_id) ON UPDATE CASCADE ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.mdprocess DROP CONSTRAINT process_stage_id_fkey;
       public       postgres    false    238    248    3135                       2606    70894 5   txavailabilitysheds txavailabilitysheds_lot_code_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txavailabilitysheds
    ADD CONSTRAINT txavailabilitysheds_lot_code_fkey FOREIGN KEY (lot_code) REFERENCES public.txlot(lot_code) ON UPDATE CASCADE ON DELETE CASCADE;
 _   ALTER TABLE ONLY public.txavailabilitysheds DROP CONSTRAINT txavailabilitysheds_lot_code_fkey;
       public       postgres    false    3254    274    292                       2606    70899 4   txavailabilitysheds txavailabilitysheds_shed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txavailabilitysheds
    ADD CONSTRAINT txavailabilitysheds_shed_id_fkey FOREIGN KEY (shed_id) REFERENCES public.osshed(shed_id) ON UPDATE CASCADE ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.txavailabilitysheds DROP CONSTRAINT txavailabilitysheds_shed_id_fkey;
       public       postgres    false    3163    257    274                       2606    70904 1   txbroiler_detail txbroiler_detail_broiler_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroiler_detail
    ADD CONSTRAINT txbroiler_detail_broiler_id_fkey FOREIGN KEY (broiler_id) REFERENCES public.txbroiler(broiler_id) ON UPDATE CASCADE ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.txbroiler_detail DROP CONSTRAINT txbroiler_detail_broiler_id_fkey;
       public       postgres    false    3191    275    276                       2606    70909 .   txbroiler_detail txbroiler_detail_farm_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroiler_detail
    ADD CONSTRAINT txbroiler_detail_farm_id_fkey FOREIGN KEY (farm_id) REFERENCES public.osfarm(farm_id) ON UPDATE CASCADE ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.txbroiler_detail DROP CONSTRAINT txbroiler_detail_farm_id_fkey;
       public       postgres    false    276    3149    251                       2606    70914 .   txbroiler_detail txbroiler_detail_shed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroiler_detail
    ADD CONSTRAINT txbroiler_detail_shed_id_fkey FOREIGN KEY (shed_id) REFERENCES public.osshed(shed_id) ON UPDATE CASCADE ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.txbroiler_detail DROP CONSTRAINT txbroiler_detail_shed_id_fkey;
       public       postgres    false    257    276    3163                       2606    70919 +   txbroiler txbroiler_programmed_eggs_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroiler
    ADD CONSTRAINT txbroiler_programmed_eggs_id_fkey FOREIGN KEY (programmed_eggs_id) REFERENCES public.txprogrammed_eggs(programmed_eggs_id) ON UPDATE CASCADE ON DELETE CASCADE;
 U   ALTER TABLE ONLY public.txbroiler DROP CONSTRAINT txbroiler_programmed_eggs_id_fkey;
       public       postgres    false    275    3266    295                       2606    70924 1   txbroilereviction txbroilereviction_breed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroilereviction
    ADD CONSTRAINT txbroilereviction_breed_id_fkey FOREIGN KEY (breed_id) REFERENCES public.mdbreed(breed_id) ON UPDATE CASCADE ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.txbroilereviction DROP CONSTRAINT txbroilereviction_breed_id_fkey;
       public       postgres    false    277    3099    229                       2606    70929 A   txbroilereviction_detail txbroilereviction_detail_broiler_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroilereviction_detail
    ADD CONSTRAINT txbroilereviction_detail_broiler_id_fkey FOREIGN KEY (broilereviction_id) REFERENCES public.txbroilereviction(broilereviction_id) ON UPDATE CASCADE ON DELETE CASCADE;
 k   ALTER TABLE ONLY public.txbroilereviction_detail DROP CONSTRAINT txbroilereviction_detail_broiler_id_fkey;
       public       postgres    false    278    277    3201                       2606    70934 I   txbroilereviction_detail txbroilereviction_detail_broiler_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroilereviction_detail
    ADD CONSTRAINT txbroilereviction_detail_broiler_product_id_fkey FOREIGN KEY (broiler_product_id) REFERENCES public.mdbroiler_product(broiler_product_id) ON UPDATE CASCADE ON DELETE CASCADE;
 s   ALTER TABLE ONLY public.txbroilereviction_detail DROP CONSTRAINT txbroilereviction_detail_broiler_product_id_fkey;
       public       postgres    false    3101    278    230                       2606    70939 >   txbroilereviction_detail txbroilereviction_detail_farm_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroilereviction_detail
    ADD CONSTRAINT txbroilereviction_detail_farm_id_fkey FOREIGN KEY (farm_id) REFERENCES public.osfarm(farm_id) ON UPDATE CASCADE ON DELETE CASCADE;
 h   ALTER TABLE ONLY public.txbroilereviction_detail DROP CONSTRAINT txbroilereviction_detail_farm_id_fkey;
       public       postgres    false    278    251    3149                       2606    70944 >   txbroilereviction_detail txbroilereviction_detail_shed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroilereviction_detail
    ADD CONSTRAINT txbroilereviction_detail_shed_id_fkey FOREIGN KEY (shed_id) REFERENCES public.osshed(shed_id) ON UPDATE CASCADE ON DELETE CASCADE;
 h   ALTER TABLE ONLY public.txbroilereviction_detail DROP CONSTRAINT txbroilereviction_detail_shed_id_fkey;
       public       postgres    false    278    257    3163                       2606    70949 H   txbroilereviction_detail txbroilereviction_detail_slaughterhouse_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroilereviction_detail
    ADD CONSTRAINT txbroilereviction_detail_slaughterhouse_id_fkey FOREIGN KEY (slaughterhouse_id) REFERENCES public.osslaughterhouse(slaughterhouse_id) ON UPDATE CASCADE ON DELETE CASCADE;
 r   ALTER TABLE ONLY public.txbroilereviction_detail DROP CONSTRAINT txbroilereviction_detail_slaughterhouse_id_fkey;
       public       postgres    false    262    278    3177                       2606    70954 7   txbroilereviction txbroilereviction_partnership_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroilereviction
    ADD CONSTRAINT txbroilereviction_partnership_id_fkey FOREIGN KEY (partnership_id) REFERENCES public.ospartnership(partnership_id) ON UPDATE CASCADE ON DELETE CASCADE;
 a   ALTER TABLE ONLY public.txbroilereviction DROP CONSTRAINT txbroilereviction_partnership_id_fkey;
       public       postgres    false    277    3157    255                       2606    70959 4   txbroilereviction txbroilereviction_scenario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroilereviction
    ADD CONSTRAINT txbroilereviction_scenario_id_fkey FOREIGN KEY (scenario_id) REFERENCES public.mdscenario(scenario_id) ON UPDATE CASCADE ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.txbroilereviction DROP CONSTRAINT txbroilereviction_scenario_id_fkey;
       public       postgres    false    3131    244    277                       2606    70964 C   txbroilerproduct_detail txbroilerproduct_detail_broiler_detail_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroilerproduct_detail
    ADD CONSTRAINT txbroilerproduct_detail_broiler_detail_fkey FOREIGN KEY (broiler_detail) REFERENCES public.txbroiler_detail(broiler_detail_id) ON UPDATE CASCADE ON DELETE CASCADE;
 m   ALTER TABLE ONLY public.txbroilerproduct_detail DROP CONSTRAINT txbroilerproduct_detail_broiler_detail_fkey;
       public       postgres    false    276    3196    279                       2606    70969 /   txbroodermachine txbroodermachines_farm_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroodermachine
    ADD CONSTRAINT txbroodermachines_farm_id_fkey FOREIGN KEY (farm_id) REFERENCES public.osfarm(farm_id) ON UPDATE CASCADE ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.txbroodermachine DROP CONSTRAINT txbroodermachines_farm_id_fkey;
       public       postgres    false    251    281    3149                       2606    70974 6   txbroodermachine txbroodermachines_partnership_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroodermachine
    ADD CONSTRAINT txbroodermachines_partnership_id_fkey FOREIGN KEY (partnership_id) REFERENCES public.ospartnership(partnership_id) ON UPDATE CASCADE ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.txbroodermachine DROP CONSTRAINT txbroodermachines_partnership_id_fkey;
       public       postgres    false    281    3157    255                       2606    70979 -   txeggs_planning txeggs_planning_breed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txeggs_planning
    ADD CONSTRAINT txeggs_planning_breed_id_fkey FOREIGN KEY (breed_id) REFERENCES public.mdbreed(breed_id) ON UPDATE CASCADE ON DELETE CASCADE;
 W   ALTER TABLE ONLY public.txeggs_planning DROP CONSTRAINT txeggs_planning_breed_id_fkey;
       public       postgres    false    3099    229    284            	           2606    70984 #   txbroiler txfattening_breed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroiler
    ADD CONSTRAINT txfattening_breed_id_fkey FOREIGN KEY (breed_id) REFERENCES public.mdbreed(breed_id) ON UPDATE CASCADE ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.txbroiler DROP CONSTRAINT txfattening_breed_id_fkey;
       public       postgres    false    275    3099    229            
           2606    70989 )   txbroiler txfattening_partnership_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroiler
    ADD CONSTRAINT txfattening_partnership_id_fkey FOREIGN KEY (partnership_id) REFERENCES public.ospartnership(partnership_id) ON UPDATE CASCADE ON DELETE CASCADE;
 S   ALTER TABLE ONLY public.txbroiler DROP CONSTRAINT txfattening_partnership_id_fkey;
       public       postgres    false    255    3157    275                       2606    70994 &   txbroiler txfattening_scenario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txbroiler
    ADD CONSTRAINT txfattening_scenario_id_fkey FOREIGN KEY (scenario_id) REFERENCES public.mdscenario(scenario_id) ON UPDATE CASCADE ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.txbroiler DROP CONSTRAINT txfattening_scenario_id_fkey;
       public       postgres    false    244    275    3131                       2606    70999 '   txgoals_erp txgoals_erp_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txgoals_erp
    ADD CONSTRAINT txgoals_erp_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.mdproduct(product_id);
 Q   ALTER TABLE ONLY public.txgoals_erp DROP CONSTRAINT txgoals_erp_product_id_fkey;
       public       postgres    false    242    287    3127                       2606    71004 $   txholiday txholiday_calendar_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txholiday
    ADD CONSTRAINT txholiday_calendar_id_fkey FOREIGN KEY (calendar_id) REFERENCES public.txcalendar(calendar_id) ON UPDATE CASCADE ON DELETE CASCADE;
 N   ALTER TABLE ONLY public.txholiday DROP CONSTRAINT txholiday_calendar_id_fkey;
       public       postgres    false    3219    282    289                       2606    71009 '   txhousingway txhousingway_breed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txhousingway
    ADD CONSTRAINT txhousingway_breed_id_fkey FOREIGN KEY (breed_id) REFERENCES public.mdbreed(breed_id) ON UPDATE CASCADE ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.txhousingway DROP CONSTRAINT txhousingway_breed_id_fkey;
       public       postgres    false    290    3099    229            !           2606    71014 4   txhousingway_detail txhousingway_detail_farm_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txhousingway_detail
    ADD CONSTRAINT txhousingway_detail_farm_id_fkey FOREIGN KEY (farm_id) REFERENCES public.osfarm(farm_id) ON UPDATE CASCADE ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.txhousingway_detail DROP CONSTRAINT txhousingway_detail_farm_id_fkey;
       public       postgres    false    3149    251    291            "           2606    71019 ;   txhousingway_detail txhousingway_detail_housing_way_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txhousingway_detail
    ADD CONSTRAINT txhousingway_detail_housing_way_id_fkey FOREIGN KEY (housing_way_id) REFERENCES public.txhousingway(housing_way_id) ON UPDATE CASCADE ON DELETE CASCADE;
 e   ALTER TABLE ONLY public.txhousingway_detail DROP CONSTRAINT txhousingway_detail_housing_way_id_fkey;
       public       postgres    false    3245    290    291            #           2606    71024 4   txhousingway_detail txhousingway_detail_shed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txhousingway_detail
    ADD CONSTRAINT txhousingway_detail_shed_id_fkey FOREIGN KEY (shed_id) REFERENCES public.osshed(shed_id) ON UPDATE CASCADE ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.txhousingway_detail DROP CONSTRAINT txhousingway_detail_shed_id_fkey;
       public       postgres    false    257    3163    291                       2606    71029 -   txhousingway txhousingway_partnership_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txhousingway
    ADD CONSTRAINT txhousingway_partnership_id_fkey FOREIGN KEY (partnership_id) REFERENCES public.ospartnership(partnership_id) ON UPDATE CASCADE ON DELETE CASCADE;
 W   ALTER TABLE ONLY public.txhousingway DROP CONSTRAINT txhousingway_partnership_id_fkey;
       public       postgres    false    255    290    3157                        2606    71034 *   txhousingway txhousingway_scenario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txhousingway
    ADD CONSTRAINT txhousingway_scenario_id_fkey FOREIGN KEY (scenario_id) REFERENCES public.mdscenario(scenario_id) ON UPDATE CASCADE ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.txhousingway DROP CONSTRAINT txhousingway_scenario_id_fkey;
       public       postgres    false    290    244    3131            $           2606    71039    txlot txlot_farm_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txlot
    ADD CONSTRAINT txlot_farm_id_fkey FOREIGN KEY (farm_id) REFERENCES public.osfarm(farm_id) ON UPDATE CASCADE ON DELETE CASCADE;
 B   ALTER TABLE ONLY public.txlot DROP CONSTRAINT txlot_farm_id_fkey;
       public       postgres    false    292    3149    251            %           2606    71044    txlot txlot_housing_way_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txlot
    ADD CONSTRAINT txlot_housing_way_id_fkey FOREIGN KEY (housing_way_id) REFERENCES public.txhousingway(housing_way_id) ON UPDATE CASCADE ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.txlot DROP CONSTRAINT txlot_housing_way_id_fkey;
       public       postgres    false    290    3245    292            &           2606    71049 +   txposturecurve txposturecurve_breed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txposturecurve
    ADD CONSTRAINT txposturecurve_breed_id_fkey FOREIGN KEY (breed_id) REFERENCES public.mdbreed(breed_id) ON UPDATE CASCADE ON DELETE CASCADE;
 U   ALTER TABLE ONLY public.txposturecurve DROP CONSTRAINT txposturecurve_breed_id_fkey;
       public       postgres    false    229    294    3099            '           2606    71054 1   txprogrammed_eggs txprogrammed_eggs_breed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txprogrammed_eggs
    ADD CONSTRAINT txprogrammed_eggs_breed_id_fkey FOREIGN KEY (breed_id) REFERENCES public.mdbreed(breed_id) ON UPDATE CASCADE ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.txprogrammed_eggs DROP CONSTRAINT txprogrammed_eggs_breed_id_fkey;
       public       postgres    false    295    3099    229            (           2606    71059 8   txprogrammed_eggs txprogrammed_eggs_eggs_storage_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txprogrammed_eggs
    ADD CONSTRAINT txprogrammed_eggs_eggs_storage_id_fkey FOREIGN KEY (eggs_storage_id) REFERENCES public.txeggs_storage(eggs_storage_id) ON UPDATE CASCADE ON DELETE CASCADE;
 b   ALTER TABLE ONLY public.txprogrammed_eggs DROP CONSTRAINT txprogrammed_eggs_eggs_storage_id_fkey;
       public       postgres    false    286    3232    295            )           2606    71064 5   txprogrammed_eggs txprogrammed_eggs_incubator_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txprogrammed_eggs
    ADD CONSTRAINT txprogrammed_eggs_incubator_id_fkey FOREIGN KEY (incubator_id) REFERENCES public.osincubator(incubator_id) ON UPDATE CASCADE ON DELETE CASCADE;
 _   ALTER TABLE ONLY public.txprogrammed_eggs DROP CONSTRAINT txprogrammed_eggs_incubator_id_fkey;
       public       postgres    false    252    3152    295            *           2606    71069 3   txscenarioformula txscenarioformula_measure_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txscenarioformula
    ADD CONSTRAINT txscenarioformula_measure_id_fkey FOREIGN KEY (measure_id) REFERENCES public.mdmeasure(measure_id) ON UPDATE CASCADE ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public.txscenarioformula DROP CONSTRAINT txscenarioformula_measure_id_fkey;
       public       postgres    false    234    296    3109            +           2606    71074 5   txscenarioformula txscenarioformula_parameter_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txscenarioformula
    ADD CONSTRAINT txscenarioformula_parameter_id_fkey FOREIGN KEY (parameter_id) REFERENCES public.mdparameter(parameter_id) ON UPDATE CASCADE ON DELETE CASCADE;
 _   ALTER TABLE ONLY public.txscenarioformula DROP CONSTRAINT txscenarioformula_parameter_id_fkey;
       public       postgres    false    3113    296    236            ,           2606    71079 3   txscenarioformula txscenarioformula_process_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txscenarioformula
    ADD CONSTRAINT txscenarioformula_process_id_fkey FOREIGN KEY (process_id) REFERENCES public.mdprocess(process_id) ON UPDATE CASCADE;
 ]   ALTER TABLE ONLY public.txscenarioformula DROP CONSTRAINT txscenarioformula_process_id_fkey;
       public       postgres    false    296    238    3120            -           2606    71084 4   txscenarioformula txscenarioformula_scenario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txscenarioformula
    ADD CONSTRAINT txscenarioformula_scenario_id_fkey FOREIGN KEY (scenario_id) REFERENCES public.mdscenario(scenario_id) ON UPDATE CASCADE ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.txscenarioformula DROP CONSTRAINT txscenarioformula_scenario_id_fkey;
       public       postgres    false    244    3131    296            .           2606    71089 )   txscenariohen txscenariohen_breed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txscenariohen
    ADD CONSTRAINT txscenariohen_breed_id_fkey FOREIGN KEY (breed_id) REFERENCES public.mdbreed(breed_id) ON UPDATE CASCADE ON DELETE CASCADE;
 S   ALTER TABLE ONLY public.txscenariohen DROP CONSTRAINT txscenariohen_breed_id_fkey;
       public       postgres    false    297    3099    229            /           2606    71094 ,   txscenariohen txscenariohen_scenario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txscenariohen
    ADD CONSTRAINT txscenariohen_scenario_id_fkey FOREIGN KEY (scenario_id) REFERENCES public.mdscenario(scenario_id) ON UPDATE CASCADE ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.txscenariohen DROP CONSTRAINT txscenariohen_scenario_id_fkey;
       public       postgres    false    244    297    3131            0           2606    71099 9   txscenarioparameter txscenarioparameter_parameter_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txscenarioparameter
    ADD CONSTRAINT txscenarioparameter_parameter_id_fkey FOREIGN KEY (parameter_id) REFERENCES public.mdparameter(parameter_id) ON UPDATE CASCADE ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.txscenarioparameter DROP CONSTRAINT txscenarioparameter_parameter_id_fkey;
       public       postgres    false    236    298    3113            1           2606    71104 7   txscenarioparameter txscenarioparameter_process_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txscenarioparameter
    ADD CONSTRAINT txscenarioparameter_process_id_fkey FOREIGN KEY (process_id) REFERENCES public.mdprocess(process_id) ON UPDATE CASCADE ON DELETE CASCADE;
 a   ALTER TABLE ONLY public.txscenarioparameter DROP CONSTRAINT txscenarioparameter_process_id_fkey;
       public       postgres    false    3120    238    298            2           2606    71109 8   txscenarioparameter txscenarioparameter_scenario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txscenarioparameter
    ADD CONSTRAINT txscenarioparameter_scenario_id_fkey FOREIGN KEY (scenario_id) REFERENCES public.mdscenario(scenario_id) ON UPDATE CASCADE ON DELETE CASCADE;
 b   ALTER TABLE ONLY public.txscenarioparameter DROP CONSTRAINT txscenarioparameter_scenario_id_fkey;
       public       postgres    false    298    3131    244            3           2606    71114 ;   txscenarioposturecurve txscenarioposturecurve_breed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txscenarioposturecurve
    ADD CONSTRAINT txscenarioposturecurve_breed_id_fkey FOREIGN KEY (breed_id) REFERENCES public.mdbreed(breed_id) ON UPDATE CASCADE ON DELETE CASCADE;
 e   ALTER TABLE ONLY public.txscenarioposturecurve DROP CONSTRAINT txscenarioposturecurve_breed_id_fkey;
       public       postgres    false    300    3099    229            4           2606    71119 G   txscenarioposturecurve txscenarioposturecurve_housingway_detail_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txscenarioposturecurve
    ADD CONSTRAINT txscenarioposturecurve_housingway_detail_id_fkey FOREIGN KEY (housingway_detail_id) REFERENCES public.txhousingway_detail(housingway_detail_id) ON UPDATE CASCADE ON DELETE CASCADE;
 q   ALTER TABLE ONLY public.txscenarioposturecurve DROP CONSTRAINT txscenarioposturecurve_housingway_detail_id_fkey;
       public       postgres    false    300    3250    291            5           2606    71124 >   txscenarioposturecurve txscenarioposturecurve_scenario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txscenarioposturecurve
    ADD CONSTRAINT txscenarioposturecurve_scenario_id_fkey FOREIGN KEY (scenario_id) REFERENCES public.mdscenario(scenario_id) ON UPDATE CASCADE ON DELETE CASCADE;
 h   ALTER TABLE ONLY public.txscenarioposturecurve DROP CONSTRAINT txscenarioposturecurve_scenario_id_fkey;
       public       postgres    false    300    3131    244            6           2606    71129 3   txscenarioprocess txscenarioprocess_process_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txscenarioprocess
    ADD CONSTRAINT txscenarioprocess_process_id_fkey FOREIGN KEY (process_id) REFERENCES public.mdprocess(process_id) ON UPDATE CASCADE ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public.txscenarioprocess DROP CONSTRAINT txscenarioprocess_process_id_fkey;
       public       postgres    false    301    238    3120            7           2606    71134 4   txscenarioprocess txscenarioprocess_scenario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.txscenarioprocess
    ADD CONSTRAINT txscenarioprocess_scenario_id_fkey FOREIGN KEY (scenario_id) REFERENCES public.mdscenario(scenario_id) ON UPDATE CASCADE ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.txscenarioprocess DROP CONSTRAINT txscenarioprocess_scenario_id_fkey;
       public       postgres    false    301    3131    244            9           2606    71139    user_application user_id    FK CONSTRAINT     }   ALTER TABLE ONLY public.user_application
    ADD CONSTRAINT user_id FOREIGN KEY (user_id) REFERENCES public."user"(user_id);
 B   ALTER TABLE ONLY public.user_application DROP CONSTRAINT user_id;
       public       postgres    false    307    3297    303            �   �   x�e�1O�@�g翀rI�*�H3�������|w���sU=������L�If4Vh�����V-x>�#�Y�ѣH��`4�B�(��W&��@a"��
�Y{��~���1�FЕA;8�۴/��({�p%�˔N�n�s%r�f�n<EVהz)�(�К�W��<�,��V�i��Uμ$ÿ�;��0#��A�s%���\�����bY�&p������o�Z�����Ǫ�~ 1��}      �   E   x�3�4204�54 "+0�50s����\� I]C B�nR�K�و�Ɣh����� 2*�      �   ,   x�34�200��/.�24q�8�󓒸�AcN�=... ��C      �   �   x�e�1�0D�z�� �]��27�Ґ�!��K���O.�j��gI{�.�+͝yp*��L�(�� �26�Q�Z\���QB#
�����u�l��O��Aa�j��58p�aGpx��(�0a�B>�TB��/!��!\�w�XB��	��M�7�0>l      �   9   x�3�J-(�O)MN�<�9�ˈ�5/=�(%�˘�'�,1�$U�R�����D�=... �6>      �      x�3���K)-.)�LT0����� 9V�      �      x�3�tIMK,�)���4�4����� A��      �   �   x���M� �5�bN`�F��q���ʹ���R�z+O��-�6�!)K��0��Z)'m-<Z� .�f��# 
k��j/jq����Jr$	ٲa��>�l��.�%r>��$$�%l�+��4���Sx�	S	���d�[�D�Q�e�5��|
{��>�N{,�~űt�ӏ�f�n���)R�!MHT0&�qw�eE)� ]��B      �   3  x����N�0�ׇ��' ���kc�F7�v�ILk��|1o�hb�P�HS��|�b����h.M��	�ùӰ�Ah">[<�c?�C�ɇxxie5��7%���u��Z��55���N�jR��O����)�?~~N`\^s-�Ke|��k��Z���Xnc�n���\�+��`�����}e���>�s��`�P딝��i��슐����.�Bٗ)��r���[C��P2�,z^�鐶���XL��ٲX�¬�py�`���W�r�	�ץ?A�#��6U�uUU_��U      �   F   x�3�t�K�/JI�4�2���K.MJL�<�9�7�J-(�O)M���r:^��P���Z��W����� =�s      �   v   x�-̻� ��>�O`��Rf�a$�N&n&����p`�z��j���ML-�7�¤[ ] �Ùr&�&2��M��0���$�/'�I8z! �Ђ	 �~6q����z�@Ҋ"�@�HD?�0�      �   :   x�34��(*MMJ�4204�54�50T02�2 !]�����1�0D��!�!W� F�      �   �   x�}�M�@���N�	����wz7e��fl'��#��(���}}/msWHM��E�(���]X��a���U�9z1���3y��c���^���kj�㓝�U:���DG҆Uޏ��qmܓ��l���oҫC@>M|�R�t�p� x ��l#      �   N   x�3�4�t�K�/JI�2�4���K.MJL����2�4�J-(�O)M.�/J,�2�4�t.:�6Q�R�'�,1�$�+F��� ۏ�      �   �   x�u�1� ��N�	JiGw�`Wjj��h=�Gpu�bOj��䍿��=�H �j���e���fb���}�s"@�@AT	��d�HE�5R�Ѓ	w5$GQ�E�Dh`e��ۑ�4zkr)*�J,�h���/��"�I�!��JH��;�?�dx����~ r�\�      �      x������ � �      �   T  x���=n�@�z8Ş b�w	��Ǝ"�Z�C���pn���r.��d֒�����0o�b��!O}�瑺��:U6Ms�|vpxy�z� ��C��;�3�x>{��'��E��z�k/��Đ빟T�(Mj3��Ch���LPfR;�/!+qk{�oL�O��bw��� )1u7p��_
�\$�B)e�F���o0���]y��[8�<n1D�h�WM}֏�q�``���L2�	�6�����
����B0������r�Z�B\R���D=�j�qa`
I⩴
7fP4�\myn%�KqQ�
������V��.�w'"f��o3������l�'��~ �h9�      �   *  x���MJ1��ur�>��*�}g9kA�Յg�F�ۛP��CH�f���{����j��}��#s�����Ǿ=_߷c��d(��L{����`�u��x�Ͱ�u����P�A�]a�6j���6�mRo�mO����}�K�=±��WC���� �<^ �A��"�<��/a}B 	0�Ad� �t@A�0�A��D5 �Hz K$ �,�X���Dj%�Y�G؀%R`� X"E� �%R`� X"e� �%R`� Xb�߀q=�Dv�;  Kd`Uw��oR��      �   5   x�3����K.MJL�/JTp�,.)J,K-��40D�HIE�36�4�4����� �oN      �   M   x�36�t�,.)�L*�L�/JTp,;�69?'Q!X�Q/X�ө49�(171/=QG�9?'?7)3�NC(t50����� W��      �   `   x���A
�@���0�ө����91P��/��a����؊�м��#Ԍ����x ��r	��G؞p���m�a�f>,/�M"r�Hb      �      x������ � �      �      x������ � �      �   [   x�36��I�+ITHIUpJ�KM�L��Wp�Qp�L�J�r:�&'���:
��9��I��Xu9.��%E�e�Ŝ�P�d`�ij \1z\\\ {�"�      �      x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �      	   �   x���M
� ��x
OPT��.�Ю��4�n& �K�}#�(����͓p�hԨ:�54�[MKl��Vᣲ��4Յ���K��H�����Il%N����eJB�8K9��y�)K�q���|fd
/7-�Q�q��/�4��qp
{��>ũd|r�y�G����B��nm�o�}��!��נ{      
      x�}]ݑt;n{���	���r�����;M�(,q�ʵn��C�lj��?��ԧ�?��O������������O�y��������?�_��C8M�ן�S�NW8����4ǩ�3�x��8�q�L�3�p�/�p�N8K�7���3g�){�Y�8�q&�l���>�ܻ9κqʣp����~��	Tހ>7���� ��������z���uioH��/.�E?�HY��������^$�"�]��Gť�H�EJ�̷����^$�"�]��� ��ɻHy{Cr��	�H�����*p�/�x������5�H�Uj��7��
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
]�,���iQ�n��-�zl��hfIv�[�%��=�ѠL��B� K�}:����p�nA��c�tF��_p�nA��cuF��_p�K�Ϋ��Pɾ�J���9�!���&�&��;8/{f�omWp���'�?`��[|�\fX����o��\@���(���h�nt2���'ލ�@�x�3�}�s��Fw �Q��)�Z���:]�F��gF��^p�nA��(�A pǻ�-�`T#�P���t2�F	�[��-t��j����#�A� �Q�`�Р��=�d?�F?/W���{�����׿�XF{�            x������ � �         m  x�u�i�&!
��}�	A������%����VO�T&�V_���3Z_�N�� �韾z��'�����~.�m�D�=H�4!6��'�EA�G�5�� �Y�)�u֏+i,zfӟ2�l��ߪc:i2�Gc6'�?+��̲ �(�M���>�Qi�`z�є�� �H�B��ӉTEy�`UA���UOis�aUNY�ym@��)�ǌ��W1�L,��Q�lW�TT�F�0��2�I�:�#�,cX��<:�[l�|��I��G�>��M���	��EƎhY=@�2v"`T=��*c�����U�.�� �2b�
 UFĉP��\UF���J=y��9؋��92��Tr��(I;ǥi��R�B�vqj�cB�J���T�J��h�I%�A,���㣭��R�q���R���ِOVr�W�Ϣ�)����_����qy$�9���7��
zs���7�G�V�9Ы�7�F��8 U-o��*��q �J��Gț�c�1|b*��Vd��IN�� �� =e܀x)#�b�A)#ԙLG��
�S��S I-����G��2�Tb�,n)# �4�,B�,2����sd\�B^��M<6�W���&��G����GF�: UƎba�*c�9kh�#:� Ve��v���T�j-@�2�1F;`Tw^�7�GF��u�|d$s+�9?2�y�m ��h�UED�6��Z5DA���V%�[k̳ZU�j��
�,k��Q�Sj-�_T�S뻟����vD�~�U<[�גG;�f����t�e��p�E;�69������yct�׾��}���h����D|� #%/���M(E�x� 3e�c��&�B�ts�A$��1�+^�k��ف������{:�������[�F�Hh1�����#}������I:1�,i:���V�i���Ƒ^+|����!v�p���v@u�[{H�V8���׊M�[?��{��u2�NV!|��{r��{+�� Q�����)���w/�
��d�F��A��m�lT�% ��F2%@6*H�q@6*��Q��F�uш�lT�@�d�ڻT� ٨�Z<ջ8�F��N=cz�����N!�йTZ(��%�s��n��a:7�x��w���FiqQ��HiqQ<�F�t��5J��۳���F\!G�Y�R����t�3�p]��Uw��(8
�?GK�.γ�&�����T&��f��R꒦�Kg��g:N�s� �;v|��\A�.|qv��⌽8۫\�謒���K��l���㴳$;��r�K�X��a��d�ݻ�M1�^����xvٿ/m���WI ��ȱ��1��K,
��q��	�J��	���V>��u���"�⢕�ES����6�.Z~+r�.Z~*r�BZ~)r�BZ~(�#���߉�������>�E�_�kˏD����7�guԝ�����q���Em�.j��m��%��f�K�t[�����p��f�k3"�;�t3'}^RڙO��=R���1�C�&��m�緅�ќ�	����ǐiۤ��-��7�45'�Ƿ����:��AFmk@������W�Q�+�(�͵��G�1�p!���	?&!@�DH���N�Ѫ&!��Χ�$����&VM�ݠ�C�U�L���7��$C���&����ޡ�	=&�A�:��|\j�l�}W�L�o�A�	M�?[�O�d�	���&��(�>)���,��S�Rj(J�����x���O&G�& R��f�1�\���qu!��H�D�&�i�U����(��IYu�o��CI \��������b�`��oB�cB\���<��q^�O�KO��m&�ˣA)��[O:���i�,N����Qd���?��$�#&            x������ � �            x������ � �         �  x���Mn�0F��)r�*q�q�l���aQU]uc�U�	?�b�3p�N�I�N���=��f�%,���寉WG{j"�&T,�lq9����[]؝şzS����G{��?Z�6[S4-�r`\�s0UE׼d�u�$s����.��}�?�6��r���A\8�w~���m��ʜ�����Z����lY���N-˺�놎8�ʓT1<�>�6'Sa�yA�bp~�����cYo�Bt�߹TH/�/�݉[RR���٭��UM��ͱmm}@=��֤"&hM攇�I�Y2�|$n��B��_�#���l����`�] ��W���
PT�W9��*@T���*T��*w�<�Be�Pb<Jՠ
�;��7�Kr?ɻ�Ɔ�U�����H��HPH��$ hD�2�Ĝ�;�z̉�Uu|H��W+�Xj�z���`ڞm            x������ � �            x������ � �            x������ � �            x������ � �         �  x���A�!E��a� 		\�3�u�;�/$�%3�~�+�NH�G�*������O��~�����&+<6�O�����L��ga�07�����eɭ�,�Z��
s�]��Gsa
X�,ee��$�5aI�I3�ɰ$+�]���kaM�Q�nw���,�SEiH-���$��D�P!X�"�Q���&�jk����j�YW2mFx�}IB�>��L�^���?ix=U#��^�
�$��vCN8�鵳aܨ�H
X��M&�����{Rc_9�����@�2�Չ��[���G9m���g9]0Ej-�	�k+�m��E�N�s��[�̷.r����]H�uH�����OWz�z&<Xս�*}Ƨ�%c��+�N�`�s�W�����:羄���v���Vֆ�Y0rG��J���.T��;�ᬆ�V�0l��[i�c�,���tG�+����W���[h�у�Q�GvG�0W�~qG9]0���q��4x�K�~����X�ʅc�����t9��Y�_�C9�:��ӕ��0<�&��tkt��Lq�m��ݘ�M�0��5/��i�@��������{���qX�:W�������U�=-��~6�$�������+%��$�K}rK^�{k��t�	��l�W�ڰ���-���0��][;_ri�-s1��[Xl�w���I�9l0��؆GG��pچg�9��l�T�F8��W���H�m�нR(�fo�"N�7�JB�4˿���i;ܑL��iO�e8m��|�p��VBa��e*y�),fo�!s�TbRֿ��؆᧴��F2�m����bf�i��6,�ِ���p�2my��s][�U��um9�U\[^l���|��Tĵ��Bw{ז��%��kk;�3����Շ������T��1            x������ � �         �   x���M� F��0P������U26.�n��R|%�܀��~i<_Db�`m��Ӹ=������\@��,-�P�
(o�"8��J�`>k������x���bЙg�����SF�l�rO�q����bЙ��ܥ��m�~�ROÕ��O����O+�{=<�F���'G�������+O����i� ����٠Ў�ZФE�G�<�j�9��mN,o���K����������            x������ � �         �  x�}�]�!�������^��u�;3E�S�._Ц�A�2��6�q�ը����F�C��=(E��)�9*��hڋ̜��̖��̳miJEfI�w�����R����gVR��)���)�����MG�y��;���+��mSS-2�}g)������5Ү�� ��d���5|d���xt/�����4��t�����ugDf��#\zUt#x�Xz��H�y��D���
��E}�H'9[C�,%y���9�����U��
1���p�#��ՇQ�*��������恘o�+�;*�#�f��an�
l#���Ď
�16-V��U#F�J�Ry{�D0���lU���Ob��*l]�����=���m�@�����CnB�;����6b�{	�T�����%Y���TF�w.a=�!g��9*L��E�S9��-A�*�{*�G�q\6���Ir!v+˜�/T����0uv���T�d�K!�p���86�F��+����'Bڦ,�B�K��ls�pG�G�զB��h!����1�b���%�;%��n�b�����W�S�jω�gp��B��*f�\�!�#&8sD@!o	x|D�7��7�?�B�g�>��Fh�!R��1�b���%�;%��n�t��7uD8���o�-�?��\�Z!�Cޢ4
h#�w��y��3B���}�h"dw�%��)�%���$՜��O��z��#��F�+l)bRa>/�F�bZa6�f][F�]b1�0����$�P�`�|��x\��+6&��s�T��+6�ٵ�u���ZgӁX�:ۀf�����F�h촧'���ң9?1M��B�hXѲ�0��-��D�޲؀�ъ+ִ#t�bMB�+��V\	����t2�ݯp�Xy��2b��QC�8�������x�P            x����-)���~���;����͝�XGij��ٵL:�&������������}�s1�d?�����3�?�s�?�p�C���ˀ��/�̀�� �l�+,F�f�i	CL3Ĉ�ă1�r��	J���`�����i�o0����봄�Q�p`��_�Q�t�����A�(s�G����0�b���eq��R���0��촆	iRsJ��G�T�|<��$6a�x�jF�o>���k������k���1��K�hW2��*�o�(��ǯ��/C���i��a�9>r�fT)����#J����e�����e��v��9����[V*�z�F'or�S���`߳u�ˀ¡g넽r���*{�n��G8�l��0�tٺ�3D3i�F��l���Z~�� ��ᛴٺ��o�vd�F�{ Mm�;�I�vڏl��r�`����E[s�����#[7��#����-�"��R�����z¥ۃ��ݒDF:!l���a����C���F���wڍB`�����gh0F�=z��(6�>z��(6�?^�:ز�Z����k��<
��Ώצ�e[B}�צ�2�Y���{[�9�������a��������a����@��3\���b�嗹�9N8\��wn��x-���ͤ�Sw�Z���1:��X{Wp�&]��������������s��k~o�b!���k~/Yp�a���yL�I����.���ǫ��.�)��t���w�t:_U����ݝ.W�{���:�甆����hsUQާ��n���(����[�wUQ>���w�_U��~�W��}�d�wǫk��?^�F��k�>>^�F�k�>?�e���5���ϲE��k���ϲ���|������V���7����!��i��W{�*<66��#<6,q��7Oxll��Yp�876zF萞=CH���.8z�NsC`����g�X��!����N���� vznlt�GкJ���.�vzn,:�{;=76��#��ԫ�-�����,I�W�Ͻ��Wۃ�����g���7،�a��㥩9�M4���i�U�F��k�h?���9~����$�2�{�:�����N��8mt�G��y,N��l9��X�����l�4�����N��8m��G�}���Z�j����k���(����Z}.�_{�������R���V/�,�}��^�/3�����1!}��Rp���]�{�5|�o��^k��ߤ����{ ������t�`����{;}�c�������G��J�{���{;}��z� Ȟ���Z}��͵����'|��zy�kFs���"A����Z}�w�t��k�%�9�2��{��������>{�H�����;G:}﵆/>r�f���Z×9Ri{���#��{�5�x�j��{�5�x���l2L��!�X6S<~G��p��!H ���X6�?8 ���!���'���!����ic=�Z7z��v�U6gp�&m��!8w������^�F�{ ;���!�t�`��U6W��t�ʆ��=�6T:^eC���N��l>�#��Y�� G��]�3�8`�aG�w��RJ�O�;�[�Ȃ��`��Ց)RJ7w0D�)��pud�}�it�:���#E���,8�x��`�#.>^�F��#.?^�J��F�{[B��F��=���WG��G��� �W:Hj�P	� q��wLxL�f�ህ@�_���8�l���Q*}��!��it��hm'];�"-�U�Jo������8wD�ޅh�����M��.D�w�I��]�&{�I��]�&?�NǻM��V��(�R��H֘��
>��eI�����ݏ����+{?��B��w�&T�����G7��ZCH�_��j�<~v��Ց��=^�Fǻƍ掲%����8�;�:��7�;�:]�7��w7:w��=�-Y��k�d��k����k��l/���A8�e�!�D\���wt8^��ϟ�oY��5g?`�p�s;�A�˝�y����Sc�1�I�:�zb	�,�o�����q�&��l-�@[G[�Ε�%�#��pek��{;�l���G�������{m��7b��/�#���dH	�l	����$䝆'|}��`��>Iy�5��>Iy�� ;|�9�)����d��NM(��O���;E:��;E:��;E:]�G����e)�i��*���{;m��$~��J��"�_x�d��WE��x��}�2�����ؾE�r����WG�$lߢ�vglߢ�Q��<��[4q�	`�̰}�fFh'mꃱ�^�W�O���^�1�_�c��`7`��8���ʄõ�e���#���K4�~.�N����L������L�˵�mx<�:�z`����N�k�%�r�`������G��J�k�%:w�`����]�G����{�.�#��xm6D�=Ƥ����7��ǘ4:_���GV�,�fC��U���7�͏�j��6��Y�h{m6Dg�j#�ݵ���G����l�.�#��5n�a��_b�z[�En�f��Un�}���%��X�F&m�+]�:7���s��fb���3 n�J7�hB�^�n�1�z[pwպ1��0v�_�n�1�W�Cy��<��n4���x������|�1<���xcz��͟��`��W���C<��+cm��޾���ި��w�4�c�u��~�jv�xa�>�޺�ǫ���{�vOW��}bˮ���7�Ŏ����!>���黊��c;n��7��.5�����h�qw׿�?���.�c|�w5wS�+��_�]��U�ؚ�7:]5��}2�/ot����&=~��g=�.W�¤�����&';����]�fB�ޥE^qډ����h��5��wq��5�wu��cM���"��8v<��E1���x�����rW%<��޺|w�Q�c ;~�+�~���r7,�a�|�wǒ�ㇷ�)wˢ/���;��YT�u%@�MK�^	P�<��l_	��Gے�+��[r|%���{4.9�ޤR�G�R�כ��G�R��Mj��w)�1�5���h^J|d��Kɏ��x�j�RwM�w:a���dԩ41�5���Xc��M�!]��H��u*M&m>�1�n[�J�E���H�
�N��]�ث�Hf��wW����q���1�	�Q�͔1���d�c;~�XO�<Ʊ����d�c ;~�YO�=��_�܇֓��l��O�'�����z��1��T�b/���t���
��hK�zth����{���G���W/��R�W0H��/�W/��}�K���&�_�Rq=	����z�jz��j���k��z�d�׋�pw�����@���]#���@v<\�`��1��W/�l~dǓ�����.�d&�֏�����o�K,������2a��uoa�Zy��A`W����E�������Mt���|Aহ<`w\�����B���B��yA�&�<`b��Mhz�f��:������F�E s]� :R��.[��,�\��9�5�\���9X�v\��М01\��<`� p;Uy��n!��U���-��T�����H���ۉ�&V��L�n�)�$"F��l��p;My��fA���S�|�%.���%&٤���`�ǂ����b�ł�v�炉Â�n�炉���~�炉���a�焙���q�炉���i�炉���y�炉���e�炉�B6��9a� ��`b� ��k��"� ��k�b3��������G\�}m_��ogc_�K<�Mcm_0�T8��}���kZ�2������B6�k����I7،�}��NA`;��7��X��/I��X�W/��X�l�k	W�k�����	V`j� l���([`�6
�~���EA`�+05Q��
L=v�S�=��AA� ;5P6B�N��MP�S�a3��=A؂;5O�V{O��y'l�`��	[,ةs��+"j� �Ǌ��&�"��	G���k��	    +"j� pƊ�z&\�"��	��{� ��^�&l�ס~	;�u�]��{� p�^��%�ס^	���~�,�Jv��%N	�}��(![7���2�aG۾Xb� �l�L\r݊��I���m_0�Hx��f	϶}��!A�ٶ/�$<���g۾`b����m���;���m_01G��:`e�F��:`����{�qF6�:`��A�8�_�ӨLlΣXp~�$.�XO��"d���,�x"lƺ�`b� ��΂�#��n�;��е�~�;+����a�;&vǱ�,��!�{��AX��^��'�B�6�'uB�<���מ'�A���6_{��A�kϓ� |�yR��=Oj� p�:�: |�yR�lӵ�I���<����מ'u?�<������I���=Oj} ,�yR�a�=Oj| ��I}��<��A����_{���@�kϓz|�yR���=O�x ��I��<�߁�מ'�;8C!@��-PP��l�� �:�@!@���XP����@��`�s p�B����.�=���3��@��� �8�����,�����o ��.��롋���袨����(�m l�.�Z�����좨�Av���1_�vQ��@`�]u5�aEM��EQO�vQ��@��]u48aEΰ�S?a���� ;;&��27�����203a�ғz|����@`U���@�pU���@�xU���@�tU���@�|U���@�rU��� ;�]�$�0�\�$�0�BcD�u�Qa�������#j_ l�ƈ�{U�Լ@���_�'�.���EQ���U�2���U�2���U�2���U�2���U�2���U�2���U�2���U�2��δ̰ ���L��
�58�2�a-δ̭@Xw�23+�_�̼
W.3��㕞̩@�t�'3*8_��|
.Wz2�����I]
6��Ԥ@`��I=
v��Ԣ@`���
��L�Ԡ@�G�T��?���ɏ��Q*���;���'?nNP�]Atԛ��!��5A=��Qg�z���z�+�K��� �z�*�J�g���zX*�I������d�^�rG=$y��ܐ@�`����L�2;=�V�en���N����6�������ˬ�\�9�<�J,��s�̇�����A=^�Q�zT�&�,H=�\)�p�z�
���H�+���C� ��3Z�3���!lp�=��{@ ���_�!����Dx���@=,R߁z����dH]�G���ch�D�=��$�9�r@ϬA���D%�9�p@�A���o�7��IS�=���=�	���=>����z���V��Dɝ�aP����y%��gG!Jn3P�A��e@��AY�Mڹ��S�=(u��SlP�p�_'��z�J��z
j��zF���zh���z����z����z
��z$+Xn,�����z�kXn+P��A��U@��B�Mڑ��zn)���`��ztn(��尔�~z���l^"��`������K�r��	�Q<����cĂ�[	��=�����zĒ�	�A?�����â����+(U��@;x��D@jA��=�!���B�ǻ��z��n �������zLn��ư���z�[n��̰���z�n�gҰ���zf�n�Gذ��>��m�x;��z3 LM|�P5���Û��,|�X5�pУ�P5�0ГwP5��Г�P5��ЃzP5�pЃ�P5�0�s}P5��
�s�P5��
�c�P5�p
Ѓ�P5�0
гVP5��	Ѓ�<�	УY`���#��$�����z(ڷz�ڷz�ڷzLڷ� z�ڷ� z�ڷ� zDڷ� zڷ� z�ڷ� zfڷ� z ڷ� ���Nma�*�����5� ���oO��--�eA��O/Uʜ*�p�pe��tZ�bD��g�g�fҦ����c�6�<�,|:�o��a�.� �,��G��c���Ep�v��d�=��~Y�t�`=C�'�.�P��tB���#�-��u�Br��q�����G�l����w�-��u�Br����v�ߝ"�v�ѐ�w�t��>C��)�j�!���N�N��e��;E:�n���=R��v�=��}�H�����l��C|��=��6��Pȏ��&����P�/Y��\��bׇ?����!���0��m;O�g��i���Wr>�	�ڋN3B3iӆ��������9連7i3R{�ߤ�H�.���C�zd�b����i?R{��=��#�7:�#XOn�.�Q�t�`�S��Gi񇌌�����ў��np�F�ø�v���;lF�=��~�����h�x���7ꀍ�����y��F��sl���v���M������=ބF�Ql�}�	�Σ�h�x=/���x�`˨8/���|�`�͵�����;|��pD�.Z��lד$�Ek�v���(f�	F�
��l�/���(a��|%�hL��F)�p�L�'qv:��N���ȟÇ8i{�8|�vW���t�_��~��=��W����G���*0�q�����t�G���*0�I�v�\F�t�F�;ķ�?��$���*��ӝ�W�����p�\w�o�}<�F���ʟ<�F����_|�w}���Ώ�nt�Z�l�Gz7:_-V6��ލ.W����G�=�u��F�{;m�+�|�`���{�����p��o��W|7�ܻ�%^[W|/��k�o�)�^0�	(�ڷ�z���>���]+���Vqӊ���@ܳ�� z�����#�+��'bqÊ� �C؊� �CQ7��㇢n����D�j��;�w���׳��̀��z�?��_O>�����@�`@='��h߯G	�sm��P%~-�]��;ď���#n�����zH?Ж_����������7��Y�bY�������cv	X���s�'˚}=��m���3����[}=��m�������}=�g @���iM�m�m��6����N�m�M��"�6���9P���z���:���w�Ų_�{e`Y�O2�����lDG��z�£�}=H��޾��� ik������w�z��)yc�'������z��)y[������w����9Ҧ^�A�B{z=�	�m����-��׳���І^���C��PV��y=v����yR`���zgt���gO�����������T���דP1�>^ϴB���x=%���DT����P1�^OB��[x=�U5����C��i_OYfֿף�`־ףb`ֽ�s�`ּ�2�xﮇ �/⭻�A���w�z`�"޸�y5�x߮�+�/bm�7��k����3��kct�i�������_������_������_������_����1"�ڣ�~�+�������N���V�J���^�J���=��V��H'�v����4��W�uI'���W��I'�6�WZKeH�������ߖ�
W���=���W'�6�W8����߮�J7��~��+݌N���/t��?����_iSg��~;�+m�|�o��]��O����t��:������̨�����	����J7+��~��+�{���;]�ޑ?���g��o �� ���
 �M��v�ۑ��v#[7z�h&m���[ N�}��ad��= JǑ��p�&�F�nt�д��#[7:�#��2�u��w��8hr��fd�F�{;m{!��Tğ=R�]p���}/���@�����o�p�����w8�B`����;�G!�����k��K����@�~+�I��Co���F��kS��p����4ڍB`���i����P����h{�`K�v7�~�    ,�T�}9�©O��@�ܧ�~_�p��߂�� 2a��N�}A��fL��!@i;���~_����F��P��W}��%
���o��� �c�7�}M�©���o~��p���/
P��W}��7�o
8��UJ��o��� ��x�M.Pڍui�߷(�Ǻ�����c]���}JǱ.m��� ��X�6�}c��y�K�&W(]F���;��w���}i��fL���5@i;&ˍ~_����F��Pڏ�r��}q��atM��9@�8���~_�t����
��P�o���� ���������!���� ������Pxl����ǆ�N�oPzl�t�ћ���hr���cC`�ߗ(=6v�}���cC`���(=6v��#�h?66:�/Pzl���&�m���z_%��kU���so�oU�� ߗ	(Zհ�����j���uJ�^5���>�s�v:?^�F�^5���}����F��~_)����N��P���i�ߗ
(�������#�V�3���
(����{��}q����Jϩ�nnV�}���sj]��j��Ժ����9�N�\.��Z��]@�5�.�}���kj]��~��Ժ��J��u����Ժ��J��u��;�^S�ߗ(���E�o:��u��_	�Q�{�{�;��h@i7&╀��c"^p�'�D�����㘈��l@�4'�E�oP:ωx����.s"^t�s�eT��D������͜���q@�׺��+�vs"^��������9��0'�Q�[��s"^����Ӝ���w@���ؙ`(\z�n����K�k�`r���}�u��w(<�Zw�}���c�u�߷(=�Zw�}���c�u���J��֝~_@���k���J��֝~_A���k�����o�n4��@�׺��[��#[7�}�Ү�[��!P���a�3�8��ˆ���o"P8��a��W(�zٰ��Σl���eJ�Q6lt~�H��m�C_G��e�F��#Pڎ�a��(�Fٰ��	���l���x�Fٰ%��N��(6�})��i����@�1�~�j
��@�1�n��^��ZL.&PxL����@�Y�n��j�gٺ���C�GF-�\N�t����	��#�6�}=��id�F��������	�\P�t���
��7������(D7�}G���3֞R�K
v8��e�럱�����@��k���(�?c�����gպ��
��U�F��*PzV����@h?��-�ޗ(mFհ���
���j���uJ�Q5l������6�}a��aT���@�8��-Y�W(�Fհ��;�Σj����J�Q�~�W�}k���ւ&�(lF�����
�Q�.�}q��nָ�~�\���5��W(f�;irw��qָ�~_^�t�5�߷(�g�����J�Y�.�}������f(mf����J�Y�.�}���nָ�~�a��5����%
�Q�.�}���qԸ+I��(�F����=
�Q�.�}���eָ�~�d t�f����UJ�Y�y�e���5�ߗ(�f����mJ�Y�.�}���aָ�~�g�t�5�J���J�Y�.�}���yָ�~_i�t�F��4��iPK��T���
���&�(l{jo��Z�]O�~�k��墳��#�7�}������>��=�����@�~�c�ߗ(�z���v��8�����=v�}�����F��=v�}Á�~�K���@�0֥�~�q�t��F�/9P:�ui����X�6�}́�e�K���@�~��I�/:Pڌ�x��}Ӂ�vL����@i7&�~�u���F�/;P:��x�߷(�D������Ә�7�}߁�yL����@�2&�~�x t��@��S�ɕJ�>�,��y�����F�K�v}:�hr��~�'���(Ƅ������Q�.>P<�)e�����1�l8��@�2&�O�qlx��������1�,��~���ʆ��wcb�pr���~�,�Y�ņv���c/� W (�ze���}�ҹ�M.AP���`��-B�[N�\����o��O�AP|N�n�ز��w��M��)w��U��9w��]��IwKr��s��p�Ȏ�iw��u��yw��}���N�\����nk�V�܈�����hv%�Ү��F�;��=�7�\��t詾��}+��q����kO#���EP<�T�pr1��e�������䎧�0��!���;N�FP|���pv9����䎓�g'w�\���8<���1����P�	J��e�����Gǲ���G˲�����Y6�\���lZ�'JnIP|v-n_	��ٶl8�'A�ٷl8�(A�ٸl8�)A�ٹl	@�JP|�.n_oR�g����g������^6�\����xC�٩�����;iza��c��hrc��c��hre��c�����3A�9�n8�4A�9�.�ݚ���x7�\����x7�ܛ x��0v|N�NnNP|N�gW'(>'�'w'(>'�'�'(>'�O���x�5����	������HG���Nھ/PP��^p����
'M�PP��^p�����W|�|i������+_�g/�pr���a��'�((�<���"���W|���y�����l�կR8qr��7�ߥp��2���NnSP\�Zk��u�\b�S��0�z�`� [�	`� s
�̅���a�ԅA���H]t��`�ԅA��I]t��`�ԅAw�-FI]ts�b�ԅA7�-FI]t/�b�ԅA��-FI]t��a�ԅ���a2�X�\b=��#.���0螭L=i���
	4sa�^�1Rݭ7$ua��`�QR�۷%ua��c�QR�`1J� {���.���b�ԅAw�FI]�=_�C?F�]t�#�\b=�z�܅A��3�̅!�A@3��N�\b;4sa�	I]��;FI]t��b�ԅA��-FI]t��b�ԅA7�-FI]�WFI]�W L)����`� >H����6���~[(3��;k�f.�;�C��0ԭ\���0ԏ$ua���%ua�/��.�Il1��0���QR�Q�%ua��H���u9ua�U�0sa��,a� �`��п� �\�6�H]ڍ�H3���AR���#�\t��!�\t�< �\b=����0��zA��0��L��C݆��C����Cݴ� �C�%���.��ӏ�0T#?L?� �,�ua��W����~;�%ua��Z�QR����0�ή�<�.�U�b�P���'ԅA?aX�� {���.���a�ԅ�n0W��#Ua�����`����������Sݶ.3���h��P��1D��P��1F��Pw	1H��P7�1J� {���.�}n1J� ;���.��n1J� ����.���R̅A�6=�̅Aw�#>H� ۠a��P7�?��C�2��0ԯ#ua���$ua��0J� ����.���b�ԅAwn-FI]�#��(��n�Z���0��QR��'��j�Qa� _?�̅A���0臒0uaHvN�f.��
FH]�4�H]����0�+V H��P�*H3�������/d�̅A�p��r�`���:i� W�X���0��E��.zE��d.zۑG��0$?�Z���\�j��0saH~�n4sa�)a�ԅ��U�1R�z�Rħ�\��6i� �4�i� 7�X�4sa�[��G��0��9��.z	��(��޳�0J���k-�?]R{��\R{��.)���f.)̽֍f.)̽֍f.)̽֍f.��3�4uaHq�n4saHq�n4saHq�n4saHq�n4saHq�.��0�8�Z7��0���4saH�;$ sa���̅A�	�ؙC�bR���^dSf.�����0�7C�.zӒ���ޒc0H� 3���0�Ku0J��P�q�(�C����.��'���0�+{0J���n���)��̅!�1�n0sa�    +�"�ԅ!�1�n0saHy���f.)��u�̅Ao�褩��4
�E3�����.zߐ��M]�f�Q�N��0��D��.z���(�C�0��.z��ԅ�]/0saHe|��;saлhp<���i��A]��Q�.��0�oU��f.zύ���0�IG��0�8�_� �+|���ޢcqL��^�dqL��^�cqL����d1J� w�X���0�˞0J��'�
�0,��^��.� 3�G*#�\����ۋf.��>��0d=��1R�l���E3�l���E3�l���E3�l���E3�l���As�l���E3�l���E3�l���E3�l�'�-[�Cv��3���'�-I�Cv��3���'�f.��O��\���$7��0d7?In)�\���$7��0d=��QR��b.���0d�g�(�CV�	�\��IH3���v
�̅!�'B�4sa��R�Z>�{��0��=�C�i�of.�6 3���h��\�r�a.9���p0��A��/3��A�f.9���\r�=6��0�0zl4sahW�M]r�=6��0d���(�C�;%ua�z`��.Y�u0J�u_��.Y�u0J�����.Y��I]���7��0d���W��0d=���$ua��ό�$ua��όQR���c�ԅ!�?3FI]���`�ԅ!�k�+\�(��C�O��0��l�h�ki4uaȩ��d�ԅ!�k��S�\����0d=���r��ݜSN]�*�0T�U���r��x0T����]���P�C�e�,�.�3��.���)�1�\?zM]rq�4X4ua�ŏ�`�ԅ!794�ԅ!�5߮���^���	w�ԅ!�5�.��0䲦܅S��9w�ԅ�|k�]����V|ͺ�.�[��©C�ּ�p��P�j.��0��i�r�M]J�[���C����.�+��[4ua(����0cf��p��P�d��]���@�C1~vy�.��s�N]��'7��0�%C�.�̣�N]��g'7��0;On8ua(v�+�C��C��a�h��P��X6��0;Z���.�ΞeéC��iٞ��J��/vv-N]��mˆS�bg߲�ԅ��ٸl8ua(nv.[|�7��u�p��P��]6��07���.���eéCqc�-�w�H��Pܘx'�Å��1�n4ua(nL�M]��FS���Ļ�ԅ�:c�܅��9�n8ua(~N�N]*��r���Ļ�ԅ��9�.��0?'��.�ωwéC	s��p��P�<���ԅA7�,���\Jp�\4ua(��^p�ԅ��0z�ES��
J��C	i��+�W�4<�^p�ԅ��2{��S���*��]�na���0�3�P�C�M#��0�5�P�C��@*wa(1�^p�ԅ�TMx=��07a(�~�>X��Pb�f}�̂�ԯ�K�����`�Ci��	3�������BIMuy��}��&��aj�PR�\0�^(�I.�Y/���̜Jj��f�%7��S߅�G� @j�Pr��턙�Bi���c����9X�P���Y�r���?�Jn�*�.�܎U0�[(���<`f�P� ����B)�L�3��Rڑ�f^���̬Ji*�9-���SI��C��v���B)�4�3��Re��V+\��e����s��d��ɸx��cAX��s��bAX;�s��aA`7�s��`A`?�s��_A�0�s��^A�8�s��]A�4�s��\A�<�s��[A�2�s��ZA���9a� �lFz.�+�?۾��,"�
�Ϯ��%�
�Ͼ����W���������v6��}��SA�9��}��R��.0qT�.cm_�*�O�B���)l�ھ`b� �k������n��&f
����"^
���/��C�NO������IA�4V��#a�X�'K|�-c,�Q����
<a� ��+������v��&
��O�X(�G�>ǂ8(F�>Yb� l�d���i����a�(�'K��-�`�01O��~���w��f�&�	�Y��9'�fE4ab� ��ф�o��aVD&�	�YM��&�fE4ab� p�р�g��eVD&�	��M*�� ���΄�a��v�:&~	���L��%�g�3$n	���L��%g�3a� �h�뎍�a� �h�K��m�b�Q���h�'�|�m�b�M���m_0qIx��&&	϶}��#�~q��f	϶}��!A�ٶ/�$<���g۾`b�`�4��	3w�g۾`b� ��u��"� ��u�b�5������gaC�K����X0�E8�:`��A�<�W�˨��#����XwL<6c�Y0�D؎ug��A`7֝C��XwV?��XwL��c�Y0qCxL��,��a� �<K����b��
�~eL��eN�s��A�9y.�� <'������������s��A�9y.�x <'����`� �<\����9a� �<L��{�&��=ϕr��@ر�X�} ���\ϚX;�<K���{�&��=����炉�5f�y�GM\�{�&��=����炉��s�s���@�繒�<�<L��{�&v�=�qd��;�<K���c�s���@ر�Xbu ���\0q:x�y.�<�<L|�{�f6�=����炉Ɂ�s�s���@��`bq`��{�f�=����H��]/V�{a}/K���XϚ�{!�X�m`MU�,�66�B`���@�2
�ck���&��Q,��lG!�`�j ��������~&��Q�"��Q,�8�F!�`bh �<c��~�.w�;k<'����c�\,13v��&^��s���@`?��3'�ì&'L�����0�18�jr���@�<��3�ˬ&'LL��߬&'L<6���0�0x|0ZYD��K��ֳ&�F�%�F�%�®�s�ļ@�UyN�x�*�	�kҜ<W���,S'L���L�0�-��2u�Ķ@`?��	���,S'LL��L��I<N�L�0�,8�2u�ı@�2��J���a�5u��`�_��f�WM��k�~�d�[��n�WM����~Մ�W��a�W�Y�~Մ�S��WfB�̨@�<�s�ħ@�2��&Ll
�)�ܯ�0u)����	���ܯ�0�(����	�[-7 =�C����b�A����J�O ���XbO ���X�N ���`bN`�7?�-�x<?��� ��O~&����?abL ����&����?abK p���3��+��in�O����f���'��eT&����KeU��X�H ��<YfH ����X�G �멼XbG �塚X�F l��`bF �8*��x;�J��K��G%K��G%K����Ă����Ă����Ą����Ă�	��~,9&���,�Xǒ�`�@ pK΄���y,9&����,����}c�Y0q،�vH��c�]0�؍�v��z@`?f���ØiL��c�]�A|Nc�]0�8��v��u@�2f��I�o���{lƤ1`j9 ��Ƅ���nLf��9oL����1if7 t�3Ǡs:ͩc��l@�<�I3��˜<&ͬd����1i�4 ���Ǡ�р�v��f>B�9�L����2i�2 tK���LL�c����#���O�Y��j?a�0 p��������\�'�_�X�׌:��z����I3w�ל:if. ��T'ͼ�^���c ;��ՙ"�+EjB�5�N��&�I3_���:if+ K�7��E��K�h3��+^j* �ـ����n�df��ѓM�9
FS6af( p�]٤����i�e��vB�ٗM��	]fc6if& ��<Q�h�% �<R�hf% �<S8i�$ �<T�hf    $ �<U�h�# �<V�hf# ��4֣�������X03x�f�fc��B@���m,:�g�����z�5G��7����Ǣ�}�г�X4sz��ί���v�=�z���i�l:ͬ��]Ǣ�s�г�X43��c��Ώ���Z���m��cj0wxL�f���u��3@�1�.�Y<��E3� ���:ij ��Z����S뢙]�4�sj]4szN��ffBϩu��+@�9�.�Y=��E3� ��Ժhf �<��h� t��|���H���N��\F�6af ��7ڷ	3� ��l�&��E��v�o��i���ۤ�A��~�o�f� B�پM���D���z��f�6�:3:��m��@�2۷I3k ��7۷I3g ��l�&�#���-Xd�[�,1�~>Xb l����@��-�`�1��M<x��@�&<`b`�m�3��7��3c ��x���1��M<x��@�&<`b p01��w���{����MKd� ׃4G�c a�A��%� ֵ�4ǳ&� �փ4K��m���N!01��B<`b p;�x<jb p;�x��@�v
�1����c ��)�&� ��v
�H"b p;�x��@�v
�1����g��� ����ˌt��ˍ���2c �O�03p�$�3c �O�03���G��Rc }3-H�t�� 5���B��@�$Rc }�-H���uf3���ˌt����1�N%	XK�tU,�2c �z�f� uu 3c�:EAx��.�5��H�tm� 5���B�324Ѕ�B��@gJRc ]��n�6���e� Z D`�1������Z���c :j�S���1��i�� �f�������:Yf��p��ˌt�)�2c }�G�t125й�@x�@W.�Qc �H$5��$5��$5�k"$5�S$�g� u� ���v����&̌|�>~3�����1��~�̌�L	�A�|�>d� �;03�E�A���[;��4L�1��n,�e� ����O�x��>Xj�mK�d�1��i.�f� �湴O�x[��>af��7��Sc �F۾���;;��	3c ��\�'̌��si�03�.̥}����Ѷo03Х�B1c ��=���W�����1���Xf�ۑ�f� :E����n <j����1�.�� :�Y��a!@j�3�� �1�.2�� :�Z��	�� :��:t����d�1�N��B�|���`�1��<Xf�S���1��i��� ���{i���1�.� ̌�-�`f���u 3c }�m ��C��5y���`!@j�˗� �1�N&R����d�1��;�53�U1ˌt���Jf� �����|f <j�˭��1�N~&̌tm���@gJkf� ��[03�i�B��@W}Rc ��H�|{��{�� m�>Yf����,5�y�y.��<�<̌|�{�f� >�=�3c _�焩1�/s�s���w��f� ��=�3c _�炙1�/s�s������`f�W�3c � �3е�ˌ�\r>kf��b��S�e� ����e :j���Ǔf� :�����l @j���� �1�.��� :SZ��o!@j�Ӫ� �1@0c�$�e� :{`�1�V�d3��!ˌ���炙1��<=�̌t!�I4aj��ZO�3c ]6,�fj�/���L�t��I4aj���� �1��H�� ��;���,5v|0Z,3Е���T#�1@p��b�1��:}i_03����G�t�2��Qc ]m�5�����J�ti6�Rc ��,�5�u��hPc �)-�5�E�B��@�URc �H�t���1�V5з��� :�Cp� 4��	3c ]0��1@���N�貁�I��-���� ��`zRc }�1=�1����@�/HOn��'7еғ�l�S83���ej�s	LE����'ˌtځi��ҌE5�)
�j��8δ�@�3�0�1�.�XaPc ��� � Z!`�A�t��
�h97�i*n��T� ��-�e� Z����� �B`�1���	Xf�/O��&F9af�o���`� !۱�̿ˌ����2c����,3�7x,9f� �����n <j�+����1���� ��Y��Db!@j�k�� �1��:�� ��Z��� @j�5�G�� �K���~E�3c��/�>`f���̌b��f���̌b����1@��b03����1�rc -'���� :aC�ÍtƆ:����c��d$'M�t�b��1�.P��0�Y��� ��@���@gY(X肃+7�IKVn��֬�@�p,Z�1��Ppc ��<wj���=�@��{�1@��N��Z��c ���v�a�K�?�t�����1��TP��0�Y��� ��A��@'Q�`�1���X�rc �s���� �lbˍb��z���1@l�^�07����v� �+���v��Sc��/�>hj�}�;͍b�����K��h�� �p�� ���7�>]7�>_%7�Ekn�w�@�D(U�1�N2P�rc ]>�T�� :!A�ʍ�R{����^"7�3�ȍ�\Arc���C��@gFl9�1�.��spc �G���� Z"`���t�Ŷ�hA�}7�st�]��1�V��| v� �1�.���T �� }�?ijP�>�Եb�� �e� �1@]Z Jn�ﶅ(�1��D��� :X���e!Jn��(�1��r��� :�Xx�� �õ'L�tF� Sc�X�bO�����ԵB�� u���1@]�!HnPgF���:n!JC�t�%7�U�B��@g]Qrc �,Dɍt�v%7�ş�����@�sw�� ���\��HJMt�/'�'@}�θ�%@]���#@}��Ȩ!@]J�Ш@}7�ب��:�����[l�ب��O���z��n�ب��d���:����ب@jg�$c> ����Qf�ڱ��3��N��(3�k�w����I�, �j{FF ��u�F �|�F��:��36*��ܞ�Q��Έ�����u��glT��s�=c���
�U��,�BK��L���?Q��O��݆r�r���D��?�c2;�D�����Y��O����2�ra��`��?�8�q�L�\�8Y��O.�|�,��'WF>N�����F>����7#'˴��۾\��aR�T�ʔ����\χƄ�ɇ�\O���/�e2���X�'�T���\O����/c����i�S��r=Y�x��5c��,S����,����r=Y��O���z�����r=Y{�YK��4�wH��?U��2m
�Oce��J��J���m:,��h�46Y��O�=}FFe�I����QU����s��?��_߉2M����e��T���)�S����(���-~�Lϟ�7^��29Jf���ej�������j2Y��Oɏ�d�LʟR��d��?�8V��2!Ji�&�e:���XMKe�)�Q�L���S7���nŻ�Lß���2	�6�;������1��;���)�ѡL���S�u�J���S��D�x?��\O�i�S��@�t?��\O�)�S���d�p?��\O���S���d�l?��\���S���d�h?��\O�i�S���d�d?��\O�)��7���R�~�fs=Y��ϵT;�������>Q��ϟ�+�|hL�����eZ��ű�O�I�sۆ?X���_+�d�P?e���1�~6�XR&�d�٘��L�����cI�,�g�ƒ2Y���Ə%e���gƒ2Y���&�%e�L��͘u_����g3�ǉ2y~6cz�h!    ��l��8P*��vL�e��l��8Y&ͯk�U�g;����.9�vN����l��8Y&��vN��e��l��8Y&��vN��-��5���q�T��ݜ'������ب ?���8����{�er�����|�L����{�(�g7�'˴��ͽ��2)~vs�q�L����{�ϗ	�{��e:�����d�?���8Y���~�=N���{�3o�?���8Y&��~�=N�)��{����q~�}�q�L�C�{�(��������9����2�}c�q�L{���{\,���0�'K��9����2�}c�q�Lw���{\,���0��T�9����R�}�c�q�Ls����2�}�M�3ɘ�>Gߖ��2�}��-��3�}���er�S[����9澴/����n���Q�}��HI��n���Q�}�M�36*�Ϫ:c�:���"glTf�uS䌍��n���Q�}�M�36���iL�f�Lb�Ә'��9��q�T`��'���9��q�L^��(���9��7������ț�2m}�q��d��>�4�f�LY�sy3X*�Ϲ���,��k_b�ب�>�K��2U}.���J&�ϥ�Y(����?ͬ�$���O3e��\����2A}.�z\,���2���29}.�z\,SӗoN�3m���|f��eZ��ٱ�O�I�����>Y��/�+�d���|a��e:��ű��td2�򥱲O���˗��>Y&�/�{�2�gdTB_����*英0�R}1s���K;ev�L>_���U�1�x�^{�F���d�G*�W�Y�G��/��|����ߴ��2�|���d�l�X��U��z�v�h�� �.��aڥ��bL�T1_l�i�
�-XP�|qVT._�����勳X1P�|�C"glT+_T�s�F��E�k�بR��ym8ӆ	�I'��OM1=$RN���~�5'�T�E7E*��D�~��Q���+J2�|��D�B�x�Sw�L _|�;Y��/�6XC�������2u|����B�8��~�`�L_���`�4��q�`�L_�8l0Y*�/a6X,�ŗ��j2Y&�/z@䌍��9c�����!glT_t?䌍J�K(c5�,Sė���d�L_���{lL_���;����鼳L_���;����缳L_�m��80)|�w9�,S~���2!|��8�,��uI9fR.�/����r|I��5��Krg��C_��j��� ��|��gx\ _���_����2T�?��%(9��K����!~/z`��kߋ�9����GF� ��d�u'��z��HO�{/9����{�_6���K�g��C���D�E׼��8<`*y/�@��C�^�������{)*�r�R��?��D�A��KIX�r�{)�P.u/�`J����;�� ��]`�(չk��2wa��T�.��Z��܅P�R����Q*q8��O�g\���]�� շ�O� ��l���v�-� T�.��"�j��XPi��� �l{*l��kwm���څ�6����g�>�����i����]�U��v��^�
����g����]�]�jv��~�����ew��:*exL��_Jva��Y�%dvL��e:va��9Y&cvL��e*va��9a&bxN��v���9a&axN�f
v��9yN�	���焙~]�9y�����焙z]�9yN�����焙v]�q\y�L�.p�3�|�Q���L;Y&\���v�L�����|�L�.�3턙j]`;f����W^4؍�v�L�.�3턙d���4� �b]�8f�	3���i̴�Q�W��y̴fru�˘i'����ߘi'����1�N�i��_XU��DQ����������������#��2����+�����Mw�D�.p��0���4pL4����
�c�u��
j]�&�;`"[������nB�&�u��n��r]�Xg�&�u��9�i��R��#�ua뉔�%�u��#)ǳ���ua뙔�%�uaۙ�&v�ۡ�&
v�۩�&v�۱��Q���$���������������������J;�w$�w]���&Jv���&Rv�]O�Rg��]X��s�D�.l��9X�f6��\,���Fz.����#=L����&�vg�\����]`3�s�D�.��`"j؍�\0Q��Gz.���#='�t�Ǒ�&�v�S_�We�����%�vaK_���#�vg�����q������ou��v��&�v��X�L�������G����/�(��cm_��$u�Mk����]�<�����e��+�������}�D�.����܅��S��3�������V`*u6�
L��G\���]��+0U��q�rw��T��L��,�k�`��wa-�T�.����jޅ�X�Sѻ�v�z8b�Ne�',ة�]���\�"��wg����l�"��w�-VDT�.�Ê����XQ���{�8b�C�'�u�^�����;�o�סxg�����{��x���k��!�v��%:xaG۾X"�v��eJxaG۾X"�v��&Zx�g۾`"�x��&jxg�l�'���϶}�D/�l�L�϶}�D/�l�L$�϶}�L/�l�LD��^�,"�xas�Kd�^��Gt�Τ���%�xaͨL���Q,�H�v�X0���G���ƺ�`��8�ug�D/p�΂�>^�<֝���e�;+��Bޙ��ug�D"/��΂�F^`��"yaqϓ���=O*��<�N^X��Bya�=O�����Ry��=O��w�\{�T,/��I��_{�T.��5� ���c@�_{�T1/��I%�_{�T3/0�yRѼ���IU��~��Ie���'��{�yR��מ'U�|�yR��מ'��|�yR��מ'U�|�yR���מ'��;k�=O*����
z��=O*��A!@5��z(��^� � U���2zgM�B����XP!��s�s�DI����Rz�TK/���\0���jz�=TN/p�B����XPA��	��8CE%��袨��Y�AEE��袨�^X]��밋��z�=vQTX/p�.�*���EQi��	�(��8cE��좨��Y�aE��좨�^`�]��`m�
{a=��Tb/�<'�4��FX۩�^ث��*{��ғ��.W5�t�Ά�&��^`sU�Li/���I&��]�$���j���W5���ǫ�dr{�4FTo/l�ƈ
��ֳ&�{g����k�1��{a�ʓ���*O����<��^��]���2�	�NW�ʔ��Le�{��U�2�����T&��\e*S�l�2���vW����{�i� _؀3-S�q�e|aδL�/l�r���.W.3��z��c2|�͕�L�/��ғ	�vWz2%���JO&�8`zR-��ӓ��N��T�/p���r|����;[�����B&�|a�������&_���|}�|��O~T�/��ɏ���W�������`�|��0�4_`���l� �|�VT�/��
����qQ}��:.*�6A�E��f踨D_���;g>츨H_`;#T�/���*�v�X,��;�J,����3B��G��R}��Q�	3���wF�X_��;#T����`g���6�3B��[���}��Pž�wF�d_��;#T�/p�*�w�߸|�D�/p�*���� ��;ׯ[>`"���� U�lqC�J�v�!@���z���}���\�/p�:���NP�r���*U.��`���2֪\�/��b�k���X�r���U���c��e�B,X��_�xU�T�/t�JV��:_5+��]���j�%Y?�Z��_`e+W�l�n�r~��\�/��ʕ�X�rE��kW.�:a��5�Bg�^��_��+W��4�a��e�B,`��_�9�.�	��vW	K��B�����~=a˵�MWrL�\���M�;����ݴ|�T���M�L���ݴ|��	�]�i��������w:��x�>�~��AS���7-    4���z���]�W��e�.��b�:���ES��K������*��_�fP�r���W����*L�R���]��.��*6�U�޿� D.���7��+���������(��_UH�rpѿJ���-a��e���î���U�m��`���W�
��\���s����w%C��C��r�0U���� ���_�YP5����X�� *悪���k�j�a��/�~x T-D�M �T��. U�Qr��,�(�@U�@��@�hP5�ph ��S+ ��y�����"��@5n`���#h�~����S�~ �P���!�
�}����&h�~XT�Di�'@�?A����� J�
�Zh�~���
ڷ� U�Qrc UcIj-}��1@S
�l"� ��
�2c U���� �n��,3P���1�*�DG�T�d <j��1�es�[��x���1�j�,H�Te!@j��4Rc UMY��j�B���� @j��A�#�1�oi��v��x�����4ˌ|� ;af�R%�Qc Uy����@|�@%a�� *�� 5P��� �1�*�,H�T2e!@j�
Rc X9��ޥƗ�rc�1@Sc�,3PmL<Xn�ʭ,3��$�3c �O�03��$�3c Մ���B�@��@d�� *� 5P��� �1�j,H�T�f!@j���sf3P����(��c� ���9Y{���ƶ�o�'� ��j�03P��q 3c U�����@|�@ew�� *�� 5P��� gdh��)Rc �LY��(�¹1��<��@,Xf��I���� *v���pV`n��X��1�ʼ`�� �.0�X0c ��9`�1@�ܜ,3P�X��ˌT�S�e� *4����t��1��Ҡ`�� *������*"n�!���1��ݠ"�� *(����8*"n��#���1�*�"�� �{�?����{�� t��f� �{�03ݫ�����{��@5)��pc�`z۞�1+Sc�`z۾�� �޶o,3��틥� ���}c�1@��m�`f�h�7�;��f� ���}�� �Ѷo03v��̌�m�3c�`G۾�� �Ѷ/83c��F۾��@�?�����ˌ�J�||�@�nXf�����,��6�@t�@�G£� *�35P��� �1���,H�T�d!@j�=Rc AY����B��@,�� ������{��@�X��Pc���9Xj��-XE�1��h���� *�����K(j��(��1��Ǡ�� *Ё:���� n�j��1��y��� ��:���� n��(�1@���ɍT%"5P%ԇ� �kϓ��;.j��#츨1�J����� *U�
���*|n��&��1������� *��
��R*|n����1@H
nR�B���A!�����d�1@�n��B��<�<̌BXpc��#� ��`fr�B��\��� �|Xpc�P� t��f� �~x:S����ˌB]q�g͌T�e� �(*�2c��ߜ03P�tQ� �+��'͌T�]7P�tQ�@uM�Eqc ��AōT]7P=tQ�@S�Eqc��eX۹1���`m��@�U�4Pc U ��@���JOn�Uzrc na5I�T܄�$5P�V��@�PXMRc Մa5I�T6��$5P�V��@5VXMRc �� K�T�cA�T�CA�T�#A��H�d�1������� �^�'7PIT��@�G�Eqc Տa�J�T��e*5P����@uMX�Rc U�a�J�T�e*5P���@E(X�Rc �WA|�@+5���9Yf���t��	3c�����1@�xAx���f >jP�` 5P��'5P��'5P1�'7P��'7P��'7PI�'7�"HOf��5���1�ʁ`*�� 1�'?n��!���1@U�Ap��j� :jP�s5�z$��T�H�T��5PUV�@uNPapc =�7PMT�@5QPapc��I9�_n����d�� *_	�2c�X��e� �t)�2c���:af����bJ�3T?�e� 1��� Ui�̌�,��� U��Qc�*!���1@U�@��@�f�3T�;#�@�i�3T;#�@el�3TE;#� ���� �1@�S03��b�f� �_L}�� �����~1�1� �����~1�3c��/�>`f��)�c��� *��:����n��q���*T���� ]}u���
Z FnP�Z$7���2Pc �vA���@�2P��0P!V��@�5X�rc ��a�ʍT��E+7�"3�Vj����c� *H�����	{f��*u����� BnP�n"7��!��T]ɍ����� ������1�꒠��a��;�`�1������� ����$=�Qrc����'mn����;̍R�����1@jWW05H����� �_^}�� �۫w��~}�ASc���>hj��w�� ys� y{U� yw�� y�� �p� ����� �_�7H��5�ݹ~tK5� ����� )��7H��7�1@
w���R�;n���rpc��p7� ����� )�m7H��;�1@��n�����1@���� )z�~��j�a�bĪ�1@�	��� )f�~�X�j�a�҇U�c�����?�R��k�0H�:���@�~�t���a��ud��1@Rgx�3H��	Sc��
�o?�R�\q�� e���c��-�o?�Rvؾ�0H:�B�� ���c���9��� I�s Jn�tC��� )l�~��a��� ���c���2���ծFi�E�e�!-����8 �' N�3�i����*e�c]j�t�G���'�g��z�����i�W�r��[t��Yn��1~;]s]���z�����G��_=���G���<7���N��@�{�����@�{;��w�r*�K��G�;� `����l��aͨ\7��w���<��N�N��5@�;E:��l ��)��݅t�S���l7��N�N����пG��Ѯ�����it=���G���Bl��=�����Ώ��&��'�O:~���Ѯ�v��~�"�^?������'�CO�?ڶ��ƞ���N=�7x����'�Gj/:�ͤM�2R{�g��v�耣7i3R{�ߤ�H�.���C�ٹ�ڋ���N������t�����zr+�8R{��=��N����22��^l��G{��x0����_�68�ϱ�f�ۓ����i;ꀍ���X��w��h�x�������x������x�`�8��9~�7��i�moB��6�?ބF�Qlt�G�eT�F����(KrTע�=��������D�@8O�w�Ua(�}:�z|��K�[�f�v�ÿ���~aoZ7���v�޴0;�[�M�x�z��a����L�����*|��0ߟ��*|������[���O#`�*|��}�S�8���K?��ɫ�A˽�A�W�~���x>��}~�S��8���ҏW�M}��K7��-�'h�n?ȹ���_zx�q���_Z��8h�>A����c����m��(�=���QZ��]~Y���=J�A�/�ct�փ��,��QZ�����R�(�=~��FGi=w�e{������mt�փ��'hK9��t�>��&W���'���R��w�����_��Xw�/c�k�F��X?%�`�a�3��1�fw�a 0�]��4
ư�ݙ����@�a �+�h�]�N4��wgj�3�ޙ�����L�@@���0X�a �.=_0
��k�F���u�;�(�b�m�@@�]��4
��@ z  �Q ���zgZ�w�Q ��n{�EG����ih��ޙF���]��4
�V p�(P�+߉������^W��_�����Q ����@@����0
t�V�Q �4bk%���i(��ڛF��2���4
�9���Q �,������r���i(?��7��[{�(P���D����>`�(�u!��Q �R��0
T(���2(P��6��>`�(P��l*O��F��J�>`�#
Tz��F��ʈ>`�(P��6��%��M�@@WG�`���@@k4��@@k4�F���hZ7�]�m�`hm^�7�]W�/Z�W��@@�F�4
�)Q��Ɓ�>Ux�(Ї�
o�HT�M�@@�Ux�(��*4�iQ�7�}zT�M�@@�ƦQ ��F��ih�Һ�vi�4
��Һ7
��Һihۥu�(жK�Q �m��M�@@�.��q�@@�.��F���]Z7����n�)k�(�u$��
��f��^��Yh_�5�(оҀĢ0@��	FY�v�NF�-
H0J�[�`�  �(�a9@�Q��b��)�K�B��(��/3 �$E :,H0J t7ȫ� + H,�]�t�,�]��Xh���?�P����y������������������������yZi��jڟ`h�j֟` ����|}A��6�O0P�	��02�	˻�^����O��[y���'��[y�@�'�ޭ�Y`����V�,�����#ן��V�0P�Z��V�00�	�o�џ0�V�0��	�o們�O��V�0��	?��7$�ͷ��O��G�^@���~!�Y`���������{�o��dɏ�� @�'�~�o���ŏ���p��}���'��Ѿa��n~���f?��G����Ox�Ѿa��V?�7��)~�oX���Ok���O6Og��O6�`��O6�`��O��!X ��m�1|~��;�`��Ovx�,���jt������.?a��!`����&?a��!` ���1<~�Ot#��p��!``���1$~�#:����OX�c(|-�Ͻ���'�s�@�'�s?f����a����a`���a ���a����3P�	G��00�	G��0�ZZ�o�0��}«z�t0?����ɮ�X��]�3�@�'��=�@�'kڞ`��6m?a��6mO0��	��'h{-ݴ=�@�'lڞ`��6m?a��6mO0��	��'h��M��}¦�	�>��i���Ovi{b��Ovi{b���2��'h�d��'h�dM��Jm��i{���Oش=�@�'lڞ`��6mO0��	�����>a��m��i{����i{����i{����i�	cm���|��?Y��n�N,�v{�pb������^/�X����Ok��z�#m����	F�N�������'i;��>a����^8�H��}�p�����z�#m�5r1/ �v*Î��E�NE�h?X��DŎ��E�ND��~,�v���F�N$��~�Hۉ�{�0�v��=�i;Q{��c�����h?`��D�=�i;��G�#m'.��~�Hۉ�Ok�h;q4��Bm'��3X����x����<��"m'n�1����{�,�vZ/%�,�vb��!`��$%:���NB�1�����ci;�D�0�v�C�H�I����NҢci������Bm'�1���D�ci;��^����*����*��cF�NՋ�#m�ZËF�N�	/
i;U/����j/�ǌ���/
i�ϟ�����SF�N�����զio����N�bSB��Ӻ֔P���,g?Q��d�K,2vz��
;=&�'�|����E�N�t�d��S3[?Y$��L��:5s��E�N�T�d��S3S?Y$��L�Oy:����#M��4�D��S[�~�H�iMSH(rt���O):����"C�n�~�HЩ���,�s���'�������";�nv~./�s�&�'�ܜ����"5�aj~���i���,s&�����[��o푖Ө��Y9��	ERN��[7P��4��uEJN��FNC}��\�o�`��+��긲o�`�����u˸Vߺ�B�Ƿn�Pŵ��������e�"��=�����ց"�5� ��¹��ֱH��^B�X��\�O�`��s�~Z����u�H��4?�c͐s�~Z������:Xd�\�O�`�|3?��E��Do[�Q�K���yt�7�7��"�f��1P�ݼd*�H���[GE����:(�n����@�s3���`�r3��/�������������|�Y���t��z�6��u�Y(����h�ȵ����`�j3o�E�ͬ��D���c,1�l�(��"�f���Y6K��`�d�Dy96K��`�b�Dy6K��x�H�Y�<���%�c�H��Fy�5Wr�	�5�5��	?p��k�[B�Ez�vI(�ȯ�.�N,l���g6W3�����;�ȱ��c'I6?&�	F�͏Yv��f�c�}�г�1�N0m~L��L�3�#���T;�ȵy}L^m$��9i�l��eۉE��kJ]f�os[��X$��L��J#��fƝ`���L�����9w��ts3�N0�nnf�i��vs3�N0�nn��	F����;�ȼ��y'�7wS����]ޭ��*���{}��f�}sޭ�Y�߼`f�7��n��"g{Ey���sW��F
Σ�V�0rp�[y�H�y�o�#�!���Σ�V�0�p�o�#��|+o�8�?��T��x���"��ѾY(�k�bf��+�Ѿ긲��>��G����k��}�����}�Pɵ�ѾW:�v?�7�\���V��G����K)~�oy��Ok(�R>�'4s)�����O�	�\�Yfɹ�vw�Υ��c�z.k
`f��K�O� ]��6t!�;��B|w�х����ջc��.���t�vw�Ӆ��1`QwǀM]H���p����0}�ʺ0�^�m]8�熑��ۋ��?�aa��ad����"�����"���z{�v�r{�v��k��E���P��.%i��E��"my�q
P�E�g��v��� �]Ĵ=�H��+����]j�LR��.մ=�Hۥ�g��v��� �]j�LQ��.��Q��.�}f(@m����j#m���=�Hۥ�=�j�<�d�]���@m��?cl���#�)6P�婟!6P��y>3l����>#l����?l���3>l��ˣ��5Pۥ�������3�j�4����.Ml+�g𯟲K���i���w�Y����;�n�Hۥ�w��f��K>�.`����g�mi����6��]:���#m��>�n�Hۥ�Ϲj���c�6��]��S�6��]z�!wF�.>,�X@��Ⳓi�����E�.>)�`��KJ:i�Ĝ�F�.1&逑�KLI:`��C�i�Č�c���K�H:`���i�Ā����j��}Zcm�O㉵]?�'�v�4�XۗLgj���c�ڮ�����;�����j{-�����Bwǀ���;�����1`m�����Z��c��^K�;�����c��^˸;�����1`m��3��}�j{%��k{�ό9����EX�+}&�am���󀑶W�am��/����g���ʟ�rX�+f�!m��������rBU            x������ � �         e   x����1��0ɖLy��?G�p#�Ɇ8�iT��'���j�N��u*O6('�X�o���
��VR�nM���>k#�8P�y���������*9Z��־9�8�         c   x�3�LL����,.)JL�/�T1JR14R	5)��I4�Lw�H7����I����*u�Nr+�(4H�/�0M��w��H�J�t�tD1
�C+����� �&�      "   B   x��� 1B�s~1�q��e��#��"Z�@V�M�L;Yv����õU����¡
�B5S�w���     