module Libreria
class LibroDao
  def initialize
    @almacenLibros = []
    @id = 1
  end
  
  def insert libro
    libro.id = @id
    @id += 1
    @almacenLibros << libro
  end
  
  def list
    @almacenLibros
  end
  
  def delete idLibro
    for libroActual in @almacenLibros do
      if libroActual.id == idLibro then
        @almacenLibros.delete libroActual
      end
    end
  end
  
  def modify libro
    idLibro = libro.id
    i = 0
    for libroActual in @almacenLibros do
      if idLibro == libroActual.id  then
        @almacenLibros [i] = libro
      end
      i += 1
    end
  end
end 
end