
// Q01. Obtener la lista de aeropuertos con más de 3 pistas
MATCH (a:Aeropuerto)
WHERE a.numeroPistas > 3
RETURN a.nombre

// Q02. Obtener la lista de empresas que trabajan en un aeropuerto específico
MATCH (n:Aeropuerto)-[:EMPRESA_OPERADORA]->(e:Empresa)
WHERE n.id = "MXNOG144" 
RETURN e.nombre;

//FALTA DE ACOMODARLA
// Q03. Obtener la lista de aviones con una autonomía de vuelo mayor a 5000 millas.
MATCH (a:AVION)
WHERE a.millasDeAutonomia > 5000
RETURN a.modelo

// Q04. Obtener la lista de pilotos que tienen licencia para volar una ruta específica
MATCH (per:Personal)-[:PERSONAL_PILOTO]->(pi:PILOTO)
WHERE pi.tipoLicencia <> ""
RETURN per, pi;
// Q05. Obtener la lista de países en los que una empresa internacional no puede operar
MATCH (inter:Internacional)-[:TIPO_INTERNACIONAL]->(em:Empresa)
WHERE em.nombre = "American Airlines"
RETURN em.nombre, inter.paisesNoPuedeViajar;


// Q06. Eliminar una empresa que ya no trabaja en un aeropuerto específico
MATCH (:Aeropuerto)-[eo:EMPRESA_OPERADORA]->(empre:Empresa{RFC: "4k9lPqR6yH0nJ7bV3x"})
OPTIONAL MATCH (empre)-[a:TIPO_INTERNACIONAL]->(internal)
OPTIONAL MATCH (empre)-[b:TIPO_NACIONAL]->(nacional)
OPTIONAL MATCH (empre)-[c:TIPO_CONTINENTAL]->(continental)
MATCH (empre)-[x:PERSONAL]->(dos)
OPTIONAL MATCH (empre)-[d:PERSONAL]->(ton)-[a1:PERSONAL_PILOTO]->(piloto)
OPTIONAL MATCH (empre)-[e:PERSONAL]->(ton)-[a2:PERSONAL_TERRESTRE]->(terrestre)
OPTIONAL MATCH (empre)-[f:PERSONAL]->(ton)-[a3:PERSONAL_APOYO]->(apoyo)
DETACH DELETE apoyo,terrestre,piloto,a1,a2,a3,ton,f,e,d,x,continental,internal,nacional,a,b,c,empre,eo;


// Q07. Encontrar las empresas que tienen más de 10 aviones y que trabajan en al menos dos aeropuertos diferentes.
MATCH (aeropuerto:Aeropuerto)-[:EMPRESA_OPERADORA]->(empresa:Empresa)
WITH empresa, COUNT(DISTINCT aeropuerto) AS numAeropuertos, empresa.cantidadAviones AS cantidadAviones
WHERE numAeropuertos >= 2 AND cantidadAviones > 10
RETURN empresa.nombre, empresa.cantidadAviones;

//AQUI VAMOS
// Q08. Obtener la lista de rutas que son operadas por pilotos con licencia de tipo ATPL y que tienen una duración de vuelo mayor a 2 horas
MATCH(pers1:Personal)-[:PERSONAL_PILOTO]->(pil1:PILOTO{tipoLicencia:"ATPL"})
MATCH(pers2:Personal)-[:PILOTO_DESIGNADO]->(ruta:RUTA)
WHERE pers1.CURP = pers2.CURP
RETURN pers2,ruta;

// Q09. Obtener la lista de personal de tierra que tiene más de 3 certificaciones y que trabaja para empresas que tienen más de 20 aviones.
MATCH(empr:Empresa)-[:PERSONAL]->(perso:Personal)-[:PERSONAL_TERRESTRE]->(perter:PERSONAL_TERRESTRE)
WHERE SIZE(perter.tareasQueRealiza) >= 2 AND empr.cantidadAviones > 20
RETURN perso.nombres;

// Q10. Encontrar las rutas que son operadas por al menos dos empresas diferentes y que tienen una escala en un aeropuerto específico.
MATCH (ruta:RUTA)
WHERE SIZE(ruta.escalas) > 0
RETURN ruta.codigoRuta,ruta.escalas[0] AS origen, ruta.escalas[SIZE(ruta.escalas)-1] AS destino;



//checarla
// Q11. Agregar una nueva ruta de vuelo entre dos aeropuertos que implique tres escalas (tres nodos intermedios) entre el origen y el destino.
// Obtención de los datos
MATCH (per1:Personal{CURP:"123456789012345678", nombres:"Juan"})
MATCH (a1:Aeropuerto{id:"MXNAY071"})
MATCH (a4:Aeropuerto{id:"MXCUNA073"})
// Creación de la ruta
MERGE (ruta60:RUTA{codigoRuta: "RTA345STU674444901", origen: "Nueva York", destino: "Miami", duracionVuelo: 3, escalas: ["MXJAL123:E1","MXNOG144:E2","MXMTYA074:E3"]})
MERGE (per1)-[pilotoE1P1V2: PILOTO_DESIGNADO]->(ruta60)
MERGE (a1)-[avini60: AEROPUERTO_INICIO]->(ruta60)
MERGE (ruta60)-[avide60: AEROPUERTO_DESTINO]->(a4)
RETURN ruta60,per1,a1,a4;



// Q12. Por cuestiones de política laboral una empresa requiere dar de baja del sistema a todos sus pilotos.
MATCH (e:Empresa {RFC: "8i7nAzQ1bV3cX4dE5f"})-[r:PERSONAL]->(a:Personal)
MATCH (a)-[x:PERSONAL_PILOTO]->(b:PILOTO)
DETACH DELETE a, r, x, b;


// Q13. Una venta de activos implica que todos los vuelos, pilotos, personal, etc, deben pasar de una empresa a otra.
MATCH (emOri:Empresa{ RFC: "4k9lPqR6yH0nJ7bV3x"})-[a:PERSONAL]->(todo)
MATCH (emOri2:Empresa{ RFC: "4k9lPqR6yH0nJ7bV3x"})-[a2:AVIONES]->(todo2)
MATCH (emDes:Empresa{ RFC: "5r4eG6h7jU8i9o0pL"})

MERGE (emDes)-[per:PERSONAL]->(todo)
MERGE (emDes)-[av:AVIONES]->(todo2)
DETACH DELETE a,a2;

// Q14. Se requiere listar todos los vuelos incluyendo las escalas que realiza cada vuelo.
MATCH (rutas:RUTA)
RETURN rutas.codigoRuta, rutas.origen, rutas.destino, rutas.duracionVuelo, rutas.escala;


// Q15. Un aeropuerto será remodelado por lo que el aeropuerto debe ser eliminado y todas sus operaciones deben ser reasignadas.
MATCH (arOri:Aeropuerto {id: "MXNAY071"})-[x:EMPRESA_OPERADORA]->(y:Empresa)
MATCH (arDes:Aeropuerto {id: "MXCUNA073"})
MERGE (y)-[:EMPRESA_OPERADORA]->(arDes)
DETACH DELETE x, arOri;

