
MERGE (a1:Aeropuerto{
id: "MXNAY071",
nombre:"Aeropuerto internacional Amado Nervo",
ciudad: "Tepic",
direccion: "Domicilio Conocido s/n El Pantanal, 63788 Xalisco, Nay.",
numeroPistas : 2
})

// Aeropuerto Guadalajara
MERGE (a2:Aeropuerto{
id:"MXJAL123",
nombre:"Aeropuerto Internacional de Guadalajara",
ciudad: "Guadalajara",
direccion: "Carr. Guadalajara - Chapala Km 17.5, 45659 Jal.",
numeroPistas : 15
})

// Aeropuerto Nogales
MERGE (a3:Aeropuerto{ 
id:"MXNOG144",
nombre:"Aeropuerto Internacional de Nogales",
ciudad: "Nogales",
direccion: "Carr. Internacional #15, 84000 Heroica Nogales, Son.",
numeroPistas : 18
})

MERGE (a4:Aeropuerto{ 
id:"MXMTYA074",
nombre:"Aeropuerto Internacional de Monterrey",
ciudad: "Monterrey",
direccion: "Carr. Miguel Alemán Km 24, 66600 Apodaca, N.L.",
numeroPistas : 20
})


MERGE (a5:Aeropuerto{ 
id:"MXCUNA073",
nombre:"Aeropuerto Internacional de Cancún",
ciudad: "Cancún",
direccion: "Carretera Cancún - Tulum Km 22, 77565 Cancún, Q.R.",
numeroPistas : 15
})


// Definición de las empresas
MERGE (e1:Empresa{
    RFC: "8i7nAzQ1bV3cX4dE5f",
    nombre: "Aeroméxico",
    nacionalidad: "Mexicana",
    direccionSedeCentral: "Avenida Juárez #456",
    telefonos: ["2345678901", "8901234567"], 
    cantidadAviones: 17
})
MERGE (e2:Empresa{
    RFC: "6h8gFtR3eD2wS1qA4z",
    nombre: "Delta Air Lines",
    nacionalidad: "Estadounidense",
    direccionSedeCentral: "Boulevard Washington #789",
    telefonos: ["3456789012", "9012345678"], 
    cantidadAviones: 73
})
MERGE (e3:Empresa{
    RFC: "5j2hBcN8mV7gFtR4e",
    nombre: "Interjet",
    nacionalidad: "Mexicana",
    direccionSedeCentral: "Calle Revolución #1011",
    telefonos: ["4567890123", "0123456789"], 
    cantidadAviones: 29
})
MERGE (e4:Empresa{
    RFC: "4k9lPqR6yH0nJ7bV3x",
    nombre: "American Airlines",
    nacionalidad: "Estadounidense",
    direccionSedeCentral: "Avenida Broadway #1213",
    telefonos: ["5678901234", "1234567890"], 
    cantidadAviones: 50
})
MERGE (e5:Empresa{
    RFC: "3w2sD4r5q1a9v7g8b",
    nombre: "Volaris",
    nacionalidad: "Mexicana",
    direccionSedeCentral: "Calle Reforma #1415",
    telefonos: ["6789012345", "2345678901"], 
    cantidadAviones: 88
})
MERGE (e6:Empresa{
    RFC: "1z2xV3c4b5n6m7l8k",
    nombre: "Air Canada",
    nacionalidad: "Canadiense",
    direccionSedeCentral: "Calle Canadá #1617",
    telefonos: ["7890123456", "3456789012"], 
    cantidadAviones: 12
})
MERGE (e7:Empresa{
    RFC: "9o8iC2xV3cB4n5m6L",
    nombre: "Viva Aerobus",
    nacionalidad: "Mexicana",
    direccionSedeCentral: "Calle Toluca #1819",
    telefonos: ["8901234567", "4567890123"], 
    cantidadAviones: 35
})
MERGE (e8:Empresa{
    RFC: "0p9oA1z2xS3d4f5g6H",
    nombre: "JetBlue Airways",
    nacionalidad: "Estadounidense",
    direccionSedeCentral: "Avenida Sunset #2021",
    telefonos: ["9012345678", "5678901234"], 
    cantidadAviones: 64
})
MERGE (e9:Empresa{
    RFC: "5r4eG6h7jU8i9o0pL",
    nombre: "WestJet Airlines",
    nacionalidad: "Canadiense",
    direccionSedeCentral: "Calle Quebec #2223",
    telefonos: ["0123456789", "6789012345"], 
    cantidadAviones: 21
})
MERGE (e10:Empresa{
    RFC: "3t4yS6u7i8oP9a0sD",
    nombre: "Aeromar",
    nacionalidad: "Mexicana",
    direccionSedeCentral: "Calle Acapulco #2425",
    telefonos: ["1234567890", "7890123456"], 
    cantidadAviones: 77
})

//Colocando las relaciones
MERGE (a1)-[trab1: EMPRESA_OPERADORA]->(e1)
MERGE (a1)-[trab2: EMPRESA_OPERADORA]->(e2)
MERGE (a1)-[trab3: EMPRESA_OPERADORA]->(e3)
MERGE (a1)-[trab4: EMPRESA_OPERADORA]->(e4)
MERGE (a1)-[trab5: EMPRESA_OPERADORA]->(e5)

MERGE (a2)-[trab6: EMPRESA_OPERADORA]->(e6)
MERGE (a2)-[trab7: EMPRESA_OPERADORA]->(e7)
MERGE (a2)-[trab8: EMPRESA_OPERADORA]->(e8)
MERGE (a2)-[trab9: EMPRESA_OPERADORA]->(e9)
MERGE (a2)-[trab10: EMPRESA_OPERADORA]->(e10)

MERGE (a3)-[trab11: EMPRESA_OPERADORA]->(e1)
MERGE (a3)-[trab12: EMPRESA_OPERADORA]->(e2)
MERGE (a3)-[trab13: EMPRESA_OPERADORA]->(e3)
MERGE (a3)-[trab14: EMPRESA_OPERADORA]->(e4)
MERGE (a3)-[trab15: EMPRESA_OPERADORA]->(e7)

MERGE (a4)-[trab16: EMPRESA_OPERADORA]->(e1)
MERGE (a4)-[trab17: EMPRESA_OPERADORA]->(e3)
MERGE (a4)-[trab18: EMPRESA_OPERADORA]->(e10)
MERGE (a4)-[trab19: EMPRESA_OPERADORA]->(e7)
MERGE (a4)-[trab20: EMPRESA_OPERADORA]->(e8)

MERGE (a5)-[trab21: EMPRESA_OPERADORA]->(e10)
MERGE (a5)-[trab22: EMPRESA_OPERADORA]->(e2)
MERGE (a5)-[trab23: EMPRESA_OPERADORA]->(e4)
MERGE (a5)-[trab24: EMPRESA_OPERADORA]->(e3)
MERGE (a5)-[trab25: EMPRESA_OPERADORA]->(e1)

// ------>>>>
MERGE (na1:Nacional{
    paisPertenencia: "México",
    permisoViajeExtranjero: true
})
MERGE (na2:Continental{
    continenteOrigen: "America",
    continenteOperacion: "America"
})
MERGE (na3:Continental{
    continenteOrigen: "America",
    continenteOperacion: "America"
})
MERGE (na4:Internacional{
    paisesNoPuedeViajar: ["Ecuador","Panamá"]
})
MERGE (na5:Continental{
    continenteOrigen: "Europa",
    continenteOperacion: "America"
})

MERGE (na6:Nacional{
    paisPertenencia: "China",
    permisoViajeExtranjero: true
})
MERGE (na7:Continental{
    continenteOrigen: "Asia",
    continenteOperacion: "America"
})
MERGE (na8:Continental{
    continenteOrigen: "Europa",
    continenteOperacion: "America"
})
MERGE (na9:Internacional{
    paisesNoPuedeViajar: ["Ecuador","Panamá", "China", "Francia"]
})
MERGE (na10:Continental{
    continenteOrigen: "Europa",
    continenteOperacion: "America"
})

MERGE (na1)-[tip1: TIPO_NACIONAL]->(e1)
MERGE (na2)-[tip2: TIPO_CONTINENTAL]->(e2)
MERGE (na3)-[tip3: TIPO_CONTINENTAL]->(e3)
MERGE (na4)-[tip4: TIPO_INTERNACIONAL]->(e4)
MERGE (na5)-[tip5: TIPO_CONTINENTAL]->(e5)

MERGE (na6)-[tip6: TIPO_NACIONAL]->(e6)
MERGE (na7)-[tip7: TIPO_CONTINENTAL]->(e7)
MERGE (na8)-[tip8: TIPO_CONTINENTAL]->(e8)
MERGE (na9)-[tip9: TIPO_INTERNACIONAL]->(e9)
MERGE (na10)-[tip10: TIPO_CONTINENTAL]->(e10)

// E1
MERGE (per1:Personal{
    CURP: "123456789012345678",
    nacionalidad: "Mexicana",
    paisRecidencia: "México",
    nombres: "Juan",
    direccion: "Calle Juárez #123",
    lenguaMaterna: "Español"
})
MERGE (per2:Personal{
    CURP: "987654321098765432",
    nacionalidad: "Estadounidense",
    paisRecidencia: "Estados Unidos",
    nombres: "Emily",
    direccion: "123 Main Street, New York",
    lenguaMaterna: "Inglés"
})
MERGE (per3:Personal{
    CURP: "246813579024681357",
    nacionalidad: "Canadiense",
    paisRecidencia: "Canadá",
    nombres: "Sophie",
    direccion: "789 Maple Avenue, Toronto",
    lenguaMaterna: "Inglés"
})
MERGE (per4:Personal{
    CURP: "135792468013579246",
    nacionalidad: "Francesa",
    paisRecidencia: "Francia",
    nombres: "Pierre",
    direccion: "456 Rue Principale, Paris",
    lenguaMaterna: "Francés"
})
MERGE (per5:Personal{
    CURP: "567890123456789012",
    nacionalidad: "Alemana",
    paisRecidencia: "Alemania",
    nombres: "Anna",
    direccion: "10 Hauptstraße, Berlin",
    lenguaMaterna: "Alemán"
})
MERGE (per6:Personal{
    CURP: "901234567890123456",
    nacionalidad: "Italiana",
    paisRecidencia: "Italia",
    nombres: "Giuseppe",
    direccion: "Via Roma, Rome",
    lenguaMaterna: "Italiano"
})
MERGE (per7:Personal{
    CURP: "357159753113573951",
    nacionalidad: "Japonesa",
    paisRecidencia: "Japón",
    nombres: "Sakura",
    direccion: "Shibuya Crossing, Tokyo",
    lenguaMaterna: "Japonés"
})
MERGE (per8:Personal{
    CURP: "024680246802468024",
    nacionalidad: "Británica",
    paisRecidencia: "Reino Unido",
    nombres: "James",
    direccion: "Baker Street, London",
    lenguaMaterna: "Inglés"
})
MERGE (per9:Personal{
    CURP: "444444444444444444",
    nacionalidad: "Australiana",
    paisRecidencia: "Australia",
    nombres: "Emma",
    direccion: "123 Kangaroo Street, Sydney",
    lenguaMaterna: "Inglés"
})
MERGE (per10:Personal{
    CURP: "888888888888888888",
    nacionalidad: "Rusa",
    paisRecidencia: "Rusia",
    nombres: "Ivan",
    direccion: "Red Square, Moscow",
    lenguaMaterna: "Ruso"
})
MERGE (per11:Personal{
    CURP: "777777777777777777",
    nacionalidad: "China",
    paisRecidencia: "China",
    nombres: "Wei",
    direccion: "Shanghai Tower, Shanghai",
    lenguaMaterna: "Mandarín"
})
MERGE (per12:Personal{
    CURP: "222222222222222222",
    nacionalidad: "Coreana",
    paisRecidencia: "Corea del Sur",
    nombres: "Minho",
    direccion: "Gangnam-gu, Seoul",
    lenguaMaterna: "Coreano"
})
MERGE (per13:Personal{
    CURP: "333333333333333333",
    nacionalidad: "Argentina",
    paisRecidencia: "Argentina",
    nombres: "Sofía",
    direccion: "Avenida 9 de Julio, Buenos Aires",
    lenguaMaterna: "Español"
})
MERGE (per14:Personal{
    CURP: "666666666666666666",
    nacionalidad: "Brasileña",
    paisRecidencia: "Brasil",
    nombres: "Rafael",
    direccion: "Copacabana Beach, Rio de Janeiro",
    lenguaMaterna: "Portugués"
})
MERGE (per15:Personal{
    CURP: "999999999999999999",
    nacionalidad: "Sudafricana",
    paisRecidencia: "Sudáfrica",
    nombres: "Lerato",
    direccion: "Nelson Mandela Boulevard, Johannesburg",
    lenguaMaterna: "Zulú"
})


// E2
MERGE (per16:Personal{
    CURP: "111122223333444455",
    nacionalidad: "Mexicana",
    paisRecidencia: "México",
    nombres: "María",
    direccion: "Calle Benito Juárez #123",
    lenguaMaterna: "Español"
})
MERGE (per17:Personal{
    CURP: "666677778888999900",
    nacionalidad: "Estadounidense",
    paisRecidencia: "Estados Unidos",
    nombres: "Michael",
    direccion: "123 Oak Street, Los Angeles",
    lenguaMaterna: "Inglés"
})
MERGE (per18:Personal{
    CURP: "444466667777888899",
    nacionalidad: "Canadiense",
    paisRecidencia: "Canadá",
    nombres: "Sophia",
    direccion: "789 Maple Avenue, Toronto",
    lenguaMaterna: "Inglés"
})
MERGE (per19:Personal{
    CURP: "111199992222333344",
    nacionalidad: "Francesa",
    paisRecidencia: "Francia",
    nombres: "Louis",
    direccion: "456 Rue de la République, Paris",
    lenguaMaterna: "Francés"
})
MERGE (per20:Personal{
    CURP: "555566667777888899",
    nacionalidad: "Alemana",
    paisRecidencia: "Alemania",
    nombres: "Hannah",
    direccion: "10 Hauptstraße, Berlin",
    lenguaMaterna: "Alemán"
})
MERGE (per21:Personal{
    CURP: "123498765432101234",
    nacionalidad: "Italiana",
    paisRecidencia: "Italia",
    nombres: "Luca",
    direccion: "Via Roma, Rome",
    lenguaMaterna: "Italiano"
})
MERGE (per22:Personal{
    CURP: "246813579024681357",
    nacionalidad: "Japonesa",
    paisRecidencia: "Japón",
    nombres: "Yuki",
    direccion: "Shibuya Crossing, Tokyo",
    lenguaMaterna: "Japonés"
})
MERGE (per23:Personal{
    CURP: "135792468013579246",
    nacionalidad: "Británica",
    paisRecidencia: "Reino Unido",
    nombres: "Emma",
    direccion: "Baker Street, London",
    lenguaMaterna: "Inglés"
})
MERGE (per24:Personal{
    CURP: "678990123456789012",
    nacionalidad: "Australiana",
    paisRecidencia: "Australia",
    nombres: "Oliver",
    direccion: "123 Kangaroo Street, Sydney",
    lenguaMaterna: "Inglés"
})
MERGE (per25:Personal{
    CURP: "000011112222333344",
    nacionalidad: "Rusa",
    paisRecidencia: "Rusia",
    nombres: "Natalia",
    direccion: "Red Square, Moscow",
    lenguaMaterna: "Ruso"
})
MERGE (per26:Personal{
    CURP: "444488889999111122",
    nacionalidad: "China",
    paisRecidencia: "China",
    nombres: "Wei",
    direccion: "Shanghai Tower, Shanghai",
    lenguaMaterna: "Mandarín"
})
MERGE (per27:Personal{
    CURP: "222233334444555566",
    nacionalidad: "Coreana",
    paisRecidencia: "Corea del Sur",
    nombres: "Minho",
    direccion: "Gangnam-gu, Seoul",
    lenguaMaterna: "Coreano"
})
MERGE (per28:Personal{
    CURP: "888899990000111122",
    nacionalidad: "Argentina",
    paisRecidencia: "Argentina",
    nombres: "Sofía",
    direccion: "Avenida 9 de Julio, Buenos Aires",
    lenguaMaterna: "Español"
})
MERGE (per29:Personal{
    CURP: "555566667777888899",
    nacionalidad: "Brasileña",
    paisRecidencia: "Brasil",
    nombres: "Rafael",
    direccion: "Copacabana Beach, Rio de Janeiro",
    lenguaMaterna: "Portugués"
})
MERGE (per30:Personal{
    CURP: "999988887777666655",
    nacionalidad: "Sudafricana",
    paisRecidencia: "Sudáfrica",
    nombres: "Lerato",
    direccion: "Nelson Mandela Boulevard, Johannesburg",
    lenguaMaterna: "Zulú"
})


// E3
MERGE (per31:Personal{
    CURP: "123412341234123412",
    nacionalidad: "Mexicana",
    paisRecidencia: "México",
    nombres: "Alejandra",
    direccion: "Calle Hidalgo #456",
    lenguaMaterna: "Español"
})
MERGE (per32:Personal{
    CURP: "567856785678567856",
    nacionalidad: "Estadounidense",
    paisRecidencia: "Estados Unidos",
    nombres: "Matthew",
    direccion: "456 Elm Street, San Francisco",
    lenguaMaterna: "Inglés"
})
MERGE (per33:Personal{
    CURP: "912391239123912391",
    nacionalidad: "Canadiense",
    paisRecidencia: "Canadá",
    nombres: "Isabella",
    direccion: "789 Pine Avenue, Vancouver",
    lenguaMaterna: "Inglés"
})
MERGE (per34:Personal{
    CURP: "246924692469246924",
    nacionalidad: "Francesa",
    paisRecidencia: "Francia",
    nombres: "Gabriel",
    direccion: "123 Boulevard Saint-Germain, Paris",
    lenguaMaterna: "Francés"
})
MERGE (per35:Personal{
    CURP: "891789178917891789",
    nacionalidad: "Alemana",
    paisRecidencia: "Alemania",
    nombres: "Mia",
    direccion: "10 Friedrichstraße, Berlin",
    lenguaMaterna: "Alemán"
})
MERGE (per36:Personal{
    CURP: "345834583458345834",
    nacionalidad: "Italiana",
    paisRecidencia: "Italia",
    nombres: "Alessandro",
    direccion: "Via Veneto, Rome",
    lenguaMaterna: "Italiano"
})
MERGE (per37:Personal{
    CURP: "789678967896789678",
    nacionalidad: "Japonesa",
    paisRecidencia: "Japón",
    nombres: "Haruto",
    direccion: "Shinjuku District, Tokyo",
    lenguaMaterna: "Japonés"
})
MERGE (per38:Personal{
    CURP: "123812381238123812",
    nacionalidad: "Británica",
    paisRecidencia: "Reino Unido",
    nombres: "Emily",
    direccion: "221B Baker Street, London",
    lenguaMaterna: "Inglés"
})
MERGE (per39:Personal{
    CURP: "567156715671567156",
    nacionalidad: "Australiana",
    paisRecidencia: "Australia",
    nombres: "Jack",
    direccion: "123 Koala Street, Sydney",
    lenguaMaterna: "Inglés"
})
MERGE (per40:Personal{
    CURP: "901890189018901890",
    nacionalidad: "Rusa",
    paisRecidencia: "Rusia",
    nombres: "Anastasia",
    direccion: "Red Square, Moscow",
    lenguaMaterna: "Ruso"
})
MERGE (per41:Personal{
    CURP: "234523452345234523",
    nacionalidad: "China",
    paisRecidencia: "China",
    nombres: "Wei",
    direccion: "The Bund, Shanghai",
    lenguaMaterna: "Mandarín"
})
MERGE (per42:Personal{
    CURP: "789178917891789178",
    nacionalidad: "Coreana",
    paisRecidencia: "Corea del Sur",
    nombres: "Soo-Min",
    direccion: "Gangnam District, Seoul",
    lenguaMaterna: "Coreano"
})
MERGE (per43:Personal{
    CURP: "567567567567567567",
    nacionalidad: "Argentina",
    paisRecidencia: "Argentina",
    nombres: "Mateo",
    direccion: "Avenida Corrientes, Buenos Aires",
    lenguaMaterna: "Español"
})
MERGE (per44:Personal{
    CURP: "121212121212121212",
    nacionalidad: "Brasileña",
    paisRecidencia: "Brasil",
    nombres: "Juliana",
    direccion: "Ipanema Beach, Rio de Janeiro",
    lenguaMaterna: "Portugués"
})
MERGE (per45:Personal{
    CURP: "989898989898989898",
    nacionalidad: "Sudafricana",
    paisRecidencia: "Sudáfrica",
    nombres: "Thabo",
    direccion: "Table Mountain Road, Cape Town",
    lenguaMaterna: "Zulú"
})


