module tb_module_comparator;
    // Declarar señales de prueba
    logic [3:0] binary_code;  // Entrada para el código binario
    logic comparation;                  // Salida del comparador

    // Instanciar el módulo comparator
    comparator uut (
        .binary_code(binary_code),
        .comparation(comparation)
    );

    // Bloque inicial para aplicar estímulos de prueba
    initial begin
        // Estímulo 1: Probar con un valor menor que 9 (por ejemplo, 4'b0110 = 6)
        binary_code = 4'b0110;
        #10; // Esperar 10 unidades de tiempo
        $display("binary_code = %b, comparation = %b", binary_code, comparation);

        // Estímulo 2: Probar con un valor igual a 9 (por ejemplo, 4'b1001 = 9)
        binary_code = 4'b1001;
        #10; // Esperar 10 unidades de tiempo
        $display("binary_code = %b, comparation = %b", binary_code, comparation);

        // Estímulo 3: Probar con un valor mayor que 9 (por ejemplo, 4'b1100 = 12)
        binary_code = 4'b1100;
        #10; // Esperar 10 unidades de tiempo
        $display("binary_code = %b, comparation = %b", binary_code, comparation);

        // Estímulo 4: Probar con un valor muy pequeño (por ejemplo, 4'b0001 = 1)
        binary_code = 4'b0001;
        #10; // Esperar 10 unidades de tiempo
        $display("binary_code = %b, comparation = %b", binary_code, comparation);

        // Estímulo 5: Probar con el valor 4'b1111 = 15 (máximo posible en 4 bits)
        binary_code = 4'b1111;
        #10; // Esperar 10 unidades de tiempo
        $display("binary_code = %b, comparation = %b", binary_code, comparation);

        // Finalizar simulación
        $finish;
    end

      // Dump de las señales a un archivo VCD
  initial begin
    $dumpfile("simulation_comparator.vcd"); // Nombre del archivo VCD
    $dumpvars(0, tb_module_comparator); // Dump de todas las señales del testbench
  end

endmodule
