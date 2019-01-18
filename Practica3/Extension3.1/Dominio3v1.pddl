(define (domain Dominio3v1)
(:requirements :strips :typing :fluents :adl)
(:types rover base slot - object)
(:functions
  (contieneRoverPersonas ?r - rover)
  (contieneRoverSuministros ?r - rover)
  (gasolinaRover ?r - rover)
  (totalGasolina)
  (personasEnBase ?b - base)
  (suministrosEnBase ?b - base)
  (recursosDisponibles)
  (prioridadPeticion ?s - slot)
  (prioridadTotalServida)
)

(:predicates (enBase ?r - rover ?b - base)
             (basesConectadas ?b1 - base ?b2 - base)
             (peticionPersonal ?s - slot)
             (peticionSuministro ?s - slot)
             (destinoPeticion ?s - slot ?destino - base)
             (peticionCargada  ?s - slot)
             (peticionCumplida ?s - slot)
             (peticionEnRover ?r - rover ?s - slot)
)

(:action mueveRover
  :parameters (?r - rover ?b1 - base ?b2 - base)
  :precondition (and (enBase ?r ?b1) (basesConectadas ?b1 ?b2) (> (gasolinaRover ?r) 0)) ;;;
  :effect (and (not (enBase ?r ?b1)) (enBase ?r ?b2) (decrease (gasolinaRover ?r) 1) (decrease (totalGasolina) 1)) ;;;;
)

(:action cargaRoverPersona
  :parameters (?r - rover ?b - base ?s - slot)
  :precondition (and (enBase ?r ?b) (not (peticionCargada ?s)) (peticionPersonal ?s) (> (personasEnBase ?b) 0) (= (contieneRoverSuministros ?r) 0) (< (contieneRoverPersonas ?r) 2))
  :effect (and (increase (contieneRoverPersonas ?r) 1) (decrease (personasEnBase ?b) 1) (peticionCargada ?s) (peticionEnRover ?r ?s))
)

(:action cargaRoverSuministro
  :parameters (?r - rover ?b - base ?s - slot)
  :precondition (and (enBase ?r ?b) (not (peticionCargada ?s)) (peticionSuministro ?s) (> (suministrosEnBase ?b) 0) (= (contieneRoverSuministros ?r) 0) (= (contieneRoverPersonas ?r) 0))
  :effect (and (increase (contieneRoverSuministros ?r) 1) (decrease (suministrosEnBase ?b) 1) (peticionCargada ?s) (peticionEnRover ?r ?s))
)

(:action descargaRoverPersona
  :parameters (?r - rover ?b - base ?s - slot)
  :precondition (and (enBase ?r ?b) (peticionEnRover ?r ?s) (peticionPersonal ?s) (destinoPeticion ?s ?b) (not (peticionCumplida ?s)))
  :effect (and (decrease (contieneRoverPersonas ?r) 1) (peticionCumplida ?s) (decrease (recursosDisponibles) 1) (not (peticionEnRover ?r ?s)) (increase (prioridadTotalServida) (* (prioridadPeticion ?s) (prioridadPeticion ?s))))
)

(:action descargaRoverSuministro
  :parameters (?r - rover ?b - base ?s - slot)
  :precondition (and (enBase ?r ?b) (peticionEnRover ?r ?s) (peticionSuministro ?s) (destinoPeticion ?s ?b) (not (peticionCumplida ?s)))
  :effect (and (decrease (contieneRoverSuministros ?r) 1) (peticionCumplida ?s) (decrease (recursosDisponibles) 1) (not (peticionEnRover ?r ?s)) (increase (prioridadTotalServida) (* (prioridadPeticion ?s) (prioridadPeticion ?s))))
)

)
