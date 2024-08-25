//Este modulo controla los datos enviados a los puertos de LEDs

module gray_to_leds (
    input logic [3:0] binary,       // Entrada binaria
    output logic [5:0] leds         // Salida para LEDs (6 LEDs)
);

    // Asignar los 4 bits del valor binario a los primeros 4 LEDs
    assign leds[3:0] = binary;

    // Los últimos 2 LEDs apagados 
    assign leds[5:4] = 2'b00;

endmodule