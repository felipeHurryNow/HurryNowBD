----- tables
-- Table branch_office
CREATE TABLE branch_offices (
    id_branch_office   int(16)         NOT NULL,
    id_store           int(16)         NOT NULL,
    name	       varchar(60)     NOT NULL,
    address            varchar(60)     NOT NULL,
    local              varchar(6)      NOT NULL,
    phone              varchar(13)     NOT NULL,
    longitude          double         NOT NULL,
    latitude           double         NOT NULL,
    atention_time      varchar(20)     NOT NULL,
    CONSTRAINT branch_office_pk PRIMARY KEY (id_branch_office, id_store)
)ENGINE=InnoDB;

-- Table stores
CREATE TABLE stores (
    id_store            int(16)         NOT NULL,
    id_store_category   int(16)         NOT NULL,
    name                varchar(50)     NOT NULL,
    id_branch_office    int(16)		NOT NULL,
    image_store		varchar(1000000)   NOT NULL,
    CONSTRAINT stores_pk PRIMARY KEY (id_store)
)ENGINE=InnoDB;

-- Table categoriesstore
CREATE TABLE stores_category (
    id_store_category   int(16)         NOT NULL,
    description         varchar(50)     NOT NULL,
    CONSTRAINT store_category_pk PRIMARY KEY (id_store_category)
)ENGINE=InnoDB;

-- Table products
CREATE TABLE products (
    id_product          int(16)         NOT NULL,
    id_store            int(16)         NOT NULL,
    id_branch_office    int(16)         NOT NULL,
    id_product_category int(16)     	NOT NULL,
    description         varchar(240)    NOT NULL,
    price               decimal(13,2)   NOT NULL,
    enable_discount     tinyint(1)      NOT NULL,
    image_product	varchar(1000000)   NOT NULL, 
    CONSTRAINT products_pk PRIMARY KEY (id_product, id_store)
)ENGINE=InnoDB;

-- Table productCategory
CREATE TABLE products_category (
    id_product_category int(16)         NOT NULL,
    description         varchar(50)     NOT NULL,
    CONSTRAINT product_category_pk PRIMARY KEY (id_product_category)
)ENGINE=InnoDB;

-- Table CLIENTES
CREATE TABLE clients (
    id_client         int(16)         NOT NULL,
    email             varchar(60)     NOT NULL,
    password          varchar(40)     NOT NULL,
    name              varchar(20)     NOT NULL,
    last_name         varchar(30)     NOT NULL,
    phone             varchar(20)     NOT NULL,
    points            int(16)         NOT NULL,
    address           varchar(100)    NOT NULL,
    CONSTRAINT clients_pk PRIMARY KEY (id_client)
)ENGINE=InnoDB;

-- Table discounts
CREATE TABLE discounts (
    id_discount        int(16)         NOT NULL,
    id_product         int(16)         NOT NULL,
    start_date         timestamp       NOT NULL,
    end_date           timestamp       NOT NULL,
    discounts_number   int(16)         NOT NULL,
    description        varchar(200)    NOT NULL,
    price              decimal(13,2)       NOT NULL,
    CONSTRAINT discounts_pk PRIMARY KEY (id_discount)
)ENGINE=InnoDB;

-- Table recorddiscounts
CREATE TABLE record_discounts (
    id_client           int(16)         NOT NULL,
    id_discount         int(16)         NOT NULL,
    CONSTRAINT discounts_record_pk PRIMARY KEY (id_client, id_discount)
)ENGINE=InnoDB;

-- --- Foreign Keys

-- Reference:  branch_office_store (table: branch_office)
ALTER TABLE branch_offices ADD CONSTRAINT branch_office_store FOREIGN KEY (id_store)
    REFERENCES stores (id_store);

-- Reference:  stores_categoriestore (table: stores)
ALTER TABLE stores ADD CONSTRAINT stores_categoriestore FOREIGN KEY (id_store_category)
    REFERENCES stores_category (id_store_category);

-- Reference:  productS_stores (table: stores)
ALTER TABLE products ADD CONSTRAINT products_stores FOREIGN KEY (id_store)
    REFERENCES stores (id_store);

-- Reference:  productS_SUCURSAL (table: productS)
ALTER TABLE products ADD CONSTRAINT products_branch_office FOREIGN KEY (id_branch_office)
    REFERENCES branch_offices (id_branch_office);

-- Reference:  productS_categoriesproduct (table: productS)
ALTER TABLE products ADD CONSTRAINT products_products_category FOREIGN KEY (id_product_category)
    REFERENCES products_category (id_product_category);

-- Reference:  discounts_productS (table: discounts)
ALTER TABLE discounts ADD CONSTRAINT discounts_products FOREIGN KEY (id_product)
    REFERENCES products (id_product);    

-- Reference:  recorddiscounts_CLIENTE (table: recorddiscounts)
ALTER TABLE record_discounts ADD CONSTRAINT record_discounts_client FOREIGN KEY (id_client)
    REFERENCES clients (id_client);

-- Reference:  recorddiscounts_discounts (table: recorddiscounts)
ALTER TABLE record_discounts ADD CONSTRAINT record_discounts_discounts FOREIGN KEY (id_discount)
    REFERENCES discounts (id_discount);