// E4
MERGE (per46:Personal{
    CURP: "987698769876987698",
    nacionalidad: "Mexicana",
    paisRecidencia: "México",
    nombres: "José",
    direccion: "Calle Morelos #789",
    lenguaMaterna: "Español"
})
MERGE (per47:Personal{
    CURP: "123451234512345123",
    nacionalidad: "Estadounidense",
    paisRecidencia: "Estados Unidos",
    nombres: "Emma",
    direccion: "789 Oak Avenue, Chicago",
    lenguaMaterna: "Inglés"
})
MERGE (per48:Personal{
    CURP: "678967896789678967",
    nacionalidad: "Canadiense",
    paisRecidencia: "Canadá",
    nombres: "Liam",
    direccion: "345 Maple Street, Toronto",
    lenguaMaterna: "Inglés"
})
MERGE (per49:Personal{
    CURP: "234512345123451234",
    nacionalidad: "Francesa",
    paisRecidencia: "Francia",
    nombres: "Charlotte",
    direccion: "567 Boulevard Saint-Michel, Paris",
    lenguaMaterna: "Francés"
})
MERGE (per50:Personal{
    CURP: "789067890678906789",
    nacionalidad: "Alemana",
    paisRecidencia: "Alemania",
    nombres: "Finn",
    direccion: "10 Alexanderplatz, Berlin",
    lenguaMaterna: "Alemán"
})
MERGE (per51:Personal{
    CURP: "345612345612345612",
    nacionalidad: "Italiana",
    paisRecidencia: "Italia",
    nombres: "Giulia",
    direccion: "Via della Conciliazione, Rome",
    lenguaMaterna: "Italiano"
})
MERGE (per52:Personal{
    CURP: "890678906789067890",
    nacionalidad: "Japonesa",
    paisRecidencia: "Japón",
    nombres: "Haruka",
    direccion: "1 Chome-1-2 Oshiage, Tokyo",
    lenguaMaterna: "Japonés"
})
MERGE (per53:Personal{
    CURP: "456123456123456123",
    nacionalidad: "Británica",
    paisRecidencia: "Reino Unido",
    nombres: "William",
    direccion: "10 Downing Street, London",
    lenguaMaterna: "Inglés"
})
MERGE (per54:Personal{
    CURP: "901890189018901890",
    nacionalidad: "Australiana",
    paisRecidencia: "Australia",
    nombres: "Isabella",
    direccion: "123 Sydney Harbour Drive, Sydney",
    lenguaMaterna: "Inglés"
})
MERGE (per55:Personal{
    CURP: "567890678906789067",
    nacionalidad: "Rusa",
    paisRecidencia: "Rusia",
    nombres: "Dmitri",
    direccion: "Kremlin, Moscow",
    lenguaMaterna: "Ruso"
})
MERGE (per56:Personal{
    CURP: "234567234567234567",
    nacionalidad: "China",
    paisRecidencia: "China",
    nombres: "Ling",
    direccion: "Forbidden City, Beijing",
    lenguaMaterna: "Mandarín"
})
MERGE (per57:Personal{
    CURP: "890456890456890456",
    nacionalidad: "Coreana",
    paisRecidencia: "Corea del Sur",
    nombres: "Ji-Hye",
    direccion: "Gyeongbokgung Palace, Seoul",
    lenguaMaterna: "Coreano"
})
MERGE (per58:Personal{
    CURP: "567234567234567234",
    nacionalidad: "Argentina",
    paisRecidencia: "Argentina",
    nombres: "Matías",
    direccion: "Avenida de Mayo, Buenos Aires",
    lenguaMaterna: "Español"
})
MERGE (per59:Personal{
    CURP: "456789456789456789",
    nacionalidad: "Brasileña",
    paisRecidencia: "Brasil",
    nombres: "Gabriela",
    direccion: "Avenida Paulista, São Paulo",
    lenguaMaterna: "Portugués"
})
MERGE (per60:Personal{
    CURP: "123890123890123890",
    nacionalidad: "Sudafricana",
    paisRecidencia: "Sudáfrica",
    nombres: "Thabo",
    direccion: "Robben Island, Cape Town",
    lenguaMaterna: "Zulú"
})



// E5
MERGE (per61:Personal{
    CURP: "456123890123456789",
    nacionalidad: "Mexicana",
    paisRecidencia: "México",
    nombres: "Luis",
    direccion: "Calle Independencia #456",
    lenguaMaterna: "Español"
})
MERGE (per62:Personal{
    CURP: "789456456123456123",
    nacionalidad: "Estadounidense",
    paisRecidencia: "Estados Unidos",
    nombres: "Sophia",
    direccion: "456 Pine Street, New York",
    lenguaMaterna: "Inglés"
})
MERGE (per63:Personal{
    CURP: "123890789456123456",
    nacionalidad: "Canadiense",
    paisRecidencia: "Canadá",
    nombres: "Noah",
    direccion: "789 Maple Avenue, Toronto",
    lenguaMaterna: "Inglés"
})
MERGE (per64:Personal{
    CURP: "456789123890789123",
    nacionalidad: "Francesa",
    paisRecidencia: "Francia",
    nombres: "Camille",
    direccion: "123 Avenue des Champs-Élysées, Paris",
    lenguaMaterna: "Francés"
})
MERGE (per65:Personal{
    CURP: "890123456789012345",
    nacionalidad: "Alemana",
    paisRecidencia: "Alemania",
    nombres: "Max",
    direccion: "10 Kurfürstendamm, Berlin",
    lenguaMaterna: "Alemán"
})
MERGE (per66:Personal{
    CURP: "123456789456789123",
    nacionalidad: "Italiana",
    paisRecidencia: "Italia",
    nombres: "Chiara",
    direccion: "Via Veneto, Rome",
    lenguaMaterna: "Italiano"
})
MERGE (per67:Personal{
    CURP: "789123456789123456",
    nacionalidad: "Japonesa",
    paisRecidencia: "Japón",
    nombres: "Ren",
    direccion: "Shinjuku District, Tokyo",
    lenguaMaterna: "Japonés"
})
MERGE (per68:Personal{
    CURP: "456789456123456789",
    nacionalidad: "Británica",
    paisRecidencia: "Reino Unido",
    nombres: "Charlotte",
    direccion: "10 Downing Street, London",
    lenguaMaterna: "Inglés"
})
MERGE (per69:Personal{
    CURP: "890123890456789123",
    nacionalidad: "Australiana",
    paisRecidencia: "Australia",
    nombres: "Jack",
    direccion: "123 Sydney Harbour Drive, Sydney",
    lenguaMaterna: "Inglés"
})
MERGE (per70:Personal{
    CURP: "123456789123890456",
    nacionalidad: "Rusa",
    paisRecidencia: "Rusia",
    nombres: "Anastasia",
    direccion: "Kremlin, Moscow",
    lenguaMaterna: "Ruso"
})
MERGE (per71:Personal{
    CURP: "456789123456789123",
    nacionalidad: "China",
    paisRecidencia: "China",
    nombres: "Liu",
    direccion: "The Bund, Shanghai",
    lenguaMaterna: "Mandarín"
})
MERGE (per72:Personal{
    CURP: "789123456789123456",
    nacionalidad: "Coreana",
    paisRecidencia: "Corea del Sur",
    nombres: "Min-Joon",
    direccion: "Gangnam District, Seoul",
    lenguaMaterna: "Coreano"
})
MERGE (per73:Personal{
    CURP: "123456789123456789",
    nacionalidad: "Argentina",
    paisRecidencia: "Argentina",
    nombres: "Lucas",
    direccion: "Avenida de Mayo, Buenos Aires",
    lenguaMaterna: "Español"
})
MERGE (per74:Personal{
    CURP: "456789123456789123",
    nacionalidad: "Brasileña",
    paisRecidencia: "Brasil",
    nombres: "Maria",
    direccion: "Avenida Paulista, São Paulo",
    lenguaMaterna: "Portugués"
})
MERGE (per75:Personal{
    CURP: "789123456789123456",
    nacionalidad: "Sudafricana",
    paisRecidencia: "Sudáfrica",
    nombres: "Sipho",
    direccion: "Robben Island, Cape Town",
    lenguaMaterna: "Zulú"
})



// E6
MERGE (per76:Personal{
    CURP: "987654321098765432",
    nacionalidad: "Mexicana",
    paisRecidencia: "México",
    nombres: "Alejandro",
    direccion: "Calle Morelos #456",
    lenguaMaterna: "Español"
})
MERGE (per77:Personal{
    CURP: "123487654376543210",
    nacionalidad: "Estadounidense",
    paisRecidencia: "Estados Unidos",
    nombres: "Sophia",
    direccion: "789 Oak Avenue, Los Angeles",
    lenguaMaterna: "Inglés"
})
MERGE (per78:Personal{
    CURP: "678912345612345678",
    nacionalidad: "Canadiense",
    paisRecidencia: "Canadá",
    nombres: "Ethan",
    direccion: "345 Maple Street, Vancouver",
    lenguaMaterna: "Inglés"
})
MERGE (per79:Personal{
    CURP: "234576543212345678",
    nacionalidad: "Francesa",
    paisRecidencia: "Francia",
    nombres: "Chloé",
    direccion: "567 Boulevard Saint-Michel, Paris",
    lenguaMaterna: "Francés"
})
MERGE (per80:Personal{
    CURP: "789012345612345678",
    nacionalidad: "Alemana",
    paisRecidencia: "Alemania",
    nombres: "Lukas",
    direccion: "10 Kurfürstendamm, Berlin",
    lenguaMaterna: "Alemán"
})
MERGE (per81:Personal{
    CURP: "345678901234567890",
    nacionalidad: "Italiana",
    paisRecidencia: "Italia",
    nombres: "Sofia",
    direccion: "Via Veneto, Rome",
    lenguaMaterna: "Italiano"
})
MERGE (per82:Personal{
    CURP: "890123456712345678",
    nacionalidad: "Japonesa",
    paisRecidencia: "Japón",
    nombres: "Yuki",
    direccion: "Shinjuku District, Tokyo",
    lenguaMaterna: "Japonés"
})
MERGE (per83:Personal{
    CURP: "456789012345678901",
    nacionalidad: "Británica",
    paisRecidencia: "Reino Unido",
    nombres: "Amelia",
    direccion: "10 Downing Street, London",
    lenguaMaterna: "Inglés"
})
MERGE (per84:Personal{
    CURP: "901234567812345678",
    nacionalidad: "Australiana",
    paisRecidencia: "Australia",
    nombres: "Noah",
    direccion: "123 Sydney Harbour Drive, Sydney",
    lenguaMaterna: "Inglés"
})
MERGE (per85:Personal{
    CURP: "567890123412345678",
    nacionalidad: "Rusa",
    paisRecidencia: "Rusia",
    nombres: "Anna",
    direccion: "Red Square, Moscow",
    lenguaMaterna: "Ruso"
})
MERGE (per86:Personal{
    CURP: "234567890123456789",
    nacionalidad: "China",
    paisRecidencia: "China",
    nombres: "Chen",
    direccion: "Forbidden City, Beijing",
    lenguaMaterna: "Mandarín"
})
MERGE (per87:Personal{
    CURP: "890123456712345678",
    nacionalidad: "Coreana",
    paisRecidencia: "Corea del Sur",
    nombres: "Min-Ji",
    direccion: "Gyeongbokgung Palace, Seoul",
    lenguaMaterna: "Coreano"
})
MERGE (per88:Personal{
    CURP: "567890123412345678",
    nacionalidad: "Argentina",
    paisRecidencia: "Argentina",
    nombres: "Lucas",
    direccion: "Avenida de Mayo, Buenos Aires",
    lenguaMaterna: "Español"
})
MERGE (per89:Personal{
    CURP: "234567890123456789",
    nacionalidad: "Brasileña",
    paisRecidencia: "Brasil",
    nombres: "Maria",
    direccion: "Avenida Paulista, São Paulo",
    lenguaMaterna: "Portugués"
})
MERGE (per90:Personal{
    CURP: "890123456712345678",
    nacionalidad: "Sudafricana",
    paisRecidencia: "Sudáfrica",
    nombres: "Sipho",
    direccion: "Robben Island, Cape Town",
    lenguaMaterna: "Zulú"
})


// E7
MERGE (per91:Personal{
    CURP: "123890765098123456",
    nacionalidad: "Mexicana",
    paisRecidencia: "México",
    nombres: "Carlos",
    direccion: "Calle Juárez #789",
    lenguaMaterna: "Español"
})
MERGE (per92:Personal{
    CURP: "678901234567890123",
    nacionalidad: "Estadounidense",
    paisRecidencia: "Estados Unidos",
    nombres: "Emma",
    direccion: "456 Elm Street, Miami",
    lenguaMaterna: "Inglés"
})
MERGE (per93:Personal{
    CURP: "234567890123456789",
    nacionalidad: "Canadiense",
    paisRecidencia: "Canadá",
    nombres: "Jacob",
    direccion: "345 Maple Street, Montreal",
    lenguaMaterna: "Inglés"
})
MERGE (per94:Personal{
    CURP: "789012345678901234",
    nacionalidad: "Francesa",
    paisRecidencia: "Francia",
    nombres: "Ava",
    direccion: "567 Boulevard Saint-Germain, Paris",
    lenguaMaterna: "Francés"
})
MERGE (per95:Personal{
    CURP: "345678901234567890",
    nacionalidad: "Alemana",
    paisRecidencia: "Alemania",
    nombres: "Benjamin",
    direccion: "10 Friedrichstraße, Berlin",
    lenguaMaterna: "Alemán"
})
MERGE (per96:Personal{
    CURP: "890123456789012345",
    nacionalidad: "Italiana",
    paisRecidencia: "Italia",
    nombres: "Alessia",
    direccion: "Via della Conciliazione, Rome",
    lenguaMaterna: "Italiano"
})
MERGE (per97:Personal{
    CURP: "456789012345678901",
    nacionalidad: "Japonesa",
    paisRecidencia: "Japón",
    nombres: "Yui",
    direccion: "Shibuya Crossing, Tokyo",
    lenguaMaterna: "Japonés"
})
MERGE (per98:Personal{
    CURP: "901234567890123456",
    nacionalidad: "Británica",
    paisRecidencia: "Reino Unido",
    nombres: "James",
    direccion: "10 Downing Street, London",
    lenguaMaterna: "Inglés"
})
MERGE (per99:Personal{
    CURP: "567890123456789012",
    nacionalidad: "Australiana",
    paisRecidencia: "Australia",
    nombres: "Charlotte",
    direccion: "123 Kangaroo Street, Sydney",
    lenguaMaterna: "Inglés"
})
MERGE (per100:Personal{
    CURP: "123456789012345678",
    nacionalidad: "Rusa",
    paisRecidencia: "Rusia",
    nombres: "Nikolai",
    direccion: "Red Square, Moscow",
    lenguaMaterna: "Ruso"
})
MERGE (per101:Personal{
    CURP: "890123456789012345",
    nacionalidad: "China",
    paisRecidencia: "China",
    nombres: "Wei",
    direccion: "The Bund, Shanghai",
    lenguaMaterna: "Mandarín"
})
MERGE (per102:Personal{
    CURP: "567890123456789012",
    nacionalidad: "Coreana",
    paisRecidencia: "Corea del Sur",
    nombres: "Ji-Woo",
    direccion: "Gangnam District, Seoul",
    lenguaMaterna: "Coreano"
})
MERGE (per103:Personal{
    CURP: "123456789012345678",
    nacionalidad: "Argentina",
    paisRecidencia: "Argentina",
    nombres: "Valentina",
    direccion: "Avenida 9 de Julio, Buenos Aires",
    lenguaMaterna: "Español"
})
MERGE (per104:Personal{
    CURP: "890123456789012345",
    nacionalidad: "Brasileña",
    paisRecidencia: "Brasil",
    nombres: "Lucas",
    direccion: "Copacabana Beach, Rio de Janeiro",
    lenguaMaterna: "Portugués"
})
MERGE (per105:Personal{
    CURP: "567890123456789012",
    nacionalidad: "Sudafricana",
    paisRecidencia: "Sudáfrica",
    nombres: "Thandi",
    direccion: "Nelson Mandela Boulevard, Johannesburg",
    lenguaMaterna: "Zulú"
})


