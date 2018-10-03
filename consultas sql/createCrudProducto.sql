delimiter $$
CREATE procedure crudProducto(IN _idproducto int,IN _nombre varchar(45),IN _codigo varchar(45),IN _inventario varchar(45),IN accion varchar(45))     /* Parámetro de entrada */
  begin   
    IF accion = 'new' then
      INSERT INTO producto (nombre_producto,codigo_producto,inventario_producto) VALUES(_nombre,_codigo,_inventario);
    end IF;
    IF accion = 'update' then
      UPDATE producto SET nombre_producto=_nombre,codigo_producto=_codigo,inventario_producto=_inventario WHERE idproducto=_idproducto;
    end IF;
    IF accion = 'delete' then
      DELETE FROM producto WHERE idproducto = _idproducto;
      DELETE FROM inventario WHERE codigo_producto = _codigo;
    end IF;
    IF accion = 'selectLIKE' then
      SELECT * FROM producto WHERE nombre_producto like _nombre ;
    end IF;
    IF accion = 'selectId' then
      SELECT * FROM producto WHERE idproducto = _idproducto;
    end IF;
    IF accion = 'select' then
      SELECT * FROM producto ;
    end IF;
    IF _inventario = 'Si' then
      INSERT INTO inventario (codigo_producto,cantidad_disponible) VALUES(_codigo,0);
    end IF;
  end$$
delimiter ;