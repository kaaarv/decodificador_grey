module tb_gray_decoder;

    // Señales
    reg [3:0] gray;
    wire [3:0] binary;

    // Instanciación del módulo
    gray_decoder uut (
        .gray(gray),
        .binary(binary)
    );

    // Inicialización y estímulos
    initial begin
        // Aplicar toos los valores Gray posibles y mostrar los resultados
        gray = 4'b0000; #10; $display("Gray: %b, Binary: %b", gray, binary);
        gray = 4'b0001; #10; $display("Gray: %b, Binary: %b", gray, binary);
        gray = 4'b0011; #10; $display("Gray: %b, Binary: %b", gray, binary);
        gray = 4'b0010; #10; $display("Gray: %b, Binary: %b", gray, binary);
        gray = 4'b0110; #10; $display("Gray: %b, Binary: %b", gray, binary);
        gray = 4'b0111; #10; $display("Gray: %b, Binary: %b", gray, binary);
        gray = 4'b0101; #10; $display("Gray: %b, Binary: %b", gray, binary);
        gray = 4'b0100; #10; $display("Gray: %b, Binary: %b", gray, binary);
        gray = 4'b1100; #10; $display("Gray: %b, Binary: %b", gray, binary);
        gray = 4'b1101; #10; $display("Gray: %b, Binary: %b", gray, binary);
        gray = 4'b1111; #10; $display("Gray: %b, Binary: %b", gray, binary);
        gray = 4'b1110; #10; $display("Gray: %b, Binary: %b", gray, binary);
        gray = 4'b1010; #10; $display("Gray: %b, Binary: %b", gray, binary);
        gray = 4'b1011; #10; $display("Gray: %b, Binary: %b", gray, binary);
        gray = 4'b1001; #10; $display("Gray: %b, Binary: %b", gray, binary);
        gray = 4'b1000; #10; $display("Gray: %b, Binary: %b", gray, binary);

        // Terminar la simulación
        $finish;
    end

    // Dump de las señales a un archivo VCD
  initial begin
    $dumpfile("simulation.vcd"); // Nombre del archivo VCD
    $dumpvars(0, tb_gray_decoder); // Dump de todas las señales del testbench
  end

endmodule