// E8
MERGE (per106:Personal{
    CURP: "123456789012345678",
    nacionalidad: "Mexicana",
    paisRecidencia: "México",
    nombres: "Sofía",
    direccion: "Calle Revolución #123",
    lenguaMaterna: "Español"
})
MERGE (per107:Personal{
    CURP: "678901234567890123",
    nacionalidad: "Estadounidense",
    paisRecidencia: "Estados Unidos",
    nombres: "Michael",
    direccion: "456 Broadway, New York",
    lenguaMaterna: "Inglés"
})
MERGE (per108:Personal{
    CURP: "234567890123456789",
    nacionalidad: "Canadiense",
    paisRecidencia: "Canadá",
    nombres: "Olivia",
    direccion: "345 Maple Street, Toronto",
    lenguaMaterna: "Inglés"
})
MERGE (per109:Personal{
    CURP: "789012345678901234",
    nacionalidad: "Francesa",
    paisRecidencia: "Francia",
    nombres: "Lucas",
    direccion: "567 Avenue des Champs-Élysées, Paris",
    lenguaMaterna: "Francés"
})
MERGE (per110:Personal{
    CURP: "345678901234567890",
    nacionalidad: "Alemana",
    paisRecidencia: "Alemania",
    nombres: "Emma",
    direccion: "10 Alexanderplatz, Berlin",
    lenguaMaterna: "Alemán"
})
MERGE (per111:Personal{
    CURP: "890123456789012345",
    nacionalidad: "Italiana",
    paisRecidencia: "Italia",
    nombres: "Matteo",
    direccion: "Via Condotti, Rome",
    lenguaMaterna: "Italiano"
})
MERGE (per112:Personal{
    CURP: "456789012345678901",
    nacionalidad: "Japonesa",
    paisRecidencia: "Japón",
    nombres: "Hana",
    direccion: "2 Chome-3-1 Marunouchi, Tokyo",
    lenguaMaterna: "Japonés"
})
MERGE (per113:Personal{
    CURP: "901234567890123456",
    nacionalidad: "Británica",
    paisRecidencia: "Reino Unido",
    nombres: "William",
    direccion: "10 Downing Street, London",
    lenguaMaterna: "Inglés"
})
MERGE (per114:Personal{
    CURP: "567890123456789012",
    nacionalidad: "Australiana",
    paisRecidencia: "Australia",
    nombres: "Chloe",
    direccion: "123 Bondi Beach, Sydney",
    lenguaMaterna: "Inglés"
})
MERGE (per115:Personal{
    CURP: "123456789012345678",
    nacionalidad: "Rusa",
    paisRecidencia: "Rusia",
    nombres: "Dmitri",
    direccion: "Red Square, Moscow",
    lenguaMaterna: "Ruso"
})
MERGE (per116:Personal{
    CURP: "890123456789012345",
    nacionalidad: "China",
    paisRecidencia: "China",
    nombres: "Lin",
    direccion: "The Bund, Shanghai",
    lenguaMaterna: "Mandarín"
})
MERGE (per117:Personal{
    CURP: "567890123456789012",
    nacionalidad: "Coreana",
    paisRecidencia: "Corea del Sur",
    nombres: "Min-Ho",
    direccion: "Gangnam District, Seoul",
    lenguaMaterna: "Coreano"
})
MERGE (per118:Personal{
    CURP: "123456789012345678",
    nacionalidad: "Argentina",
    paisRecidencia: "Argentina",
    nombres: "Santiago",
    direccion: "Avenida Corrientes, Buenos Aires",
    lenguaMaterna: "Español"
})
MERGE (per119:Personal{
    CURP: "890123456789012345",
    nacionalidad: "Brasileña",
    paisRecidencia: "Brasil",
    nombres: "Isabella",
    direccion: "Copacabana Beach, Rio de Janeiro",
    lenguaMaterna: "Portugués"
})
MERGE (per120:Personal{
    CURP: "567890123456789012",
    nacionalidad: "Sudafricana",
    paisRecidencia: "Sudáfrica",
    nombres: "Thando",
    direccion: "Table Mountain Road, Cape Town",
    lenguaMaterna: "Zulú"
})


// E9
MERGE (per121:Personal{
    CURP: "098765432109876543",
    nacionalidad: "Mexicana",
    paisRecidencia: "México",
    nombres: "Ana",
    direccion: "Calle Juárez #123",
    lenguaMaterna: "Español"
})
MERGE (per122:Personal{
    CURP: "654321098765432109",
    nacionalidad: "Estadounidense",
    paisRecidencia: "Estados Unidos",
    nombres: "Daniel",
    direccion: "789 Elm Street, Los Angeles",
    lenguaMaterna: "Inglés"
})
MERGE (per123:Personal{
    CURP: "210987654321098765",
    nacionalidad: "Canadiense",
    paisRecidencia: "Canadá",
    nombres: "Olivia",
    direccion: "345 Maple Street, Vancouver",
    lenguaMaterna: "Inglés"
})
MERGE (per124:Personal{
    CURP: "876543210987654321",
    nacionalidad: "Francesa",
    paisRecidencia: "Francia",
    nombres: "Pierre",
    direccion: "567 Avenue des Champs-Élysées, Paris",
    lenguaMaterna: "Francés"
})
MERGE (per125:Personal{
    CURP: "432109876543210987",
    nacionalidad: "Alemana",
    paisRecidencia: "Alemania",
    nombres: "Sophie",
    direccion: "10 Kurfürstendamm, Berlin",
    lenguaMaterna: "Alemán"
})
MERGE (per126:Personal{
    CURP: "098765432109876543",
    nacionalidad: "Italiana",
    paisRecidencia: "Italia",
    nombres: "Matteo",
    direccion: "Via dei Condotti, Rome",
    lenguaMaterna: "Italiano"
})
MERGE (per127:Personal{
    CURP: "654321098765432109",
    nacionalidad: "Japonesa",
    paisRecidencia: "Japón",
    nombres: "Sakura",
    direccion: "1 Chome-1-2 Oshiage, Tokyo",
    lenguaMaterna: "Japonés"
})
MERGE (per128:Personal{
    CURP: "210987654321098765",
    nacionalidad: "Británica",
    paisRecidencia: "Reino Unido",
    nombres: "Oliver",
    direccion: "10 Downing Street, London",
    lenguaMaterna: "Inglés"
})
MERGE (per129:Personal{
    CURP: "876543210987654321",
    nacionalidad: "Australiana",
    paisRecidencia: "Australia",
    nombres: "Emily",
    direccion: "123 Sydney Harbour Drive, Sydney",
    lenguaMaterna: "Inglés"
})
MERGE (per130:Personal{
    CURP: "432109876543210987",
    nacionalidad: "Rusa",
    paisRecidencia: "Rusia",
    nombres: "Ivan",
    direccion: "Red Square, Moscow",
    lenguaMaterna: "Ruso"
})
MERGE (per131:Personal{
    CURP: "098765432109876543",
    nacionalidad: "China",
    paisRecidencia: "China",
    nombres: "Liu",
    direccion: "The Bund, Shanghai",
    lenguaMaterna: "Mandarín"
})
MERGE (per132:Personal{
    CURP: "654321098765432109",
    nacionalidad: "Coreana",
    paisRecidencia: "Corea del Sur",
    nombres: "Seo-Yeon",
    direccion: "Gangnam District, Seoul",
    lenguaMaterna: "Coreano"
})
MERGE (per133:Personal{
    CURP: "210987654321098765",
    nacionalidad: "Argentina",
    paisRecidencia: "Argentina",
    nombres: "Lautaro",
    direccion: "Avenida de Mayo, Buenos Aires",
    lenguaMaterna: "Español"
})
MERGE (per134:Personal{
    CURP: "876543210987654321",
    nacionalidad: "Brasileña",
    paisRecidencia: "Brasil",
    nombres: "Julia",
    direccion: "Avenida Paulista, São Paulo",
    lenguaMaterna: "Portugués"
})
MERGE (per135:Personal{
    CURP: "432109876543210987",
    nacionalidad: "Sudafricana",
    paisRecidencia: "Sudáfrica",
    nombres: "Themba",
    direccion: "Robben Island, Cape Town",
    lenguaMaterna: "Zulú"
})


// E10
MERGE (per136:Personal{
    CURP: "987654321098761234",
    nacionalidad: "Mexicana",
    paisRecidencia: "México",
    nombres: "Diego",
    direccion: "Calle Juárez #789",
    lenguaMaterna: "Español"
})
MERGE (per137:Personal{
    CURP: "123456789012345678",
    nacionalidad: "Estadounidense",
    paisRecidencia: "Estados Unidos",
    nombres: "Sophia",
    direccion: "456 Broadway, New York",
    lenguaMaterna: "Inglés"
})
MERGE (per138:Personal{
    CURP: "678901234567890123",
    nacionalidad: "Canadiense",
    paisRecidencia: "Canadá",
    nombres: "Noah",
    direccion: "345 Maple Street, Vancouver",
    lenguaMaterna: "Inglés"
})
MERGE (per139:Personal{
    CURP: "234567890123456789",
    nacionalidad: "Francesa",
    paisRecidencia: "Francia",
    nombres: "Emma",
    direccion: "567 Avenue des Champs-Élysées, Paris",
    lenguaMaterna: "Francés"
})
MERGE (per140:Personal{
    CURP: "789012345678901234",
    nacionalidad: "Alemana",
    paisRecidencia: "Alemania",
    nombres: "Max",
    direccion: "10 Friedrichstraße, Berlin",
    lenguaMaterna: "Alemán"
})
MERGE (per141:Personal{
    CURP: "345678901234567890",
    nacionalidad: "Italiana",
    paisRecidencia: "Italia",
    nombres: "Giulia",
    direccion: "Via dei Condotti, Rome",
    lenguaMaterna: "Italiano"
})
MERGE (per142:Personal{
    CURP: "890123456712345678",
    nacionalidad: "Japonesa",
    paisRecidencia: "Japón",
    nombres: "Haruto",
    direccion: "1 Chome-1-2 Oshiage, Tokyo",
    lenguaMaterna: "Japonés"
})
MERGE (per143:Personal{
    CURP: "456789012345678901",
    nacionalidad: "Británica",
    paisRecidencia: "Reino Unido",
    nombres: "Amelia",
    direccion: "10 Downing Street, London",
    lenguaMaterna: "Inglés"
})
MERGE (per144:Personal{
    CURP: "901234567890123456",
    nacionalidad: "Australiana",
    paisRecidencia: "Australia",
    nombres: "Liam",
    direccion: "123 Sydney Harbour Drive, Sydney",
    lenguaMaterna: "Inglés"
})
MERGE (per145:Personal{
    CURP: "567890123412345678",
    nacionalidad: "Rusa",
    paisRecidencia: "Rusia",
    nombres: "Anastasia",
    direccion: "Red Square, Moscow",
    lenguaMaterna: "Ruso"
})
MERGE (per146:Personal{
    CURP: "123456789012345678",
    nacionalidad: "China",
    paisRecidencia: "China",
    nombres: "Ling",
    direccion: "The Bund, Shanghai",
    lenguaMaterna: "Mandarín"
})
MERGE (per147:Personal{
    CURP: "890123456789012345",
    nacionalidad: "Coreana",
    paisRecidencia: "Corea del Sur",
    nombres: "Min-Ji",
    direccion: "Gangnam District, Seoul",
    lenguaMaterna: "Coreano"
})
MERGE (per148:Personal{
    CURP: "567890123412345678",
    nacionalidad: "Argentina",
    paisRecidencia: "Argentina",
    nombres: "Mateo",
    direccion: "Avenida de Mayo, Buenos Aires",
    lenguaMaterna: "Español"
})
MERGE (per149:Personal{
    CURP: "234567890123456789",
    nacionalidad: "Brasileña",
    paisRecidencia: "Brasil",
    nombres: "Gabriela",
    direccion: "Avenida Paulista, São Paulo",
    lenguaMaterna: "Portugués"
})
MERGE (per150:Personal{
    CURP: "890123456789012345",
    nacionalidad: "Sudafricana",
    paisRecidencia: "Sudáfrica",
    nombres: "Thabo",
    direccion: "Robben Island, Cape Town",
    lenguaMaterna: "Zulú"
})

//Relaciones
MERGE (e1)-[pers1: PERSONAL]->(per1)
MERGE (e1)-[pers2: PERSONAL]->(per2)
MERGE (e1)-[pers3: PERSONAL]->(per3)
MERGE (e1)-[pers4: PERSONAL]->(per4)
MERGE (e1)-[pers5: PERSONAL]->(per5)
MERGE (e1)-[pers6: PERSONAL]->(per6)
MERGE (e1)-[pers7: PERSONAL]->(per7)
MERGE (e1)-[pers8: PERSONAL]->(per8)
MERGE (e1)-[pers9: PERSONAL]->(per9)
MERGE (e1)-[pers10: PERSONAL]->(per10)
MERGE (e1)-[pers11: PERSONAL]->(per11)
MERGE (e1)-[pers12: PERSONAL]->(per12)
MERGE (e1)-[pers13: PERSONAL]->(per13)
MERGE (e1)-[pers14: PERSONAL]->(per14)
MERGE (e1)-[pers15: PERSONAL]->(per15)

MERGE (e2)-[pers16: PERSONAL]->(per16)
MERGE (e2)-[pers17: PERSONAL]->(per17)
MERGE (e2)-[pers18: PERSONAL]->(per18)
MERGE (e2)-[pers19: PERSONAL]->(per19)
MERGE (e2)-[pers20: PERSONAL]->(per20)
MERGE (e2)-[pers21: PERSONAL]->(per21)
MERGE (e2)-[pers22: PERSONAL]->(per22)
MERGE (e2)-[pers23: PERSONAL]->(per23)
MERGE (e2)-[pers24: PERSONAL]->(per24)
MERGE (e2)-[pers25: PERSONAL]->(per25)
MERGE (e2)-[pers26: PERSONAL]->(per26)
MERGE (e2)-[pers27: PERSONAL]->(per27)
MERGE (e2)-[pers28: PERSONAL]->(per28)
MERGE (e2)-[pers29: PERSONAL]->(per29)
MERGE (e2)-[pers30: PERSONAL]->(per30)

MERGE (e3)-[pers31: PERSONAL]->(per31)
MERGE (e3)-[pers32: PERSONAL]->(per32)
MERGE (e3)-[pers33: PERSONAL]->(per33)
MERGE (e3)-[pers34: PERSONAL]->(per34)
MERGE (e3)-[pers35: PERSONAL]->(per35)
MERGE (e3)-[pers36: PERSONAL]->(per36)
MERGE (e3)-[pers37: PERSONAL]->(per37)
MERGE (e3)-[pers38: PERSONAL]->(per38)
MERGE (e3)-[pers39: PERSONAL]->(per39)
MERGE (e3)-[pers40: PERSONAL]->(per40)
MERGE (e3)-[pers41: PERSONAL]->(per41)
MERGE (e3)-[pers42: PERSONAL]->(per42)
MERGE (e3)-[pers43: PERSONAL]->(per43)
MERGE (e3)-[pers44: PERSONAL]->(per44)
MERGE (e3)-[pers45: PERSONAL]->(per45)

MERGE (e4)-[pers46: PERSONAL]->(per46)
MERGE (e4)-[pers47: PERSONAL]->(per47)
MERGE (e4)-[pers48: PERSONAL]->(per48)
MERGE (e4)-[pers49: PERSONAL]->(per49)
MERGE (e4)-[pers50: PERSONAL]->(per50)
MERGE (e4)-[pers51: PERSONAL]->(per51)
MERGE (e4)-[pers52: PERSONAL]->(per52)
MERGE (e4)-[pers53: PERSONAL]->(per53)
MERGE (e4)-[pers54: PERSONAL]->(per54)
MERGE (e4)-[pers55: PERSONAL]->(per55)
MERGE (e4)-[pers56: PERSONAL]->(per56)
MERGE (e4)-[pers57: PERSONAL]->(per57)
MERGE (e4)-[pers58: PERSONAL]->(per58)
MERGE (e4)-[pers59: PERSONAL]->(per59)
MERGE (e4)-[pers60: PERSONAL]->(per60)

MERGE (e5)-[pers61: PERSONAL]->(per61)
MERGE (e5)-[pers62: PERSONAL]->(per62)
MERGE (e5)-[pers63: PERSONAL]->(per63)
MERGE (e5)-[pers64: PERSONAL]->(per64)
MERGE (e5)-[pers65: PERSONAL]->(per65)
MERGE (e5)-[pers66: PERSONAL]->(per66)
MERGE (e5)-[pers67: PERSONAL]->(per67)
MERGE (e5)-[pers68: PERSONAL]->(per68)
MERGE (e5)-[pers69: PERSONAL]->(per69)
MERGE (e5)-[pers70: PERSONAL]->(per70)
MERGE (e5)-[pers71: PERSONAL]->(per71)
MERGE (e5)-[pers72: PERSONAL]->(per72)
MERGE (e5)-[pers73: PERSONAL]->(per73)
MERGE (e5)-[pers74: PERSONAL]->(per74)
MERGE (e5)-[pers75: PERSONAL]->(per75)

MERGE (e6)-[pers76: PERSONAL]->(per76)
MERGE (e6)-[pers77: PERSONAL]->(per77)
MERGE (e6)-[pers78: PERSONAL]->(per78)
MERGE (e6)-[pers79: PERSONAL]->(per79)
MERGE (e6)-[pers80: PERSONAL]->(per80)
MERGE (e6)-[pers81: PERSONAL]->(per81)
MERGE (e6)-[pers82: PERSONAL]->(per82)
MERGE (e6)-[pers83: PERSONAL]->(per83)
MERGE (e6)-[pers84: PERSONAL]->(per84)
MERGE (e6)-[pers85: PERSONAL]->(per85)
MERGE (e6)-[pers86: PERSONAL]->(per86)
MERGE (e6)-[pers87: PERSONAL]->(per87)
MERGE (e6)-[pers88: PERSONAL]->(per88)
MERGE (e6)-[pers89: PERSONAL]->(per89)
MERGE (e6)-[pers90: PERSONAL]->(per90)

MERGE (e7)-[pers91: PERSONAL]->(per91)
MERGE (e7)-[pers92: PERSONAL]->(per92)
MERGE (e7)-[pers93: PERSONAL]->(per93)
MERGE (e7)-[pers94: PERSONAL]->(per94)
MERGE (e7)-[pers95: PERSONAL]->(per95)
MERGE (e7)-[pers96: PERSONAL]->(per96)
MERGE (e7)-[pers97: PERSONAL]->(per97)
MERGE (e7)-[pers98: PERSONAL]->(per98)
MERGE (e7)-[pers99: PERSONAL]->(per99)
MERGE (e7)-[pers100: PERSONAL]->(per100)
MERGE (e7)-[pers101: PERSONAL]->(per101)
MERGE (e7)-[pers102: PERSONAL]->(per102)
MERGE (e7)-[pers103: PERSONAL]->(per103)
MERGE (e7)-[pers104: PERSONAL]->(per104)
MERGE (e7)-[pers105: PERSONAL]->(per105)

MERGE (e8)-[pers106: PERSONAL]->(per106)
MERGE (e8)-[pers107: PERSONAL]->(per107)
MERGE (e8)-[pers108: PERSONAL]->(per108)
MERGE (e8)-[pers109: PERSONAL]->(per109)
MERGE (e8)-[pers110: PERSONAL]->(per110)
MERGE (e8)-[pers111: PERSONAL]->(per111)
MERGE (e8)-[pers112: PERSONAL]->(per112)
MERGE (e8)-[pers113: PERSONAL]->(per113)
MERGE (e8)-[pers114: PERSONAL]->(per114)
MERGE (e8)-[pers115: PERSONAL]->(per115)
MERGE (e8)-[pers116: PERSONAL]->(per116)
MERGE (e8)-[pers117: PERSONAL]->(per117)
MERGE (e8)-[pers118: PERSONAL]->(per118)
MERGE (e8)-[pers119: PERSONAL]->(per119)
MERGE (e8)-[pers120: PERSONAL]->(per120)

MERGE (e9)-[pers121: PERSONAL]->(per121)
MERGE (e9)-[pers122: PERSONAL]->(per122)
MERGE (e9)-[pers123: PERSONAL]->(per123)
MERGE (e9)-[pers124: PERSONAL]->(per124)
MERGE (e9)-[pers125: PERSONAL]->(per125)
MERGE (e9)-[pers126: PERSONAL]->(per126)
MERGE (e9)-[pers127: PERSONAL]->(per127)
MERGE (e9)-[pers128: PERSONAL]->(per128)
MERGE (e9)-[pers129: PERSONAL]->(per129)
MERGE (e9)-[pers130: PERSONAL]->(per130)
MERGE (e9)-[pers131: PERSONAL]->(per131)
MERGE (e9)-[pers132: PERSONAL]->(per132)
MERGE (e9)-[pers133: PERSONAL]->(per133)
MERGE (e9)-[pers134: PERSONAL]->(per134)
MERGE (e9)-[pers135: PERSONAL]->(per135)

