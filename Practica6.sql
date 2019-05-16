select Telefono_ext, Linea_Nombre from Linea where Linea_id > 6
group by Telefono_ext , Linea_Nombre

select Pasajero_Nombre, Apellido_Pat, Apellido_Mat from Pasajero where sexo = 'H'
group Pasajero_Nombre, Apellido_Pat, Apellido_Mat
Having tipo = 'Normal'

select Hora_salida, Horarios_id from Horarios
group Horarios_id, Hora_salida
having Hora_salida < 1200

select Reserva_id, Pago_id, Venta id, Total from Venta 
group Venta_id, Pago_id, Reserva_id, Total
having Total=550

select Viaje_estado as 'estados del viaje' from viaje
where Viaje_estado = 'A la espera'

select venta.Venta_id, Reserva.Venta.id as 'ventas por empleado' from Vendedor
inner join Reserva
on venta.Reserva_id = Reserva.Reserva_id

select reserva.asiento_id, asiento.asietno_id from Asiento
inner join Reserva
on reserva.autobus_id = reserva.pasajero_id

select autobus.autobus_id, conductores.conductor_id from conductores 
inner join autobuses
on autobuses.conductor_id = conductor. conductor_id

select sucursal.sucursal_id, vendedor.sucursal_id from sucursal
inner join vendedor
on sucursal.vendedor_id =vendedor.vendedor_id

select asiento.asiento_id, tipodeasiento.asiento_id from asiento
inner join tipodeasiento
on asiento.tipo_asiento_id = tipodeasiento.tipo_asiento_id 