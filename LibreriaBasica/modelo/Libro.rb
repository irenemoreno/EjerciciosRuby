module Libreria
class Libro
  attr_accessor :id,:titulo,:autor,:descripcion
  
  def initialize id = nil,titulo,autor,descripcion
    @id = id
    @titulo = titulo
    @autor = autor
    @descripcion = descripcion
  end
  
  def to_s
    "Id: #{@id}  \n Título: #{@titulo}, \n Autor: #{@autor}, \n Descripción: #{descripcion}"
  end
end
end