require './functions'  

prompt = "> "
puts "4 opciones"

puts "1 - Generar archivo promedios"
puts "2 - Contar inasistencias"
puts "3 - Mostrar alumnos aprobados"
puts "4 - Salir"


#abrir, leer y cerrar alumnos.csv
file = File.open('alumnos.csv', 'r')
alumnos = file.readlines
file.close


while user_input = gets.chomp # loop while getting user input
  case user_input
  when "1"
    escribir_promedios(alumnos)
    print prompt
  when "2"
    inasistencias(alumnos)
    print prompt
  when "3"
  	print "Ingresar nota mínima"
  	print prompt
  	
  	nota_minima = gets.chomp.to_i
    
    alumno_status(alumnos, nota_minima)
    print prompt
  when "4"
    print "See ya later.."
    break
  else
    puts "Seleccionar entre 1 y 4"
    print prompt 
  end
end


