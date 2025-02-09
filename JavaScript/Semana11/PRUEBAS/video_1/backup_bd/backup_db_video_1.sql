PGDMP     3    	            	    {            PERN    13.11 (Debian 13.11-0+deb11u1)    13.11 (Debian 13.11-0+deb11u1)     G           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            H           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            I           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            J           1262    16568    PERN    DATABASE     [   CREATE DATABASE "PERN" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'es_AR.UTF-8';
    DROP DATABASE "PERN";
                postgres    false            �            1259    16571    tareas    TABLE     z   CREATE TABLE public.tareas (
    id integer NOT NULL,
    titulo character varying(255) NOT NULL,
    descripcion text
);
    DROP TABLE public.tareas;
       public         heap    postgres    false            �            1259    16569    tareas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tareas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.tareas_id_seq;
       public          postgres    false    201            K           0    0    tareas_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.tareas_id_seq OWNED BY public.tareas.id;
          public          postgres    false    200            �            1259    16585    usuarios    TABLE     �  CREATE TABLE public.usuarios (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    fecha_registro timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    fecha_actualizacion timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    gravatar character varying(255)
);
    DROP TABLE public.usuarios;
       public         heap    postgres    false            �            1259    16583    usuarios_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.usuarios_id_seq;
       public          postgres    false    203            L           0    0    usuarios_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.usuarios_id_seq OWNED BY public.usuarios.id;
          public          postgres    false    202            �           2604    16574 	   tareas id    DEFAULT     f   ALTER TABLE ONLY public.tareas ALTER COLUMN id SET DEFAULT nextval('public.tareas_id_seq'::regclass);
 8   ALTER TABLE public.tareas ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200    201            �           2604    16588    usuarios id    DEFAULT     j   ALTER TABLE ONLY public.usuarios ALTER COLUMN id SET DEFAULT nextval('public.usuarios_id_seq'::regclass);
 :   ALTER TABLE public.usuarios ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203            B          0    16571    tareas 
   TABLE DATA           9   COPY public.tareas (id, titulo, descripcion) FROM stdin;
    public          postgres    false    201   U       D          0    16585    usuarios 
   TABLE DATA           l   COPY public.usuarios (id, name, email, password, fecha_registro, fecha_actualizacion, gravatar) FROM stdin;
    public          postgres    false    203   �       M           0    0    tareas_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.tareas_id_seq', 15, true);
          public          postgres    false    200            N           0    0    usuarios_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.usuarios_id_seq', 13, true);
          public          postgres    false    202            �           2606    16579    tareas tareas_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.tareas
    ADD CONSTRAINT tareas_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.tareas DROP CONSTRAINT tareas_pkey;
       public            postgres    false    201            �           2606    16581    tareas tareas_titulo_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.tareas
    ADD CONSTRAINT tareas_titulo_key UNIQUE (titulo);
 B   ALTER TABLE ONLY public.tareas DROP CONSTRAINT tareas_titulo_key;
       public            postgres    false    201            �           2606    16597    usuarios usuarios_email_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key UNIQUE (email);
 E   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_email_key;
       public            postgres    false    203            �           2606    16595    usuarios usuarios_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_pkey;
       public            postgres    false    203            B   9   x���,I,JMT0���THI-N.�,H�<�9���*e�!e�)-HI,IŐ����� kL�      D   y  x�}��v�X���5����7��A���f��t�D�>}��ʪ�r��?�����K����V%ߤ���@�c�EO־Ҭ�&��e9��̽���`��-_-Ώ��M6m�W�E�@ �?!��?��K`�%��ދb�k6�\�T��O͟�M), HX���b��qR`��NX7f�6٩F�* ��bգi����.V�_�K.l��8K��B�{�ϋ変����ˍ[��Q�J �:�	�*���(!.���J�<����i�?cE���<�:E�`��0j��u��ߋɃ����a0�tV@���a��9��/��̧�C��:��PrE>��XΥ ��2�<�+�����\�>�l������Vtz�dnźE��y��j
������ex�$���)�"���*duRF���Zk0�j& �P N��X�>W��5�W����<�EjN���^g.�6D��5\���z�� >���#�������Ǫ[��Ҭ��N��Q� ӚY�"\z'

a#�"n��K��.-9�s�-��C�����X)��,�(4YgiW�"�R����<�_�KG��� �B�%��j�A(�Z\��#.���=�h�|��+T@��yw$8�t�y)�>�.�I0{����D2$�N�Ρ^���o�A�/0������jg���'�� �LG�9J�1ē���}v��
��=g���5��l�ܩ��9��)�'��+P��9&I{oY�-�U�T��b��<�Iu �)��� I��p�
c��u)=�E@߱²������;XO�b2�j�;�y=�EHZ#�/���C_{�3S����!Z'�6	P�T֡VH��$��-��j�5R^�ԟ�;VX����J���G;K�ܷ�G<#�Ⱦ��3����a͇���o��!��%�~�'.���TǢ��@aS����"���fЃ�� ߱�2]��z��ڬ;��4H��j�_Oܵ�Z��}���ˏ��݋	��}uc��;H}� ��5��T�i,8�@̕�4*� ��a,��{�;�;VX�Ko���4|?o\�4y|��.A��G�/ݘ��/;	���R�_�FYE�O	�	���:�� �5Ąr�@�H�+_ji�`���{���!��     