MERGE (e10)-[pers136: PERSONAL]->(per136)
MERGE (e10)-[pers137: PERSONAL]->(per137)
MERGE (e10)-[pers138: PERSONAL]->(per138)
MERGE (e10)-[pers139: PERSONAL]->(per139)
MERGE (e10)-[pers140: PERSONAL]->(per140)
MERGE (e10)-[pers141: PERSONAL]->(per141)
MERGE (e10)-[pers142: PERSONAL]->(per142)
MERGE (e10)-[pers143: PERSONAL]->(per143)
MERGE (e10)-[pers144: PERSONAL]->(per144)
MERGE (e10)-[pers145: PERSONAL]->(per145)
MERGE (e10)-[pers146: PERSONAL]->(per146)
MERGE (e10)-[pers147: PERSONAL]->(per147)
MERGE (e10)-[pers148: PERSONAL]->(per148)
MERGE (e10)-[pers149: PERSONAL]->(per149)
MERGE (e10)-[pers150: PERSONAL]->(per150)

// Creacion de los roles
//E1
MERGE (e1per1:PILOTO{
    id: 1,
    tipoLicencia: "LAPL",
    ultimaEvaluacion: "2023,07;15"
})
MERGE (e1per2:PILOTO{
    id: 2,
    tipoLicencia: "PPL",
    ultimaEvaluacion: "2023,04;20"
})
MERGE (e1per3:PILOTO{
    id: 3,
    tipoLicencia: "SFCL",
    ultimaEvaluacion: "2023,09;10"
})
MERGE (e1per4:PILOTO{
    id: 4,
    tipoLicencia: "BFCL",
    ultimaEvaluacion: "2023,02;05"
})
MERGE (e1per5:PILOTO{
    id: 5,
    tipoLicencia: "CPL",
    ultimaEvaluacion: "2023,11;25"
})
MERGE (e1per6:PERSONAL_APOYO{
    id: 6,
    idiomaQueHabla: ["Español", "Inglés"],
    numeroTelefono: "+123456789"
})
MERGE (e1per7:PERSONAL_APOYO{
    id: 7,
    idiomaQueHabla: ["Francés"],
    numeroTelefono: "+987654321"
})
MERGE (e1per8:PERSONAL_APOYO{
    id: 8,
    idiomaQueHabla: ["Alemán", "Italiano"],
    numeroTelefono: "+987123456"
})
MERGE (e1per9:PERSONAL_APOYO{
    id: 9,
    idiomaQueHabla: ["Portugués"],
    numeroTelefono: "+123987456"
})
MERGE (e1per10:PERSONAL_APOYO{
    id: 10,
    idiomaQueHabla: ["Chino", "Japonés"],
    numeroTelefono: "+456789123"
})
MERGE (e1per11:PERSONAL_TERRESTRE{
    id: 11,
    tareasQueRealiza: ["Mantenimiento de pistas", "Control de tráfico"],
    certificacionesLaborales: ["Licencia de operaciones aeroportuarias", "Certificado de seguridad aeroportuaria"]
})
MERGE (e1per12:PERSONAL_TERRESTRE{
    id: 12,
    tareasQueRealiza: ["Inspección de aeronaves", "Atención a pasajeros"],
    certificacionesLaborales: ["Certificado de control de calidad", "Licencia de agente de rampa"]
})
MERGE (e1per13:PERSONAL_TERRESTRE{
    id: 13,
    tareasQueRealiza: ["Carga y descarga de equipaje", "Mantenimiento de equipos terrestres"],
    certificacionesLaborales: ["Certificado de manipulador de mercancías peligrosas", "Licencia de conductor de vehículos de aeropuerto"]
})
MERGE (e1per14:PERSONAL_TERRESTRE{
    id: 14,
    tareasQueRealiza: ["Inspección de seguridad", "Asistencia en emergencias"],
    certificacionesLaborales: ["Certificado de primeros auxilios", "Licencia de operador de grúa"]
})
MERGE (e1per15:PERSONAL_TERRESTRE{
    id: 15,
    tareasQueRealiza: ["Mantenimiento de señalización", "Gestión de equipaje extraviado"],
    certificacionesLaborales: ["Certificado de manejo de extintores", "Licencia de controlador de pista"]
})


// E2
MERGE (e2per16:PILOTO{
    id: 16,
    tipoLicencia: "LAPL",
    ultimaEvaluacion: "2023,07;15"
})
MERGE (e2per17:PILOTO{
    id: 17,
    tipoLicencia: "PPL",
    ultimaEvaluacion: "2023,04;20"
})
MERGE (e2per18:PILOTO{
    id: 18,
    tipoLicencia: "SFCL",
    ultimaEvaluacion: "2023,09;10"
})
MERGE (e2per19:PILOTO{
    id: 19,
    tipoLicencia: "BFCL",
    ultimaEvaluacion: "2023,02;05"
})
MERGE (e2per20:PILOTO{
    id: 20,
    tipoLicencia: "CPL",
    ultimaEvaluacion: "2023,11;25"
})
MERGE (e2per21:PERSONAL_APOYO{
    id: 21,
    idiomaQueHabla: ["Español", "Inglés"],
    numeroTelefono: "+123456789"
})
MERGE (e2per22:PERSONAL_APOYO{
    id: 22,
    idiomaQueHabla: ["Francés"],
    numeroTelefono: "+987654321"
})
MERGE (e2per23:PERSONAL_APOYO{
    id: 23,
    idiomaQueHabla: ["Alemán", "Italiano"],
    numeroTelefono: "+987123456"
})
MERGE (e2per24:PERSONAL_APOYO{
    id: 24,
    idiomaQueHabla: ["Portugués"],
    numeroTelefono: "+123987456"
})
MERGE (e2per25:PERSONAL_APOYO{
    id: 25,
    idiomaQueHabla: ["Chino", "Japonés"],
    numeroTelefono: "+456789123"
})
MERGE (e2per26:PERSONAL_TERRESTRE{
    id: 26,
    tareasQueRealiza: ["Mantenimiento de pistas", "Control de tráfico"],
    certificacionesLaborales: ["Licencia de operaciones aeroportuarias", "Certificado de seguridad aeroportuaria"]
})
MERGE (e2per27:PERSONAL_TERRESTRE{
    id: 27,
    tareasQueRealiza: ["Inspección de aeronaves", "Atención a pasajeros"],
    certificacionesLaborales: ["Certificado de control de calidad", "Licencia de agente de rampa"]
})
MERGE (e2per28:PERSONAL_TERRESTRE{
    id: 28,
    tareasQueRealiza: ["Carga y descarga de equipaje", "Mantenimiento de equipos terrestres"],
    certificacionesLaborales: ["Certificado de manipulador de mercancías peligrosas", "Licencia de conductor de vehículos de aeropuerto"]
})
MERGE (e2per29:PERSONAL_TERRESTRE{
    id: 29,
    tareasQueRealiza: ["Inspección de seguridad", "Asistencia en emergencias"],
    certificacionesLaborales: ["Certificado de primeros auxilios", "Licencia de operador de grúa"]
})
MERGE (e2per30:PERSONAL_TERRESTRE{
    id: 30,
    tareasQueRealiza: ["Mantenimiento de señalización", "Gestión de equipaje extraviado"],
    certificacionesLaborales: ["Certificado de manejo de extintores", "Licencia de controlador de pista"]
})

// E3
MERGE (e3per31:PILOTO{
    id: 31,
    tipoLicencia: "LAPL",
    ultimaEvaluacion: "2023,07;15"
})
MERGE (e3per32:PILOTO{
    id: 32,
    tipoLicencia: "PPL",
    ultimaEvaluacion: "2023,04;20"
})
MERGE (e3per33:PILOTO{
    id: 33,
    tipoLicencia: "SFCL",
    ultimaEvaluacion: "2023,09;10"
})
MERGE (e3per34:PILOTO{
    id: 34,
    tipoLicencia: "BFCL",
    ultimaEvaluacion: "2023,02;05"
})
MERGE (e3per35:PILOTO{
    id: 35,
    tipoLicencia: "CPL",
    ultimaEvaluacion: "2023,11;25"
})
MERGE (e3per36:PERSONAL_APOYO{
    id: 36,
    idiomaQueHabla: ["Español", "Inglés"],
    numeroTelefono: "+123456789"
})
MERGE (e3per37:PERSONAL_APOYO{
    id: 37,
    idiomaQueHabla: ["Francés"],
    numeroTelefono: "+987654321"
})
MERGE (e3per38:PERSONAL_APOYO{
    id: 38,
    idiomaQueHabla: ["Alemán", "Italiano"],
    numeroTelefono: "+987123456"
})
MERGE (e3per39:PERSONAL_APOYO{
    id: 39,
    idiomaQueHabla: ["Portugués"],
    numeroTelefono: "+123987456"
})
MERGE (e3per40:PERSONAL_APOYO{
    id: 40,
    idiomaQueHabla: ["Chino", "Japonés"],
    numeroTelefono: "+456789123"
})
MERGE (e3per41:PERSONAL_TERRESTRE{
    id: 41,
    tareasQueRealiza: ["Mantenimiento de pistas", "Control de tráfico"],
    certificacionesLaborales: ["Licencia de operaciones aeroportuarias", "Certificado de seguridad aeroportuaria"]
})
MERGE (e3per42:PERSONAL_TERRESTRE{
    id: 42,
    tareasQueRealiza: ["Inspección de aeronaves", "Atención a pasajeros"],
    certificacionesLaborales: ["Certificado de control de calidad", "Licencia de agente de rampa"]
})
MERGE (e3per43:PERSONAL_TERRESTRE{
    id: 43,
    tareasQueRealiza: ["Carga y descarga de equipaje", "Mantenimiento de equipos terrestres"],
    certificacionesLaborales: ["Certificado de manipulador de mercancías peligrosas", "Licencia de conductor de vehículos de aeropuerto"]
})
MERGE (e3per44:PERSONAL_TERRESTRE{
    id: 44,
    tareasQueRealiza: ["Inspección de seguridad", "Asistencia en emergencias"],
    certificacionesLaborales: ["Certificado de primeros auxilios", "Licencia de operador de grúa"]
})
MERGE (e3per45:PERSONAL_TERRESTRE{
    id: 45,
    tareasQueRealiza: ["Mantenimiento de señalización", "Gestión de equipaje extraviado"],
    certificacionesLaborales: ["Certificado de manejo de extintores", "Licencia de controlador de pista"]
})


// E4
MERGE (e4per46:PILOTO{
    id: 46,
    tipoLicencia: "LAPL",
    ultimaEvaluacion: "2023,07;15"
})
MERGE (e4per47:PILOTO{
    id: 47,
    tipoLicencia: "PPL",
    ultimaEvaluacion: "2023,04;20"
})
MERGE (e4per48:PILOTO{
    id: 48,
    tipoLicencia: "SFCL",
    ultimaEvaluacion: "2023,09;10"
})
MERGE (e4per49:PILOTO{
    id: 49,
    tipoLicencia: "BFCL",
    ultimaEvaluacion: "2023,02;05"
})
MERGE (e4per50:PILOTO{
    id: 50,
    tipoLicencia: "CPL",
    ultimaEvaluacion: "2023,11;25"
})
MERGE (e4per51:PERSONAL_APOYO{
    id: 51,
    idiomaQueHabla: ["Español", "Inglés"],
    numeroTelefono: "+123456789"
})
MERGE (e4per52:PERSONAL_APOYO{
    id: 52,
    idiomaQueHabla: ["Francés"],
    numeroTelefono: "+987654321"
})
MERGE (e4per53:PERSONAL_APOYO{
    id: 53,
    idiomaQueHabla: ["Alemán", "Italiano"],
    numeroTelefono: "+987123456"
})
MERGE (e4per54:PERSONAL_APOYO{
    id: 54,
    idiomaQueHabla: ["Portugués"],
    numeroTelefono: "+123987456"
})
MERGE (e4per55:PERSONAL_APOYO{
    id: 55,
    idiomaQueHabla: ["Chino", "Japonés"],
    numeroTelefono: "+456789123"
})
MERGE (e4per56:PERSONAL_TERRESTRE{
    id: 56,
    tareasQueRealiza: ["Mantenimiento de pistas", "Control de tráfico"],
    certificacionesLaborales: ["Licencia de operaciones aeroportuarias", "Certificado de seguridad aeroportuaria"]
})
MERGE (e4per57:PERSONAL_TERRESTRE{
    id: 57,
    tareasQueRealiza: ["Inspección de aeronaves", "Atención a pasajeros"],
    certificacionesLaborales: ["Certificado de control de calidad", "Licencia de agente de rampa"]
})
MERGE (e4per58:PERSONAL_TERRESTRE{
    id: 58,
    tareasQueRealiza: ["Carga y descarga de equipaje", "Mantenimiento de equipos terrestres"],
    certificacionesLaborales: ["Certificado de manipulador de mercancías peligrosas", "Licencia de conductor de vehículos de aeropuerto"]
})
MERGE (e4per59:PERSONAL_TERRESTRE{
    id: 59,
    tareasQueRealiza: ["Inspección de seguridad", "Asistencia en emergencias"],
    certificacionesLaborales: ["Certificado de primeros auxilios", "Licencia de operador de grúa"]
})
MERGE (e4per60:PERSONAL_TERRESTRE{
    id: 60,
    tareasQueRealiza: ["Mantenimiento de señalización", "Gestión de equipaje extraviado"],
    certificacionesLaborales: ["Certificado de manejo de extintores", "Licencia de controlador de pista"]
})


// E5
MERGE (e5per61:PILOTO{
    id: 61,
    tipoLicencia: "LAPL",
    ultimaEvaluacion: "2023,07;15"
})
MERGE (e5per62:PILOTO{
    id: 62,
    tipoLicencia: "PPL",
    ultimaEvaluacion: "2023,04;20"
})
MERGE (e5per63:PILOTO{
    id: 63,
    tipoLicencia: "SFCL",
    ultimaEvaluacion: "2023,09;10"
})
MERGE (e5per64:PILOTO{
    id: 64,
    tipoLicencia: "BFCL",
    ultimaEvaluacion: "2023,02;05"
})
MERGE (e5per65:PILOTO{
    id: 65,
    tipoLicencia: "CPL",
    ultimaEvaluacion: "2023,11;25"
})
MERGE (e5per66:PERSONAL_APOYO{
    id: 66,
    idiomaQueHabla: ["Español", "Inglés"],
    numeroTelefono: "+123456789"
})
MERGE (e5per67:PERSONAL_APOYO{
    id: 67,
    idiomaQueHabla: ["Francés"],
    numeroTelefono: "+987654321"
})
MERGE (e5per68:PERSONAL_APOYO{
    id: 68,
    idiomaQueHabla: ["Alemán", "Italiano"],
    numeroTelefono: "+987123456"
})
MERGE (e5per69:PERSONAL_APOYO{
    id: 69,
    idiomaQueHabla: ["Portugués"],
    numeroTelefono: "+123987456"
})
MERGE (e5per70:PERSONAL_APOYO{
    id: 70,
    idiomaQueHabla: ["Chino", "Japonés"],
    numeroTelefono: "+456789123"
})
MERGE (e5per71:PERSONAL_TERRESTRE{
    id: 71,
    tareasQueRealiza: ["Mantenimiento de pistas", "Control de tráfico"],
    certificacionesLaborales: ["Licencia de operaciones aeroportuarias", "Certificado de seguridad aeroportuaria"]
})
MERGE (e5per72:PERSONAL_TERRESTRE{
    id: 72,
    tareasQueRealiza: ["Inspección de aeronaves", "Atención a pasajeros"],
    certificacionesLaborales: ["Certificado de control de calidad", "Licencia de agente de rampa"]
})
MERGE (e5per73:PERSONAL_TERRESTRE{
    id: 73,
    tareasQueRealiza: ["Carga y descarga de equipaje", "Mantenimiento de equipos terrestres"],
    certificacionesLaborales: ["Certificado de manipulador de mercancías peligrosas", "Licencia de conductor de vehículos de aeropuerto"]
})
MERGE (e5per74:PERSONAL_TERRESTRE{
    id: 74,
    tareasQueRealiza: ["Inspección de seguridad", "Asistencia en emergencias"],
    certificacionesLaborales: ["Certificado de primeros auxilios", "Licencia de operador de grúa"]
})
MERGE (e5per75:PERSONAL_TERRESTRE{
    id: 75,
    tareasQueRealiza: ["Mantenimiento de señalización", "Gestión de equipaje extraviado"],
    certificacionesLaborales: ["Certificado de manejo de extintores", "Licencia de controlador de pista"]
})


// E6
MERGE (e6per76:PILOTO{
    id: 76,
    tipoLicencia: "LAPL",
    ultimaEvaluacion: "2023,07;15"
})
MERGE (e6per77:PILOTO{
    id: 77,
    tipoLicencia: "PPL",
    ultimaEvaluacion: "2023,04;20"
})
MERGE (e6per78:PILOTO{
    id: 78,
    tipoLicencia: "SFCL",
    ultimaEvaluacion: "2023,09;10"
})
MERGE (e6per79:PILOTO{
    id: 79,
    tipoLicencia: "BFCL",
    ultimaEvaluacion: "2023,02;05"
})
MERGE (e6per80:PILOTO{
    id: 80,
    tipoLicencia: "CPL",
    ultimaEvaluacion: "2023,11;25"
})
MERGE (e6per81:PERSONAL_APOYO{
    id: 81,
    idiomaQueHabla: ["Español", "Inglés"],
    numeroTelefono: "+123456789"
})
MERGE (e6per82:PERSONAL_APOYO{
    id: 82,
    idiomaQueHabla: ["Francés"],
    numeroTelefono: "+987654321"
})
MERGE (e6per83:PERSONAL_APOYO{
    id: 83,
    idiomaQueHabla: ["Alemán", "Italiano"],
    numeroTelefono: "+987123456"
})
MERGE (e6per84:PERSONAL_APOYO{
    id: 84,
    idiomaQueHabla: ["Portugués"],
    numeroTelefono: "+123987456"
})
MERGE (e6per85:PERSONAL_APOYO{
    id: 85,
    idiomaQueHabla: ["Chino", "Japonés"],
    numeroTelefono: "+456789123"
})
MERGE (e6per86:PERSONAL_TERRESTRE{
    id: 86,
    tareasQueRealiza: ["Mantenimiento de pistas", "Control de tráfico"],
    certificacionesLaborales: ["Licencia de operaciones aeroportuarias", "Certificado de seguridad aeroportuaria"]
})
MERGE (e6per87:PERSONAL_TERRESTRE{
    id: 87,
    tareasQueRealiza: ["Inspección de aeronaves", "Atención a pasajeros"],
    certificacionesLaborales: ["Certificado de control de calidad", "Licencia de agente de rampa"]
})
MERGE (e6per88:PERSONAL_TERRESTRE{
    id: 88,
    tareasQueRealiza: ["Carga y descarga de equipaje", "Mantenimiento de equipos terrestres"],
    certificacionesLaborales: ["Certificado de manipulador de mercancías peligrosas", "Licencia de conductor de vehículos de aeropuerto"]
})
MERGE (e6per89:PERSONAL_TERRESTRE{
    id: 89,
    tareasQueRealiza: ["Inspección de seguridad", "Asistencia en emergencias"],
    certificacionesLaborales: ["Certificado de primeros auxilios", "Licencia de operador de grúa"]
})
MERGE (e6per90:PERSONAL_TERRESTRE{
    id: 90,
    tareasQueRealiza: ["Mantenimiento de señalización", "Gestión de equipaje extraviado"],
    certificacionesLaborales: ["Certificado de manejo de extintores", "Licencia de controlador de pista"]
})


