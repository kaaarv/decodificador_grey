// Archivo: tb_display.sv
module tb_display;

    // Señales
    reg [3:0] binary_code;
    wire [6:0] display_code;

    // Instanciación del módulo display
    display uut (
        .binary_code(binary_code),
        .display_code(display_code)
    );

    // Inicialización y estímulos
    initial begin
        // Aplicar todos los valores binarios posibles
        binary_code = 4'b0000; #10; $display("Binary: %b, Display: %b", binary_code, display_code);
        binary_code = 4'b0001; #10; $display("Binary: %b, Display: %b", binary_code, display_code);
        binary_code = 4'b0010; #10; $display("Binary: %b, Display: %b", binary_code, display_code);
        binary_code = 4'b0011; #10; $display("Binary: %b, Display: %b", binary_code, display_code);
        binary_code = 4'b0100; #10; $display("Binary: %b, Display: %b", binary_code, display_code);
        binary_code = 4'b0101; #10; $display("Binary: %b, Display: %b", binary_code, display_code);
        binary_code = 4'b0110; #10; $display("Binary: %b, Display: %b", binary_code, display_code);
        binary_code = 4'b0111; #10; $display("Binary: %b, Display: %b", binary_code, display_code);
        binary_code = 4'b1000; #10; $display("Binary: %b, Display: %b", binary_code, display_code);
        binary_code = 4'b1001; #10; $display("Binary: %b, Display: %b", binary_code, display_code);
        binary_code = 4'b1010; #10; $display("Binary: %b, Display: %b", binary_code, display_code);
        binary_code = 4'b1011; #10; $display("Binary: %b, Display: %b", binary_code, display_code);
        binary_code = 4'b1100; #10; $display("Binary: %b, Display: %b", binary_code, display_code);
        binary_code = 4'b1101; #10; $display("Binary: %b, Display: %b", binary_code, display_code);
        binary_code = 4'b1110; #10; $display("Binary: %b, Display: %b", binary_code, display_code);
        binary_code = 4'b1111; #10; $display("Binary: %b, Display: %b", binary_code, display_code);

        // Terminar la simulación
        $finish;
    end

    // Dump de las señales a un archivo VCD
    initial begin
        $dumpfile("simulation.vcd"); // Nombre del archivo VCD
        $dumpvars(0, tb_display); // Dump de todas las señales del testbench
    end

endmodule
