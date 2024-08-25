module display (
    input logic [3 : 0] binary_code,      // Entrada: Código en binario
    output logic [6 : 0] display_code     // Salida: Código para el display
);
// Definición de las señales para cada segmento

    //Segmento A:
    assign display_code[6] = (~binary_code[0] & ~binary_code[1] & ~binary_code[2] & ~binary_code[3]) | //n0
                             (~binary_code[0] & binary_code[1] & ~binary_code[2] & ~binary_code[3]) |  //n2
                             (binary_code[0] & binary_code[1] & ~binary_code[2] & ~binary_code[3]) |   //n3
                             (binary_code[0] & ~binary_code[1] & binary_code[2] & ~binary_code[3]) |   //n5
                             (~binary_code[0] & binary_code[1] & binary_code[2] & ~binary_code[3]) |   //n6
                             (binary_code[0] & binary_code[1] & binary_code[2] & ~binary_code[3]) |    //n7
                             (~binary_code[0] & ~binary_code[1] & ~binary_code[2] & binary_code[3]) |  //n8
                             (binary_code[0] & ~binary_code[1] & ~binary_code[2] & binary_code[3]);    //n9

    //Segmento B:
    assign display_code[5] = (~binary_code[0] & ~binary_code[1] & ~binary_code[2] & ~binary_code[3]) | //n0
                             (binary_code[0] & ~binary_code[1] & ~binary_code[2] & ~binary_code[3]) |  //n1
                             (~binary_code[0] & binary_code[1] & ~binary_code[2] & ~binary_code[3]) |  //n2
                             (binary_code[0] & binary_code[1] & ~binary_code[2] & ~binary_code[3]) |   //n3
                             (~binary_code[0] & ~binary_code[1] & binary_code[2] & ~binary_code[3]) |  //n4
                             (binary_code[0] & binary_code[1] & binary_code[2] & ~binary_code[3]) |    //n7
                             (~binary_code[0] & ~binary_code[1] & ~binary_code[2] & binary_code[3]) |  //n8
                             (binary_code[0] & ~binary_code[1] & ~binary_code[2] & binary_code[3]);    //n9

    //Segmento C:
    assign display_code[4] = (~binary_code[0] & ~binary_code[1] & ~binary_code[2] & ~binary_code[3]) | //n0
                             (binary_code[0] & ~binary_code[1] & ~binary_code[2] & ~binary_code[3]) |  //n1
                             (binary_code[0] & binary_code[1] & ~binary_code[2] & ~binary_code[3]) |   //n3
                             (~binary_code[0] & ~binary_code[1] & binary_code[2] & ~binary_code[3]) |  //n4
                             (binary_code[0] & ~binary_code[1] & binary_code[2] & ~binary_code[3]) |   //n5
                             (~binary_code[0] & binary_code[1] & binary_code[2] & ~binary_code[3]) |   //n6
                             (binary_code[0] & binary_code[1] & binary_code[2] & ~binary_code[3]) |    //n7
                             (~binary_code[0] & ~binary_code[1] & ~binary_code[2] & binary_code[3]) |  //n8
                             (binary_code[0] & ~binary_code[1] & ~binary_code[2] & binary_code[3]);    //n9

    //Segmento D:
    assign display_code[3] = (~binary_code[0] & ~binary_code[1] & ~binary_code[2] & ~binary_code[3]) | //n0
                             (~binary_code[0] & binary_code[1] & ~binary_code[2] & ~binary_code[3]) |  //n2
                             (binary_code[0] & binary_code[1] & ~binary_code[2] & ~binary_code[3]) |   //n3
                             (binary_code[0] & ~binary_code[1] & binary_code[2] & ~binary_code[3]) |   //n5
                             (~binary_code[0] & binary_code[1] & binary_code[2] & ~binary_code[3]) |   //n6
                             (~binary_code[0] & ~binary_code[1] & ~binary_code[2] & binary_code[3]);   //n8

    //Segmento E:
    assign display_code[2] = (~binary_code[0] & ~binary_code[1] & ~binary_code[2] & ~binary_code[3]) | //n0
                             (~binary_code[0] & binary_code[1] & ~binary_code[2] & ~binary_code[3]) |  //n2
                             (~binary_code[0] & binary_code[1] & binary_code[2] & ~binary_code[3]) |   //n6
                             (~binary_code[0] & ~binary_code[1] & ~binary_code[2] & binary_code[3]);   //n8

    //Segmento F:
    assign display_code[1] = (~binary_code[0] & ~binary_code[1] & ~binary_code[2] & ~binary_code[3]) | //n0
                             (~binary_code[0] & ~binary_code[1] & binary_code[2] & ~binary_code[3]) |  //n4
                             (binary_code[0] & ~binary_code[1] & binary_code[2] & ~binary_code[3]) |   //n5
                             (~binary_code[0] & binary_code[1] & binary_code[2] & ~binary_code[3]) |   //n6
                             (~binary_code[0] & ~binary_code[1] & ~binary_code[2] & binary_code[3]) |  //n8
                             (binary_code[0] & ~binary_code[1] & ~binary_code[2] & binary_code[3]);    //n9

    //Segmento G:
    assign display_code[0] = (~binary_code[0] & binary_code[1] & ~binary_code[2] & ~binary_code[3]) |  //n2
                             (binary_code[0] & binary_code[1] & ~binary_code[2] & ~binary_code[3]) |   //n3
                             (~binary_code[0] & ~binary_code[1] & binary_code[2] & ~binary_code[3]) |  //n4
                             (binary_code[0] & ~binary_code[1] & binary_code[2] & ~binary_code[3]) |   //n5
                             (~binary_code[0] & binary_code[1] & binary_code[2] & ~binary_code[3]) |   //n6
                             (~binary_code[0] & ~binary_code[1] & ~binary_code[2] & binary_code[3]) |  //n8
                             (binary_code[0] & ~binary_code[1] & ~binary_code[2] & binary_code[3]);    //n9

endmodule
