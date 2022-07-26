PGDMP         %                z        	   ecommerce    14.4    14.4     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16405 	   ecommerce    DATABASE     m   CREATE DATABASE ecommerce WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE ecommerce;
                postgres    false            �            1259    24578    productVariants    TABLE     �   CREATE TABLE public."productVariants" (
    "variantID" integer NOT NULL,
    "baseProductID" integer NOT NULL,
    "variantName" character varying(255) NOT NULL,
    "variantImage" character varying(255),
    "variantPrice" money
);
 %   DROP TABLE public."productVariants";
       public         heap    postgres    false            �            1259    16413    products    TABLE     3  CREATE TABLE public.products (
    productid integer NOT NULL,
    productname character varying(255) NOT NULL,
    "mainImage" character varying,
    slug character varying(255),
    productdescription character varying(400),
    tagline character varying(150),
    "categoryName" character varying(55)
);
    DROP TABLE public.products;
       public         heap    postgres    false            �          0    24578    productVariants 
   TABLE DATA           x   COPY public."productVariants" ("variantID", "baseProductID", "variantName", "variantImage", "variantPrice") FROM stdin;
    public          postgres    false    210          �          0    16413    products 
   TABLE DATA           z   COPY public.products (productid, productname, "mainImage", slug, productdescription, tagline, "categoryName") FROM stdin;
    public          postgres    false    209   �       b           2606    24591 &   productVariants productVariantsv2_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public."productVariants"
    ADD CONSTRAINT "productVariantsv2_pkey" PRIMARY KEY ("variantID");
 T   ALTER TABLE ONLY public."productVariants" DROP CONSTRAINT "productVariantsv2_pkey";
       public            postgres    false    210            `           2606    16417    products products_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (productid);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    209            c           2606    24585    productVariants productID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."productVariants"
    ADD CONSTRAINT "productID_fkey" FOREIGN KEY ("baseProductID") REFERENCES public.products(productid) NOT VALID;
 L   ALTER TABLE ONLY public."productVariants" DROP CONSTRAINT "productID_fkey";
       public          postgres    false    209    3168    210            �   �   x���?O�0����:�����S��:!U6$�r\j�8V��?��TU�.u?��ыh�)6�)��	��|��t�^��&�\>g˾O�JJWG��m
�w��Ff�+�%HuY�����Ե���YΜ�찵����;�b'���|�)>�l���P��I(UW����W�ee��5Pv�u��8>b$�T�6"�5!1`�!�y��&�~�N�ĝ0߁�X��o�IE�	���      �   �  x�}R[k�0~v~�y�SbY�ۃ2h�d�f�K�(�-*K�%5��Ļ�2
舣�r>%��6��B�jb.j��XBYZ%[3J�4!t��%�+������/����8b����rK�YBYN���ƌNmoۚ{g���%��GM�$�.�=j��Ђ3����G�Ag��K8!h�P�ԝA����sw�G�AZ�bأ�op7����ނ�`G�+u��L�W�i'�z����+�mQj\��U���z溁��E:>H}j�u\�:-<E�-.jZ˧���]P�������,��c�5��Ov�S ����.|ǧ?�Vy��ZE�=-h��ڽ�b�TU^�y�Ѵ��b�ٚe$��]�J6�~�&њ��t]d�f�{�W-O��z#�E��ᮑ 8 ���6^=Æw�L4:��e{��� ��R�%�$U��<-J2N���Yr����]��N�:�+:�i�ҌEs�+��W������b�9V     