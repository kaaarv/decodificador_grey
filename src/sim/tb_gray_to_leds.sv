module tb_gray_to_leds;

    // Señales
    logic [3:0] gray; // Entrada en Gray
    logic [3:0] binary; // Salida en Binario
    logic [5:0] leds; // Señales para los LEDs

    // Instanciación del módulo Gray Decoder
    gray_decoder uut_gray (
        .gray(gray),
        .binary(binary)
    );

    // Instanciación del módulo de despliegue en LEDs
    gray_to_leds uut_led (
        .binary(binary),
        .leds(leds)
    );

    // Inicialización y estímulos
    initial begin
        // Aplicar todos los valores Gray posibles y mostrar los resultados
        gray = 4'b0000; #10; $display("Gray: %b, Binary: %b, LEDs: %b", gray, binary, leds);
        gray = 4'b0001; #10; $display("Gray: %b, Binary: %b, LEDs: %b", gray, binary, leds);
        gray = 4'b0011; #10; $display("Gray: %b, Binary: %b, LEDs: %b", gray, binary, leds);
        gray = 4'b0010; #10; $display("Gray: %b, Binary: %b, LEDs: %b", gray, binary, leds);
        gray = 4'b0110; #10; $display("Gray: %b, Binary: %b, LEDs: %b", gray, binary, leds);
        gray = 4'b0111; #10; $display("Gray: %b, Binary: %b, LEDs: %b", gray, binary, leds);
        gray = 4'b0101; #10; $display("Gray: %b, Binary: %b, LEDs: %b", gray, binary, leds);
        gray = 4'b0100; #10; $display("Gray: %b, Binary: %b, LEDs: %b", gray, binary, leds);
        gray = 4'b1100; #10; $display("Gray: %b, Binary: %b, LEDs: %b", gray, binary, leds);
        gray = 4'b1101; #10; $display("Gray: %b, Binary: %b, LEDs: %b", gray, binary, leds);
        gray = 4'b1111; #10; $display("Gray: %b, Binary: %b, LEDs: %b", gray, binary, leds);
        gray = 4'b1110; #10; $display("Gray: %b, Binary: %b, LEDs: %b", gray, binary, leds);
        gray = 4'b1010; #10; $display("Gray: %b, Binary: %b, LEDs: %b", gray, binary, leds);
        gray = 4'b1011; #10; $display("Gray: %b, Binary: %b, LEDs: %b", gray, binary, leds);
        gray = 4'b1001; #10; $display("Gray: %b, Binary: %b, LEDs: %b", gray, binary, leds);
        gray = 4'b1000; #10; $display("Gray: %b, Binary: %b, LEDs: %b", gray, binary, leds);

        // Terminar la simulación
        $finish;
    end

    // Dump de las señales a un archivo VCD
    initial begin
        $dumpfile("simulation_combined.vcd"); // Nombre del archivo VCD
        $dumpvars(0, tb_gray_to_leds); // Dump de todas las señales del testbench
    end

endmodule