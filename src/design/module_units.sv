//Extrae la unidad en numeros binarios mayores a 9

module module_units (
    input logic [3 : 0] binary_code,      //Entrada: codigo binario mayor a 9
    output logic [3 : 0] binary_units      //Salida: unidades del numero binario de entrada

);

assign binary_code = {1'b0, num[2:0]}; //desplaza el numero y coloca un cero en el bit mas significativo
assign binary_units = binary_code - 4'b0010; // resta un 2, para que las unidades coincidan con codigo bcd

endmodule