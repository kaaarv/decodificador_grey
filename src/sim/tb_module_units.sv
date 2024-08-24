module tb_units;
    // Declarar señales de prueba
    logic [3:0] binary_code;      // Entrada: código binario
    logic [3:0] binary_units;     // Salida: unidades en BCD

    // Instanciar el módulo units
    units uut (
        .binary_code(binary_code),
        .binary_units(binary_units)
    );

    // Bloque inicial para aplicar estímulos de prueba
    initial begin
        // Estímulo 1: Probar con un valor binario mayor que 9 (por ejemplo, 10)
        binary_code = 4'b1010; // 10 en binario
        #10; // Esperar 10 unidades de tiempo
        $display("binary_code = %b, binary_units = %b", binary_code, binary_units);

        // Estímulo 2: Probar con un valor binario de 11
        binary_code = 4'b1011; // 11 en binario
        #10; // Esperar 10 unidades de tiempo
        $display("binary_code = %b, binary_units = %b", binary_code, binary_units);

        // Estímulo 3: Probar con un valor binario de 12
        binary_code = 4'b1100; // 12 en binario
        #10; // Esperar 10 unidades de tiempo
        $display("binary_code = %b, binary_units = %b", binary_code, binary_units);

        // Estímulo 4: Probar con un valor binario de 13
        binary_code = 4'b1101; // 13 en binario
        #10; // Esperar 10 unidades de tiempo
        $display("binary_code = %b, binary_units = %b", binary_code, binary_units);

        // Estímulo 5: Probar con un valor binario de 14
        binary_code = 4'b1110; // 14 en binario
        #10; // Esperar 10 unidades de tiempo
        $display("binary_code = %b, binary_units = %b", binary_code, binary_units);

        // Estímulo 6: Probar con un valor binario de 15
        binary_code = 4'b1111; // 15 en binario
        #10; // Esperar 10 unidades de tiempo
        $display("binary_code = %b, binary_units = %b", binary_code, binary_units);

        // Finalizar simulación
        $finish;
    end
endmodule
