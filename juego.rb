# ruby juego.rb piedra
# Computador juega tijera.
#/ Ganaste.
#/ ruby juego.rb tijera
#/Computador juega tijera.
#/ Empataste.
#/ ruby juego.rb tijera
#/ Computador juega piedra
# Perdiste
#/Argumento valido, piedra, papel o tijera

# evaluar la entrada del usuario
# hacer que el computador juegue
usuario = ARGV[0].downcase

if usuario == "piedra" || usuario == "papel" || usuario == "tijera" # PApEL
    # aqui haremos la evaluacion
    pc_random = rand(0..2)
    # si es 0 entonces es piedra, si es 1 entonces papel y 2 tijera.
    pc = "piedra" if pc_random == 0 
    pc = "papel" if pc_random == 1 
    pc = "tijera" if pc_random == 2 
    puts "El computador jugo #{pc}"
    if usuario == "tijera"
        if pc == "papel"
            puts "GANASTE"
        elsif pc == "piedra"
            puts "PERDISTE"
        else
            puts "EMPATASTE"
        end
    elsif usuario == "papel"
        if pc == "piedra"
            puts "GANASTE"
        elsif pc == "tijera"
            puts "PERDISTE"
        else
            puts "EMPATASTE"
        end
    else # cuando el usuario juega piedra
        if pc == "tijera"
            puts "GANASTE"
        elsif pc == "papel"
            puts "PERDISTE"
        else
            puts "EMPATASTE"
        end
    end
else
    puts "Argumento invalido: Debe ser piedra, papel o tijera."
end
