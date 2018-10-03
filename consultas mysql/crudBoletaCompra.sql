delimiter $$
CREATE procedure crudBoletaCompra(IN _idboleta int,IN _glosa_compra varchar(255),IN _fecha_compra date,IN _importe int,IN _vendedor int,IN accion varchar(45))     /* Parámetro de entrada */
  begin 
    IF accion = 'new' then
      INSERT INTO boleta_compra (glosa_compra,fecha_compra,importe_total,vendedor) VALUES(_glosa_compra,_fecha_compra,_importe,_vendedor);
    end IF;
    IF accion = 'update' then
      UPDATE boleta_compra SET glosa_compra=_glosa_compra,fecha_compra=_fecha_compra,importe_total=_importe,vendedor=_vendedor WHERE idboleta_compra=_idboleta;
    end IF;
    IF accion = 'delete' then
      DELETE FROM boleta_compra WHERE idboleta_compra=_idboleta;
    end IF;
    IF accion = 'selectLIKE' then
      SELECT * FROM boleta_compra WHERE idboleta_compra=_idboleta;
    end IF;
    IF accion = 'selectId' then
      SELECT * FROM boleta_compra WHERE idboleta_compra=_idboleta;
    end IF;
    IF accion = 'select' then
      SELECT * FROM boleta_compra order by idboleta_compra desc;
    end IF;
  end$$
delimiter ;