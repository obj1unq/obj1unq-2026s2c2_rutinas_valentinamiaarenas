import gimnasia.*

class Persona {
    var property peso 

    method realizarRutina(rutina) {
         self.validarRutina(rutina)

        peso -= self.pesoPerdido(rutina)
    }

    method validarRutina(rutina)

    method pesoPerdido(rutina) {
        return rutina.caloriasQuemadas(self.tiempoDeRutina()) / self.caloriasPorKilo()
    }

    method caloriasPorKilo()

    method tiempoDeRutina()
}

class PersonaSedentaria inherits Persona {
    var property tiempoDeRutina
    

    override method caloriasPorKilo() {
        return 7000
    }

    override method validarRutina(rutina) {
        if (peso < 50) {
            self.error("Todavia no")
        }
    }
}

class PersonaAtleta inherits Persona {
    override method pesoPerdido(rutina) {
        return super(rutina) - 1
    }

    override method caloriasPorKilo() {
        return 8000
    }

    override method tiempoDeRutina() {
        return 90
    }

    override method validarRutina(rutina) {
        if (rutina.caloriasQuemadas(self.tiempoDeRutina()) < 10000) {
            self.error("No son suficientes calorias")
        }
    }
}