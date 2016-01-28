load 'modelo/Libro.rb'
load 'dao/LibroDao.rb'
load 'negocio/GestionLibros.rb'

biblioteca = Libreria::GestionLibros.new(Libreria::LibroDao.new)

puts "-------  Bienvenido a tu biblioteca   ---------"

#Cuatro altas de libros
biblioteca.alta Libreria::Libro.new("Tokio blues","Aruki Murakami","La novela es una historia nostálgica que trata los temas de la pérdida y la sexualidad. La historia está narrada por su protagonista, Toru Watanabe, que evoca en la novela el tiempo en que residió en Tokio durante su primer año como estudiante universitario. A través de los recuerdos de Toru el lector es testigo del desarrollo de sus relaciones con dos mujeres muy distintas")
biblioteca.alta Libreria::Libro.new("Los renglones torcidos de Dios","Torcuato Luca de Tena","En ella se relata la historia de Alice Gould, una detective que se interna en un hospital psiquiátrico siguiendo las pistas referentes a un caso de homicidio. Está prologado por el psiquiatra Juan Antonio Vallejo-Nágera.")
biblioteca.alta Libreria::Libro.new("Como agua para chocolate", "Laura Esquivel", "trata acerca de la vida de una mujer (Tita), sus amoríos y la relación de esta con su familia, todo relacionado con la importancia de la cocina y las recetas típicas mexicanas de la época en que está ambientada su vida. En la novela se puede apreciar un estilo particular, en el que se emplea un realismo mágico con el fin de combinar lo sobrenatural con lo mundano")
biblioteca.alta Libreria::Libro.new("Godzilla", "Toho", "Se cree que Tōhō había pensado en Godzilla como una representación del miedo que sintió Japón después del bombardeo atómico sufrido en la Segunda Guerra Mundial a manos de Estados Unidos.")

#Lista de contenido
puts biblioteca.lista

#Borra un libro
biblioteca.baja 2

#Lista de contenido
puts biblioteca.lista

#Modifica libro
biblioteca.modifica Libreria::Libro.new(3, "El Quijote", "Cervantes", "Es la primera obra genuinamente desmitificadora de la tradición caballeresca y cortés por su tratamiento burlesco. Representa la primera novela moderna y la primera polifónica; como tal, ejerció un enorme influjo en toda la narrativa europea.")

#Lista contenido
puts biblioteca.lista