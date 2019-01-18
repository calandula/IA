(define (problem Ejemplo2v2) (:domain Dominio2v2)
(:objects
  B0 B1 B2 - base
  R0 R1 - rover
  S1 S2 S3 S4 S5 S6 S7 - slot
)

(:init
  (basesConectadas B0 B1)
  (basesConectadas B1 B0)
  (basesConectadas B1 B2)
  (basesConectadas B2 B1)

  (enBase R0 B0)
  (enBase R1 B2)

  (= (personasEnBase B0) 2)
  (= (personasEnBase B1) 1)
  (= (personasEnBase B2) 0)
  (= (suministrosEnBase B0) 0)
  (= (suministrosEnBase B1) 0)
  (= (suministrosEnBase B2) 3)
  (= (recursosDisponibles) 6)

  (= (contieneRoverPersonas R0) 0)
  (= (contieneRoverPersonas R1) 0)
  (= (contieneRoverSuministros R0) 0)
  (= (contieneRoverSuministros R1) 0)

  (= (gasolinaRover R0) 4)
  (= (gasolinaRover R1) 4)
  (= (totalGasolina) 8)

  (peticionPersonal S1)
  (destinoPeticion S1 B0)
  (peticionPersonal S2)
  (destinoPeticion S2 B1)
  (peticionPersonal S3)
  (destinoPeticion S3 B1)
  (peticionSuministro S4)
  (destinoPeticion S4 B0)
  (peticionSuministro S5)
  (destinoPeticion S5 B1)
  (peticionSuministro S6)
  (destinoPeticion S6 B1)
  (peticionPersonal S7)
  (destinoPeticion S7 B0)
)


(:goal (or
  (forall (?S - slot) (peticionCumplida ?S))
  (= (recursosDisponibles) 0)
)
)

(:metric maximize (totalGasolina) )
)
