import gimnasia.*
import personas.*

class Club {
    const property predios = #{}

    method elMejorPredioPara(persona) {
        return predios.max({predioActual => predioActual.caloriasQueQuemas(persona.tiempoDeRutina())})
    } 

    method prediosTranquilosPara(persona) {
        return predios.filter({predioActual => predioActual.tieneRutinaTranquila(persona.tiempoDeRutina())})
    }

    method lasRutinasMasExigentesPara(persona) {
        return predios.map({predioActual => predioActual.laRutinaMasExigente(persona.tiempoDeRutina())}).asSet()
    }
}

class Predio {
    const property rutinas = #{}

    method caloriasQueQuemas(tiempoDeRutina) {
        return rutinas.sum({rutinaActual => rutinaActual.caloriasQuemadas(tiempoDeRutina)})
    }

    method laRutinaMasExigente(tiempoDeRutina) {
        return rutinas.max({rutinaActual => rutinaActual.caloriasQuemadas(tiempoDeRutina)})
    }

    method tieneRutinaTranquila(tiempoDeRutina) {
        return rutinas.any({rutinaActual => rutinaActual.caloriasQuemadas(tiempoDeRutina) <= 500})
    }
}