// E7
MERGE (e7per91:PILOTO{
    id: 91,
    tipoLicencia: "LAPL",
    ultimaEvaluacion: "2023,07;15"
})
MERGE (e7per92:PILOTO{
    id: 92,
    tipoLicencia: "PPL",
    ultimaEvaluacion: "2023,04;20"
})
MERGE (e7per93:PILOTO{
    id: 93,
    tipoLicencia: "SFCL",
    ultimaEvaluacion: "2023,09;10"
})
MERGE (e7per94:PILOTO{
    id: 94,
    tipoLicencia: "BFCL",
    ultimaEvaluacion: "2023,02;05"
})
MERGE (e7per95:PILOTO{
    id: 95,
    tipoLicencia: "CPL",
    ultimaEvaluacion: "2023,11;25"
})
MERGE (e7per96:PERSONAL_APOYO{
    id: 96,
    idiomaQueHabla: ["Español", "Inglés"],
    numeroTelefono: "+123456789"
})
MERGE (e7per97:PERSONAL_APOYO{
    id: 97,
    idiomaQueHabla: ["Francés"],
    numeroTelefono: "+987654321"
})
MERGE (e7per98:PERSONAL_APOYO{
    id: 98,
    idiomaQueHabla: ["Alemán", "Italiano"],
    numeroTelefono: "+987123456"
})
MERGE (e7per99:PERSONAL_APOYO{
    id: 99,
    idiomaQueHabla: ["Portugués"],
    numeroTelefono: "+123987456"
})
MERGE (e7per100:PERSONAL_APOYO{
    id: 100,
    idiomaQueHabla: ["Chino", "Japonés"],
    numeroTelefono: "+456789123"
})
MERGE (e7per101:PERSONAL_TERRESTRE{
    id: 101,
    tareasQueRealiza: ["Mantenimiento de pistas", "Control de tráfico"],
    certificacionesLaborales: ["Licencia de operaciones aeroportuarias", "Certificado de seguridad aeroportuaria"]
})
MERGE (e7per102:PERSONAL_TERRESTRE{
    id: 102,
    tareasQueRealiza: ["Inspección de aeronaves", "Atención a pasajeros"],
    certificacionesLaborales: ["Certificado de control de calidad", "Licencia de agente de rampa"]
})
MERGE (e7per103:PERSONAL_TERRESTRE{
    id: 103,
    tareasQueRealiza: ["Carga y descarga de equipaje", "Mantenimiento de equipos terrestres"],
    certificacionesLaborales: ["Certificado de manipulador de mercancías peligrosas", "Licencia de conductor de vehículos de aeropuerto"]
})
MERGE (e7per104:PERSONAL_TERRESTRE{
    id: 104,
    tareasQueRealiza: ["Inspección de seguridad", "Asistencia en emergencias"],
    certificacionesLaborales: ["Certificado de primeros auxilios", "Licencia de operador de grúa"]
})
MERGE (e7per105:PERSONAL_TERRESTRE{
    id: 105,
    tareasQueRealiza: ["Mantenimiento de señalización", "Gestión de equipaje extraviado"],
    certificacionesLaborales: ["Certificado de manejo de extintores", "Licencia de controlador de pista"]
})


// E8
MERGE (e8per106:PILOTO{
    id: 106,
    tipoLicencia: "LAPL",
    ultimaEvaluacion: "2023,07;15"
})
MERGE (e8per107:PILOTO{
    id: 107,
    tipoLicencia: "PPL",
    ultimaEvaluacion: "2023,04;20"
})
MERGE (e8per108:PILOTO{
    id: 108,
    tipoLicencia: "SFCL",
    ultimaEvaluacion: "2023,09;10"
})
MERGE (e8per109:PILOTO{
    id: 109,
    tipoLicencia: "BFCL",
    ultimaEvaluacion: "2023,02;05"
})
MERGE (e8per110:PILOTO{
    id: 110,
    tipoLicencia: "CPL",
    ultimaEvaluacion: "2023,11;25"
})
MERGE (e8per111:PERSONAL_APOYO{
    id: 111,
    idiomaQueHabla: ["Español", "Inglés"],
    numeroTelefono: "+123456789"
})
MERGE (e8per112:PERSONAL_APOYO{
    id: 112,
    idiomaQueHabla: ["Francés"],
    numeroTelefono: "+987654321"
})
MERGE (e8per113:PERSONAL_APOYO{
    id: 113,
    idiomaQueHabla: ["Alemán", "Italiano"],
    numeroTelefono: "+987123456"
})
MERGE (e8per114:PERSONAL_APOYO{
    id: 114,
    idiomaQueHabla: ["Portugués"],
    numeroTelefono: "+123987456"
})
MERGE (e8per115:PERSONAL_APOYO{
    id: 115,
    idiomaQueHabla: ["Chino", "Japonés"],
    numeroTelefono: "+456789123"
})
MERGE (e8per116:PERSONAL_TERRESTRE{
    id: 116,
    tareasQueRealiza: ["Mantenimiento de pistas", "Control de tráfico"],
    certificacionesLaborales: ["Licencia de operaciones aeroportuarias", "Certificado de seguridad aeroportuaria"]
})
MERGE (e8per117:PERSONAL_TERRESTRE{
    id: 117,
    tareasQueRealiza: ["Inspección de aeronaves", "Atención a pasajeros"],
    certificacionesLaborales: ["Certificado de control de calidad", "Licencia de agente de rampa"]
})
MERGE (e8per118:PERSONAL_TERRESTRE{
    id: 118,
    tareasQueRealiza: ["Carga y descarga de equipaje", "Mantenimiento de equipos terrestres"],
    certificacionesLaborales: ["Certificado de manipulador de mercancías peligrosas", "Licencia de conductor de vehículos de aeropuerto"]
})
MERGE (e8per119:PERSONAL_TERRESTRE{
    id: 119,
    tareasQueRealiza: ["Inspección de seguridad", "Asistencia en emergencias"],
    certificacionesLaborales: ["Certificado de primeros auxilios", "Licencia de operador de grúa"]
})
MERGE (e8per120:PERSONAL_TERRESTRE{
    id: 120,
    tareasQueRealiza: ["Mantenimiento de señalización", "Gestión de equipaje extraviado"],
    certificacionesLaborales: ["Certificado de manejo de extintores", "Licencia de controlador de pista"]
})


// E9
MERGE (e9per121:PILOTO{
    id: 121,
    tipoLicencia: "LAPL",
    ultimaEvaluacion: "2023,07;15"
})
MERGE (e9per122:PILOTO{
    id: 122,
    tipoLicencia: "PPL",
    ultimaEvaluacion: "2023,04;20"
})
MERGE (e9per123:PILOTO{
    id: 123,
    tipoLicencia: "SFCL",
    ultimaEvaluacion: "2023,09;10"
})
MERGE (e9per124:PILOTO{
    id: 124,
    tipoLicencia: "BFCL",
    ultimaEvaluacion: "2023,02;05"
})
MERGE (e9per125:PILOTO{
    id: 125,
    tipoLicencia: "CPL",
    ultimaEvaluacion: "2023,11;25"
})
MERGE (e9per126:PERSONAL_APOYO{
    id: 126,
    idiomaQueHabla: ["Español", "Inglés"],
    numeroTelefono: "+123456789"
})
MERGE (e9per127:PERSONAL_APOYO{
    id: 127,
    idiomaQueHabla: ["Francés"],
    numeroTelefono: "+987654321"
})
MERGE (e9per128:PERSONAL_APOYO{
    id: 128,
    idiomaQueHabla: ["Alemán", "Italiano"],
    numeroTelefono: "+987123456"
})
MERGE (e9per129:PERSONAL_APOYO{
    id: 129,
    idiomaQueHabla: ["Portugués"],
    numeroTelefono: "+123987456"
})
MERGE (e9per130:PERSONAL_APOYO{
    id: 130,
    idiomaQueHabla: ["Chino", "Japonés"],
    numeroTelefono: "+456789123"
})
MERGE (e9per131:PERSONAL_TERRESTRE{
    id: 131,
    tareasQueRealiza: ["Mantenimiento de pistas", "Control de tráfico"],
    certificacionesLaborales: ["Licencia de operaciones aeroportuarias", "Certificado de seguridad aeroportuaria"]
})
MERGE (e9per132:PERSONAL_TERRESTRE{
    id: 132,
    tareasQueRealiza: ["Inspección de aeronaves", "Atención a pasajeros"],
    certificacionesLaborales: ["Certificado de control de calidad", "Licencia de agente de rampa"]
})
MERGE (e9per133:PERSONAL_TERRESTRE{
    id: 133,
    tareasQueRealiza: ["Carga y descarga de equipaje", "Mantenimiento de equipos terrestres"],
    certificacionesLaborales: ["Certificado de manipulador de mercancías peligrosas", "Licencia de conductor de vehículos de aeropuerto"]
})
MERGE (e9per134:PERSONAL_TERRESTRE{
    id: 134,
    tareasQueRealiza: ["Inspección de seguridad", "Asistencia en emergencias"],
    certificacionesLaborales: ["Certificado de primeros auxilios", "Licencia de operador de grúa"]
})
MERGE (e9per135:PERSONAL_TERRESTRE{
    id: 135,
    tareasQueRealiza: ["Mantenimiento de señalización", "Gestión de equipaje extraviado"],
    certificacionesLaborales: ["Certificado de manejo de extintores", "Licencia de controlador de pista"]
})


// E10
MERGE (e10per136:PILOTO{
    id: 136,
    tipoLicencia: "ATPL",
    ultimaEvaluacion: "2023,07;15"
})
MERGE (e10per137:PILOTO{
    id: 137,
    tipoLicencia: "ATPL",
    ultimaEvaluacion: "2023,04;20"
})
MERGE (e10per138:PILOTO{
    id: 138,
    tipoLicencia: "SFCL",
    ultimaEvaluacion: "2023,09;10"
})
MERGE (e10per139:PILOTO{
    id: 139,
    tipoLicencia: "BFCL",
    ultimaEvaluacion: "2023,02;05"
})
MERGE (e10per140:PILOTO{
    id: 140,
    tipoLicencia: "ATPL",
    ultimaEvaluacion: "2023,11;25"
})
MERGE (e10per141:PERSONAL_APOYO{
    id: 141,
    idiomaQueHabla: ["Español", "Inglés"],
    numeroTelefono: "+123456789"
})
MERGE (e10per142:PERSONAL_APOYO{
    id: 142,
    idiomaQueHabla: ["Francés"],
    numeroTelefono: "+987654321"
})
MERGE (e10per143:PERSONAL_APOYO{
    id: 143,
    idiomaQueHabla: ["Alemán", "Italiano"],
    numeroTelefono: "+987123456"
})
MERGE (e10per144:PERSONAL_APOYO{
    id: 144,
    idiomaQueHabla: ["Portugués"],
    numeroTelefono: "+123987456"
})
MERGE (e10per145:PERSONAL_APOYO{
    id: 145,
    idiomaQueHabla: ["Chino", "Japonés"],
    numeroTelefono: "+456789123"
})
MERGE (e10per146:PERSONAL_TERRESTRE{
    id: 146,
    tareasQueRealiza: ["Mantenimiento de pistas", "Control de tráfico"],
    certificacionesLaborales: ["Licencia de operaciones aeroportuarias", "Certificado de seguridad aeroportuaria"]
})
MERGE (e10per147:PERSONAL_TERRESTRE{
    id: 147,
    tareasQueRealiza: ["Inspección de aeronaves", "Atención a pasajeros"],
    certificacionesLaborales: ["Certificado de control de calidad", "Licencia de agente de rampa"]
})
MERGE (e10per148:PERSONAL_TERRESTRE{
    id: 148,
    tareasQueRealiza: ["Carga y descarga de equipaje", "Mantenimiento de equipos terrestres"],
    certificacionesLaborales: ["Certificado de manipulador de mercancías peligrosas", "Licencia de conductor de vehículos de aeropuerto"]
})
MERGE (e10per149:PERSONAL_TERRESTRE{
    id: 149,
    tareasQueRealiza: ["Inspección de seguridad", "Asistencia en emergencias"],
    certificacionesLaborales: ["Certificado de primeros auxilios", "Licencia de operador de grúa"]
})
MERGE (e10per150:PERSONAL_TERRESTRE{
    id: 150,
    tareasQueRealiza: ["Mantenimiento de señalización", "Gestión de equipaje extraviado"],
    certificacionesLaborales: ["Certificado de manejo de extintores", "Licencia de controlador de pista"]
})


// Generación de las relaciones
//E1
MERGE (per1)-[cham1:PERSONAL_PILOTO]->(e1per1)
MERGE (per2)-[cham2:PERSONAL_PILOTO]->(e1per2)
MERGE (per3)-[cham3:PERSONAL_PILOTO]->(e1per3)
MERGE (per4)-[cham4:PERSONAL_PILOTO]->(e1per4)
MERGE (per5)-[cham5:PERSONAL_PILOTO]->(e1per5)
MERGE (per6)-[cham6:PERSONAL_APOYO]->(e1per6)
MERGE (per7)-[cham7:PERSONAL_APOYO]->(e1per7)
MERGE (per8)-[cham8:PERSONAL_APOYO]->(e1per8)
MERGE (per9)-[cham9:PERSONAL_APOYO]->(e1per9)
MERGE (per10)-[cham10:PERSONAL_APOYO]->(e1per10)
MERGE (per11)-[cham11:PERSONAL_TERRESTRE]->(e1per11)
MERGE (per12)-[cham12:PERSONAL_TERRESTRE]->(e1per12)
MERGE (per13)-[cham13:PERSONAL_TERRESTRE]->(e1per13)
MERGE (per14)-[cham14:PERSONAL_TERRESTRE]->(e1per14)
MERGE (per15)-[cham15:PERSONAL_TERRESTRE]->(e1per15)

MERGE (per16)-[cham16:PERSONAL_PILOTO]->(e2per16)
MERGE (per17)-[cham17:PERSONAL_PILOTO]->(e2per17)
MERGE (per18)-[cham18:PERSONAL_PILOTO]->(e2per18)
MERGE (per19)-[cham19:PERSONAL_PILOTO]->(e2per19)
MERGE (per20)-[cham20:PERSONAL_PILOTO]->(e2per20)
MERGE (per21)-[cham21:PERSONAL_APOYO]->(e2per21)
MERGE (per22)-[cham22:PERSONAL_APOYO]->(e2per22)
MERGE (per23)-[cham23:PERSONAL_APOYO]->(e2per23)
MERGE (per24)-[cham24:PERSONAL_APOYO]->(e2per24)
MERGE (per25)-[cham25:PERSONAL_APOYO]->(e2per25)
MERGE (per26)-[cham26:PERSONAL_TERRESTRE]->(e2per26)
MERGE (per27)-[cham27:PERSONAL_TERRESTRE]->(e2per27)
MERGE (per28)-[cham28:PERSONAL_TERRESTRE]->(e2per28)
MERGE (per29)-[cham29:PERSONAL_TERRESTRE]->(e2per29)
MERGE (per30)-[cham30:PERSONAL_TERRESTRE]->(e2per30)

MERGE (per31)-[cham31:PERSONAL_PILOTO]->(e3per31)
MERGE (per32)-[cham32:PERSONAL_PILOTO]->(e3per32)
MERGE (per33)-[cham33:PERSONAL_PILOTO]->(e3per33)
MERGE (per34)-[cham34:PERSONAL_PILOTO]->(e3per34)
MERGE (per35)-[cham35:PERSONAL_PILOTO]->(e3per35)
MERGE (per36)-[cham36:PERSONAL_APOYO]->(e3per36)
MERGE (per37)-[cham37:PERSONAL_APOYO]->(e3per37)
MERGE (per38)-[cham38:PERSONAL_APOYO]->(e3per38)
MERGE (per39)-[cham39:PERSONAL_APOYO]->(e3per39)
MERGE (per40)-[cham40:PERSONAL_APOYO]->(e3per40)
MERGE (per41)-[cham41:PERSONAL_TERRESTRE]->(e3per41)
MERGE (per42)-[cham42:PERSONAL_TERRESTRE]->(e3per42)
MERGE (per43)-[cham43:PERSONAL_TERRESTRE]->(e3per43)
MERGE (per44)-[cham44:PERSONAL_TERRESTRE]->(e3per44)
MERGE (per45)-[cham45:PERSONAL_TERRESTRE]->(e3per45)

MERGE (per46)-[cham46:PERSONAL_PILOTO]->(e4per46)
MERGE (per47)-[cham47:PERSONAL_PILOTO]->(e4per47)
MERGE (per48)-[cham48:PERSONAL_PILOTO]->(e4per48)
MERGE (per49)-[cham49:PERSONAL_PILOTO]->(e4per49)
MERGE (per50)-[cham50:PERSONAL_PILOTO]->(e4per50)
MERGE (per51)-[cham51:PERSONAL_APOYO]->(e4per51)
MERGE (per52)-[cham52:PERSONAL_APOYO]->(e4per52)
MERGE (per53)-[cham53:PERSONAL_APOYO]->(e4per53)
MERGE (per54)-[cham54:PERSONAL_APOYO]->(e4per54)
MERGE (per55)-[cham55:PERSONAL_APOYO]->(e4per55)
MERGE (per56)-[cham56:PERSONAL_TERRESTRE]->(e4per56)
MERGE (per57)-[cham57:PERSONAL_TERRESTRE]->(e4per57)
MERGE (per58)-[cham58:PERSONAL_TERRESTRE]->(e4per58)
MERGE (per59)-[cham59:PERSONAL_TERRESTRE]->(e4per59)
MERGE (per60)-[cham60:PERSONAL_TERRESTRE]->(e4per60)

MERGE (per61)-[cham61:PERSONAL_PILOTO]->(e5per61)
MERGE (per62)-[cham62:PERSONAL_PILOTO]->(e5per62)
MERGE (per63)-[cham63:PERSONAL_PILOTO]->(e5per63)
MERGE (per64)-[cham64:PERSONAL_PILOTO]->(e5per64)
MERGE (per65)-[cham65:PERSONAL_PILOTO]->(e5per65)
MERGE (per66)-[cham66:PERSONAL_APOYO]->(e5per66)
MERGE (per67)-[cham67:PERSONAL_APOYO]->(e5per67)
MERGE (per68)-[cham68:PERSONAL_APOYO]->(e5per68)
MERGE (per69)-[cham69:PERSONAL_APOYO]->(e5per69)
MERGE (per70)-[cham70:PERSONAL_APOYO]->(e5per70)
MERGE (per71)-[cham71:PERSONAL_TERRESTRE]->(e5per71)
MERGE (per72)-[cham72:PERSONAL_TERRESTRE]->(e5per72)
MERGE (per73)-[cham73:PERSONAL_TERRESTRE]->(e5per73)
MERGE (per74)-[cham74:PERSONAL_TERRESTRE]->(e5per74)
MERGE (per75)-[cham75:PERSONAL_TERRESTRE]->(e5per75)

