# Consultas de coincidencia

> las consultas de coincidencia sutilizan para obtener resultados que coincidan con cierta cadena de caracteres
> eso quiere decir que vamos a especificar sólo algunos caracteres para nuestro filtro
 
> vamos a traer razón social, teléfonos de la tabla proveedores que contenga la cadena 'Electro'

    SELECT razonsocial, telefono  
      FROM proveedores
      WHERE razonsocial LIKE '%electro%';


> Cuando queremos hacer esto vamos a implementar un filtro que tiene que combinar dos partes  
> Primero la palabra reservada **LIKE**
> Y luego vamos a utilizar el símbolo de **%** (porcentaje) como una especie de comodín que podría ocupar uno, varios o incluso ningún carácter
 
> también tenemos otro comodín que es específico para un solo carácter **_** el guión bajo
