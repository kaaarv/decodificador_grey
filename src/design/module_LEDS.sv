//Este modulo controla los datos enviados a los puertos de LEDs

module module_LEDS # (  //Control de los leds (recibe el código binario)

    input logic [3 : 0] binary_code,    //Entrada: Código Grey ya convertido a binario
    output logic [3 : 0] leds_code      //Salida: Código para el control de LEDs
);
    
    assign leds_code = binary_code;     //Asignación: Código binario al control de LEDs
endmodule