MERGE (per76)-[cham76:PERSONAL_PILOTO]->(e6per76)
MERGE (per77)-[cham77:PERSONAL_PILOTO]->(e6per77)
MERGE (per78)-[cham78:PERSONAL_PILOTO]->(e6per78)
MERGE (per79)-[cham79:PERSONAL_PILOTO]->(e6per79)
MERGE (per80)-[cham80:PERSONAL_PILOTO]->(e6per80)
MERGE (per81)-[cham81:PERSONAL_APOYO]->(e6per81)
MERGE (per82)-[cham82:PERSONAL_APOYO]->(e6per82)
MERGE (per83)-[cham83:PERSONAL_APOYO]->(e6per83)
MERGE (per84)-[cham84:PERSONAL_APOYO]->(e6per84)
MERGE (per85)-[cham85:PERSONAL_APOYO]->(e6per85)
MERGE (per86)-[cham86:PERSONAL_TERRESTRE]->(e6per86)
MERGE (per87)-[cham87:PERSONAL_TERRESTRE]->(e6per87)
MERGE (per88)-[cham88:PERSONAL_TERRESTRE]->(e6per88)
MERGE (per89)-[cham89:PERSONAL_TERRESTRE]->(e6per89)
MERGE (per90)-[cham90:PERSONAL_TERRESTRE]->(e6per90)

MERGE (per91)-[cham91:PERSONAL_PILOTO]->(e7per91)
MERGE (per92)-[cham92:PERSONAL_PILOTO]->(e7per92)
MERGE (per93)-[cham93:PERSONAL_PILOTO]->(e7per93)
MERGE (per94)-[cham94:PERSONAL_PILOTO]->(e7per94)
MERGE (per95)-[cham95:PERSONAL_PILOTO]->(e7per95)
MERGE (per96)-[cham96:PERSONAL_APOYO]->(e7per96)
MERGE (per97)-[cham97:PERSONAL_APOYO]->(e7per97)
MERGE (per98)-[cham98:PERSONAL_APOYO]->(e7per98)
MERGE (per99)-[cham99:PERSONAL_APOYO]->(e7per99)
MERGE (per100)-[cham100:PERSONAL_APOYO]->(e7per100)
MERGE (per101)-[cham101:PERSONAL_TERRESTRE]->(e7per101)
MERGE (per102)-[cham102:PERSONAL_TERRESTRE]->(e7per102)
MERGE (per103)-[cham103:PERSONAL_TERRESTRE]->(e7per103)
MERGE (per104)-[cham104:PERSONAL_TERRESTRE]->(e7per104)
MERGE (per105)-[cham105:PERSONAL_TERRESTRE]->(e7per105)

MERGE (per106)-[cham106:PERSONAL_PILOTO]->(e8per106)
MERGE (per107)-[cham107:PERSONAL_PILOTO]->(e8per107)
MERGE (per108)-[cham108:PERSONAL_PILOTO]->(e8per108)
MERGE (per109)-[cham109:PERSONAL_PILOTO]->(e8per109)
MERGE (per110)-[cham110:PERSONAL_PILOTO]->(e8per110)
MERGE (per111)-[cham111:PERSONAL_APOYO]->(e8per111)
MERGE (per112)-[cham112:PERSONAL_APOYO]->(e8per112)
MERGE (per113)-[cham113:PERSONAL_APOYO]->(e8per113)
MERGE (per114)-[cham114:PERSONAL_APOYO]->(e8per114)
MERGE (per115)-[cham115:PERSONAL_APOYO]->(e8per115)
MERGE (per116)-[cham116:PERSONAL_TERRESTRE]->(e8per116)
MERGE (per117)-[cham117:PERSONAL_TERRESTRE]->(e8per117)
MERGE (per118)-[cham118:PERSONAL_TERRESTRE]->(e8per118)
MERGE (per119)-[cham119:PERSONAL_TERRESTRE]->(e8per119)
MERGE (per120)-[cham120:PERSONAL_TERRESTRE]->(e8per120)

MERGE (per121)-[cham121:PERSONAL_PILOTO]->(e9per121)
MERGE (per122)-[cham122:PERSONAL_PILOTO]->(e9per122)
MERGE (per123)-[cham123:PERSONAL_PILOTO]->(e9per123)
MERGE (per124)-[cham124:PERSONAL_PILOTO]->(e9per124)
MERGE (per125)-[cham125:PERSONAL_PILOTO]->(e9per125)
MERGE (per126)-[cham126:PERSONAL_APOYO]->(e9per126)
MERGE (per127)-[cham127:PERSONAL_APOYO]->(e9per127)
MERGE (per128)-[cham128:PERSONAL_APOYO]->(e9per128)
MERGE (per129)-[cham129:PERSONAL_APOYO]->(e9per129)
MERGE (per130)-[cham130:PERSONAL_APOYO]->(e9per130)
MERGE (per131)-[cham131:PERSONAL_TERRESTRE]->(e9per131)
MERGE (per132)-[cham132:PERSONAL_TERRESTRE]->(e9per132)
MERGE (per133)-[cham133:PERSONAL_TERRESTRE]->(e9per133)
MERGE (per134)-[cham134:PERSONAL_TERRESTRE]->(e9per134)
MERGE (per135)-[cham135:PERSONAL_TERRESTRE]->(e9per135)

MERGE (per136)-[cham136:PERSONAL_PILOTO]->(e10per136)
MERGE (per137)-[cham137:PERSONAL_PILOTO]->(e10per137)
MERGE (per138)-[cham138:PERSONAL_PILOTO]->(e10per138)
MERGE (per139)-[cham139:PERSONAL_PILOTO]->(e10per139)
MERGE (per140)-[cham140:PERSONAL_PILOTO]->(e10per140)
MERGE (per141)-[cham141:PERSONAL_APOYO]->(e10per141)
MERGE (per142)-[cham142:PERSONAL_APOYO]->(e10per142)
MERGE (per143)-[cham143:PERSONAL_APOYO]->(e10per143)
MERGE (per144)-[cham144:PERSONAL_APOYO]->(e10per144)
MERGE (per145)-[cham145:PERSONAL_APOYO]->(e10per145)
MERGE (per146)-[cham146:PERSONAL_TERRESTRE]->(e10per146)
MERGE (per147)-[cham147:PERSONAL_TERRESTRE]->(e10per147)
MERGE (per148)-[cham148:PERSONAL_TERRESTRE]->(e10per148)
MERGE (per149)-[cham149:PERSONAL_TERRESTRE]->(e10per149)
MERGE (per150)-[cham150:PERSONAL_TERRESTRE]->(e10per150)

// - ------------------ {DIVISOR}------------------------------------------------------------------- 
// E1
MERGE (avion1:AVION{
    id: "N620DLF5KOP710W",
    modelo: "Airbus A320",
    millasDeAutonomia: 3100,
    capacidadPasajeros: 150,
    numeroIntegrantesTripulacion: 6,
    ultimaRevisionTecnica: "2024-06-04"
})
MERGE (avion2:AVION{
    id: "B-LRAE8239NPHJPK",
    modelo: "Boeing 777-300ER",
    millasDeAutonomia: 7350,
    capacidadPasajeros: 396,
    numeroIntegrantesTripulacion: 14,
    ultimaRevisionTecnica: "2024-06-04"
})
MERGE (avion3:AVION{
    id: "F-GTQR9JNZ3G87H6",
    modelo: "Airbus A380",
    millasDeAutonomia: 8500,
    capacidadPasajeros: 853,
    numeroIntegrantesTripulacion: 20,
    ultimaRevisionTecnica: "2024-06-04"
})
MERGE (avion4:AVION{
    id: "VP-BDTQ5PH4JKM3D",
    modelo: "Boeing 747-8",
    millasDeAutonomia: 8000,
    capacidadPasajeros: 467,
    numeroIntegrantesTripulacion: 16,
    ultimaRevisionTecnica: "2024-06-04"
})
MERGE (avion5:AVION{
    id: "N849AGK62LPQO2J",
    modelo: "Embraer E195-E2",
    millasDeAutonomia: 2600,
    capacidadPasajeros: 132,
    numeroIntegrantesTripulacion: 4,
    ultimaRevisionTecnica: "2024-06-04"
})


// E2
MERGE (avion6:AVION{
    id: "G-PRNMMI9V9I3A8Q",
    modelo: "Airbus A330",
    millasDeAutonomia: 7250,
    capacidadPasajeros: 287,
    numeroIntegrantesTripulacion: 11,
    ultimaRevisionTecnica: "2024-06-04"
})
MERGE (avion7:AVION{
    id: "JA602A8J4YXH4M3",
    modelo: "Boeing 737-800",
    millasDeAutonomia: 2900,
    capacidadPasajeros: 189,
    numeroIntegrantesTripulacion: 6,
    ultimaRevisionTecnica: "2024-06-04"
})
MERGE (avion8:AVION{
    id: "N747P8N8H4FQTNP",
    modelo: "Boeing 787-9",
    millasDeAutonomia: 7630,
    capacidadPasajeros: 296,
    numeroIntegrantesTripulacion: 11,
    ultimaRevisionTecnica: "2024-06-04"
})
MERGE (avion9:AVION{
    id: "VQ-BUC3O2P93JNPV",
    modelo: "Airbus A350-900",
    millasDeAutonomia: 8100,
    capacidadPasajeros: 325,
    numeroIntegrantesTripulacion: 12,
    ultimaRevisionTecnica: "2024-06-04"
})
MERGE (avion10:AVION{
    id: "N349PAOF5P8HJNP",
    modelo: "Boeing 737 MAX 8",
    millasDeAutonomia: 3550,
    capacidadPasajeros: 200,
    numeroIntegrantesTripulacion: 6,
    ultimaRevisionTecnica: "2024-06-04"
})


// E3
MERGE (avion11:AVION{
    id: "N632A7G6HJ2P1LK",
    modelo: "Airbus A321",
    millasDeAutonomia: 3700,
    capacidadPasajeros: 200,
    numeroIntegrantesTripulacion: 6,
    ultimaRevisionTecnica: "2024-06-04"
})
MERGE (avion12:AVION{
    id: "B-2689SKLWNP1HG2",
    modelo: "Boeing 737-700",
    millasDeAutonomia: 3300,
    capacidadPasajeros: 149,
    numeroIntegrantesTripulacion: 5,
    ultimaRevisionTecnica: "2024-06-04"
})
MERGE (avion13:AVION{
    id: "F-HAONPJ3GJ4L9HA",
    modelo: "Airbus A319",
    millasDeAutonomia: 3400,
    capacidadPasajeros: 124,
    numeroIntegrantesTripulacion: 4,
    ultimaRevisionTecnica: "2024-06-04"
})
MERGE (avion14:AVION{
    id: "N919DUQ5PL67GHJ",
    modelo: "Boeing 757-200",
    millasDeAutonomia: 3900,
    capacidadPasajeros: 234,
    numeroIntegrantesTripulacion: 8,
    ultimaRevisionTecnica: "2024-06-04"
})
MERGE (avion15:AVION{
    id: "VP-BDTQ5PH4JKM3D",
    modelo: "Boeing 747-8",
    millasDeAutonomia: 8000,
    capacidadPasajeros: 467,
    numeroIntegrantesTripulacion: 16,
    ultimaRevisionTecnica: "2024-06-04"
})

// E4
MERGE (avion16:AVION{
    id: "G-BHJLPL4B3HJNPW",
    modelo: "Airbus A330-200",
    millasDeAutonomia: 6900,
    capacidadPasajeros: 247,
    numeroIntegrantesTripulacion: 10,
    ultimaRevisionTecnica: "2024-06-04"
})
MERGE (avion17:AVION{
    id: "N770JM65PL9J2P1",
    modelo: "Boeing 767-300ER",
    millasDeAutonomia: 5900,
    capacidadPasajeros: 269,
    numeroIntegrantesTripulacion: 11,
    ultimaRevisionTecnica: "2024-06-04"
})
MERGE (avion18:AVION{
    id: "F-WWBNJ4GH6L9PHG",
    modelo: "Airbus A300",
    millasDeAutonomia: 4700,
    capacidadPasajeros: 266,
    numeroIntegrantesTripulacion: 9,
    ultimaRevisionTecnica: "2024-06-04"
})
MERGE (avion19:AVION{
    id: "N1V95HJ2P1MPL6H",
    modelo: "Boeing 757-300",
    millasDeAutonomia: 4100,
    capacidadPasajeros: 295,
    numeroIntegrantesTripulacion: 10,
    ultimaRevisionTecnica: "2024-06-04"
})
MERGE (avion20:AVION{
    id: "VQ-89JNMPL6H34PK",
    modelo: "Airbus A340-600",
    millasDeAutonomia: 7600,
    capacidadPasajeros: 475,
    numeroIntegrantesTripulacion: 15,
    ultimaRevisionTecnica: "2024-06-04"
})


// E5
MERGE (avion21:AVION{
    id: "B-7J5NP2LP6HJM1K",
    modelo: "Boeing 777-200LR",
    millasDeAutonomia: 9130,
    capacidadPasajeros: 317,
    numeroIntegrantesTripulacion: 14,
    ultimaRevisionTecnica: "2024-06-04"
})

MERGE (avion22:AVION{
    id: "N9P1LJ2M6H3P8K5",
    modelo: "Boeing 787-10",
    millasDeAutonomia: 6430,
    capacidadPasajeros: 330,
    numeroIntegrantesTripulacion: 12,
    ultimaRevisionTecnica: "2024-06-04"
})
MERGE (avion23:AVION{
    id: "F-3H2P1L9J4H6NPL",
    modelo: "Airbus A318",
    millasDeAutonomia: 3300,
    capacidadPasajeros: 107,
    numeroIntegrantesTripulacion: 4,
    ultimaRevisionTecnica: "2024-06-04"
})
MERGE (avion24:AVION{
    id: "VQ-5H3P1L6N8JM9P",
    modelo: "Airbus A321neo",
    millasDeAutonomia: 4000,
    capacidadPasajeros: 240,
    numeroIntegrantesTripulacion: 6,
    ultimaRevisionTecnica: "2024-06-04"
})
MERGE (avion25:AVION{
    id: "N9P1LJ2M6H3P8K4",
    modelo: "Boeing 737 MAX 10",
    millasDeAutonomia: 3300,
    capacidadPasajeros: 230,
    numeroIntegrantesTripulacion: 6,
    ultimaRevisionTecnica: "2024-06-04"
})



// E6
MERGE (avion26:AVION{
    id: "G-7H5JN3P1L9MK2P",
    modelo: "Airbus A330-300",
    millasDeAutonomia: 5900,
    capacidadPasajeros: 335,
    numeroIntegrantesTripulacion: 12,
    ultimaRevisionTecnica: "2024-06-04"
})
MERGE (avion27:AVION{
    id: "B-5N3P1LK2H9JMP7",
    modelo: "Boeing 737-900ER",
    millasDeAutonomia: 3445,
    capacidadPasajeros: 215,
    numeroIntegrantesTripulacion: 6,
    ultimaRevisionTecnica: "2024-06-04"
})
MERGE (avion28:AVION{
    id: "F-9J2P1LK6H3NMP8",
    modelo: "Airbus A350-1000",
    millasDeAutonomia: 8500,
    capacidadPasajeros: 440,
    numeroIntegrantesTripulacion: 15,
    ultimaRevisionTecnica: "2024-06-04"
})
MERGE (avion29:AVION{
    id: "V-6H3N9P1LJ2M5K8",
    modelo: "Airbus A319neo",
    millasDeAutonomia: 3750,
    capacidadPasajeros: 160,
    numeroIntegrantesTripulacion: 5,
    ultimaRevisionTecnica: "2024-06-04"
})
MERGE (avion30:AVION{
    id: "N-9P2LJ6H3N1PK4M",
    modelo: "Boeing 777X",
    millasDeAutonomia: 7600,
    capacidadPasajeros: 384,
    numeroIntegrantesTripulacion: 14,
    ultimaRevisionTecnica: "2024-06-04"
})



// E7
MERGE (avion31:AVION{
    id: "G-8J5H3N1P2LMK9P",
    modelo: "Airbus A380-800",
    millasDeAutonomia: 8500,
    capacidadPasajeros: 555,
    numeroIntegrantesTripulacion: 22,
    ultimaRevisionTecnica: "2024-06-04"
})
MERGE (avion32:AVION{
    id: "B-7J3N9P2L1MK5H8",
    modelo: "Boeing 737-700ER",
    millasDeAutonomia: 4500,
    capacidadPasajeros: 149,
    numeroIntegrantesTripulacion: 5,
    ultimaRevisionTecnica: "2024-06-04"
})
MERGE (avion33:AVION{
    id: "F-9P2LMK5H8J3N1P",
    modelo: "Airbus A321LR",
    millasDeAutonomia: 4000,
    capacidadPasajeros: 206,
    numeroIntegrantesTripulacion: 6,
    ultimaRevisionTecnica: "2024-06-04"
})
MERGE (avion34:AVION{
    id: "V-3N9P1L5H8J2MK4",
    modelo: "Airbus A310-300",
    millasDeAutonomia: 5800,
    capacidadPasajeros: 280,
    numeroIntegrantesTripulacion: 10,
    ultimaRevisionTecnica: "2024-06-04"
})
MERGE (avion35:AVION{
    id: "N1-9P1L3N2M5K8HJ4",
    modelo: "Boeing 757-200F",
    millasDeAutonomia: 3900,
    capacidadPasajeros: 0,
    numeroIntegrantesTripulacion: 3,
    ultimaRevisionTecnica: "2024-06-04"
})


// E8
MERGE (avion36:AVION{
    id: "G-9P1L3N2M5K8HJ4",
    modelo: "Airbus A330-900neo",
    millasDeAutonomia: 7400,
    capacidadPasajeros: 287,
    numeroIntegrantesTripulacion: 11,
    ultimaRevisionTecnica: "2024-06-04"
})
MERGE (avion37:AVION{
    id: "B-9P1L5H8J3N2MK4",
    modelo: "Boeing 737 MAX 9",
    millasDeAutonomia: 3550,
    capacidadPasajeros: 220,
    numeroIntegrantesTripulacion: 6,
    ultimaRevisionTecnica: "2024-06-04"
})
MERGE (avion38:AVION{
    id: "F-9P1L3N2M5K8HJ6",
    modelo: "Airbus A330-800neo",
    millasDeAutonomia: 8150,
    capacidadPasajeros: 257,
    numeroIntegrantesTripulacion: 11,
    ultimaRevisionTecnica: "2024-06-04"
})
MERGE (avion39:AVION{
    id: "V-9P1L5H8J3N2MK6",
    modelo: "Airbus A321XLR",
    millasDeAutonomia: 4700,
    capacidadPasajeros: 244,
    numeroIntegrantesTripulacion: 6,
    ultimaRevisionTecnica: "2024-06-04"
})
MERGE (avion40:AVION{
    id: "N-9P1L3N2M5K8HJ8",
    modelo: "Boeing 767-400ER",
    millasDeAutonomia: 5650,
    capacidadPasajeros: 304,
    numeroIntegrantesTripulacion: 12,
    ultimaRevisionTecnica: "2024-06-04"
})


// E9
MERGE (avion41:AVION{
    id: "G-9P1L3N2M5K8HJ9",
    modelo: "Airbus A319CJ",
    millasDeAutonomia: 3900,
    capacidadPasajeros: 48,
    numeroIntegrantesTripulacion: 2,
    ultimaRevisionTecnica: "2024-06-04"
})
MERGE (avion42:AVION{
    id: "B-9P1L5H8J3N2MK9",
    modelo: "Boeing 777-200F",
    millasDeAutonomia: 4935,
    capacidadPasajeros: 0,
    numeroIntegrantesTripulacion: 3,
    ultimaRevisionTecnica: "2024-06-04"
})
MERGE (avion43:AVION{
    id: "F-9P1L3N2M5K8HJ0",
    modelo: "Airbus A320neo",
    millasDeAutonomia: 3900,
    capacidadPasajeros: 194,
    numeroIntegrantesTripulacion: 6,
    ultimaRevisionTecnica: "2024-06-04"
})
MERGE (avion44:AVION{
    id: "V-9P1L5H8J3N2MK0",
    modelo: "Airbus A321P2F",
    millasDeAutonomia: 3200,
    capacidadPasajeros: 0,
    numeroIntegrantesTripulacion: 3,
    ultimaRevisionTecnica: "2024-06-04"
})
MERGE (avion45:AVION{
    id: "N-9P1L3N2M5K8HJ1",
    modelo: "Boeing 787-8",
    millasDeAutonomia: 7630,
    capacidadPasajeros: 242,
    numeroIntegrantesTripulacion: 10,
    ultimaRevisionTecnica: "2024-06-04"
})


