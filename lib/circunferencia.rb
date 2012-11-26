#File: circunferencia.rb

class Circunferencia

	attr_accessor :diametro
  
  def initialize(diametro)
    raise unless ( diametro.is_a?(Numeric) && ( diametro >= 0.0 ) )
    @diametro = diametro
  end
  
  # Método que te devuelve el radio dado el perímetro
  def radio (perimetro)
    raise unless ( perimetro.is_a?(Numeric) && ( perimetro >= 0.0 ) )
    perimetro/Math::PI
  end
  
  # Método que te devuelve el radio dado el diámetro
  def radios
    @diametro/2.0
  end

end

