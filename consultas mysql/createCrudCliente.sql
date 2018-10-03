delimiter $$
CREATE procedure crudCliente(IN _idcliente int,IN _nombre varchar(45),IN _ci varchar(45),IN _celular varchar(45),IN accion varchar(45))     /* Parámetro de entrada */
  begin 
    IF accion = 'new' then
      INSERT INTO cliente (nombre_cliente,ci_cliente,celular_cliente) VALUES(_nombre,_ci,_celular);
    end IF;
    IF accion = 'update' then
      UPDATE cliente SET nombre_cliente=_nombre,ci_cliente=_ci,celular_cliente=_celular WHERE idcliente=_idcliente;
    end IF;
    IF accion = 'delete' then
      DELETE FROM cliente WHERE idcliente = _idcliente;
    end IF;
    IF accion = 'selectLIKE' then
      SELECT * FROM cliente WHERE nombre_cliente like _nombre ;
    end IF;
    IF accion = 'selectId' then
      SELECT * FROM cliente WHERE idcliente = _idcliente;
    end IF;
    IF accion = 'select' then
      SELECT * FROM cliente ;
    end IF;
  end$$
delimiter ;
