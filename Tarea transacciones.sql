set @v_id_subcrip = 0;
set @v_codigo_subcri = '202212345';
set @v_nombres = 'Jon Paul';
set @v_apellido = 'Doe';
select * from bd_sample.tbl_facturas;

insert into bd_sample.tbl_subscriptores(
id_subscriptor, codigo_subscriptor, nombres, apellidos
) values (@v_id_subcrip, @v_codigo_subcri, @v_nombres, @v_apellido);

/* EJECUCION  1*/
set @v_id_fact = 0;
set @v_fech_emision = '2022-04-07 17:10:44';
set @v_id_subcrip = 16;
set @v_n_items = 1;
set @v_precio_vta = 5.50;
set @v_sutotal = @v_precio_vta * @v_n_items;
set @v_isv_total = (@v_sutotal * 0.18);
set @v_t.pagar = @v_sutotal + @v_isv_total;
set @v_id_prod = 2;
set @v_cant = 2;

/*EJECUCIION2*/

insert into bd_sample.tbl_facturas
values( @v_id_factura,
@v_fech_emision,
 @v_id_subcrip,
@v_n_items ,
 @v_isv_total,
@v_sutotal,
@v_t.pagar
);

 set @v_id_fact = (select last_insert_id());
 
 insert into bd_sample.tbl_items_factura values
 (
 @v_id_fact,
@v_id_prod,
 @v_cant
 );