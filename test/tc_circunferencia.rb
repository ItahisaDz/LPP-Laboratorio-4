# File:  tc_circunferencia.rb
 
require "circunferencia"
require "test/unit"

class TestCircunferencia < Test::Unit::TestCase
 
  def setup
    @circ = Circunferencia.new(1)
  end
 
  def teardown
    ## Nothing really
  end
 
  def test_simple
    assert_in_delta(1.0, @circ.radio(Math::PI), 0.0001 )
    assert_in_delta(3.1831, @circ.radio(10), 0.0001 )
  end
 
  def test_typecheck
    assert_raise( RuntimeError) { @circ.radio('a') }
	  assert_raise( RuntimeError) { @circ.radio(-1) }
    assert_raise( RuntimeError) { @circ.radio([1, 2]) }
    assert_raise( RuntimeError) { @circ.radio(1...5) }
  end
 
end