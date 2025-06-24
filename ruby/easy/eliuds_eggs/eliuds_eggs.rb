# frozen_string_literal

# 13 % 2 → 1 → total_count = 1
# 6 % 2 → 0
# 3 % 2 → 1 → total_count = 2
# 1 % 2 → 1 → total_count = 3

# EXAMPLE
# 13 (decimal) = 1101 (binario)
# LSB = Least Significant Bit (el más a la derecha)
# 8   4   2   1
# 1   1   0   1  => 13
# ↑           ↑
# MSB         LSB
#
# En términos binarios, esto equivale a:
#  ¿Cuál es el bit menos significativo? (LSB)

# Si el bit menos significativo es 1 → el número es impar
# Si el bit menos significativo es 0 → el número es par
#
#"Si el último bit (más a la derecha) es 1, entonces este número tiene un 1 en esa posición, lo que en nuestro contexto significa: ¡hay un huevo aquí!
class EliudsEggs
  def self.egg_count(decimal_eggs)
    total_count = 0

    while decimal_eggs > 0
      total_count += 1 if decimal_eggs % 2 == 1
      decimal_eggs /= 2
    end

    total_count
  end
end