// E10
MERGE (avion46:AVION{
    id: "G-9P1L3N2M5K8HJ2",
    modelo: "Airbus A321neoLR",
    millasDeAutonomia: 4700,
    capacidadPasajeros: 244,
    numeroIntegrantesTripulacion: 6,
    ultimaRevisionTecnica: "2024-06-04"
})
MERGE (avion47:AVION{
    id: "B-9P1L5H8J3N2MK2",
    modelo: "Boeing 747-400F",
    millasDeAutonomia: 6100,
    capacidadPasajeros: 0,
    numeroIntegrantesTripulacion: 3,
    ultimaRevisionTecnica: "2024-06-04"
})
MERGE (avion48:AVION{
    id: "F-9P1L3N2M5K8HJ3",
    modelo: "Airbus A330-200F",
    millasDeAutonomia: 7400,
    capacidadPasajeros: 0,
    numeroIntegrantesTripulacion: 3,
    ultimaRevisionTecnica: "2024-06-04"
})
MERGE (avion49:AVION{
    id: "V-9P1L5H8J3N2MK3",
    modelo: "Airbus A340-500",
    millasDeAutonomia: 8700,
    capacidadPasajeros: 375,
    numeroIntegrantesTripulacion: 13,
    ultimaRevisionTecnica: "2024-06-04"
})
MERGE (avion50:AVION{
    id: "N-9P1L3N2M5K8HJ4",
    modelo: "Boeing 757-300",
    millasDeAutonomia: 4100,
    capacidadPasajeros: 295,
    numeroIntegrantesTripulacion: 10,
    ultimaRevisionTecnica: "2024-06-04"
})


// Colocando los aviones a las agencias de vuelo
MERGE (e1)-[avione1P1:AVIONES]->(avion1)
MERGE (e1)-[avione1P2:AVIONES]->(avion2)
MERGE (e1)-[avione1P3:AVIONES]->(avion3)
MERGE (e1)-[avione1P4:AVIONES]->(avion4)
MERGE (e1)-[avione1P5:AVIONES]->(avion5)

MERGE (e2)-[avione2P1:AVIONES]->(avion6)
MERGE (e2)-[avione2P2:AVIONES]->(avion7)
MERGE (e2)-[avione2P3:AVIONES]->(avion8)
MERGE (e2)-[avione2P4:AVIONES]->(avion9)
MERGE (e2)-[avione2P5:AVIONES]->(avion10)

MERGE (e3)-[avione3P1:AVIONES]->(avion11)
MERGE (e3)-[avione3P2:AVIONES]->(avion12)
MERGE (e3)-[avione3P3:AVIONES]->(avion13)
MERGE (e3)-[avione3P4:AVIONES]->(avion14)
MERGE (e3)-[avione3P5:AVIONES]->(avion15)

MERGE (e4)-[avione4P1:AVIONES]->(avion16)
MERGE (e4)-[avione4P2:AVIONES]->(avion17)
MERGE (e4)-[avione4P3:AVIONES]->(avion18)
MERGE (e4)-[avione4P4:AVIONES]->(avion19)
MERGE (e4)-[avione4P5:AVIONES]->(avion20)

MERGE (e5)-[avione5P1:AVIONES]->(avion21)
MERGE (e5)-[avione5P2:AVIONES]->(avion22)
MERGE (e5)-[avione5P3:AVIONES]->(avion23)
MERGE (e5)-[avione5P4:AVIONES]->(avion24)
MERGE (e5)-[avione5P5:AVIONES]->(avion25)

MERGE (e6)-[avione6P1:AVIONES]->(avion26)
MERGE (e6)-[avione6P2:AVIONES]->(avion27)
MERGE (e6)-[avione6P3:AVIONES]->(avion28)
MERGE (e6)-[avione6P4:AVIONES]->(avion29)
MERGE (e6)-[avione6P5:AVIONES]->(avion30)

MERGE (e7)-[avione7P1:AVIONES]->(avion31)
MERGE (e7)-[avione7P2:AVIONES]->(avion32)
MERGE (e7)-[avione7P3:AVIONES]->(avion33)
MERGE (e7)-[avione7P4:AVIONES]->(avion34)
MERGE (e7)-[avione7P5:AVIONES]->(avion35)

MERGE (e8)-[avione8P1:AVIONES]->(avion36)
MERGE (e8)-[avione8P2:AVIONES]->(avion37)
MERGE (e8)-[avione8P3:AVIONES]->(avion38)
MERGE (e8)-[avione8P4:AVIONES]->(avion39)
MERGE (e8)-[avione8P5:AVIONES]->(avion40)

MERGE (e9)-[avione9P1:AVIONES]->(avion41)
MERGE (e9)-[avione9P2:AVIONES]->(avion42)
MERGE (e9)-[avione9P3:AVIONES]->(avion43)
MERGE (e9)-[avione9P4:AVIONES]->(avion44)
MERGE (e9)-[avione9P5:AVIONES]->(avion45)

MERGE (e10)-[avione10P1:AVIONES]->(avion46)
MERGE (e10)-[avione10P2:AVIONES]->(avion47)
MERGE (e10)-[avione10P3:AVIONES]->(avion48)
MERGE (e10)-[avione10P4:AVIONES]->(avion49)
MERGE (e10)-[avione10P5:AVIONES]->(avion50)

// Agregación de las rutas y sus respectivos datos

// E1
MERGE (ruta1:RUTA{codigoRuta: "RTA123ABC456XYZ789", origen: "New York", destino: "Los Angeles", duracionVuelo: 5, escalas: ["MXJAL123:E1","MXNOG144:E2","MXCUNA073:E3"]})
MERGE (ruta2:RUTA{codigoRuta: "RTA456DEF789GHI012", origen: "London", destino: "Paris", duracionVuelo: 2, escalas: []})
MERGE (ruta3:RUTA{codigoRuta: "RTA789JKL012MNO345", origen: "Tokyo", destino: "Sydney", duracionVuelo: 9, escalas: []})
MERGE (ruta4:RUTA{codigoRuta: "RTA012PQR345STU678", origen: "Dubai", destino: "Singapore", duracionVuelo: 7, escalas: []})
MERGE (ruta5:RUTA{codigoRuta: "RTA345VWX678YZA901", origen: "Mexico City", destino: "Toronto", duracionVuelo: 4, escalas: []})

// E2
MERGE (ruta6:RUTA{codigoRuta: "RTA678BCD901EFG234", origen: "Berlin", destino: "Rome", duracionVuelo: 3, escalas: []})
MERGE (ruta7:RUTA{codigoRuta: "RTA901HIJ234KLM567", origen: "Moscow", destino: "Beijing", duracionVuelo: 8, escalas: []})
MERGE (ruta8:RUTA{codigoRuta: "RTA234NOP567QRS890", origen: "Rio de Janeiro", destino: "Buenos Aires", duracionVuelo: 2, escalas: []})
MERGE (ruta9:RUTA{codigoRuta: "RTA567TUV890WXY123", origen: "Sydney", destino: "Auckland", duracionVuelo: 3, escalas: []})
MERGE (ruta10:RUTA{codigoRuta: "RTA123YZA456BCD789", origen: "Cape Town", destino: "Nairobi", duracionVuelo: 5, escalas: []})

// E3
MERGE (ruta11:RUTA{codigoRuta: "RTA456DEF789GHI012", origen: "Madrid", destino: "Barcelona", duracionVuelo: 1, escalas: []})
MERGE (ruta12:RUTA{codigoRuta: "RTA789GHI012JKL345", origen: "Seoul", destino: "Tokyo", duracionVuelo: 2, escalas: []})
MERGE (ruta13:RUTA{codigoRuta: "RTA012MNO345PQR678", origen: "Singapore", destino: "Bangkok", duracionVuelo: 2, escalas: []})
MERGE (ruta14:RUTA{codigoRuta: "RTA345STU678VWX901", origen: "Shanghai", destino: "Hong Kong", duracionVuelo: 1, escalas: []})
MERGE (ruta15:RUTA{codigoRuta: "RTA678YZA901BCD234", origen: "Paris", destino: "Rome", duracionVuelo: 2, escalas: []})

// E4
MERGE (ruta16:RUTA{codigoRuta: "RTA901EFG234HIJ567", origen: "Los Angeles", destino: "San Francisco", duracionVuelo: 1, escalas: []})
MERGE (ruta17:RUTA{codigoRuta: "RTA234KLM567NOP890", origen: "Toronto", destino: "Vancouver", duracionVuelo: 4, escalas: []})
MERGE (ruta18:RUTA{codigoRuta: "RTA567QRS890TUV123", origen: "Santiago", destino: "Lima", duracionVuelo: 3, escalas: []})
MERGE (ruta19:RUTA{codigoRuta: "RTA123WXY456YZA789", origen: "Sydney", destino: "Melbourne", duracionVuelo: 1, escalas: []})
MERGE (ruta20:RUTA{codigoRuta: "RTA456BCD789DEF012", origen: "Tokyo", destino: "Osaka", duracionVuelo: 1, escalas: []})

// E5
MERGE (ruta21:RUTA{codigoRuta: "RTA789GHI012JKL345", origen: "Madrid", destino: "Lisbon", duracionVuelo: 2, escalas: []})
MERGE (ruta22:RUTA{codigoRuta: "RTA012MNO345PQR678", origen: "Berlin", destino: "Amsterdam", duracionVuelo: 1, escalas: []})
MERGE (ruta23:RUTA{codigoRuta: "RTA345STU678VWX901", origen: "Seoul", destino: "Shanghai", duracionVuelo: 2, escalas: []})
MERGE (ruta24:RUTA{codigoRuta: "RTA678YZA901BCD234", origen: "Rio de Janeiro", destino: "Bogota", duracionVuelo: 5, escalas: []})
MERGE (ruta25:RUTA{codigoRuta: "RTA901EFG234HIJ567", origen: "Mexico City", destino: "Houston", duracionVuelo: 2, escalas: []})

// E6
MERGE (ruta26:RUTA{codigoRuta: "RTA234KLM567NOP890", origen: "New Delhi", destino: "Mumbai", duracionVuelo: 2, escalas: ["MXJAL123:E1","MXNOG144:E2","MXCUNA073:E3"]})
MERGE (ruta27:RUTA{codigoRuta: "RTA567QRS890TUV123", origen: "Bangkok", destino: "Phuket", duracionVuelo: 1, escalas: []})
MERGE (ruta28:RUTA{codigoRuta: "RTA123WXY456YZA789", origen: "Cairo", destino: "Istanbul", duracionVuelo: 2, escalas: []})
MERGE (ruta29:RUTA{codigoRuta: "RTA456BCD789DEF012", origen: "Sydney", destino: "Auckland", duracionVuelo: 3, escalas: []})
MERGE (ruta30:RUTA{codigoRuta: "RTA789GHI012JKL345", origen: "Singapore", destino: "Kuala Lumpur", duracionVuelo: 1, escalas: []})

// E7
MERGE (ruta31:RUTA{codigoRuta: "RTA012MNO345PQR678", origen: "Dubai", destino: "Abu Dhabi", duracionVuelo: 1, escalas: []})
MERGE (ruta32:RUTA{codigoRuta: "RTA345STU678VWX901", origen: "Tokyo", destino: "Seoul", duracionVuelo: 2, escalas: []})
MERGE (ruta33:RUTA{codigoRuta: "RTA678YZA901BCD234", origen: "London", destino: "Dublin", duracionVuelo: 1, escalas: []})
MERGE (ruta34:RUTA{codigoRuta: "RTA901EFG234HIJ567", origen: "Paris", destino: "Madrid", duracionVuelo: 2, escalas: []})
MERGE (ruta35:RUTA{codigoRuta: "RTA234KLM567NOP890", origen: "New York", destino: "Chicago", duracionVuelo: 2, escalas: []})

// E8
MERGE (ruta36:RUTA{codigoRuta: "RTA567QRS890TUV123", origen: "Los Angeles", destino: "Las Vegas", duracionVuelo: 1, escalas: []})
MERGE (ruta37:RUTA{codigoRuta: "RTA123WXY456YZA789", origen: "Miami", destino: "Orlando", duracionVuelo: 1, escalas: []})
MERGE (ruta38:RUTA{codigoRuta: "RTA456BCD789DEF012", origen: "Sydney", destino: "Brisbane", duracionVuelo: 2, escalas: []})
MERGE (ruta39:RUTA{codigoRuta: "RTA789GHI012JKL345", origen: "Tokyo", destino: "Osaka", duracionVuelo: 1, escalas: []})
MERGE (ruta40:RUTA{codigoRuta: "RTA012MNO345PQR678", origen: "Singapore", destino: "Bangkok", duracionVuelo: 2, escalas: []})

// E9
MERGE (ruta41:RUTA{codigoRuta: "RTA345STU678VWX901", origen: "Roma", destino: "Milán", duracionVuelo: 1, escalas: []})
MERGE (ruta42:RUTA{codigoRuta: "RTA678YZA901BCD234", origen: "Berlín", destino: "Viena", duracionVuelo: 2, escalas: []})
MERGE (ruta43:RUTA{codigoRuta: "RTA901EFG234HIJ567", origen: "Ámsterdam", destino: "Bruselas", duracionVuelo: 1, escalas: []})
MERGE (ruta44:RUTA{codigoRuta: "RTA234KLM567NOP890", origen: "Moscú", destino: "San Petersburgo", duracionVuelo: 1, escalas: []})
MERGE (ruta45:RUTA{codigoRuta: "RTA567QRS890TUV123", origen: "Estambul", destino: "Atenas", duracionVuelo: 1, escalas: []})

// E10
MERGE (ruta46:RUTA{codigoRuta: "RTA123WXY456YZA789", origen: "Bangkok", destino: "Hanoi", duracionVuelo: 1, escalas: []})
MERGE (ruta47:RUTA{codigoRuta: "RTA456BCD789DEF012", origen: "Delhi", destino: "Mumbai", duracionVuelo: 2, escalas: []})
MERGE (ruta48:RUTA{codigoRuta: "RTA789GHI012JKL345", origen: "Ciudad de México", destino: "Guadalajara", duracionVuelo: 1, escalas: []})
MERGE (ruta49:RUTA{codigoRuta: "RTA012MNO345PQR678", origen: "São Paulo", destino: "Río de Janeiro", duracionVuelo: 1, escalas: []})
MERGE (ruta50:RUTA{codigoRuta: "RTA345STU678VWX901", origen: "Nueva York", destino: "Miami", duracionVuelo: 3, escalas: ["MXJAL123:E1","MXNOG144:E2","MXMTYA074:E3"]})

// Colocando los pilotos a las rutas
// E1
MERGE (per1)-[pilotoE1P1V1: PILOTO_DESIGNADO]->(ruta1)
MERGE (per2)-[pilotoE1P2V1: PILOTO_DESIGNADO]->(ruta2)
MERGE (per3)-[pilotoE1P3V1: PILOTO_DESIGNADO]->(ruta3)
MERGE (per4)-[pilotoE1P4V1: PILOTO_DESIGNADO]->(ruta4)
MERGE (per5)-[pilotoE1P5V1: PILOTO_DESIGNADO]->(ruta5)
// E2
MERGE (per16)-[pilotoE2P16V1: PILOTO_DESIGNADO]->(ruta6)
MERGE (per17)-[pilotoE2P17V1: PILOTO_DESIGNADO]->(ruta7)
MERGE (per18)-[pilotoE2P18V1: PILOTO_DESIGNADO]->(ruta8)
MERGE (per19)-[pilotoE2P19V1: PILOTO_DESIGNADO]->(ruta9)
MERGE (per20)-[pilotoE2P20V1: PILOTO_DESIGNADO]->(ruta10)
// E3
MERGE (per31)-[pilotoE3P31V1: PILOTO_DESIGNADO]->(ruta11)
MERGE (per32)-[pilotoE3P32V1: PILOTO_DESIGNADO]->(ruta12)
MERGE (per33)-[pilotoE3P33V1: PILOTO_DESIGNADO]->(ruta13)
MERGE (per34)-[pilotoE3P34V1: PILOTO_DESIGNADO]->(ruta14)
MERGE (per35)-[pilotoE3P35V1: PILOTO_DESIGNADO]->(ruta15)
// E4
MERGE (per46)-[pilotoE4P46V1: PILOTO_DESIGNADO]->(ruta16)
MERGE (per47)-[pilotoE4P47V1: PILOTO_DESIGNADO]->(ruta17)
MERGE (per48)-[pilotoE4P48V1: PILOTO_DESIGNADO]->(ruta18)
MERGE (per49)-[pilotoE4P49V1: PILOTO_DESIGNADO]->(ruta19)
MERGE (per50)-[pilotoE4P50V1: PILOTO_DESIGNADO]->(ruta20)
// E5
MERGE (per61)-[pilotoE5P61V1: PILOTO_DESIGNADO]->(ruta21)
MERGE (per62)-[pilotoE5P62V1: PILOTO_DESIGNADO]->(ruta22)
MERGE (per63)-[pilotoE5P63V1: PILOTO_DESIGNADO]->(ruta23)
MERGE (per64)-[pilotoE5P64V1: PILOTO_DESIGNADO]->(ruta24)
MERGE (per65)-[pilotoE5P65V1: PILOTO_DESIGNADO]->(ruta25)
// E6
MERGE (per76)-[pilotoE6P76V1: PILOTO_DESIGNADO]->(ruta26)
MERGE (per77)-[pilotoE6P77V1: PILOTO_DESIGNADO]->(ruta27)
MERGE (per78)-[pilotoE6P78V1: PILOTO_DESIGNADO]->(ruta28)
MERGE (per79)-[pilotoE6P79V1: PILOTO_DESIGNADO]->(ruta29)
MERGE (per80)-[pilotoE6P80V1: PILOTO_DESIGNADO]->(ruta30)
// E7
MERGE (per91)-[pilotoE7P91V1: PILOTO_DESIGNADO]->(ruta31)
MERGE (per92)-[pilotoE7P92V1: PILOTO_DESIGNADO]->(ruta32)
MERGE (per93)-[pilotoE7P93V1: PILOTO_DESIGNADO]->(ruta33)
MERGE (per94)-[pilotoE7P94V1: PILOTO_DESIGNADO]->(ruta34)
MERGE (per95)-[pilotoE7P95V1: PILOTO_DESIGNADO]->(ruta35)
// E8
MERGE (per106)-[pilotoE8P106V1: PILOTO_DESIGNADO]->(ruta36)
MERGE (per107)-[pilotoE8P107V1: PILOTO_DESIGNADO]->(ruta37)
MERGE (per108)-[pilotoE8P108V1: PILOTO_DESIGNADO]->(ruta38)
MERGE (per109)-[pilotoE8P109V1: PILOTO_DESIGNADO]->(ruta39)
MERGE (per110)-[pilotoE8P110V1: PILOTO_DESIGNADO]->(ruta40)
// E9
MERGE (per121)-[pilotoE9P121V1: PILOTO_DESIGNADO]->(ruta41)
MERGE (per122)-[pilotoE9P122V1: PILOTO_DESIGNADO]->(ruta42)
MERGE (per123)-[pilotoE9P123V1: PILOTO_DESIGNADO]->(ruta43)
MERGE (per124)-[pilotoE9P124V1: PILOTO_DESIGNADO]->(ruta44)
MERGE (per125)-[pilotoE9P125V1: PILOTO_DESIGNADO]->(ruta45)
// E10
MERGE (per136)-[pilotoE10P136V1: PILOTO_DESIGNADO]->(ruta46)
MERGE (per137)-[pilotoE10P137V1: PILOTO_DESIGNADO]->(ruta47)
MERGE (per138)-[pilotoE10P138V1: PILOTO_DESIGNADO]->(ruta48)
MERGE (per139)-[pilotoE10P139V1: PILOTO_DESIGNADO]->(ruta49)
MERGE (per140)-[pilotoE10P140V1: PILOTO_DESIGNADO]->(ruta50)

