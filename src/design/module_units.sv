//Extrae la unidad en numeros binarios mayores a 9

module units (
    input logic [3 : 0] binary_code,      //Entrada: codigo binario mayor a 9
    output logic [3 : 0] binary_units      //Salida: unidades del numero binario de entrada

);

assign binary_units = binary_code - 4'b1010;

endmodule