# GOMEZ SANTOS GABRIELA
# Solucion al problema de las 8 reynas.
#Acomodar 8 reynas en un tablero de ajedrez sin que se amenacen entre si.
def solucion
		arreglo = [1, 2, 3, 4, 5, 6, 7, 8]
		until validar(arreglo)
			arreglo = arreglo.sort_by {rand} 

		end
		imprimir arreglo
	end


	def validar(arreglo)
		(0..7).each { |fila|
			((fila+1)..7).each { |col|
				if (fila - col).abs == (arreglo[fila] - arreglo[col]).abs
					return false
				end
			}
		}
		true
	end


	def imprimir(arr) 
		arr.each { |itm| 
			for j in (0..7) 
				if itm-1 ==j
				print " ♚ "; 
				else
				print " □ ";
			end
			end
		print "\n" ;
			}
	end

solucion