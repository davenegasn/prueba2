file = File.open('alumnos.csv', 'r')
alumnos = file.readlines
file.close

def inasistencias(array)
	array.each do |valor|
		al = valor.split(', ').map(&:chomp)
		puts "#{al[0]} tiene #{al.count("A")} inasistencia(s)"
	end 
end