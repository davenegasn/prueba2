#calcular el promedio final de cada alumno y retornarlo
def promedio_alumno(array)
  #eliminar el nombre del alumno del array
  array.shift
  #eliminar el ítem que sea A para calcular el promedio
  array.delete("A")
  #el largo del array limpio
  size = array.count
  #inicializar promedio en 0
  prom = 0
  #por cada alumno..
  array.each do |nota|
    #sumar el promedio
    prom += nota.to_i
  end 
  #calcular el promedio final
  final = prom / size
  #retornar el promedio
  return final 
end 

#mostrar las inasistencias
def inasistencias(array)
  array.each do |valor|
    al = valor.split(', ').map(&:chomp)
    puts "#{al[0]} tiene #{al.count("A")} inasistencia(s)"
  end 
end

#escribir promedio de notas en archivo por cada alumno
def escribir_promedios(array)
  #por cada alumno
  array.each do |alumno|
    #split en cada ,
    al = alumno.split(', ').map(&:chomp)
    #generar el nombre del archivo del alumno
    filename = "#{al[0]}.csv"
    #generar el archivo
    alumno_file = File.open(filename, "w")
    #obtener el promedio final del alumno
    final = promedio_alumno(al)
    #escribir el promedio final en el archivo
    alumno_file.puts final
    #cerrar
    alumno_file.close
  end 
end 

def alumno_status(array, nota_minima)
  array.each do |alumno|
    #split en cada ,
    al = alumno.split(', ').map(&:chomp)
    al2 = al.dup
    #obtener el promedio final del alumno

    nota_final = promedio_alumno(al2)
    if nota_final >= nota_minima
      puts "El alumno #{al[0]} aprueba con nota #{nota_final}"
      
    end 
  end 
end 