// Colocando los aviones a la ruta
// E1
MERGE (avion1)-[avionE1a1v1: AVION_DESIGNADO]->(ruta1)
MERGE (avion2)-[avionE1av1: AVION_DESIGNADO]->(ruta2)
MERGE (avion3)-[avionE1a3v1: AVION_DESIGNADO]->(ruta3)
MERGE (avion4)-[avionE1a4v1: AVION_DESIGNADO]->(ruta4)
MERGE (avion5)-[avionE1a5v1: AVION_DESIGNADO]->(ruta5)
// E2
MERGE (avion6)-[avionE2a6v1: AVION_DESIGNADO]->(ruta6)
MERGE (avion7)-[avionE2a7v1: AVION_DESIGNADO]->(ruta7)
MERGE (avion8)-[avionE2a8v1: AVION_DESIGNADO]->(ruta8)
MERGE (avion9)-[avionE2a9v1: AVION_DESIGNADO]->(ruta9)
MERGE (avion10)-[avionE2a10v1: AVION_DESIGNADO]->(ruta10)
// E3
MERGE (avion11)-[avionE3a11v1: AVION_DESIGNADO]->(ruta11)
MERGE (avion12)-[avionE3a12v1: AVION_DESIGNADO]->(ruta12)
MERGE (avion13)-[avionE3a13v1: AVION_DESIGNADO]->(ruta13)
MERGE (avion14)-[avionE3a14v1: AVION_DESIGNADO]->(ruta14)
MERGE (avion15)-[avionE3a15v1: AVION_DESIGNADO]->(ruta15)
// E4
MERGE (avion16)-[avionE4a16v1: AVION_DESIGNADO]->(ruta16)
MERGE (avion17)-[avionE4a17v1: AVION_DESIGNADO]->(ruta17)
MERGE (avion18)-[avionE4a18v1: AVION_DESIGNADO]->(ruta18)
MERGE (avion19)-[avionE4a19v1: AVION_DESIGNADO]->(ruta19)
MERGE (avion20)-[avionE4a20v1: AVION_DESIGNADO]->(ruta20)
// E5
MERGE (avion21)-[avionE5a210v1: AVION_DESIGNADO]->(ruta21)
MERGE (avion22)-[avionE5a220v1: AVION_DESIGNADO]->(ruta22)
MERGE (avion23)-[avionE5a230v1: AVION_DESIGNADO]->(ruta23)
MERGE (avion24)-[avionE5a24v1: AVION_DESIGNADO]->(ruta24)
MERGE (avion25)-[avionE5a25v1: AVION_DESIGNADO]->(ruta25)
// E6
MERGE (avion26)-[avionE6a26v1: AVION_DESIGNADO]->(ruta26)
MERGE (avion27)-[avionE6a27v1: AVION_DESIGNADO]->(ruta27)
MERGE (avion28)-[avionE6a28v1: AVION_DESIGNADO]->(ruta28)
MERGE (avion29)-[avionE6a29v1: AVION_DESIGNADO]->(ruta29)
MERGE (avion30)-[avionE6a30v1: AVION_DESIGNADO]->(ruta30)
// E7
MERGE (avion31)-[avionE7a31v1: AVION_DESIGNADO]->(ruta31)
MERGE (avion32)-[avionE7a32v1: AVION_DESIGNADO]->(ruta32)
MERGE (avion33)-[avionE7a33v1:AVION_DESIGNADO]->(ruta33)
MERGE (avion34)-[avionE7a34v1: AVION_DESIGNADO]->(ruta34)
MERGE (avion35)-[avionE7a35v1: AVION_DESIGNADO]->(ruta35)
// E8
MERGE (avion36)-[avionE8a36v1: AVION_DESIGNADO]->(ruta36)
MERGE (avion37)-[avionE8a37v1: AVION_DESIGNADO]->(ruta37)
MERGE (avion38)-[avionE8a38v1: AVION_DESIGNADO]->(ruta38)
MERGE (avion39)-[avionE8a39v1: AVION_DESIGNADO]->(ruta39)
MERGE (avion40)-[avionE8a40v1: AVION_DESIGNADO]->(ruta40)
// E9
MERGE (avion41)-[avionE9a41v1: AVION_DESIGNADO]->(ruta41)
MERGE (avion42)-[avionE9a42v1: AVION_DESIGNADO]->(ruta42)
MERGE (avion43)-[avionE9a43v1: AVION_DESIGNADO]->(ruta43)
MERGE (avion44)-[avionE9a44v1: AVION_DESIGNADO]->(ruta44)
MERGE (avion45)-[avionE9a45v1: AVION_DESIGNADO]->(ruta45)
// E10
MERGE (avion46)-[avionE10a46v1: AVION_DESIGNADO]->(ruta46)
MERGE (avion47)-[avionE10a47v1: AVION_DESIGNADO]->(ruta47)
MERGE (avion48)-[avionE10a48v1: AVION_DESIGNADO]->(ruta48)
MERGE (avion49)-[avionE10a49v1: AVION_DESIGNADO]->(ruta49)
MERGE (avion50)-[avionE10a50v1: AVION_DESIGNADO]->(ruta50)


// Colocando el origen de la ruta
// E1
MERGE (a1)-[avini1: AEROPUERTO_INICIO]->(ruta1)
MERGE (a1)-[avini2: AEROPUERTO_INICIO]->(ruta2)
MERGE (a1)-[avini3: AEROPUERTO_INICIO]->(ruta3)
MERGE (a1)-[avini4: AEROPUERTO_INICIO]->(ruta4)
MERGE (a1)-[avini5: AEROPUERTO_INICIO]->(ruta5)
// E2
MERGE (a2)-[avini6: AEROPUERTO_INICIO]->(ruta6)
MERGE (a2)-[avini7: AEROPUERTO_INICIO]->(ruta7)
MERGE (a2)-[avini8: AEROPUERTO_INICIO]->(ruta8)
MERGE (a2)-[avini9: AEROPUERTO_INICIO]->(ruta9)
MERGE (a2)-[avini10: AEROPUERTO_INICIO]->(ruta10)
// E3
MERGE (a3)-[avini11: AEROPUERTO_INICIO]->(ruta11)
MERGE (a3)-[avini12: AEROPUERTO_INICIO]->(ruta12)
MERGE (a3)-[avini13: AEROPUERTO_INICIO]->(ruta13)
MERGE (a3)-[avini14: AEROPUERTO_INICIO]->(ruta14)
MERGE (a3)-[avini15: AEROPUERTO_INICIO]->(ruta15)
// E4
MERGE (a4)-[avini16: AEROPUERTO_INICIO]->(ruta16)
MERGE (a4)-[avini17: AEROPUERTO_INICIO]->(ruta17)
MERGE (a4)-[avini18: AEROPUERTO_INICIO]->(ruta18)
MERGE (a4)-[avini19: AEROPUERTO_INICIO]->(ruta19)
MERGE (a4)-[avini20: AEROPUERTO_INICIO]->(ruta20)
// E5
MERGE (a5)-[avini21: AEROPUERTO_INICIO]->(ruta21)
MERGE (a5)-[avini22: AEROPUERTO_INICIO]->(ruta22)
MERGE (a5)-[avini23: AEROPUERTO_INICIO]->(ruta23)
MERGE (a5)-[avini24: AEROPUERTO_INICIO]->(ruta24)
MERGE (a5)-[avini25: AEROPUERTO_INICIO]->(ruta25)
// E6
MERGE (a4)-[avini26: AEROPUERTO_INICIO]->(ruta26)
MERGE (a4)-[avini27: AEROPUERTO_INICIO]->(ruta27)
MERGE (a4)-[avini28: AEROPUERTO_INICIO]->(ruta28)
MERGE (a4)-[avini29: AEROPUERTO_INICIO]->(ruta29)
MERGE (a4)-[avini30: AEROPUERTO_INICIO]->(ruta30)
// E7
MERGE (a3)-[avini31: AEROPUERTO_INICIO]->(ruta31)
MERGE (a3)-[avini32: AEROPUERTO_INICIO]->(ruta32)
MERGE (a3)-[avini33:AEROPUERTO_INICIO]->(ruta33)
MERGE (a3)-[avini34: AEROPUERTO_INICIO]->(ruta34)
MERGE (a3)-[avini35: AEROPUERTO_INICIO]->(ruta35)
// E8
MERGE (a2)-[avini36: AEROPUERTO_INICIO]->(ruta36)
MERGE (a2)-[avini37: AEROPUERTO_INICIO]->(ruta37)
MERGE (a2)-[avini38: AEROPUERTO_INICIO]->(ruta38)
MERGE (a2)-[avini39: AEROPUERTO_INICIO]->(ruta39)
MERGE (a2)-[avini40: AEROPUERTO_INICIO]->(ruta40)
// E9
MERGE (a1)-[avini41: AEROPUERTO_INICIO]->(ruta41)
MERGE (a1)-[avini42: AEROPUERTO_INICIO]->(ruta42)
MERGE (a1)-[avini43: AEROPUERTO_INICIO]->(ruta43)
MERGE (a1)-[avini44: AEROPUERTO_INICIO]->(ruta44)
MERGE (a1)-[avini45: AEROPUERTO_INICIO]->(ruta45)
// E10
MERGE (a5)-[avini46: AEROPUERTO_INICIO]->(ruta46)
MERGE (a5)-[avini47: AEROPUERTO_INICIO]->(ruta47)
MERGE (a5)-[avini48: AEROPUERTO_INICIO]->(ruta48)
MERGE (a5)-[avini49: AEROPUERTO_INICIO]->(ruta49)
MERGE (a5)-[avini50: AEROPUERTO_INICIO]->(ruta50)

// Colocando el desitno de la ruta
// Colocando el origen de la ruta
// E1
MERGE (ruta50)-[avide1: AEROPUERTO_DESTINO]->(a4)
MERGE (ruta49)-[avide2: AEROPUERTO_DESTINO]->(a4)
MERGE (ruta48)-[avide3: AEROPUERTO_DESTINO]->(a3)
MERGE (ruta47)-[avide4: AEROPUERTO_DESTINO]->(a2)
MERGE (ruta46)-[avide5: AEROPUERTO_DESTINO]->(a1)
// E2
MERGE (ruta45)-[avide6: AEROPUERTO_DESTINO]->(a5)
MERGE (ruta44)-[avide7: AEROPUERTO_DESTINO]->(a4)
MERGE (ruta43)-[avide8: AEROPUERTO_DESTINO]->(a3)
MERGE (ruta42)-[avide9: AEROPUERTO_DESTINO]->(a2)
MERGE (ruta41)-[avide10: AEROPUERTO_DESTINO]->(a2)
// E3
MERGE (ruta40)-[avide11: AEROPUERTO_DESTINO]->(a5)
MERGE (ruta39)-[avide12: AEROPUERTO_DESTINO]->(a3)
MERGE (ruta38)-[avide13: AEROPUERTO_DESTINO]->(a3)
MERGE (ruta37)-[avide14: AEROPUERTO_DESTINO]->(a1)
MERGE (ruta36)-[avide15: AEROPUERTO_DESTINO]->(a1)
// E4
MERGE (ruta35)-[avide16: AEROPUERTO_DESTINO]->(a5)
MERGE (ruta34)-[avide17: AEROPUERTO_DESTINO]->(a3)
MERGE (ruta33)-[avide18: AEROPUERTO_DESTINO]->(a3)
MERGE (ruta32)-[avide19: AEROPUERTO_DESTINO]->(a1)
MERGE (ruta31)-[avide20: AEROPUERTO_DESTINO]->(a1)
// E5
MERGE (ruta30)-[avide21: AEROPUERTO_DESTINO]->(a1)
MERGE (ruta29)-[avide22: AEROPUERTO_DESTINO]->(a1)
MERGE (ruta28)-[avide23: AEROPUERTO_DESTINO]->(a1)
MERGE (ruta27)-[avide24: AEROPUERTO_DESTINO]->(a1)
MERGE (ruta26)-[avide25: AEROPUERTO_DESTINO]->(a1)
// E6
MERGE (ruta25)-[avide26: AEROPUERTO_DESTINO]->(a4)
MERGE (ruta24)-[avide27: AEROPUERTO_DESTINO]->(a3)
MERGE (ruta23)-[avide28: AEROPUERTO_DESTINO]->(a2)
MERGE (ruta22)-[avide29: AEROPUERTO_DESTINO]->(a1)
MERGE (ruta21)-[avide30: AEROPUERTO_DESTINO]->(a3)
// E7
MERGE (ruta20)-[avide31: AEROPUERTO_DESTINO]->(a2)
MERGE (ruta19)-[avide32: AEROPUERTO_DESTINO]->(a2)
MERGE (ruta18)-[avide33: AEROPUERTO_DESTINO]->(a2)
MERGE (ruta17)-[avide34: AEROPUERTO_DESTINO]->(a2)
MERGE (ruta16)-[avide35: AEROPUERTO_DESTINO]->(a2)
// E8
MERGE (ruta15)-[avide36: AEROPUERTO_DESTINO]->(a1)
MERGE (ruta14)-[avide37: AEROPUERTO_DESTINO]->(a1)
MERGE (ruta13)-[avide38: AEROPUERTO_DESTINO]->(a1)
MERGE (ruta12)-[avide39: AEROPUERTO_DESTINO]->(a1)
MERGE (ruta11)-[avide40: AEROPUERTO_DESTINO]->(a1)
// E9
MERGE (ruta10)-[avide41: AEROPUERTO_DESTINO]->(a1)
MERGE (ruta9)-[avide42: AEROPUERTO_DESTINO]->(a5)
MERGE (ruta8)-[avide43: AEROPUERTO_DESTINO]->(a3)
MERGE (ruta7)-[avide44: AEROPUERTO_DESTINO]->(a4)
MERGE (ruta6)-[avide45: AEROPUERTO_DESTINO]->(a1)
// E10
MERGE (ruta5)-[avide46: AEROPUERTO_DESTINO]->(a2)
MERGE (ruta4)-[avide47: AEROPUERTO_DESTINO]->(a5)
MERGE (ruta3)-[avide48: AEROPUERTO_DESTINO]->(a4)
MERGE (ruta2)-[avide49: AEROPUERTO_DESTINO]->(a3)
MERGE (ruta1)-[avide50: AEROPUERTO_DESTINO]->(a2)

PARA ENTRAR A LA BASE DE DATOS DE NEO4J
EL LINK ES:
http://localhost:7474/browser/

Y DE ESTA FORMA INGRESAS:
bolt://localhost:7687

Q1. CREAR AEROPUERTO. (POST)
http://localhost:3000/api/aeropuerto/crear
{
  "id": "AER123",
  "nombre": "Aeropuerto Internacional",
  "ciudad": "Ciudad de México",
  "direccion": "Av. Principal 123",
  "numeroPistas": 5
}
VER QUE SE CREO EN NEO4J
MATCH (a:Aeropuerto {id: "AER123"}) RETURN a;
Q2.ELIMINAR AEROPUERTO.(DELETE)
http://localhost:3000/api/aeropuerto/eliminar/AER123
Q3. CREAR EMPRESA (POST)
http://localhost:3000/api/empresa/crear
{
  "RFC": "EMP123456789",
  "nombre": "Empresa Aérea",
  "nacionalidad": "Mexicana",
  "direccion": "Calle 456",
  "telefonos": ["5551234567", "5557654321"],
  "cantidadAviones": 12
}
VER EN NEO4J
MATCH (e:Empresa {RFC: 'RFC123'})
RETURN e
Q4. ELIMINAR EMPRESA. (DELETE)
http://localhost:3000/api/empresa/eliminar/EMP123456789

Q5. CREAR PERSONAL.
http://localhost:3000/api/personal/agregar
{
  "id": "PERS001",
  "nacionalidad": "Mexicana",
  "nombres": "Juan Pérez",
  "direccion": "Calle Principal 789",
  "lengua": "Español"
}
Q6. ELIMINAR PERSONAL. 
http://localhost:3000/api/personal/eliminar/PERS001
Q7. CREAR AVIONES.
http://localhost:3000/api/avion/crear
{
  "id": "AV001",
  "modelo": "Boeing 747",
  "autonomia": 8000,
  "pasajeros": 400,
  "tripulacion": 15,
  "ultimaRevision": "2024-01-01"
}
Q8. ELIMINAR AVIONES
http://localhost:3000/api/avion/eliminar/AV001
Q9.CREAR RUTAS DE VUELO 
http://localhost:3000/api/rutaVuelos/crear
{
  "codigo": "RUTA001",
  "origen": "Ciudad de México",
  "destino": "Cancún",
  "duracion": 2,
  "escalas": ["Guadalajara", "Monterrey"]
}
Q10.ELIMINAR RUTAS
http://localhost:3000/api/rutaVuelos/eliminar/RUTA001

Q11.REASIGNAR RUTAS
http://localhost:3000/api/rutaVuelos/reasignar/RUTA001
{
  "nuevoDestino": "Tijuana",
  "nuevaDuracion": 3,
  "nuevasEscalas": ["Monterrey", "Guadalajara"]
}


ESTOS SON RUTAS EXTRAS 

1. Obtener la lista de aeropuertos con más de 3 pistas
Método: GET
URL: http://localhost:3000/api/aeropuerto/aeropuertosConMasDe3Pistas
2. Obtener la lista de empresas que trabajan en un aeropuerto específico
Método: GET
URL: http://localhost:3000/api/aeropuerto/empresasEnAeropuerto/{id}
Parámetro de URL: Reemplaza {id} con el ID del aeropuerto. Por ejemplo, http://localhost:3000/api/aeropuerto/empresasEnAeropuerto/MXNOG144
3. Obtener la lista de pilotos que tienen licencia para volar una ruta específica
Método: GET
URL: http://localhost:3000/api/personal/pilotosConLicencia
4. Eliminar una empresa que ya no trabaja en un aeropuerto específico
Método: DELETE
URL: http://localhost:3000/api/empresa/eliminarEmpresa/{rfc}
Parámetro de URL: Reemplaza {rfc} con el RFC de la empresa. Por ejemplo, http://localhost:3000/api/empresa/eliminarEmpresa/4k9lPqR6yH0nJ7bV3x
5. Encontrar las empresas con más de 10 aviones y que operan en al menos 2 aeropuertos
Método: GET
URL: http://localhost:3000/api/empresa/empresasConMasDe10Aviones


VER REGISTOS DE REDIS 

docker exec -ti redis1 redis-cli
keys *

