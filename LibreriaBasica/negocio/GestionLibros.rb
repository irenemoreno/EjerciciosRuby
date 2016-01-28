module Libreria
class GestionLibros
  
  def initialize librosDao
    @librosDao = librosDao
  end
  
  def alta libro
    @librosDao.insert libro
    puts "Libro añadido"
  end
  
  def lista 
    @librosDao.list
  end
  
  def baja idLibro
    @librosDao.delete idLibro
    puts "Libro borrado #{idLibro}"
  end
  
  def modifica libro
    @librosDao.modify libro
    puts "Libro actualizado"
  end
  
end
end