module gray_decoder (
    input logic [3:0] gray,   // Entrada en Gray
    output logic [3:0] binary // Salida en Binario
);

    // Conversión de Gray a Binario
    assign binary[3] = gray[3];                // El bit más significativo es igual
    assign binary[2] = gray[3] ^ gray[2];      // bit2 = bit3 ^ bit2
    assign binary[1] = binary[2] ^ gray[1];   // bit1 = bit2 ^ bit1
    assign binary[0] = binary[1] ^ gray[0];   // bit0 = bit1 ^ bit0

endmodule