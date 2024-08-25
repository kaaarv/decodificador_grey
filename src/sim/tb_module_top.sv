`timescale 1ns / 1ps

module tb_top;

    // Entradas para el módulo 'top'
    reg [3:0] gray_code;
    reg show_decades;

    // Salida del módulo 'top'
    wire [6:0] display_code;

    // Instancia del módulo 'top'
    top uut (
        .gray_code(gray_code),
        .show_decades(show_decades),
        .display_code(display_code)
    );

    // Generación de señales de prueba
    initial begin
        // Inicialización
        gray_code = 4'b0000;
        show_decades = 0;

        // Pruebas con show_decades = 0
        // Verifica que el display muestra el valor binario correcto para valores de 0 a 15
        #10 gray_code = 4'b0000; // 0
        #10 gray_code = 4'b0001; // 1
        #10 gray_code = 4'b0010; // 2
        #10 gray_code = 4'b0011; // 3
        #10 gray_code = 4'b0100; // 4
        #10 gray_code = 4'b0101; // 5
        #10 gray_code = 4'b0110; // 6
        #10 gray_code = 4'b0111; // 7
        #10 gray_code = 4'b1000; // 8
        #10 gray_code = 4'b1001; // 9
        #10 gray_code = 4'b1010; // 10
        #10 gray_code = 4'b1011; // 11
        #10 gray_code = 4'b1100; // 12
        #10 gray_code = 4'b1101; // 13
        #10 gray_code = 4'b1110; // 14
        #10 gray_code = 4'b1111; // 15

        // Cambio de show_decades a 1
        #10 show_decades = 1;

        // Pruebas con show_decades = 1
        // Verifica que el display muestra las decenas cuando el valor es mayor a 9
        #10 gray_code = 4'b0000; // 0
        #10 gray_code = 4'b0001; // 1
        #10 gray_code = 4'b0010; // 2
        #10 gray_code = 4'b0011; // 3
        #10 gray_code = 4'b0100; // 4
        #10 gray_code = 4'b0101; // 5
        #10 gray_code = 4'b0110; // 6
        #10 gray_code = 4'b0111; // 7
        #10 gray_code = 4'b1000; // 8
        #10 gray_code = 4'b1001; // 9
        #10 gray_code = 4'b1010; // 10
        #10 gray_code = 4'b1011; // 11
        #10 gray_code = 4'b1100; // 12
        #10 gray_code = 4'b1101; // 13
        #10 gray_code = 4'b1110; // 14
        #10 gray_code = 4'b1111; // 15

        // Finalización de la simulación
        #10 $finish;
    end

    // Monitorear las señales
    initial begin
        $monitor("At time %t: gray_code = %b, show_decades = %b, display_code = %b",
                 $time, gray_code, show_decades, display_code);
    end

    // Dump de la simulación para VCD
    initial begin
        $dumpfile("tb_top_simulation.vcd");
        $dumpvars(0, tb_top);
    end

endmodule
