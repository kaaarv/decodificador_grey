// Archivo: tb_module_top.sv

module tb_module_top;

    // Señales de entrada
    reg [3:0] gray_code;
    reg show_decades;
    
    // Señales de salida
    wire [6:0] display_code;
    
    // Instanciar el módulo principal
    module_top uut (
        .gray_code(gray_code),
        .show_decades(show_decades),
        .display_code(display_code)
    );
    
    // Inicialización y estímulos
    initial begin
        // Inicializar señales
        gray_code = 4'b0000;  // Iniciar con 0 en Gray
        show_decades = 0;     // Mostrar unidades por defecto
        
        // Aplicar diferentes valores de gray_code
        #10 gray_code = 4'b0001;  // Gray: 1
        #10 gray_code = 4'b0010;  // Gray: 2
        #10 gray_code = 4'b0011;  // Gray: 3
        #10 gray_code = 4'b0100;  // Gray: 4
        #10 gray_code = 4'b0101;  // Gray: 5
        #10 gray_code = 4'b0110;  // Gray: 6
        #10 gray_code = 4'b0111;  // Gray: 7
        #10 gray_code = 4'b1000;  // Gray: 8
        #10 gray_code = 4'b1001;  // Gray: 9
        #10 gray_code = 4'b1010;  // Gray: 10
        #10 gray_code = 4'b1011;  // Gray: 11
        #10 gray_code = 4'b1100;  // Gray: 12
        #10 gray_code = 4'b1101;  // Gray: 13
        #10 gray_code = 4'b1110;  // Gray: 14
        #10 gray_code = 4'b1111;  // Gray: 15
        
        // Cambiar la señal show_decades para probar el otro mux
        #10 show_decades = 1;     // Cambiar a mostrar decenas
        
        // Esperar un poco y terminar la simulación
        #10 $finish;
    end
    
    // Dump de las señales a un archivo VCD
    initial begin
        $dumpfile("module_top_simulation.vcd"); // Nombre del archivo VCD
        $dumpvars(0, tb_module_top); // Dump de todas las señales del testbench
    end

endmodule
