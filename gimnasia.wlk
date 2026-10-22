class Rutina {
    method caloriasQuemadas(tiempoDeRutina) {
        return 100 * (tiempoDeRutina - self.tiempoDeDescanso(tiempoDeRutina)) * self.intensidad()
    }

    method tiempoDeDescanso(tiempoDeRutina) 

    method intensidad() 
}

class Running inherits Rutina {
    var property intensidad = 0
    
    override method tiempoDeDescanso(tiempoDeRutina) {
        return if (tiempoDeRutina > 20) 5 else 2
    }
}

class Maraton inherits Running {

    override method caloriasQuemadas(tiempoDeRutina) {
        return super(tiempoDeRutina) * 2
    }
}

class Remo inherits Rutina {
    override method intensidad() {
        return 1.3
    }

    override method tiempoDeDescanso(tiempoDeRutina) {
        return tiempoDeRutina / 5
    }
}

class RemoDeCompeticion inherits Remo {
    override method intensidad() {
        return 1.7
    }

    override method tiempoDeDescanso(tiempoDeRutina) {
        return 2.max(super(tiempoDeRutina) - 3)
    }
}