# modificación de datos (registros) de una tabla

> para modificar los datos de una tabla utilizamos el comando **UPDATE**
> debemos especificar un filtro -con el comando **WHERE**- para indicar cuál es el registro que queremos modificar


> fórmula: 

    UPDATE nombreTabla  
        SET  
            nombreCampo = valor,  
            nombreCampo2 = valor2  
        WHERE colID = valorID;  

> ejemplo práctico:

    UPDATE personas  
        SET  
            nombre = 'Vanessa'    
        WHERE id = 3;  

    UPDATE personas  
        SET  
            nombre = 'Diego',      
            alta = '2022-06-24'        
        WHERE id = 15;  

