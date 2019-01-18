;#########################################################################
;#			       	                 Practica 2				                       #
;#########################################################################

; *************
; * ONTOLOGÍA *
; *************
(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(single-slot Nombre_ej_brazo
		(type SYMBOL)
		(allowed-values Curl_biceps_sentado Extension_triceps Levantarse_de_una_silla)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Intensidad
		(type FLOAT)
		(range 0.0 10.0)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Tiene
		(type INSTANCE)
;+		(allowed-classes Ejercicio Deporte)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Nombre_ej_cadera
		(type SYMBOL)
		(allowed-values Flexion_de_caderas Extension_de_caderas)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot NombreAct
		(type STRING)
;+		(value "Caminar" "Nadar" "Bailar" "Bicicleta")
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Nombre
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Practica2_Class1
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Impide
		(type INSTANCE)
;+		(allowed-classes Ejercicio)
		(create-accessor read-write))
	(single-slot Nombre_ej_eq
		(type SYMBOL)
		(allowed-values Talon_a_pies Levantarse_y_sentarse_sin_manos Pata_coja_con_soporte Pararse_de_puntillas Caminar_en_zigzag Paso_lateral_lado_a_lado Caminata_sentado Torsion_lateral_tronco Subir_y_bajar_escalon Caminar_con_un_ojo_tapado Marcha_estatica_levantado Marcha_estatica_con_giro_de_cabeza Zancada_sujetando_una_pelota Pata_coja_con_soporte_sobre_superficie_blanda Levantar_brazo_con_pierna_opuesta Patadas_traseras_sobre_una_pierna Patadas_frontales_sobre_una_pierna Andar_en_puntillas Andar_con_un_libro_en_la_cabeza Andar_levantando_las_rodillas Levantamiento_de_brazos_sentado Caminar_sobre_los_talones Balanceo_del_pie)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Requiere
		(type INSTANCE)
;+		(allowed-classes Material)
		(create-accessor read-write))
	(multislot aaaaaaaaaaa
		(type INSTANCE)
;+		(allowed-classes Ejercicio Deporte)
		(create-accessor read-write))
	(single-slot Mejora
		(type INSTANCE)
;+		(allowed-classes Ejercicio Deporte)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Duracion_etapa
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Zona
		(type SYMBOL)
		(allowed-values Brazo Pierna Cuello Cadera Hombro Espalda Abdomen)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Nombre_ej_pierna
		(type SYMBOL)
		(allowed-values Flexion_plantar Flexion_de_rodilla Extension_de_rodilla Elevacion_de_piernas_hacia_los_lados)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Tiempo
;+		(comment "en minutos")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot S_etapa
		(type SYMBOL)
;+		(allowed-parents)
		(cardinality 3 3)
		(create-accessor read-write))
	(single-slot Repeticiones
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Padece
		(type INSTANCE)
;+		(allowed-classes Sintoma)
		(create-accessor read-write))
	(single-slot Practica2_Class10047
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Nombre_ej_pecho
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Sustituido_por
		(type SYMBOL)
;+		(allowed-parents)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Sigue_con
		(type INSTANCE)
;+		(allowed-classes Nucleo)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Tipo_psico
		(type SYMBOL)
		(allowed-values Ansiedad Depresion Insomnio)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Empieza_con
		(type INSTANCE)
;+		(allowed-classes Calentamiento)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Partes_cuerpo
		(type STRING)
;+		(value "Brazos" "Piernas" "Cuello" "Espalda" "Abdomen" "Pecho" "Hombros")
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Tipo_material
		(type SYMBOL)
		(allowed-values Mancuernas Silla Cuerda Colchoneta Banda_elastica Bicicleta Pelota Libro Maquina_de_remo Maquina_eliptica Disco)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot E_ejercicio
		(type SYMBOL)
;+		(allowed-parents Ejercicio)
		(create-accessor read-write))
	(single-slot Estira
		(type INSTANCE)
;+		(allowed-classes Zona_cuerpo)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Practica2_Class20015
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot plplplplp
		(type SYMBOL)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Nombre_persona
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot aaaaaaaaaaaaaa
		(type SYMBOL)
		(allowed-values Equilibrio Flexibilidad Musculacion Aerobico Deporte)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Series
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Tipo_enf
		(type SYMBOL)
		(allowed-values Diabetes Osteoporosis Cardiaca Artrosis Coronaria Desequilibrio Fragilidad Incontinencia Insuficiencia)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Sustituye
		(type SYMBOL)
;+		(allowed-parents Ejercicio)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Termina_con
		(type INSTANCE)
;+		(allowed-classes Vuelta_reposo)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Nombre_sintoma
		(type STRING)
;+		(value "Hipertension" "Colesterol" "Desequilibrio" "Fragilidad" "Depresion" "Incontinencia")
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Nombre_deporte
		(type SYMBOL)
		(allowed-values Marcha Footing Aquagym Golf Vela Ciclismo Baloncesto Tenis Tai-Chi Petanca Yoga Pilates)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Nombre_ej_flexi
		(type SYMBOL)
		(allowed-values Estiramientos_de_los_tendones_del_muslo_sentado Estiramientos_de_los_tendones_del_muslo_de_pie Estiramiento_de_pantorrillas Estiramientos_de_tobillos Estiramientos_de_triceps Estiramientos_de_mu%C3%B1eca Rotacion_de_hombros_de_pie Estiramientos_de_los_cuadriceps_de_pie Rotacion_doble_de_cadera_tumbado Rotacion_simple_de_cadera_tumbado Rotacion_de_hombros_tumbado Lateralizacion_de_cuello Diagonal_de_cuello Flexion_de_hombros Lateralizacion_de_tronco Puente Abdominales Elevacion_de_manos_entrelazadas_hacia_los_lados Brazos_al_cielo Elongacion_lateral Piernas_hacia_el_pecho_tumbado Estiramiento_piriforme Estiramiento_total_de_espalda Estirar_brazo_tras_nuca Estiramiento_paralelo_brazo Cruce_de_brazos_por_detras_del_cuerpo Torsion_lateral_hacia_abajo Estiramiento_del_recto_abdominal Estiramiento_de_protraccion_del_cuello Extension_del_cuello Flexion_delantera_del_cuello Estiramiento_de_hombro_con_brazo_doblado Estiramientos_de_hombros_en_envoltura Estiramiento_cruzado Estiramiento_del_hombro_tocando_atras Estiramiento_L_invertida Estiramiento_de_gluteo_piramidal_con_apoyo Estiramiento_de_cadera_con_rotacion_sentado)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Duracion
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot P_sesion
		(type SYMBOL)
;+		(allowed-parents)
		(cardinality 3 7)
		(create-accessor read-write))
	(single-slot Peso
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Nombre_ej_abdomen
		(type SYMBOL)
		(allowed-values Levantarse_de_una_silla)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Mejora_con
		(type INSTANCE)
;+		(allowed-classes Ejercicio Deporte)
		(create-accessor read-write))
	(single-slot Practica2_Class10001
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Formado_por
		(type INSTANCE)
;+		(allowed-classes Sesion)
		(cardinality 3 7)
		(create-accessor read-write))
	(single-slot Practica2_Class10004
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Practica2_Class10007
		(type INSTANCE)
;+		(allowed-classes)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Altura
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Edad
		(type INTEGER)
		(range 65 150)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Involucra
		(type INSTANCE)
;+		(allowed-classes Zona_cuerpo)
		(create-accessor read-write))
	(single-slot Duracion_sesion
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Compuesto_por
		(type INSTANCE)
;+		(allowed-classes Entrenamiento)
		(create-accessor read-write))
	(single-slot Practica2_Class10036
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Zona_dolor
		(type INSTANCE)
;+		(allowed-classes Zona_cuerpo)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Ejercita
		(type INSTANCE)
;+		(allowed-classes Zona_cuerpo)
		(create-accessor read-write))
	(single-slot Nombre_ej_espalda
		(type SYMBOL)
		(allowed-values Remo_sentado Flexiones_contra_pared)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Nombre_ej_hombro
		(type SYMBOL)
		(allowed-values Elevaciones_laterales Elevaciones_frontales)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot EjercicioRec
		(type SYMBOL)
;+		(allowed-parents Ejercicio)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot Nivel
		(type SYMBOL)
		(allowed-values Sedentario Activo Muy_activo)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot lmknk
		(type SYMBOL)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Nombre_ej_musculacion
		(type SYMBOL)
		(allowed-values Levantarse_de_una_silla Curl_biceps_sentado Curl_biceps_de_pie Extension_triceps Flexion_perpendicular_silla Flexion_de_caderas Extension_de_caderas Remo_sentado Flexiones_contra_pared Elevaciones_laterales Elevaciones_frontales Flexion_plantar Flexion_rodilla Extension_de_rodilla Extension_de_piernas_hacia_los_lados Press_sentado Press_de_pie Encogimientos_abdominales Plancha_cuatro_apoyos Tijeras_abdominales Crunch_piernas_elevadas Elevacion_de_piernas Plancha_con_fitball Remo_con_mancuerna Encogimiento_de_hombros Superman Estabilizador_lumbar Patada_de_flex Elevacion_de_caderas Elevaciones_boca_arriba_con_disco Elevaciones_boca_abajo_con_disco Isometrico_hacia_los_lados Isometrico_hacia_delante_y_atras Face_pull Curl_martillo Pullover Hiperextensiones_lumbares Peso_muerto_con_piernas_rectas Remo_vertical Pajaros_sentado)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Nombre_ej_aerobico
		(type SYMBOL)
		(allowed-values Andar Bicicleta Nadar Danza Subir_escaleras Aerobic Patinar Remo Zumba Eliptica)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot nnnnnnssssssssss
		(type SYMBOL)
		(allowed-values Equilibrio)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot dia
		(type STRING)
;+		(value "Lunes" "Martes" "Miercoles" "Jueves" "Viernes" "Sabado" "Domingo")
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot zzzzzzzzzzzz
		(type SYMBOL)
		(allowed-values Equilibrio Aerobico Flexibilidad Musculacion Deporte)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Persona
	(is-a USER)
	(role concrete)
	(single-slot Edad
		(type INTEGER)
		(range 65 150)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Nombre_persona
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Altura
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Padece
		(type INSTANCE)
;+		(allowed-classes Sintoma)
		(create-accessor read-write))
	(single-slot Peso
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Nivel
		(type SYMBOL)
		(allowed-values Sedentario Activo Muy_activo)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Zona_cuerpo
	(is-a USER)
	(role concrete)
	(single-slot Zona
		(type SYMBOL)
		(allowed-values Brazo Pierna Cuello Cadera Hombro Espalda Abdomen)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Ejercicio
	(is-a USER)
	(role concrete)
	(single-slot Intensidad
		(type FLOAT)
		(range 0.0 10.0)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Requiere
		(type INSTANCE)
;+		(allowed-classes Material)
		(create-accessor read-write))
	(multislot Ejercita
		(type INSTANCE)
;+		(allowed-classes Zona_cuerpo)
		(create-accessor read-write)))

(defclass Aerobico
	(is-a Ejercicio)
	(role concrete)
	(single-slot Nombre_ej_aerobico
		(type SYMBOL)
		(allowed-values Andar Bicicleta Nadar Danza Subir_escaleras Aerobic Patinar Remo Zumba Eliptica)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Musculacion
	(is-a Ejercicio)
	(role concrete)
	(single-slot Nombre_ej_musculacion
		(type SYMBOL)
		(allowed-values Levantarse_de_una_silla Curl_biceps_sentado Curl_biceps_de_pie Extension_triceps Flexion_perpendicular_silla Flexion_de_caderas Extension_de_caderas Remo_sentado Flexiones_contra_pared Elevaciones_laterales Elevaciones_frontales Flexion_plantar Flexion_rodilla Extension_de_rodilla Extension_de_piernas_hacia_los_lados Press_sentado Press_de_pie Encogimientos_abdominales Plancha_cuatro_apoyos Tijeras_abdominales Crunch_piernas_elevadas Elevacion_de_piernas Plancha_con_fitball Remo_con_mancuerna Encogimiento_de_hombros Superman Estabilizador_lumbar Patada_de_flex Elevacion_de_caderas Elevaciones_boca_arriba_con_disco Elevaciones_boca_abajo_con_disco Isometrico_hacia_los_lados Isometrico_hacia_delante_y_atras Face_pull Curl_martillo Pullover Hiperextensiones_lumbares Peso_muerto_con_piernas_rectas Remo_vertical Pajaros_sentado)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Equilibrio
	(is-a Ejercicio)
	(role concrete)
	(single-slot Nombre_ej_eq
		(type SYMBOL)
		(allowed-values Talon_a_pies Levantarse_y_sentarse_sin_manos Pata_coja_con_soporte Pararse_de_puntillas Caminar_en_zigzag Paso_lateral_lado_a_lado Caminata_sentado Torsion_lateral_tronco Subir_y_bajar_escalon Caminar_con_un_ojo_tapado Marcha_estatica_levantado Marcha_estatica_con_giro_de_cabeza Zancada_sujetando_una_pelota Pata_coja_con_soporte_sobre_superficie_blanda Levantar_brazo_con_pierna_opuesta Patadas_traseras_sobre_una_pierna Patadas_frontales_sobre_una_pierna Andar_en_puntillas Andar_con_un_libro_en_la_cabeza Andar_levantando_las_rodillas Levantamiento_de_brazos_sentado Caminar_sobre_los_talones Balanceo_del_pie)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Flexibilidad
	(is-a Ejercicio)
	(role concrete)
	(single-slot Nombre_ej_flexi
		(type SYMBOL)
		(allowed-values Estiramientos_de_los_tendones_del_muslo_sentado Estiramientos_de_los_tendones_del_muslo_de_pie Estiramiento_de_pantorrillas Estiramientos_de_tobillos Estiramientos_de_triceps Estiramientos_de_mu%C3%B1eca Rotacion_de_hombros_de_pie Estiramientos_de_los_cuadriceps_de_pie Rotacion_doble_de_cadera_tumbado Rotacion_simple_de_cadera_tumbado Rotacion_de_hombros_tumbado Lateralizacion_de_cuello Diagonal_de_cuello Flexion_de_hombros Lateralizacion_de_tronco Puente Abdominales Elevacion_de_manos_entrelazadas_hacia_los_lados Brazos_al_cielo Elongacion_lateral Piernas_hacia_el_pecho_tumbado Estiramiento_piriforme Estiramiento_total_de_espalda Estirar_brazo_tras_nuca Estiramiento_paralelo_brazo Cruce_de_brazos_por_detras_del_cuerpo Torsion_lateral_hacia_abajo Estiramiento_del_recto_abdominal Estiramiento_de_protraccion_del_cuello Extension_del_cuello Flexion_delantera_del_cuello Estiramiento_de_hombro_con_brazo_doblado Estiramientos_de_hombros_en_envoltura Estiramiento_cruzado Estiramiento_del_hombro_tocando_atras Estiramiento_L_invertida Estiramiento_de_gluteo_piramidal_con_apoyo Estiramiento_de_cadera_con_rotacion_sentado)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Sintoma
	(is-a USER)
	(role concrete)
	(multislot Mejora_con
		(type INSTANCE)
;+		(allowed-classes Ejercicio Deporte)
		(create-accessor read-write)))

(defclass Dolor
	(is-a Sintoma)
	(role concrete)
	(single-slot Zona_dolor
		(type INSTANCE)
;+		(allowed-classes Zona_cuerpo)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Psicologico
	(is-a Sintoma)
	(role concrete)
	(single-slot Tipo_psico
		(type SYMBOL)
		(allowed-values Ansiedad Depresion Insomnio)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Enfermedad
	(is-a Sintoma)
	(role concrete)
	(single-slot Tipo_enf
		(type SYMBOL)
		(allowed-values Diabetes Osteoporosis Cardiaca Artrosis Coronaria Desequilibrio Fragilidad Incontinencia Insuficiencia)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Material
	(is-a USER)
	(role concrete)
	(single-slot Tipo_material
		(type SYMBOL)
		(allowed-values Mancuernas Silla Cuerda Colchoneta Banda_elastica Bicicleta Pelota Libro Maquina_de_remo Maquina_eliptica Disco)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Deporte
	(is-a USER)
	(role concrete)
	(multislot Involucra
		(type INSTANCE)
;+		(allowed-classes Zona_cuerpo)
		(create-accessor read-write))
	(single-slot Intensidad
		(type FLOAT)
		(range 0.0 10.0)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Nombre_deporte
		(type SYMBOL)
		(allowed-values Marcha Footing Aquagym Golf Vela Ciclismo Baloncesto Tenis Tai-Chi Petanca Yoga Pilates)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Sesion
	(is-a USER)
	(role concrete)
	(single-slot Empieza_con
		(type INSTANCE)
;+		(allowed-classes Calentamiento)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Duracion_sesion
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Termina_con
		(type INSTANCE)
;+		(allowed-classes Vuelta_reposo)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Sigue_con
		(type INSTANCE)
;+		(allowed-classes Nucleo)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Etapa
	(is-a USER)
	(role concrete)
	(multislot Compuesto_por
		(type INSTANCE)
;+		(allowed-classes Entrenamiento)
		(create-accessor read-write))
	(single-slot Duracion_etapa
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Calentamiento
	(is-a Etapa)
	(role concrete))

(defclass Nucleo
	(is-a Etapa)
	(role concrete))

(defclass Vuelta_reposo
	(is-a Etapa)
	(role concrete))

(defclass Entrenamiento
	(is-a USER)
	(role concrete)
	(single-slot Repeticiones
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Tiempo
;+		(comment "en minutos")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Series
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Tiene
		(type INSTANCE)
;+		(allowed-classes Ejercicio Deporte)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Programa
	(is-a USER)
	(role concrete)
	(multislot Formado_por
		(type INSTANCE)
;+		(allowed-classes Sesion)
		(cardinality 3 7)
		(create-accessor read-write)))


;;**************
;;* INSTANCIAS *
;;**************
(definstances instancies
	([Practica2_Class0] of  Equilibrio

		(Ejercita
			[Practica2_Class10029]
			[Practica2_Class10027])
		(Intensidad 3.0)
		(Nombre_ej_eq Zancada_sujetando_una_pelota)
		(Requiere [Practica2_Class30002]))

	([Practica2_Class10000] of  Material

		(Tipo_material Maquina_de_remo))

	([Practica2_Class10008] of  Equilibrio

		(Ejercita
			[Practica2_Class10027]
			[Practica2_Class10029])
		(Intensidad 2.0)
		(Nombre_ej_eq Caminar_en_zigzag))

	([Practica2_Class10010] of  Flexibilidad

		(Ejercita [Practica2_Class10028])
		(Intensidad 1.0)
		(Nombre_ej_flexi Lateralizacion_de_cuello))

	([Practica2_Class10011] of  Flexibilidad

		(Ejercita [Practica2_Class10028])
		(Intensidad 1.0)
		(Nombre_ej_flexi Diagonal_de_cuello))

	([Practica2_Class10012] of  Flexibilidad

		(Ejercita [Practica2_Class10030])
		(Intensidad 1.0)
		(Nombre_ej_flexi Flexion_de_hombros))

	([Practica2_Class10013] of  Flexibilidad

		(Ejercita
			[Practica2_Class10031]
			[Practica2_Class10029])
		(Intensidad 2.0)
		(Nombre_ej_flexi Lateralizacion_de_tronco))

	([Practica2_Class10014] of  Flexibilidad

		(Ejercita
			[Practica2_Class10029]
			[Practica2_Class10031]
			[Practica2_Class10032])
		(Intensidad 3.0)
		(Nombre_ej_flexi Puente)
		(Requiere [Practica2_Class10023]))

	([Practica2_Class10016] of  Musculacion

		(Ejercita
			[Practica2_Class10027]
			[Practica2_Class10031]
			[Practica2_Class10029])
		(Intensidad 1.0)
		(Nombre_ej_musculacion Levantarse_de_una_silla)
		(Requiere [Practica2_Class15]))

	([Practica2_Class10017] of  Musculacion

		(Ejercita [Practica2_Class10026])
		(Intensidad 2.0)
		(Nombre_ej_musculacion Curl_biceps_sentado)
		(Requiere
			[Practica2_Class12]
			[Practica2_Class15]))

	([Practica2_Class10018] of  Musculacion

		(Ejercita [Practica2_Class10026])
		(Intensidad 2.0)
		(Nombre_ej_musculacion Curl_biceps_de_pie)
		(Requiere [Practica2_Class12]))

	([Practica2_Class10019] of  Musculacion

		(Ejercita [Practica2_Class10026])
		(Intensidad 2.0)
		(Nombre_ej_musculacion Extension_triceps)
		(Requiere [Practica2_Class12]))

	([Practica2_Class10020] of  Material

		(Tipo_material Cuerda))

	([Practica2_Class10023] of  Material

		(Tipo_material Colchoneta))

	([Practica2_Class10026] of  Zona_cuerpo

		(Zona Brazo))

	([Practica2_Class10027] of  Zona_cuerpo

		(Zona Pierna))

	([Practica2_Class10028] of  Zona_cuerpo

		(Zona Cuello))

	([Practica2_Class10029] of  Zona_cuerpo

		(Zona Cadera))

	([Practica2_Class10030] of  Zona_cuerpo

		(Zona Hombro))

	([Practica2_Class10031] of  Zona_cuerpo

		(Zona Espalda))

	([Practica2_Class10032] of  Zona_cuerpo

		(Zona Abdomen))

	([Practica2_Class10048] of  Deporte

		(Intensidad 2.0)
		(Involucra [Practica2_Class10027])
		(Nombre_deporte Marcha))

	([Practica2_Class10049] of  Deporte

		(Intensidad 5.0)
		(Involucra
			[Practica2_Class10029]
			[Practica2_Class10027])
		(Nombre_deporte Footing))

	([Practica2_Class10050] of  Deporte

		(Intensidad 4.0)
		(Involucra
			[Practica2_Class10032]
			[Practica2_Class10026]
			[Practica2_Class10029]
			[Practica2_Class10028]
			[Practica2_Class10031]
			[Practica2_Class10030]
			[Practica2_Class10027])
		(Nombre_deporte Aquagym))

	([Practica2_Class10051] of  Deporte

		(Intensidad 2.0)
		(Involucra
			[Practica2_Class10026]
			[Practica2_Class10029])
		(Nombre_deporte Golf))

	([Practica2_Class10052] of  Deporte

		(Intensidad 1.0)
		(Involucra
			[Practica2_Class10026]
			[Practica2_Class10031])
		(Nombre_deporte Vela))

	([Practica2_Class10055] of  Deporte

		(Intensidad 4.0)
		(Involucra [Practica2_Class10027])
		(Nombre_deporte Ciclismo))

	([Practica2_Class10056] of  Deporte

		(Intensidad 5.0)
		(Involucra
			[Practica2_Class10026]
			[Practica2_Class10029]
			[Practica2_Class10031]
			[Practica2_Class10030]
			[Practica2_Class10027]
			[Practica2_Class10032]
			[Practica2_Class10028])
		(Nombre_deporte Baloncesto))

	([Practica2_Class10057] of  Deporte

		(Intensidad 4.0)
		(Involucra
			[Practica2_Class10032]
			[Practica2_Class10026]
			[Practica2_Class10029]
			[Practica2_Class10028]
			[Practica2_Class10031]
			[Practica2_Class10030]
			[Practica2_Class10027])
		(Nombre_deporte Tenis))

	([Practica2_Class10060] of  Deporte

		(Intensidad 1.0)
		(Involucra [Practica2_Class10027])
		(Nombre_deporte Tai-Chi))

	([Practica2_Class10061] of  Aerobico

		(Ejercita [Practica2_Class10027])
		(Intensidad 1.0)
		(Nombre_ej_aerobico Andar))

	([Practica2_Class10062] of  Aerobico

		(Ejercita
			[Practica2_Class10031]
			[Practica2_Class10027])
		(Intensidad 1.0)
		(Nombre_ej_aerobico Bicicleta)
		(Requiere [Practica2_Class8]))

	([Practica2_Class10063] of  Aerobico

		(Ejercita
			[Practica2_Class10032]
			[Practica2_Class10026]
			[Practica2_Class10028]
			[Practica2_Class10031]
			[Practica2_Class10027])
		(Intensidad 2.0)
		(Nombre_ej_aerobico Nadar))

	([Practica2_Class10064] of  Aerobico

		(Ejercita
			[Practica2_Class10032]
			[Practica2_Class10026]
			[Practica2_Class10029]
			[Practica2_Class10028]
			[Practica2_Class10031]
			[Practica2_Class10030]
			[Practica2_Class10027])
		(Intensidad 2.0)
		(Nombre_ej_aerobico Danza))

	([Practica2_Class10065] of  Aerobico

		(Ejercita [Practica2_Class10027])
		(Intensidad 2.0)
		(Nombre_ej_aerobico Subir_escaleras))

	([Practica2_Class10066] of  Equilibrio

		(Ejercita [Practica2_Class10027])
		(Intensidad 1.0)
		(Nombre_ej_eq Talon_a_pies))

	([Practica2_Class10067] of  Equilibrio

		(Ejercita
			[Practica2_Class10031]
			[Practica2_Class10032]
			[Practica2_Class10027])
		(Intensidad 1.0)
		(Nombre_ej_eq Levantarse_y_sentarse_sin_manos)
		(Requiere [Practica2_Class15]))

	([Practica2_Class10069] of  Equilibrio

		(Ejercita [Practica2_Class10027])
		(Intensidad 1.0)
		(Nombre_ej_eq Pata_coja_con_soporte)
		(Requiere [Practica2_Class15]))

	([Practica2_Class10070] of  Flexibilidad

		(Ejercita [Practica2_Class10027])
		(Intensidad 1.0)
		(Nombre_ej_flexi Estiramientos_de_los_tendones_del_muslo_sentado)
		(Requiere [Practica2_Class15]))

	([Practica2_Class10071] of  Flexibilidad

		(Ejercita [Practica2_Class10027])
		(Intensidad 1.0)
		(Nombre_ej_flexi Estiramientos_de_los_tendones_del_muslo_de_pie))

	([Practica2_Class10072] of  Flexibilidad

		(Ejercita [Practica2_Class10027])
		(Intensidad 1.0)
		(Nombre_ej_flexi Estiramiento_de_pantorrillas))

	([Practica2_Class10073] of  Flexibilidad

		(Ejercita [Practica2_Class10027])
		(Intensidad 1.0)
		(Nombre_ej_flexi Estiramientos_de_tobillos)
		(Requiere [Practica2_Class15]))

	([Practica2_Class10074] of  Flexibilidad

		(Ejercita [Practica2_Class10026])
		(Intensidad 1.0)
		(Nombre_ej_flexi Estiramientos_de_triceps)
		(Requiere [Practica2_Class10020]))

	([Practica2_Class10075] of  Flexibilidad

		(Ejercita [Practica2_Class10026])
		(Intensidad 1.0)
		(Nombre_ej_flexi Estiramientos_de_mu%C3%B1eca))

	([Practica2_Class10076] of  Flexibilidad

		(Ejercita [Practica2_Class10030])
		(Intensidad 1.0)
		(Nombre_ej_flexi Rotacion_de_hombros_de_pie))

	([Practica2_Class10077] of  Flexibilidad

		(Ejercita [Practica2_Class10030])
		(Intensidad 1.0)
		(Nombre_ej_flexi Rotacion_de_hombros_tumbado)
		(Requiere [Practica2_Class10023]))

	([Practica2_Class10078] of  Flexibilidad

		(Ejercita [Practica2_Class10027])
		(Intensidad 1.0)
		(Nombre_ej_flexi Estiramientos_de_los_cuadriceps_de_pie))

	([Practica2_Class10079] of  Flexibilidad

		(Ejercita [Practica2_Class10029])
		(Intensidad 1.0)
		(Nombre_ej_flexi Rotacion_doble_de_cadera_tumbado)
		(Requiere [Practica2_Class10023]))

	([Practica2_Class10080] of  Flexibilidad

		(Ejercita [Practica2_Class10029])
		(Intensidad 1.0)
		(Nombre_ej_flexi Rotacion_simple_de_cadera_tumbado)
		(Requiere [Practica2_Class10023]))

	([Practica2_Class12] of  Material

		(Tipo_material Mancuernas))

	([Practica2_Class15] of  Material

		(Tipo_material Silla))


	([Practica2_Class2] of  Deporte

		(Intensidad 3.0)
		(Involucra
			[Practica2_Class10032]
			[Practica2_Class10031]
			[Practica2_Class10028]
			[Practica2_Class10029]
			[Practica2_Class10030])
		(Nombre_deporte Yoga))

	([Practica2_Class20001] of  Musculacion

		(Ejercita [Practica2_Class10032])
		(Intensidad 3.0)
		(Nombre_ej_musculacion Encogimientos_abdominales)
		(Requiere [Practica2_Class10023]))

	([Practica2_Class20002] of  Deporte

		(Intensidad 4.0)
		(Involucra
			[Practica2_Class10032]
			[Practica2_Class10026]
			[Practica2_Class10029]
			[Practica2_Class10031]
			[Practica2_Class10027])
		(Nombre_deporte Pilates))

	([Practica2_Class20004] of  Equilibrio

		(Ejercita
			[Practica2_Class10028]
			[Practica2_Class10027])
		(Intensidad 1.0)
		(Nombre_ej_eq Marcha_estatica_con_giro_de_cabeza)
		(Requiere [Practica2_Class15]))

	([Practica2_Class20006] of  Equilibrio

		(Ejercita
			[Practica2_Class10032]
			[Practica2_Class10029]
			[Practica2_Class10031])
		(Intensidad 1.0)
		(Nombre_ej_eq Torsion_lateral_tronco))

	([Practica2_Class20007] of  Equilibrio

		(Ejercita [Practica2_Class10027])
		(Intensidad 2.0)
		(Nombre_ej_eq Subir_y_bajar_escalon))

	([Practica2_Class20009] of  Equilibrio

		(Ejercita [Practica2_Class10027])
		(Intensidad 2.0)
		(Nombre_ej_eq Caminar_con_un_ojo_tapado))

	([Practica2_Class20010] of  Equilibrio

		(Ejercita [Practica2_Class10027])
		(Intensidad 1.0)
		(Nombre_ej_eq Marcha_estatica_levantado))

	([Practica2_Class20013] of  Aerobico

		(Ejercita
			[Practica2_Class10032]
			[Practica2_Class10026]
			[Practica2_Class10029]
			[Practica2_Class10028]
			[Practica2_Class10031]
			[Practica2_Class10030]
			[Practica2_Class10027])
		(Intensidad 4.0)
		(Nombre_ej_aerobico Aerobic))

	([Practica2_Class20014] of  Aerobico

		(Ejercita
			[Practica2_Class10031]
			[Practica2_Class10027])
		(Intensidad 4.0)
		(Nombre_ej_aerobico Patinar))

	([Practica2_Class20020] of  Musculacion

		(Ejercita
			[Practica2_Class10031]
			[Practica2_Class10027]
			[Practica2_Class10029])
		(Intensidad 3.0)
		(Nombre_ej_musculacion Flexion_perpendicular_silla)
		(Requiere [Practica2_Class15]))

	([Practica2_Class20021] of  Musculacion

		(Ejercita [Practica2_Class10029])
		(Intensidad 2.0)
		(Nombre_ej_musculacion Flexion_de_caderas))

	([Practica2_Class20022] of  Musculacion

		(Ejercita [Practica2_Class10029])
		(Intensidad 3.0)
		(Nombre_ej_musculacion Extension_de_caderas)
		(Requiere [Practica2_Class20033]))

	([Practica2_Class20023] of  Musculacion

		(Ejercita [Practica2_Class10031])
		(Intensidad 2.0)
		(Nombre_ej_musculacion Remo_sentado)
		(Requiere [Practica2_Class15]))

	([Practica2_Class20024] of  Musculacion

		(Ejercita
			[Practica2_Class10031]
			[Practica2_Class10026])
		(Intensidad 4.0)
		(Nombre_ej_musculacion Flexiones_contra_pared))

	([Practica2_Class20025] of  Musculacion

		(Ejercita
			[Practica2_Class10030]
			[Practica2_Class10026])
		(Intensidad 2.0)
		(Nombre_ej_musculacion Elevaciones_laterales)
		(Requiere [Practica2_Class12]))

	([Practica2_Class20026] of  Musculacion

		(Ejercita
			[Practica2_Class10026]
			[Practica2_Class10030])
		(Intensidad 3.0)
		(Nombre_ej_musculacion Elevaciones_frontales)
		(Requiere [Practica2_Class12]))

	([Practica2_Class20027] of  Musculacion

		(Ejercita [Practica2_Class10027])
		(Intensidad 1.0)
		(Nombre_ej_musculacion Flexion_plantar))

	([Practica2_Class20028] of  Musculacion

		(Ejercita [Practica2_Class10027])
		(Intensidad 1.0)
		(Nombre_ej_musculacion Extension_de_rodilla)
		(Requiere [Practica2_Class15]))

	([Practica2_Class20030] of  Musculacion

		(Ejercita [Practica2_Class10027])
		(Intensidad 2.0)
		(Nombre_ej_musculacion Extension_de_piernas_hacia_los_lados)
		(Requiere [Practica2_Class20033]))

	([Practica2_Class20031] of  Musculacion

		(Ejercita [Practica2_Class10030])
		(Intensidad 1.0)
		(Nombre_ej_musculacion Press_sentado)
		(Requiere [Practica2_Class12]))

	([Practica2_Class20032] of  Musculacion

		(Ejercita
			[Practica2_Class10031]
			[Practica2_Class10030])
		(Intensidad 2.0)
		(Nombre_ej_musculacion Press_de_pie)
		(Requiere [Practica2_Class12]))

	([Practica2_Class20033] of  Material

		(Tipo_material Banda_elastica))

	([Practica2_Class20034] of  Musculacion

		(Ejercita [Practica2_Class10027])
		(Intensidad 1.0)
		(Nombre_ej_musculacion Flexion_rodilla)
		(Requiere [Practica2_Class15]))

	([Practica2_Class20035] of  Dolor

		(Zona_dolor [Practica2_Class10032]))

	([Practica2_Class20036] of  Dolor

		(Zona_dolor [Practica2_Class10026]))

	([Practica2_Class20037] of  Dolor

		(Zona_dolor [Practica2_Class10029]))

	([Practica2_Class20038] of  Dolor

		(Zona_dolor [Practica2_Class10028]))

	([Practica2_Class20039] of  Dolor

		(Zona_dolor [Practica2_Class10031]))

	([Practica2_Class20040] of  Dolor

		(Zona_dolor [Practica2_Class10030]))

	([Practica2_Class20041] of  Dolor

		(Zona_dolor [Practica2_Class10027]))

	([Practica2_Class20042] of  Enfermedad

		(Mejora_con
			[Practica2_Class10061]
			[Practica2_Class10062]
			[Practica2_Class10064]
			[Practica2_Class10063]
			[Practica2_Class10065]
			[Practica2_Class10050]
			[Practica2_Class10056]
			[Practica2_Class10049]
			[Practica2_Class10048]
			[Practica2_Class10057])
		(Tipo_enf Diabetes))

	([Practica2_Class20043] of  Enfermedad

		(Mejora_con
			[Practica2_Class10061]
			[Practica2_Class10062]
			[Practica2_Class10064]
			[Practica2_Class10063]
			[Practica2_Class10065]
			[Practica2_Class10008]
			[Practica2_Class7]
			[Practica2_Class10067]
			[Practica2_Class5]
			[Practica2_Class6]
			[Practica2_Class10069]
			[Practica2_Class10066])
		(Tipo_enf Osteoporosis))

	([Practica2_Class20044] of  Enfermedad

		(Mejora_con
			[Practica2_Class10012]
			[Practica2_Class10010]
			[Practica2_Class10013]
			[Practica2_Class10014]
			[Practica2_Class10018]
			[Practica2_Class10017]
			[Practica2_Class20031]
			[Practica2_Class10019]
			[Practica2_Class20032]
			[Practica2_Class10055]
			[Practica2_Class10048])
		(Tipo_enf Cardiaca))

	([Practica2_Class20045] of  Enfermedad

		(Mejora_con
			[Practica2_Class10050]
			[Practica2_Class10056]
			[Practica2_Class10055]
			[Practica2_Class10049]
			[Practica2_Class10048]
			[Practica2_Class10057]
			[Practica2_Class10061]
			[Practica2_Class10062]
			[Practica2_Class10064]
			[Practica2_Class10063]
			[Practica2_Class10065])
		(Tipo_enf Artrosis))

	([Practica2_Class20046] of  Enfermedad

		(Mejora_con
			[Practica2_Class10050]
			[Practica2_Class10056]
			[Practica2_Class10055]
			[Practica2_Class10049]
			[Practica2_Class10048]
			[Practica2_Class10057]
			[Practica2_Class10061]
			[Practica2_Class10062]
			[Practica2_Class10064]
			[Practica2_Class10063]
			[Practica2_Class10065])
		(Tipo_enf Coronaria))

	([Practica2_Class20047] of  Enfermedad

		(Mejora_con
			[Practica2_Class10050]
			[Practica2_Class2]
			[Practica2_Class10008]
			[Practica2_Class7]
			[Practica2_Class10067]
			[Practica2_Class5]
			[Practica2_Class6]
			[Practica2_Class10069]
			[Practica2_Class10066])
		(Tipo_enf Desequilibrio))

	([Practica2_Class20048] of  Enfermedad

		(Mejora_con
			[Practica2_Class10061]
			[Practica2_Class10062]
			[Practica2_Class10064]
			[Practica2_Class10063]
			[Practica2_Class10065])
		(Tipo_enf Fragilidad))

	([Practica2_Class20049] of  Enfermedad

		(Mejora_con
			[Practica2_Class10008]
			[Practica2_Class7]
			[Practica2_Class10067]
			[Practica2_Class5]
			[Practica2_Class6]
			[Practica2_Class10069]
			[Practica2_Class10066])
		(Tipo_enf Incontinencia))

	([Practica2_Class20050] of  Enfermedad

		(Mejora_con
			[Practica2_Class10061]
			[Practica2_Class10062]
			[Practica2_Class10064]
			[Practica2_Class10063]
			[Practica2_Class10065])
		(Tipo_enf Insuficiencia))

	([Practica2_Class20051] of  Psicologico

		(Mejora_con
			[Practica2_Class10050]
			[Practica2_Class10051]
			[Practica2_Class10060]
			[Practica2_Class2])
		(Tipo_psico Ansiedad))

	([Practica2_Class20052] of  Psicologico

		(Mejora_con
			[Practica2_Class10050]
			[Practica2_Class10056]
			[Practica2_Class10055]
			[Practica2_Class10049]
			[Practica2_Class10051]
			[Practica2_Class10048]
			[Practica2_Class10060]
			[Practica2_Class10057]
			[Practica2_Class10052]
			[Practica2_Class2]
			[Practica2_Class10061]
			[Practica2_Class10062]
			[Practica2_Class10064])
		(Tipo_psico Depresion))

	([Practica2_Class20053] of  Psicologico

		(Mejora_con
			[Practica2_Class10060]
			[Practica2_Class10052]
			[Practica2_Class2])
		(Tipo_psico Insomnio))

	([Practica2_Class30001] of  Aerobico

		(Ejercita
			[Practica2_Class10026]
			[Practica2_Class10031]
			[Practica2_Class10030])
		(Intensidad 1.0)
		(Nombre_ej_aerobico Remo)
		(Requiere [Practica2_Class10000]))

	([Practica2_Class30002] of  Material

		(Tipo_material Pelota))

	([Practica2_Class30003] of  Equilibrio

		(Ejercita [Practica2_Class10027])
		(Intensidad 2.0)
		(Nombre_ej_eq Pata_coja_con_soporte_sobre_superficie_blanda)
		(Requiere
			[Practica2_Class10023]
			[Practica2_Class15]))

	([Practica2_Class30004] of  Equilibrio

		(Ejercita
			[Practica2_Class10031]
			[Practica2_Class10027])
		(Intensidad 2.0)
		(Nombre_ej_eq Levantar_brazo_con_pierna_opuesta))

	([Practica2_Class30005] of  Equilibrio

		(Ejercita [Practica2_Class10027])
		(Intensidad 2.0)
		(Nombre_ej_eq Patadas_traseras_sobre_una_pierna))

	([Practica2_Class30006] of  Equilibrio

		(Ejercita [Practica2_Class10027])
		(Intensidad 2.0)
		(Nombre_ej_eq Patadas_frontales_sobre_una_pierna))

	([Practica2_Class30007] of  Equilibrio

		(Ejercita [Practica2_Class10027])
		(Intensidad 3.0)
		(Nombre_ej_eq Andar_en_puntillas))

	([Practica2_Class30008] of  Equilibrio

		(Ejercita [Practica2_Class10027])
		(Intensidad 1.0)
		(Nombre_ej_eq Andar_con_un_libro_en_la_cabeza)
		(Requiere [Practica2_Class30009]))

	([Practica2_Class30009] of  Material

		(Tipo_material Libro))

	([Practica2_Class30010] of  Equilibrio

		(Ejercita [Practica2_Class10027])
		(Intensidad 1.0)
		(Nombre_ej_eq Andar_levantando_las_rodillas))

	([Practica2_Class30012] of  Flexibilidad

		(Ejercita [Practica2_Class10032])
		(Intensidad 1.0)
		(Nombre_ej_flexi Elevacion_de_manos_entrelazadas_hacia_los_lados))

	([Practica2_Class30013] of  Flexibilidad

		(Ejercita
			[Practica2_Class10032]
			[Practica2_Class10031])
		(Intensidad 1.0)
		(Nombre_ej_flexi Brazos_al_cielo))

	([Practica2_Class30014] of  Flexibilidad

		(Ejercita
			[Practica2_Class10032]
			[Practica2_Class10031])
		(Intensidad 1.0)
		(Nombre_ej_flexi Elongacion_lateral))

	([Practica2_Class30015] of  Flexibilidad

		(Ejercita [Practica2_Class10031])
		(Intensidad 1.0)
		(Nombre_ej_flexi Piernas_hacia_el_pecho_tumbado)
		(Requiere [Practica2_Class10023]))

	([Practica2_Class30016] of  Musculacion

		(Ejercita [Practica2_Class10032])
		(Intensidad 2.0)
		(Nombre_ej_musculacion Plancha_cuatro_apoyos)
		(Requiere [Practica2_Class10023]))

	([Practica2_Class30017] of  Musculacion

		(Ejercita [Practica2_Class10032])
		(Intensidad 3.0)
		(Nombre_ej_musculacion Tijeras_abdominales)
		(Requiere [Practica2_Class10023]))

	([Practica2_Class40002] of  Material

		(Tipo_material Maquina_eliptica))

	([Practica2_Class40003] of  Aerobico

		(Ejercita
			[Practica2_Class10032]
			[Practica2_Class10026]
			[Practica2_Class10029]
			[Practica2_Class10028]
			[Practica2_Class10031]
			[Practica2_Class10030]
			[Practica2_Class10027])
		(Intensidad 4.0)
		(Nombre_ej_aerobico Zumba))

	([Practica2_Class40004] of  Aerobico

		(Ejercita [Practica2_Class10027])
		(Intensidad 1.0)
		(Nombre_ej_aerobico Eliptica)
		(Requiere [Practica2_Class40002]))

	([Practica2_Class40005] of  Equilibrio

		(Ejercita [Practica2_Class10026])
		(Intensidad 1.0)
		(Nombre_ej_eq Levantamiento_de_brazos_sentado)
		(Requiere [Practica2_Class15]))

	([Practica2_Class40006] of  Equilibrio

		(Ejercita [Practica2_Class10027])
		(Intensidad 1.0)
		(Nombre_ej_eq Caminar_sobre_los_talones))

	([Practica2_Class40007] of  Equilibrio

		(Ejercita [Practica2_Class10027])
		(Intensidad 1.0)
		(Nombre_ej_eq Balanceo_del_pie))

	([Practica2_Class40008] of  Flexibilidad

		(Ejercita
			[Practica2_Class10031]
			[Practica2_Class10029])
		(Intensidad 1.0)
		(Nombre_ej_flexi Estiramiento_piriforme)
		(Requiere [Practica2_Class10023]))

	([Practica2_Class40009] of  Flexibilidad

		(Ejercita [Practica2_Class10031])
		(Intensidad 1.0)
		(Nombre_ej_flexi Estiramiento_total_de_espalda)
		(Requiere [Practica2_Class10023]))

	([Practica2_Class40010] of  Flexibilidad

		(Ejercita [Practica2_Class10026])
		(Intensidad 1.0)
		(Nombre_ej_flexi Estirar_brazo_tras_nuca))

	([Practica2_Class40011] of  Flexibilidad

		(Ejercita [Practica2_Class10026])
		(Intensidad 1.0)
		(Nombre_ej_flexi Estiramiento_paralelo_brazo))

	([Practica2_Class40012] of  Flexibilidad

		(Ejercita [Practica2_Class10026])
		(Intensidad 1.0)
		(Nombre_ej_flexi Cruce_de_brazos_por_detras_del_cuerpo))

	([Practica2_Class40013] of  Flexibilidad

		(Ejercita
			[Practica2_Class10032]
			[Practica2_Class10031])
		(Intensidad 1.0)
		(Nombre_ej_flexi Torsion_lateral_hacia_abajo))

	([Practica2_Class40014] of  Flexibilidad

		(Ejercita [Practica2_Class10032])
		(Intensidad 1.0)
		(Nombre_ej_flexi Estiramiento_del_recto_abdominal)
		(Requiere [Practica2_Class10023]))

	([Practica2_Class40015] of  Flexibilidad

		(Ejercita [Practica2_Class10028])
		(Intensidad 1.0)
		(Nombre_ej_flexi Estiramiento_de_protraccion_del_cuello))

	([Practica2_Class40016] of  Flexibilidad

		(Ejercita [Practica2_Class10028])
		(Intensidad 1.0)
		(Nombre_ej_flexi Extension_del_cuello))

	([Practica2_Class40017] of  Flexibilidad

		(Ejercita [Practica2_Class10028])
		(Intensidad 1.0)
		(Nombre_ej_flexi Flexion_delantera_del_cuello))

	([Practica2_Class40018] of  Flexibilidad

		(Ejercita [Practica2_Class10030])
		(Intensidad 1.0)
		(Nombre_ej_flexi Estiramiento_de_hombro_con_brazo_doblado))

	([Practica2_Class40019] of  Flexibilidad

		(Ejercita [Practica2_Class10030])
		(Intensidad 1.0)
		(Nombre_ej_flexi Estiramientos_de_hombros_en_envoltura))

	([Practica2_Class40020] of  Flexibilidad

		(Ejercita [Practica2_Class10030])
		(Intensidad 1.0)
		(Nombre_ej_flexi Estiramiento_cruzado))

	([Practica2_Class40021] of  Flexibilidad

		(Ejercita [Practica2_Class10030])
		(Intensidad 1.0)
		(Nombre_ej_flexi Estiramiento_del_hombro_tocando_atras))

	([Practica2_Class40022] of  Flexibilidad

		(Ejercita [Practica2_Class10026])
		(Intensidad 1.0)
		(Nombre_ej_flexi Estiramiento_L_invertida)
		(Requiere [Practica2_Class20033]))

	([Practica2_Class40023] of  Flexibilidad

		(Ejercita [Practica2_Class10029])
		(Intensidad 1.0)
		(Nombre_ej_flexi Estiramiento_de_gluteo_piramidal_con_apoyo)
		(Requiere [Practica2_Class10023]))

	([Practica2_Class40024] of  Flexibilidad

		(Ejercita [Practica2_Class10029])
		(Intensidad 1.0)
		(Nombre_ej_flexi Estiramiento_de_cadera_con_rotacion_sentado)
		(Requiere [Practica2_Class10023]))

	([Practica2_Class40025] of  Musculacion

		(Ejercita [Practica2_Class10032])
		(Intensidad 2.0)
		(Nombre_ej_musculacion Crunch_piernas_elevadas)
		(Requiere [Practica2_Class10023]))

	([Practica2_Class40026] of  Musculacion

		(Ejercita [Practica2_Class10032])
		(Intensidad 2.0)
		(Nombre_ej_musculacion Elevacion_de_piernas)
		(Requiere [Practica2_Class10023]))

	([Practica2_Class40027] of  Musculacion

		(Ejercita [Practica2_Class10032])
		(Intensidad 3.0)
		(Nombre_ej_musculacion Plancha_con_fitball)
		(Requiere
			[Practica2_Class10023]
			[Practica2_Class30002]))

	([Practica2_Class40028] of  Musculacion

		(Ejercita [Practica2_Class10031])
		(Intensidad 2.0)
		(Nombre_ej_musculacion Remo_con_mancuerna)
		(Requiere
			[Practica2_Class12]
			[Practica2_Class15]))

	([Practica2_Class40029] of  Musculacion

		(Ejercita
			[Practica2_Class10030]
			[Practica2_Class10031])
		(Intensidad 2.0)
		(Nombre_ej_musculacion Encogimiento_de_hombros)
		(Requiere [Practica2_Class12]))

	([Practica2_Class40030] of  Musculacion

		(Ejercita [Practica2_Class10031])
		(Intensidad 1.0)
		(Nombre_ej_musculacion Superman)
		(Requiere [Practica2_Class10023]))

	([Practica2_Class40032] of  Musculacion

		(Ejercita [Practica2_Class10029])
		(Intensidad 1.0)
		(Nombre_ej_musculacion Estabilizador_lumbar)
		(Requiere [Practica2_Class10023]))

	([Practica2_Class40033] of  Musculacion

		(Ejercita [Practica2_Class10029])
		(Intensidad 1.0)
		(Nombre_ej_musculacion Patada_de_flex)
		(Requiere [Practica2_Class10023]))

	([Practica2_Class40034] of  Musculacion

		(Ejercita [Practica2_Class10029])
		(Intensidad 1.0)
		(Nombre_ej_musculacion Elevacion_de_caderas)
		(Requiere [Practica2_Class10023]))

	([Practica2_Class40035] of  Material

		(Tipo_material Disco))

	([Practica2_Class40036] of  Musculacion

		(Ejercita [Practica2_Class10028])
		(Intensidad 2.0)
		(Nombre_ej_musculacion Elevaciones_boca_arriba_con_disco)
		(Requiere
			[Practica2_Class40035]
			[Practica2_Class15]))

	([Practica2_Class40037] of  Musculacion

		(Ejercita [Practica2_Class10028])
		(Intensidad 2.0)
		(Nombre_ej_musculacion Elevaciones_boca_abajo_con_disco)
		(Requiere
			[Practica2_Class40035]
			[Practica2_Class15]))

	([Practica2_Class40038] of  Musculacion

		(Ejercita [Practica2_Class10028])
		(Intensidad 1.0)
		(Nombre_ej_musculacion Isometrico_hacia_los_lados))

	([Practica2_Class40039] of  Musculacion

		(Ejercita [Practica2_Class10028])
		(Intensidad 1.0)
		(Nombre_ej_musculacion Isometrico_hacia_delante_y_atras))

	([Practica2_Class40040] of  Musculacion

		(Ejercita [Practica2_Class10028])
		(Intensidad 2.0)
		(Nombre_ej_musculacion Face_pull)
		(Requiere [Practica2_Class20033]))

	([Practica2_Class40041] of  Musculacion

		(Ejercita [Practica2_Class10026])
		(Intensidad 2.0)
		(Nombre_ej_musculacion Curl_martillo)
		(Requiere [Practica2_Class12]))

	([Practica2_Class40042] of  Musculacion

		(Ejercita [Practica2_Class10031])
		(Intensidad 3.0)
		(Nombre_ej_musculacion Pullover)
		(Requiere
			[Practica2_Class12]
			[Practica2_Class15]))

	([Practica2_Class40043] of  Musculacion

		(Ejercita [Practica2_Class10031])
		(Intensidad 2.0)
		(Nombre_ej_musculacion Hiperextensiones_lumbares)
		(Requiere [Practica2_Class10023]))

	([Practica2_Class40044] of  Musculacion

		(Ejercita [Practica2_Class10031])
		(Intensidad 4.0)
		(Nombre_ej_musculacion Peso_muerto_con_piernas_rectas)
		(Requiere [Practica2_Class12]))

	([Practica2_Class40045] of  Musculacion

		(Ejercita [Practica2_Class10030])
		(Intensidad 2.0)
		(Nombre_ej_musculacion Remo_vertical)
		(Requiere [Practica2_Class12]))

	([Practica2_Class40046] of  Musculacion

		(Ejercita [Practica2_Class10030])
		(Intensidad 3.0)
		(Nombre_ej_musculacion Pajaros_sentado)
		(Requiere
			[Practica2_Class12]
			[Practica2_Class15]))

	([Practica2_Class5] of  Equilibrio

		(Ejercita
			[Practica2_Class10031]
			[Practica2_Class10027]
			[Practica2_Class10029])
		(Intensidad 2.0)
		(Nombre_ej_eq Pararse_de_puntillas))

	([Practica2_Class6] of  Equilibrio

		(Ejercita
			[Practica2_Class10031]
			[Practica2_Class10029]
			[Practica2_Class10027])
		(Intensidad 3.0)
		(Nombre_ej_eq Paso_lateral_lado_a_lado))

	([Practica2_Class7] of  Equilibrio

		(Ejercita [Practica2_Class10027])
		(Intensidad 2.0)
		(Nombre_ej_eq Caminata_sentado)
		(Requiere [Practica2_Class15]))

	([Practica2_Class8] of  Material

		(Tipo_material Bicicleta))

)

(defrule crea-instancia-inicial-persona
  (declare (salience 10))
  =>
  (make-instance p of Persona)
)

(defrule crea-instancia-programa
	(declare (salience 10))
	=>
	(make-instance programa of Programa)
)

; ------------------------------------------------------------------------------------------------------------------------
;																									MÓDULO MAIN
; ------------------------------------------------------------------------------------------------------------------------
; En este módulo se da la bienvenida al programa y se da inicio a la ejecución
(defmodule MAIN
	(export ?ALL)
)

; **********
; * INICIO *
; **********
(defrule sistema-programa "Da la bienvenida al programa"
  (initial-fact)
  =>
	(printout t crlf crlf)
	(printout t "**************************************************************************************************************"crlf)
	(printout t "                                           PERSONAL TRAINER                                                   "crlf)
	(printout t "                 Sistema de personalizacion de programas de ejercicio para personas mayores.									 "crlf)
	(printout t "**************************************************************************************************************"crlf)
	(printout t crlf crlf)
	(assert (nuevoUsuario))
	(focus PREGUNTAS)
)


; ------------------------------------------------------------------------------------------------------------------------
;																									MÓDULO PREGUNTAS
; ------------------------------------------------------------------------------------------------------------------------
; En este módulo se extrae la información necesaria del usuario a base de preguntas
(defmodule PREGUNTAS
	(import MAIN ?ALL)
	(export ?ALL)
)

;;****************
;;* DEFFUNCTIONS *
;;****************
; Realiza una pregunta que tiene como respuesta algún valor de allowed-values
(deffunction ask-question (?question $?allowed-values)
   (printout t ?question)
   (bind ?answer (read))
   (if (lexemep ?answer)
       then (bind ?answer (lowcase ?answer)))
   (while (not (member ?answer ?allowed-values)) do
      (printout t ?question)
      (bind ?answer (read))
      (if (lexemep ?answer)
          then (bind ?answer (lowcase ?answer))))
   ?answer
)

; Realiza una pregunta que tiene como respuesta si o no
(deffunction yes-or-no-p (?question)
   (bind ?response (ask-question ?question si no s n))
   (if (or (eq ?response si) (eq ?response s))
       then TRUE
       else FALSE)
)

; Realiza una pregunta que tiene como respuesta un número dentro de un rango
(deffunction pregunta-numerica (?pregunta ?rangini ?rangfi)
	(format t "%s [%d, %d] " ?pregunta ?rangini ?rangfi)
	(bind ?respuesta (read))
	(while (not(and(>= ?respuesta ?rangini)(<= ?respuesta ?rangfi))) do
		(format t " %s [%d, %d] " ?pregunta ?rangini ?rangfi)
		(bind ?respuesta (read))
	)
	?respuesta
)

; *************
; * PREGUNTAS *
; *************
; -------------------- CARACT. FISIOLÓGICAS --------------------
(defrule p_nombre "Pregunta el nombre"
  (nuevoUsuario)
  ?x <- (object(is-a Persona))
  =>
  (printout t "Cual es su nombre? " crlf)
  (bind ?nombre (read))
  (send ?x put-Nombre_persona ?nombre)
)

(defrule p_edad "Pregunta edad"
  (nuevoUsuario)
  ?x <- (object(is-a Persona))
  =>
  (bind ?edad (pregunta-numerica "Introduzca su edad " 65 100))
  (send ?x put-Edad ?edad)
)

(defrule p_altura "Pregunta altura"
  (nuevoUsuario)
  ?x <- (object(is-a Persona))
  =>
  (printout t "Introduzca su altura (en cm) " crlf)
  (bind ?altura (read))
     (while (not (>= ?altura 0)) do
      (printout t "Introduzca una altura válida (en cm) " crlf)
      (bind ?altura (read))
      )
  (send ?x put-Altura ?altura)
)

(defrule p_peso "Pregunta peso"
  (nuevoUsuario)
  ?x <- (object(is-a Persona))
  =>
  (printout t "Introduzca su peso " crlf)
  (bind ?peso (read))
     (while (not (>= ?peso 0)) do
      (printout t "Introduzca un peso valido " crlf)
      (bind ?peso (read))
      )
	(bind ?imc (/ ?peso (* (/ (send ?x get-Altura) 100) (/ (send ?x get-Altura) 100))))
	(if (<= ?imc 18.49) then (assert (imc "Infrapeso"))
		else (if (and (>= ?imc 18.50) (<= ?imc 24.99)) then (assert (imc "Peso saludable"))
			else (assert (imc "Sobrepeso"))
			)
		)
  (send ?x put-Peso ?peso)
)

(defrule p_actividad "Pregunta el nivel de actividad"
	(nuevoUsuario)
	?x <- (object(is-a Persona))
	=>
	(bind ?ans (ask-question "Como definiria su estilo de vida?(Sedentario/Activo/Muy_activo)"
	sedentario activo muy_activo))
	(send ?x put-Nivel ?ans)
)

(defrule p_borg "Induce escala de Borg"
	(nuevoUsuario)
	=>
	(bind ?ans (pregunta-numerica "Del 0 al 3, como calificaria el esfuerzo de andar 10 minutos?" 0 3))
	(assert(iborg ?ans))
)

; -------------------- INCAPACIDADES O PROBLEMAS DE SALUD --------------------
(defrule p_cardiacos "Pregunta problemas cardiacos"
	(nuevoUsuario)
	(iborg ?)
	?x <- (object(is-a Persona))
	?cardiaca <- (object(is-a Enfermedad)(Tipo_enf Cardiaca))
	=>
	(bind ?ans (yes-or-no-p "Ha padecido (o padece) problemas del corazon?(si/no)"))
	(if (eq ?ans TRUE) then
		(slot-insert$ ?x Padece 1 ?cardiaca)
	)
)

(defrule p_hipertension "Pregunta por la tension"
	(nuevoUsuario)
	(iborg ?)
	?x <- (object(is-a Persona))
	?coronaria <- (object(is-a Enfermedad)(Tipo_enf Coronaria))
	=>
	(bind ?ans (yes-or-no-p "Le han diagnosticado problemas de tension?(si/no)"))
	(if (eq ?ans TRUE) then
		(slot-insert$ ?x Padece 1 ?coronaria)
	)
)

(defrule p_huesos "Pregunta por problemas de hueso en general"
	(nuevoUsuario)
	(iborg ?)
	?x <- (object(is-a Persona))
	?osteo <- (object(is-a Enfermedad)(Tipo_enf Osteoporosis))
	?artrosis <- (object(is-a Enfermedad)(Tipo_enf Artrosis))
	=>
	(bind ?ans (yes-or-no-p "Padece algun problema en huesos o articulaciones?(si/no)"))
	(if (eq ?ans TRUE) then
		(bind ?ans2 (yes-or-no-p "     Padece de Osteoporosis?(si/no)"))
		(bind ?ans3 (yes-or-no-p "     Padece de Artrosis?(si/no)"))
		(if (eq ?ans2 TRUE) then (slot-insert$ ?x Padece 1 ?osteo))
		(if (eq ?ans3 TRUE) then (slot-insert$ ?x Padece 1 ?artrosis))
	)
)

(defrule p_diabetes "Pregunta por la diabetes"
	(nuevoUsuario)
	(iborg ?)
	?x <- (object(is-a Persona))
	?diabetes <- (object(is-a Enfermedad)(Tipo_enf Diabetes))
	=>
	(bind ?ans (yes-or-no-p "Le han diagnosticado Diabetes tipo II?(si/no)"))
	(if (eq ?ans TRUE) then
		(slot-insert$ ?x Padece 1 ?diabetes)
	)
)

(defrule p_desequilibrios "Pregunta por los desequilibrios"
	(nuevoUsuario)
	(iborg ?)
	?x <- (object(is-a Persona))
	?desequ <- (object(is-a Enfermedad)(Tipo_enf Desequilibrio))
	=>
	(bind ?ans (yes-or-no-p "Suele sufrir caidas o falta de equilibrio?(si/no)"))
	(if (eq ?ans TRUE) then
		(slot-insert$ ?x Padece 1 ?desequ)
	)
)

(defrule p_fragilidad "Pregunta por fragilidad y dependencia"
	(nuevoUsuario)
	(iborg ?)
	?x <- (object(is-a Persona))
	?frag <- (object(is-a Enfermedad)(Tipo_enf Fragilidad))
	=>
	(bind ?ans (yes-or-no-p "Le cuesta realizar tareas sencillas (como cocinar o ir a comprar) o se siente debil frecuentemente?(si/no)"))
	(if (eq ?ans TRUE) then
		(slot-insert$ ?x Padece 1 ?frag)
	)
)

(defrule p_urinario "Pregunta por incontinencia o insuficiencia"
	(nuevoUsuario)
	(iborg ?)
	?x <- (object(is-a Persona))
	?incon <- (object(is-a Enfermedad)(Tipo_enf Incontinencia))
	?insuf <- (object(is-a Enfermedad)(Tipo_enf Insuficiencia))
	=>
	(bind ?ans (yes-or-no-p "Sufre algun problema relacionado con el sistema urinario?(si/no)"))
	(if (eq ?ans TRUE) then
		(bind ?ans2 (yes-or-no-p "     Sufre de insuficiencia?(si/no)"))
		(if (eq ?ans2 TRUE) then (slot-insert$ ?x Padece 1 ?insuf)
			else (bind ?ans3 (yes-or-no-p "     Sufre de incontinencia?(si/no)"))
				(if (eq ?ans3 TRUE) then (slot-insert$ ?x Padece 1 ?incon))
			)
	)
)

(defrule p_depresion "Pregunta por depresion"
	(nuevoUsuario)
	(iborg ?)
	?x <- (object(is-a Persona))
	?depre <- (object(is-a Psicologico)(Tipo_psico Depresion))
	=>
	(bind ?ans (yes-or-no-p "Suele estar deprimido de manera habitual?(si/no)"))
	(if (eq ?ans TRUE) then
		(slot-insert$ ?x Padece 1 ?depre)
	)
)

(defrule p_ansiedad "Pregunta por ansiedad"
	(nuevoUsuario)
	(iborg ?)
	?x <- (object(is-a Persona))
	?ansiedad <- (object(is-a Psicologico)(Tipo_psico Ansiedad))
	=>
	(bind ?ans (yes-or-no-p "Suele sentir ansiedad facilmente?(si/no)"))
	(if (eq ?ans TRUE) then
		(slot-insert$ ?x Padece 1 ?ansiedad)
	)
)

(defrule p_insomnio "Pregunta por insomnio"
	(nuevoUsuario)
	(iborg ?)
	?x <- (object(is-a Persona))
	?insomnio <- (object(is-a Psicologico)(Tipo_psico Insomnio))
	=>
	(bind ?ans (yes-or-no-p "Le cuesta conciliar el sueno?(si/no)"))
	(if (eq ?ans TRUE) then
		(slot-insert$ ?x Padece 1 ?insomnio)
	)
)

(defrule p_dolor "Pregunta si siente dolor o tiene alguna incapacidad fisica en alguna parte del cuerpo"
	(nuevoUsuario)
	(iborg ?)
	=>
	(bind ?ans (yes-or-no-p "Sufre algun dolor o tiene incapacitada alguna zona del cuerpo?(si/no)"))
	(if (eq ?ans TRUE) then
		(printout t "     Indique con un si las zonas con dolor o incapacitadas (indique no en cualquier otro caso):" crlf)
		(assert (incapacitado))
		)
)

(defrule p_brazo "Pregunta si tiene dolor en el brazo"
	(nuevoUsuario)
	(iborg ?)
	(incapacitado)
	?x <- (object(is-a Persona))
	?dolor <- (object(is-a Dolor)(Zona_dolor ?z))
	(test (eq (send ?z get-Zona) Brazo))
	=>
	(bind ?ans (yes-or-no-p "     Un (o ambos) brazo/s:"))
	(if (eq ?ans TRUE) then
		(slot-insert$ ?x Padece 1 ?dolor)
		)
)

(defrule p_pierna "Pregunta si tiene dolor en la pierna"
	(nuevoUsuario)
	(iborg ?)
	(incapacitado)
	?x <- (object(is-a Persona))
	?dolor <- (object(is-a Dolor)(Zona_dolor ?z))
	(test (eq (send ?z get-Zona) Pierna))
	=>
	(bind ?ans (yes-or-no-p "     Una (o ambas) pierna/s:"))
	(if (eq ?ans TRUE) then
		(slot-insert$ ?x Padece 1 ?dolor)
		)
)

(defrule p_cuello "Pregunta si tiene dolor en el cuello"
	(nuevoUsuario)
	(iborg ?)
	(incapacitado)
	?x <- (object(is-a Persona))
	?dolor <- (object(is-a Dolor)(Zona_dolor ?z))
	(test (eq (send ?z get-Zona) Cuello))
	=>
	(bind ?ans (yes-or-no-p "     Cuello:"))
	(if (eq ?ans TRUE) then
		(slot-insert$ ?x Padece 1 ?dolor)
		)
)

(defrule p_cadera "Pregunta si tiene dolor en la cadera"
	(nuevoUsuario)
	(iborg ?)
	(incapacitado)
	?x <- (object(is-a Persona))
	?dolor <- (object(is-a Dolor)(Zona_dolor ?z))
	(test (eq (send ?z get-Zona) Cadera))
	=>
	(bind ?ans (yes-or-no-p "     Cadera:"))
	(if (eq ?ans TRUE) then
		(slot-insert$ ?x Padece 1 ?dolor)
		)
)

(defrule p_hombro "Pregunta si tiene dolor en el hombro"
	(nuevoUsuario)
	(iborg ?)
	(incapacitado)
	?x <- (object(is-a Persona))
	?dolor <- (object(is-a Dolor)(Zona_dolor ?z))
	(test (eq (send ?z get-Zona) Hombro))
	=>
	(bind ?ans (yes-or-no-p "     Hombro:"))
	(if (eq ?ans TRUE) then
		(slot-insert$ ?x Padece 1 ?dolor)
		)
)

(defrule p_espalda "Pregunta si tiene dolor en la espalda"
	(nuevoUsuario)
	(iborg ?)
	(incapacitado)
	?x <- (object(is-a Persona))
	?dolor <- (object(is-a Dolor)(Zona_dolor ?z))
	(test (eq (send ?z get-Zona) Espalda))
	=>
	(bind ?ans (yes-or-no-p "     Espalda:"))
	(if (eq ?ans TRUE) then
		(slot-insert$ ?x Padece 1 ?dolor)
		)
)

(defrule p_abdomen "Pregunta si tiene dolor en el abdomen"
	(nuevoUsuario)
	(iborg ?)
	(incapacitado)
	?x <- (object(is-a Persona))
	?dolor <- (object(is-a Dolor)(Zona_dolor ?z))
	(test (eq (send ?z get-Zona) Abdomen))
	=>
	(bind ?ans (yes-or-no-p "     Estomago/abdomen:"))
	(if (eq ?ans TRUE) then
		(slot-insert$ ?x Padece 1 ?dolor)
		)
)

; -------------------- DISPONIBILIDAD --------------------
(defrule p_disponibilidad "Pregunta por la disponibilidad"
	(nuevoUsuario)
	=>
	(bind ?ans (ask-question "De cuantos dias por semana dispone?" 0 1 2 3 4 5 6 7))
	(if (< ?ans 3) then (assert (disponibilidad Insuficiente))
		else (assert (disponibilidad ?ans)) (focus FILTRO_ENFERMEDAD)
	)
)

(defrule problema_disp "Si la disponibilidad es inferior a 3, no se puede programar una rutina"
	(declare (salience 10))
	(disponibilidad Insuficiente)
	=>
	(assert (problemas "Lo sentimos, no podemos organizar un plan de entrenamiento para menos de 3 dias por semana."))
	(focus RESPUESTA)
)


; ------------------------------------------------------------------------------------------------------------------------
;																							MÓDULO FILTRO ENFERMEDAD
; ------------------------------------------------------------------------------------------------------------------------
; En este módulo se eliminan los ejercicios incapaces de ser realizados por la persona debido a enfermedades
(defmodule FILTRO_ENFERMEDAD
	(import MAIN ?ALL)
	(import PREGUNTAS ?ALL)
	(export ?ALL)
)


;*************
;* FUNCTIONS *
;*************
; Eliminamos todas las apariciones de esta instancia en la relación Mejora_con de Síntoma
(deffunction elimina-apariciones (?aux2)
	(bind ?sintoma (find-all-instances ((?inst Sintoma)) (not (eq (member ?aux2 ?inst:Mejora_con) FALSE))))
	(loop-for-count (?k 1 (length$ ?sintoma)) do
		(bind ?aux3 (nth$ ?k ?sintoma))
		(bind ?pos (member ?aux2 (send ?aux3 get-Mejora_con)))
		(if (not (eq ?pos FALSE)) then (slot-delete$ ?aux3 Mejora_con ?pos ?pos))
	)
)


; **********
; * REGLAS *
; *********
(defrule filtrarPorEnfermedadEjercicios "Se encarga de filtrar los ejercicios basándose en el dolor"
	(disponibilidad ?)
	?x <- (object(is-a Persona))
	=>
	(bind ?p (send ?x get-Padece))
	(loop-for-count (?i 1 (length$ ?p)) do
		(bind ?aux (nth$ ?i ?p))
		(if (eq (class ?aux) Dolor) then
			(bind ?zona (send ?aux get-Zona_dolor))
			(bind ?ejercicios (find-all-instances ((?inst Ejercicio)) (not (eq (member ?zona ?inst:Ejercita) FALSE))))
			(loop-for-count (?j 1 (length$ ?ejercicios)) do
				(bind ?aux2 (nth$ ?j ?ejercicios))
				(elimina-apariciones ?aux2)
				(send ?aux2 delete)
				)
		)
	)
)

(defrule filtrarPorEnfermedadDeportes "Se encarga de filtrar los deportes basándose en el dolor"
	(disponibilidad ?)
	?x <- (object(is-a Persona))
	=>
	(bind ?p (send ?x get-Padece))
	(loop-for-count (?i 1 (length$ ?p)) do
		(bind ?aux (nth$ ?i ?p))
		(if (eq (class ?aux) Dolor) then
			(bind ?zona (send ?aux get-Zona_dolor))
			(bind ?deportes (find-all-instances ((?inst Deporte)) (not (eq (member ?zona ?inst:Involucra) FALSE))))
			(loop-for-count (?j 1 (length$ ?deportes)) do
				(bind ?aux2 (nth$ ?j ?deportes))
				(elimina-apariciones ?aux2)
				(send ?aux2 delete)
				)
		)
	)
	(assert (filtrado_enfermedad))
	(focus PUNTUA_BORG)
)


; ------------------------------------------------------------------------------------------------------------------------
;																							MÓDULO PUNTUACIÓN BORG
; ------------------------------------------------------------------------------------------------------------------------
; En este módulo se puntúan los ejercicios siguiendo la escala de Borg, coincidiendo con el criterio de la persona y con su edad
(defmodule PUNTUA_BORG
	(import MAIN ?ALL)
	(import PREGUNTAS ?ALL)
	(import FILTRO_ENFERMEDAD ?ALL)
	(export ?ALL)
)

; **********
; * REGLAS *
; *********
(defrule modifica-borg "Modifica los niveles de intensidad de todos los ejercicios en caso de ser necesario"
	(filtrado_enfermedad)
	(iborg ?ind)
	(not (modificado_borg))
	?p <- (object(is-a Persona))
	=>
	; Si la edad de la persona es >= 80, suma 1 a la escala
	(if (>= (send ?p get-Edad) 80) then (bind ?ind (+ ?ind 1)))

	(if (>= ?ind 2) then
		(bind ?offset (- ?ind 1))
		(bind ?ejercicios (find-all-instances ((?inst Ejercicio)) TRUE))
		(bind ?deportes (find-all-instances ((?inst Deporte)) TRUE))
		(loop-for-count (?i 1 (length$ ?ejercicios)) do
			(bind ?aux (nth$ ?i ?ejercicios))
			(bind ?valor_original (send ?aux get-Intensidad))
			(send ?aux put-Intensidad (+ ?valor_original ?offset))
		)
		(loop-for-count (?i 1 (length$ ?deportes)) do
			(bind ?aux (nth$ ?i ?deportes))
			(bind ?valor_original (send ?aux get-Intensidad))
			(send ?aux put-Intensidad (+ ?valor_original ?offset))
		)
	)
	(assert (modificado_borg))
	(focus FILTRO_NIVEL)
)


; ------------------------------------------------------------------------------------------------------------------------
;																							MÓDULO FILTRO NIVEL
; ------------------------------------------------------------------------------------------------------------------------
; En este módulo se eliminan los ejercicios incapaces de ser realizados por la persona debido a su nivel
(defmodule FILTRO_NIVEL
	(import MAIN ?ALL)
	(import PREGUNTAS ?ALL)
	(import PUNTUA_BORG ?ALL)
	(import FILTRO_ENFERMEDAD ?ALL)
	(export ?ALL)
)

(defrule nivelMaximo "Asigna un nivel máximo según la respuesta"
  (modificado_borg)
	?p <- (object(is-a Persona))
	=>
	(bind ?n (send ?p get-Nivel))
  (if (eq ?n sedentario) then
    (assert (nivelMaximo 3.0))
    else (if (eq ?n activo) then
      (assert (nivelMaximo 4.0))
      else (if (eq ?n muy_activo) then
        (assert (nivelMaximo 5.0))
      )
    )
  )
)

(defrule filtrarEjerciciosPorNivel "Filtra los ejercicios según su nivel"
  (modificado_borg)
	(nivelMaximo ?max)
	=>
	(bind ?ejercicios (find-all-instances ((?inst Ejercicio)) (> ?inst:Intensidad ?max)))
	(loop-for-count (?i 1 (length ?ejercicios)) do
		(bind ?todelete (nth$ ?i ?ejercicios))
		(elimina-apariciones ?todelete)
		(send ?todelete delete)
	)
)

(defrule filtrarDeportesPorNivel "Filtra los deportes según su nivel"
  (modificado_borg)
	(nivelMaximo ?max)
	=>
	(bind ?deportes (find-all-instances ((?inst Deporte)) (> ?inst:Intensidad ?max)))
	(loop-for-count (?i 1 (length ?deportes)) do
		(bind ?todelete (nth$ ?i ?deportes))
		(elimina-apariciones ?todelete)
		(send ?todelete delete)
	)
	(assert (modificado_nivel))
	(focus SELECCION)
)


; ------------------------------------------------------------------------------------------------------------------------
;																							MÓDULO SELECCIÓN
; ------------------------------------------------------------------------------------------------------------------------
; En este módulo se acaban de seleccionar las actividades del programa final de entre aquellas que no se han eliminado
(defmodule SELECCION
	(import MAIN ?ALL)
	(import PREGUNTAS ?ALL)
	(import PUNTUA_BORG ?ALL)
	(import FILTRO_ENFERMEDAD ?ALL)
	(import FILTRO_NIVEL ?ALL)
	(export ?ALL)
)

; Definimos un deftemplate que contendrá el nombre de los ejercicios y deportes válidos para ser escogidos
; *************
; * TEMPLATES *
; *************
(deftemplate ejercicios-y-deportes "Lista de ejercicios y deportes válidos"
	(multislot ejercicios (type INSTANCE) (allowed-classes Ejercicio))
	(multislot deportes (type INSTANCE) (allowed-classes Deporte))
)

(deftemplate ejercicios-y-deportes-preferentes "Lista de ejercicios y deportes que estan recomendados para el usuario según su enfermedad"
	(multislot ejercicios-pref (type INSTANCE) (allowed-classes Ejercicio))
	(multislot deportes-pref (type INSTANCE) (allowed-classes Deporte))
)

; **********
; * CLASES *
; **********
; Definimos una clase auxiliar para la asignación de ejercicios y deportes preferentes
(defclass Auxiliar
	(is-a USER)
	(role concrete)
	(multislot ej_aux
		(type INSTANCE)
;+		(allowed-classes Ejercicio)
		(create-accessor read-write))
	(multislot dep_aux
		(type INSTANCE)
		(create-accessor read-write))
)

; Definimos una clase auxiliar para las zonas entrenadas en cada entrenamiento
(defclass Zona_entrenada
	(is-a USER)
	(role concrete)
	(multislot zona
		(type INSTANCE)
		(create-accessor read-write))
)

; Definimos una clase auxiliar donde guardaremos los ejercicios y deportes que nos quedan para asignar a cada sesión
(defclass Ejercicios_y_deportes_disponibles
	(is-a USER)
	(role concrete)
	(multislot ejercicios_pref
		(type INSTANCE))
	(multislot deportes_pref
		(type INSTANCE))
	(multislot ejercicios_val
		(type INSTANCE))
	(multislot deportes_val
		(type INSTANCE))
)

; Definimos una clase para guardar los ejercicios de flexibilidad que ejercitan alguna de las zonas del cuerpo entrenadas
(defclass Flexi_entrenada
	(is-a USER)
	(role concrete)
	(multislot flexi_entrenada
		(type INSTANCE))
	(multislot flexi_no_entrenada
		(type INSTANCE))
)

; *************
; * INSTANCIA *
; *************
; Creamos instancia para la clase Auxiliar
(defrule crea-instancia-aux
	(modificado_nivel)
	=>
	(make-instance aux of Auxiliar)
)

; **********
; * REGLAS *
; **********
(defrule introduce-ejercicios-y-deportes-preferentes "Introduce los ejercicios y deportes a sus deftemplates definidos arriba"
	(modificado_nivel)
	(not (ejercicios-y-deportes-preferentes))
	?x <- (object(is-a Persona))
	?auxiliar <- (object(is-a Auxiliar))
	=>
	(bind ?pref (assert(ejercicios-y-deportes-preferentes)))
	(bind ?p (send ?x get-Padece))
	(loop-for-count (?i 1 (length$ ?p)) do
		(bind ?aux (nth$ ?i ?p))
		(if (not(eq (class ?aux) Dolor)) then
			(bind ?llista (send ?aux get-Mejora_con))
			(loop-for-count (?j 1 (length$ ?llista)) do
				(bind ?aux2 (nth$ ?j ?llista))
				(if (eq(class ?aux2) Deporte) then
					(if (eq (member$ ?aux2 (send ?auxiliar get-dep_aux)) FALSE) then
						(slot-insert$ ?auxiliar dep_aux 1 ?aux2)
					)
					else (if (eq (member$ ?aux2 (send ?auxiliar get-ej_aux)) FALSE) then
								(slot-insert$ ?auxiliar ej_aux 1 ?aux2)
								)
					)
			)
		)
	)
	(modify ?pref (deportes-pref (send ?auxiliar get-dep_aux)) (ejercicios-pref (send ?auxiliar get-ej_aux)))
	(send ?auxiliar delete)
)

(defrule inicialitza-ejercicios-y-deportes "Introduce los ejercicios y deportes a sus deftemplates definidos arriba"
	(modificado_nivel)
	(ejercicios-y-deportes-preferentes)
	(not (carga_hecha))
	?x <- (object(is-a Persona))
	?ej_p <- (ejercicios-y-deportes-preferentes (ejercicios-pref $?ej_pref))
	?dep_p <- (ejercicios-y-deportes-preferentes (deportes-pref $?dep_pref))
	=>
	(bind ?ejerciciodeportes (assert(ejercicios-y-deportes)))
	(bind ?ejv (find-all-instances ((?ej Ejercicio)) (eq (member ?ej $?ej_pref) FALSE)))
	(bind ?ejd (find-all-instances ((?dep Deporte)) (eq (member ?dep $?dep_pref) FALSE)))
	(modify ?ejerciciodeportes (ejercicios ?ejv) (deportes ?ejd))
	(assert (carga_hecha))
)

(defrule escoge-numero-sesiones "Escoge el número de días que se entrena de acuerdo al nivel de la persona y su disponibilidad"
	(carga_hecha)
	(not (dias ?))
	(disponibilidad ?dis)
	?x <- (object(is-a Persona))
	=>
	(bind ?nivel (send ?x get-Nivel))
	(if (eq ?nivel sedentario) then
		(assert (dias 3))
		else (if (eq ?nivel activo) then
			(if (<= ?dis 5) then (assert (dias ?dis))
			else (assert (dias 5)))
		)
		else (if (eq ?nivel muy_activo) then
			(assert (dias ?dis))
		)
	)
)

(defrule crea-sesiones "Vamos creando sesión a sesión"
	(carga_hecha)
	(not (sesiones_creadas))
	(dias ?d)
	(imc ?imc)
	?x <- (object(is-a Persona))
	?programa <- (object(is-a Programa))
	?ej_v <- (ejercicios-y-deportes (ejercicios $?ej_validos))
	?dep_v <- (ejercicios-y-deportes (deportes $?dep_validos))
	?ej_p <- (ejercicios-y-deportes-preferentes (ejercicios-pref $?ej_pref))
	?dep_p <- (ejercicios-y-deportes-preferentes (deportes-pref $?dep_pref))
	=>
	(if (and (eq (length$ $?ej_validos) 0) (eq (length$ $?dep_validos) 0)) then
		(assert (problemas "Lo sentimos, hemos detectado que no se encuentra en condiciones para hacer deporte. Vuelva a intentar cuando se haya recuperado."))
		(focus RESPUESTA)

		; Iteramos creando una sesión para cada día
		else (loop-for-count (?i 1 ?d) do
			(bind ?inst (make-instance (sym-cat s (str-cat ?i)) of Sesion))

			; Definimos el núcleo del entrenamiento, las zonas del cuerpo que se entrenarán y los ejercicios disponibles tanto de ejercicios como de deportes
			(bind ?inst_nucleo (make-instance (sym-cat n (str-cat ?i)) of Nucleo))
			(bind ?zona (make-instance (sym-cat z (str-cat ?i)) of Zona_entrenada))
			(bind ?inst_ej_dep_disp (make-instance (sym-cat edd (str-cat ?i)) of Ejercicios_y_deportes_disponibles))

			; Empezamos poniendo en los ejercicios disponibles para el núcleo los de musculación, equilibrio y aeróbico únicamente
			; Ejercicios preferentes
		  (bind ?ej_pref_musc_nucleo (find-all-instances ((?inst Musculacion)) (not (eq (member ?inst $?ej_pref) FALSE))))
			(bind ?ej_pref_eq_nucleo (find-all-instances ((?inst Equilibrio)) (not (eq (member ?inst $?ej_pref) FALSE))))
			(bind ?ej_pref_ae_nucleo (find-all-instances ((?inst Aerobico)) (not (eq (member ?inst $?ej_pref) FALSE))))
			(send ?inst_ej_dep_disp put-ejercicios_pref ?ej_pref_musc_nucleo)
			(if (> (length$ ?ej_pref_eq_nucleo) 0) then
				(loop-for-count (?i_eq 1 (length$ ?ej_pref_eq_nucleo))
					(bind ?ej_eq_ins (nth$ ?i_eq ?ej_pref_eq_nucleo))
					(slot-insert$ ?inst_ej_dep_disp ejercicios_pref 1 ?ej_eq_ins)
				)
			)
			(if (> (length$ ?ej_pref_ae_nucleo) 0) then
				(loop-for-count (?i_eq 1 (length$ ?ej_pref_ae_nucleo))
					(bind ?ej_ae_ins (nth$ ?i_eq ?ej_pref_ae_nucleo))
					(slot-insert$ ?inst_ej_dep_disp ejercicios_pref 1 ?ej_ae_ins)
				)
			)

			; Ejercicios válidos
			(bind ?ej_val_musc_nucleo (find-all-instances ((?inst Musculacion)) (not (eq (member ?inst $?ej_validos) FALSE))))
			(bind ?ej_val_eq_nucleo (find-all-instances ((?inst Equilibrio)) (not (eq (member ?inst $?ej_validos) FALSE))))
			(bind ?ej_val_ae_nucleo (find-all-instances ((?inst Aerobico)) (not (eq (member ?inst $?ej_validos) FALSE))))
			(send ?inst_ej_dep_disp put-ejercicios_val ?ej_val_musc_nucleo)
			(if (> (length$ ?ej_val_eq_nucleo) 0) then
				(loop-for-count (?i_eq 1 (length$ ?ej_val_eq_nucleo))
					(bind ?ej_eq_ins (nth$ ?i_eq ?ej_val_eq_nucleo))
					(slot-insert$ ?inst_ej_dep_disp ejercicios_val 1 ?ej_eq_ins)
				)
			)
			(if (> (length$ ?ej_val_ae_nucleo) 0) then
				(loop-for-count (?i_eq 1 (length$ ?ej_val_ae_nucleo))
					(bind ?ej_ae_ins (nth$ ?i_eq ?ej_val_ae_nucleo))
					(slot-insert$ ?inst_ej_dep_disp ejercicios_val 1 ?ej_ae_ins)
				)
			)

			(send ?inst_ej_dep_disp put-deportes_pref $?dep_pref)
			(send ?inst_ej_dep_disp put-deportes_val $?dep_validos)

			; Definimos el tiempo que necesita el usuario según su nivel
			(bind ?rand (random))
			(if (eq (send ?x get-Nivel) sedentario) then
				(bind ?total_aux (+ (mod ?rand 20) 1))
				(if (< ?total_aux 12) then (bind ?total_nucleo 12)
					else (bind ?total_nucleo ?total_aux)
					)
				else (if (eq (send ?x get-Nivel) activo) then
						(bind ?total_aux (+ (mod ?rand 45) 1))
						(if (< ?total_aux 20) then (bind ?total_nucleo 20)
							else (bind ?total_nucleo ?total_aux)
							)
						)
				else (if (eq (send ?x get-Nivel) muy_activo) then
						(bind ?total_aux (+ (mod ?rand 60) 1))
						(if (< ?total_aux 45) then (bind ?total_nucleo 45)
							else (bind ?total_nucleo ?total_aux)
							)
						)
			)
			; Pasamos a segundos
			(bind ?total_nucleo (* ?total_nucleo 60))

			; Miramos al azar si se escoge deporte o ejercicios
			(bind ?dep (mod (random) 2))
			; Cogeremos un deporte si pasan 2 cosas: ha tocado 0 y hay algún deporte disponible en válidos o preferentes, o bien si están vacías las dos listas de ejercicios y alguna de deporte no
			(if (or (and (eq ?dep 0) (or (not (eq (length$ (send ?inst_ej_dep_disp get-deportes_pref)) 0)) (not (eq (length$ (send ?inst_ej_dep_disp get-deportes_val)) 0)))) (and (eq (length$ (send ?inst_ej_dep_disp get-ejercicios_pref)) 0) (eq (length$ (send ?inst_ej_dep_disp get-ejercicios_val)) 0) (or (not (eq (length$ (send ?inst_ej_dep_disp get-deportes_pref)) 0)) (not (eq (length$ (send ?inst_ej_dep_disp get-deportes_val)) 0))))) then
				; Miramos primero si tenemos deportes preferentes disponibles
				(if (not (eq (length$ (send ?inst_ej_dep_disp get-deportes_pref)) 0)) then
					(bind ?deporte (nth$ (+ (mod (random) (length$ (send ?inst_ej_dep_disp get-deportes_pref))) 1) (send ?inst_ej_dep_disp get-deportes_pref)))
					else (bind ?deporte (nth$ (+ (mod (random) (length$ (send ?inst_ej_dep_disp get-deportes_val))) 1) (send ?inst_ej_dep_disp get-deportes_val)))
					; En estos dos casos (asignación de un deporte) no nos importa el hecho de borrar, ya que sólo usamos un deporte por sesión
				)
				(bind ?inst_d (make-instance (sym-cat d (str-cat ?i)) of Entrenamiento))
				(send ?inst_d put-Tiene ?deporte)
				(send ?inst_d put-Tiempo ?total_nucleo)
				; Añadimos las zonas entrenadas por ese deporte
				(send ?zona put-zona (send ?deporte get-Involucra))
				(slot-insert$ ?inst_nucleo Compuesto_por 1 ?inst_d)
				(send ?inst_nucleo put-Duracion_etapa ?total_nucleo)


				; Caso en que podamos asignar ejercicios (mientras no lleguemos al tiempo mínimo y queden ejercicios por asignar)
				else
					(bind ?tiempo_act 0)
					(bind ?contador 0)

					; Determinamos repeticiones según el nivel
					(if (eq (send ?x get-Nivel) sedentario) then (bind ?repes 8)
						else (if (eq (send ?x get-Nivel) activo) then (bind ?repes 12))
						else (if (eq (send ?x get-Nivel) muy_activo) then (bind ?repes 15))
					)

					; En caso de que el usuario tenga sobrepeso, asignaremos siempre primero un ejercicio aeróbico (en caso de que pueda realizarlo)
					(if (eq ?imc "Sobrepeso") then
						(bind ?cardio_sobre (find-all-instances ((?inst Aerobico)) (or (not (eq (member ?inst $?ej_validos) FALSE)) (not (eq (member ?inst $?ej_pref) FALSE)))))
						(if (> (length$ ?cardio_sobre) 0) then
								(bind ?ejercicio (nth$ (+ (mod (random) (length$ ?cardio_sobre)) 1) ?cardio_sobre))
								(bind ?inst_e (make-instance (sym-cat e (str-cat 0) (str-cat ?contador)) of Entrenamiento))
								(send ?inst_e put-Tiene ?ejercicio)
								(send ?inst_e put-Tiempo (* 20 60))
								(bind ?tiempo_act (+ ?tiempo_act (* 20 60)))

								; Añadimos las zonas entrenadas por el ejercicio a zona
								(bind ?ej_zonas (send ?ejercicio get-Ejercita))
								(loop-for-count (?j 1 (length ?ej_zonas)) do
									(bind ?z_particular (nth$ ?j ?ej_zonas))
									; Si la zona entrenada no aparece, la añadimos
									(if (eq (member ?z_particular (send ?zona get-zona)) FALSE) then
										(slot-insert$ ?zona zona 1 ?z_particular)
									)
								)
								(bind ?contador (+ ?contador 1))
								(slot-insert$ ?inst_nucleo Compuesto_por 1 ?inst_e)

								; Borramos el ejercicio recién añadido
								(bind ?pos_borrar (member ?ejercicio (send ?inst_ej_dep_disp get-ejercicios_pref)))
								(if (eq ?pos_borrar FALSE) then (bind ?pos_borrar (member ?ejercicio (send ?inst_ej_dep_disp get-ejercicios_val))))
								(slot-delete$ ?inst_ej_dep_disp ejercicios_pref ?pos_borrar ?pos_borrar)
						)
					)

					(while (and (< ?tiempo_act ?total_nucleo) (or (not (eq (length$ (send ?inst_ej_dep_disp get-ejercicios_pref)) 0)) (not (eq (length$ (send ?inst_ej_dep_disp get-ejercicios_val)) 0)))) do
						; En caso de tener ejercicios preferidos aún disponibles para asignar
						(if (not (eq (length$ (send ?inst_ej_dep_disp get-ejercicios_pref)) 0)) then
							(bind ?ejercicio (nth$ (+ (mod (random) (length$ (send ?inst_ej_dep_disp get-ejercicios_pref))) 1) (send ?inst_ej_dep_disp get-ejercicios_pref)))
							(bind ?inst_e (make-instance (sym-cat e (str-cat ?i) (str-cat ?contador)) of Entrenamiento))
							(send ?inst_e put-Tiene ?ejercicio)
							(if (eq (class ?ejercicio) Musculacion) then
								(send ?inst_e put-Series 2)
								(send ?inst_e put-Repeticiones ?repes)
								(bind ?tiempo_act (+ ?tiempo_act 120))		; Añadimos 2 minutos por cada ejercicio (su duración)
								else (if (eq (class ?ejercicio) Aerobico) then (send ?inst_e put-Tiempo (* 20 60)) (bind ?tiempo_act (+ ?tiempo_act (* 20 60))))
								else (if (eq (class ?ejercicio) Flexibilidad) then (send ?inst_e put-Tiempo 30) (send ?inst_e put-Series 2) (bind ?tiempo_act (+ ?tiempo_act 120)))
								else (if (eq (class ?ejercicio) Equilibrio) then (send ?inst_e put-Repeticiones ?repes) (send ?inst_e put-Series 2) (bind ?tiempo_act (+ ?tiempo_act 120)))
							)
							; Añadimos las zonas entrenadas por el ejercicio a zona
							(bind ?ej_zonas (send ?ejercicio get-Ejercita))
							(loop-for-count (?j 1 (length ?ej_zonas)) do
								(bind ?z_particular (nth$ ?j ?ej_zonas))
								; Si la zona entrenada no aparece, la añadimos
								(if (eq (member ?z_particular (send ?zona get-zona)) FALSE) then
									(slot-insert$ ?zona zona 1 ?z_particular)
								)
							)
							(bind ?contador (+ ?contador 1))
							(slot-insert$ ?inst_nucleo Compuesto_por 1 ?inst_e)

							; Borramos el ejercicio recién añadido
							(bind ?pos_borrar (member ?ejercicio (send ?inst_ej_dep_disp get-ejercicios_pref)))
							(slot-delete$ ?inst_ej_dep_disp ejercicios_pref ?pos_borrar ?pos_borrar)

							; En caso de no tener ejercicios preferidos para asignar pero si ejercicios válidos
							else (if (not (eq (length$ (send ?inst_ej_dep_disp get-ejercicios_val)) 0)) then
								(bind ?ejercicio (nth$ (+ (mod (random) (length$ (send ?inst_ej_dep_disp get-ejercicios_val))) 1) (send ?inst_ej_dep_disp get-ejercicios_val)))
								(bind ?inst_e (make-instance (sym-cat e (str-cat ?i) (str-cat ?contador)) of Entrenamiento))
								(send ?inst_e put-Tiene ?ejercicio)
								(if (eq (class ?ejercicio) Musculacion) then
									(send ?inst_e put-Series 2)
									(send ?inst_e put-Repeticiones ?repes)
									(bind ?tiempo_act (+ ?tiempo_act 120))		; Añadimos 2 minutos por cada ejercicio (su duración)
									else (if (eq (class ?ejercicio) Aerobico) then (send ?inst_e put-Tiempo (* 20 60)) (bind ?tiempo_act (+ ?tiempo_act (* 20 60))))
									else (if (eq (class ?ejercicio) Flexibilidad) then (send ?inst_e put-Tiempo 30) (send ?inst_e put-Series 2) (bind ?tiempo_act (+ ?tiempo_act 120)))
									else (if (eq (class ?ejercicio) Equilibrio) then (send ?inst_e put-Repeticiones ?repes) (send ?inst_e put-Series 2) (bind ?tiempo_act (+ ?tiempo_act 120)))
								)
								; Añadimos las zonas entrenadas por el ejercicio a zona
								(bind ?ej_zonas (send ?ejercicio get-Ejercita))
								(loop-for-count (?j 1 (length ?ej_zonas)) do
									(bind ?z_particular (nth$ ?j ?ej_zonas))
									; Si la zona entrenada no aparece, la añadimos
									(if (eq (member ?z_particular (send ?zona get-zona)) FALSE) then
										(slot-insert$ ?zona zona 1 ?z_particular)
									)
								)
								(bind ?contador (+ ?contador 1))
								(slot-insert$ ?inst_nucleo Compuesto_por 1 ?inst_e)

								; Borramos el ejercicio recién añadido
								(bind ?pos_borrar (member ?ejercicio (send ?inst_ej_dep_disp get-ejercicios_val)))
								(slot-delete$ ?inst_ej_dep_disp ejercicios_val ?pos_borrar ?pos_borrar)
						)
					)
				)
				(send ?inst_nucleo put-Duracion_etapa ?tiempo_act)
			)

			; Añadimos el núcleo a la sesión
			(send ?inst put-Sigue_con ?inst_nucleo)

			; Actualizamos el tiempo total de la sesión con el tiempo del núcleo
			(send ?inst put-Duracion_sesion (send ?inst_nucleo get-Duracion_etapa))


			; Introducimos Calentamiento (5 minutos de bici o andar si puede el usuario, seguido de 5 minutos de ejercicios de flexibilidad)
			(bind ?contador 0)
			(bind ?inst_calentamiento (make-instance (sym-cat c (str-cat ?i)) of Calentamiento))
			; Cogemos todas las instancias de ejercicios aeróbicos que el usuario pueda realizar
			(bind ?ejercicios_a (find-all-instances ((?inst Aerobico)) (or (not (eq (member ?inst $?ej_validos) FALSE)) (not (eq (member ?inst $?ej_pref) FALSE)))))
			; Cogemos todas las instancias de ejercicios de flexibilidad que el usuario pueda realizar
			(bind ?ejercicios_f (find-all-instances ((?inst Flexibilidad)) (or (not (eq (member ?inst $?ej_validos) FALSE)) (not (eq (member ?inst $?ej_pref) FALSE)))))

			(bind ?tiempo_actual 0)
			(if (not(eq (length$ ?ejercicios_a) 0)) then
				(bind ?ej_a (nth$ (+ (mod (random) (length$ ?ejercicios_a)) 1) ?ejercicios_a))
				(bind ?inst_e (make-instance (sym-cat ec (str-cat ?i) (str-cat ?contador)) of Entrenamiento))
				(send ?inst_e put-Tiempo (* 5 60))
				(send ?inst_e put-Tiene ?ej_a)
				(slot-insert$ ?inst_calentamiento Compuesto_por 1 ?inst_e)
				(bind ?tiempo_actual (+ ?tiempo_actual (* 5 60)))
				(bind ?contador (+ ?contador 1))
			)

			(if (> (length$ ?ejercicios_f) 0) then
				; Hacemos una primera pasada para guardar los ejercicios de flexibilidad que ejercitan alguna de las zonas entrenadas
				(bind ?f_e (make-instance (sym-cat f (str-cat ?i) (str-cat ?i)) of Flexi_entrenada))
				(loop-for-count (?ind 1 (length$ ?ejercicios_f))
					(bind ?ej_f (nth$ ?ind ?ejercicios_f))
					(bind ?encontrado FALSE)
					(bind ?l 1)
					(while (and (<= ?l (length$ (send ?ej_f get-Ejercita))) (eq ?encontrado FALSE))
						(bind ?z_ej (nth$ ?l (send ?ej_f get-Ejercita)))
						(if (not (eq (member ?z_ej (send ?zona get-zona)) FALSE)) then (bind ?encontrado TRUE))
						(bind ?l (+ ?l 1))
					)
					(if (eq ?encontrado TRUE) then
						(slot-insert$ ?f_e flexi_entrenada 1 ?ej_f)
						else (slot-insert$ ?f_e flexi_no_entrenada 1 ?ej_f)
					)
				)

				(while (and (< ?tiempo_actual (* 10 60)) (or (> (length$ (send ?f_e get-flexi_entrenada)) 0) (> (length$ (send ?f_e get-flexi_no_entrenada)) 0))) do
					(if (> (length$ (send ?f_e get-flexi_entrenada)) 0) then
						(bind ?pos_al (+ (mod (random) (length$ (send ?f_e get-flexi_entrenada))) 1))
						(bind ?ej_f (nth$ ?pos_al (send ?f_e get-flexi_entrenada)))
						(bind ?inst_e (make-instance (sym-cat ec (str-cat ?i) (str-cat ?contador)) of Entrenamiento))
						(send ?inst_e put-Tiempo 30)
						(send ?inst_e put-Series 2)
						(send ?inst_e put-Tiene ?ej_f)
						(slot-insert$ ?inst_calentamiento Compuesto_por 1 ?inst_e)
						(bind ?contador (+ ?contador 1))
						(bind ?tiempo_actual (+ ?tiempo_actual 120))
						(bind ?m (member ?ej_f (send ?f_e get-flexi_entrenada)))
						(slot-delete$ ?f_e flexi_entrenada ?m ?m)

						else (if (> (length$ (send ?f_e get-flexi_no_entrenada)) 0) then
							(bind ?ej_f (nth$ (+ (mod (random) (length$ (send ?f_e get-flexi_no_entrenada))) 1) (send ?f_e get-flexi_no_entrenada)))
							(bind ?inst_e (make-instance (sym-cat ec (str-cat ?i) (str-cat ?contador)) of Entrenamiento))
							(send ?inst_e put-Tiempo 30)
							(send ?inst_e put-Series 2)
							(send ?inst_e put-Tiene ?ej_f)
							(slot-insert$ ?inst_calentamiento Compuesto_por 1 ?inst_e)
							(bind ?contador (+ ?contador 1))
							(bind ?tiempo_actual (+ ?tiempo_actual 120))
							(bind ?m (member ?ej_f (send ?f_e get-flexi_no_entrenada)))
							(slot-delete$ ?f_e flexi_no_entrenada ?m ?m)
							)
					)
				)
				; Eliminamos la instancia
				(send ?f_e delete)
			)

			(send ?inst_calentamiento put-Duracion_etapa ?tiempo_actual)

			; Añadimos el calentamiento a la sesión
			(send ?inst put-Empieza_con ?inst_calentamiento)

			; Actualizamos el tiempo total de la sesión con el tiempo del calentamiento
			(send ?inst put-Duracion_sesion (+ (send ?inst get-Duracion_sesion) (send ?inst_calentamiento get-Duracion_etapa)))


			; Introducimos vuelta al reposo (5 minutos de bici o andar si puede el usuario, seguido de 5 minutos de ejercicios de flexibilidad)
			(bind ?inst_vr (make-instance (sym-cat v (str-cat ?i)) of Vuelta_reposo))
			; Introducimos Calentamiento (5 minutos de bici o andar si puede el usuario, seguido de 5 minutos de ejercicios de flexibilidad)
			(bind ?contador 0)
			(bind ?tiempo_actual 0)
			(if (not(eq (length$ ?ejercicios_a) 0)) then
				(bind ?ej_a (nth$ (+ (mod (random) (length$ ?ejercicios_a)) 1) ?ejercicios_a))
				(bind ?inst_e (make-instance (sym-cat ev (str-cat ?i) (str-cat ?contador)) of Entrenamiento))
				(send ?inst_e put-Tiempo (* 5 60))
				(send ?inst_e put-Tiene ?ej_a)
				(slot-insert$ ?inst_vr Compuesto_por 1 ?inst_e)
				(bind ?tiempo_actual (+ ?tiempo_actual (* 5 60)))
				(bind ?contador (+ ?contador 1))
			)

			(if (> (length$ ?ejercicios_f) 0) then
				; Hacemos una primera pasada para guardar los ejercicios de flexibilidad que ejercitan alguna de las zonas entrenadas
				(bind ?f_e2 (make-instance (sym-cat f (str-cat ?i)) of Flexi_entrenada))
				(loop-for-count (?ind 1 (length$ ?ejercicios_f))
				(bind ?ej_f (nth$ ?ind ?ejercicios_f))
				(bind ?encontrado FALSE)
				(bind ?l 1)
				(while (and (<= ?l (length$ (send ?ej_f get-Ejercita))) (eq ?encontrado FALSE))
					(bind ?z_ej (nth$ ?l (send ?ej_f get-Ejercita)))
					(if (not (eq (member ?z_ej (send ?zona get-zona)) FALSE)) then (bind ?encontrado TRUE))
					(bind ?l (+ ?l 1))
				)
				(if (eq ?encontrado TRUE) then
					(slot-insert$ ?f_e2 flexi_entrenada 1 ?ej_f)
					else (slot-insert$ ?f_e2 flexi_no_entrenada 1 ?ej_f)
				)
			)

				(while (and (< ?tiempo_actual (* 10 60)) (or (> (length$ (send ?f_e2 get-flexi_entrenada)) 0) (> (length$ (send ?f_e2 get-flexi_no_entrenada)) 0))) do
					(if (> (length$ (send ?f_e2 get-flexi_entrenada)) 0) then
						(bind ?pos_al (+ (mod (random) (length$ (send ?f_e2 get-flexi_entrenada))) 1))
						(bind ?ej_f (nth$ ?pos_al (send ?f_e2 get-flexi_entrenada)))
						(bind ?inst_e (make-instance (sym-cat ev (str-cat ?i) (str-cat ?contador)) of Entrenamiento))
						(send ?inst_e put-Tiempo 30)
						(send ?inst_e put-Series 2)
						(send ?inst_e put-Tiene ?ej_f)
						(slot-insert$ ?inst_vr Compuesto_por 1 ?inst_e)
						(bind ?contador (+ ?contador 1))
						(bind ?tiempo_actual (+ ?tiempo_actual 120))
						(bind ?m (member ?ej_f (send ?f_e2 get-flexi_entrenada)))
						(slot-delete$ ?f_e2 flexi_entrenada ?m ?m)

						else (if (> (length$ (send ?f_e2 get-flexi_no_entrenada)) 0) then
							(bind ?ej_f (nth$ (+ (mod (random) (length$ (send ?f_e2 get-flexi_no_entrenada))) 1) (send ?f_e2 get-flexi_no_entrenada)))
							(bind ?inst_e (make-instance (sym-cat ev (str-cat ?i) (str-cat ?contador)) of Entrenamiento))
							(send ?inst_e put-Tiempo 30)
							(send ?inst_e put-Series 2)
							(send ?inst_e put-Tiene ?ej_f)
							(slot-insert$ ?inst_vr Compuesto_por 1 ?inst_e)
							(bind ?contador (+ ?contador 1))
							(bind ?tiempo_actual (+ ?tiempo_actual 120))
							(bind ?m (member ?ej_f (send ?f_e2 get-flexi_no_entrenada)))
							(slot-delete$ ?f_e2 flexi_no_entrenada ?m ?m)
							)
					)
				)
				; Eliminamos la instancia
				(send ?f_e2 delete)
			)


			(send ?inst_vr put-Duracion_etapa ?tiempo_actual)

			; Añadimos la vuelta al reposo a la sesión
			(send ?inst put-Termina_con ?inst_vr)

			; Actualizamos el tiempo total de la sesión con el tiempo del calentamiento
			(send ?inst put-Duracion_sesion (+ (send ?inst get-Duracion_sesion) (send ?inst_vr get-Duracion_etapa)))

			; Unimos sesión a programa
			(slot-insert$ ?programa Formado_por 1 ?inst)

			; Eliminamos la instancia de Zona_entrenada y Ejercicios_y_deportes_disponibles para liberar espacio, ya que no vuelven a ser necesarias
			(send ?zona delete)
			(send ?inst_ej_dep_disp delete)
		)
	)
	(assert (sesiones_creadas))
	(focus RESPUESTA)
)


; ------------------------------------------------------------------------------------------------------------------------
;																							MÓDULO RESPUESTA
; ------------------------------------------------------------------------------------------------------------------------
; En este módulo se muestra el programa preparado, o un mensaje si no se ha podido programar ninguno
(defmodule RESPUESTA
	(import MAIN ?ALL)
	(import PREGUNTAS ?ALL)
	(import PUNTUA_BORG ?ALL)
	(import FILTRO_NIVEL ?ALL)
	(import SELECCION ?ALL)
	(export ?ALL)
)

(defrule print-problema "Imprime un mensaje si ha habido algún problema"
  (declare (salience 100))
  (problemas ?item)
  =>
	(printout t crlf "**************************************************************************************************************" crlf crlf)
  ;(printout t crlf crlf)
  (format t " %s%n%n%n" ?item)
  (halt)
)

(defrule print-respuesta "Imprime la respuesta con el programa del entrenamiento"
	(sesiones_creadas)
	(dias ?d)
	(not (problemas ?))
  ?programa <- (object(is-a Programa))
	?x <- (object(is-a Persona))
  =>
	(printout t crlf "**************************************************************************************************************" crlf crlf)
	(printout t "Bienvenido/a " (send ?x get-Nombre_persona) ", basandonos en su condicion, le hemos preparado el siguiente programa de " ?d " dias: " crlf)
	(bind ?sesiones (send ?programa get-Formado_por))
	(if (eq ?d 3) then (bind ?lista_dias (create$ Lunes Miercoles Viernes))
		else (if (eq ?d 4) then (bind ?lista_dias (create$ Lunes Miercoles Viernes Domingo))
			else (if (eq ?d 5) then (bind ?lista_dias (create$ Lunes Martes Miercoles Jueves Viernes))
				else (if (eq ?d 6) then (bind ?lista_dias (create$ Lunes Martes Miercoles Jueves Viernes Sabado))
					else (if (eq ?d 7) then (bind ?lista_dias (create$ Lunes Martes Miercoles Jueves Viernes Sabado Domingo))
					)
				)
			)
		)
	)
  (loop-for-count (?i 1 ?d) do
		(printout t crlf)
		(bind ?nombre_dia (nth$ ?i ?lista_dias))
    (bind ?sesion (nth$ ?i ?sesiones))
		(printout t "# " ?nombre_dia ": sesion de aproximadamente " (div (send ?sesion get-Duracion_sesion) 60)" minutos." crlf)

    (bind ?cal (send ?sesion get-Empieza_con))
		(printout t "     Calentamiento (" (div (send ?cal get-Duracion_etapa) 60) " minutos)" crlf)
    (bind ?ents_cal (send ?cal get-Compuesto_por))
		; Hacemos el recorrido al revés para mostrar primero el cardio
		(bind ?j (length ?ents_cal))
		(while (not (eq ?j 0)) do
      (bind ?ent_cal (nth$ ?j ?ents_cal))
      (bind ?act_cal (send ?ent_cal get-Tiene))

      (if (eq (class ?act_cal) Aerobico) then
        (printout t "        " "- " (send ?act_cal get-Nombre_ej_aerobico) crlf)
        (printout t "        " "  " "Duracion: " (div (send ?ent_cal get-Tiempo) 60) " minutos" crlf)
				(bind ?material (send ?act_cal get-Requiere))
				(if (eq (length$ ?material) 0) then
					(printout t "        " "  " "Material: (ninguno)" crlf)
					else
						(printout t "        " "  " "Material: " )
						(loop-for-count (?k 1 (length ?material)) do
							(bind ?nombre_material (nth$ ?k ?material))
							(printout t (send ?nombre_material get-Tipo_material))
							(if (not (eq ?k (length$ ?material))) then (printout t ", "))
						)
						(printout t crlf)
				)
      )

      (if (eq (class ?act_cal) Musculacion) then
        (printout t "        " "- " (send ?act_cal get-Nombre_ej_musculacion) crlf)
        (printout t "        " "  " "Duracion: " (send ?ent_cal get-Series) " series de " (send ?ent_cal get-Repeticiones) " repeticiones" crlf)
				(bind ?material (send ?act_cal get-Requiere))
				(if (eq (length$ ?material) 0) then
					(printout t "        " "  " "Material: (ninguno)" crlf)
					else
						(printout t "        " "  " "Material: " )
						(loop-for-count (?k 1 (length ?material)) do
							(bind ?nombre_material (nth$ ?k ?material))
							(printout t (send ?nombre_material get-Tipo_material))
							(if (not (eq ?k (length$ ?material))) then (printout t ", "))
						)
						(printout t crlf)
				)
      )

      (if (eq (class ?act_cal) Equilibrio) then
        (printout t "        " "- " (send ?act_cal get-Nombre_ej_eq) crlf)
        (printout t "        " "  " "Duracion: " (send ?ent_cal get-Series) " series de " (send ?ent_cal get-Repeticiones) " repeticiones" crlf)
				(bind ?material (send ?act_cal get-Requiere))
				(if (eq (length$ ?material) 0) then
					(printout t "        " "  " "Material: (ninguno)" crlf)
					else
						(printout t "        " "  " "Material: " )
						(loop-for-count (?k 1 (length ?material)) do
							(bind ?nombre_material (nth$ ?k ?material))
							(printout t (send ?nombre_material get-Tipo_material))
							(if (not (eq ?k (length$ ?material))) then (printout t ", "))
						)
						(printout t crlf)
				)
      )

      (if (eq (class ?act_cal) Flexibilidad) then
        (printout t "        " "- " (send ?act_cal get-Nombre_ej_flexi) crlf)
        (printout t "        " "  " "Duracion: " (send ?ent_cal get-Series) " series de " (send ?ent_cal get-Tiempo) " segundos" crlf)
				(bind ?material (send ?act_cal get-Requiere))
				(if (eq (length$ ?material) 0) then
					(printout t "        " "  " "Material: (ninguno)" crlf)
					else
						(printout t "        " "  " "Material: " )
						(loop-for-count (?k 1 (length ?material)) do
							(bind ?nombre_material (nth$ ?k ?material))
							(printout t (send ?nombre_material get-Tipo_material))
							(if (not (eq ?k (length$ ?material))) then (printout t ", "))
						)
						(printout t crlf)
				)
      )

      (if (eq (class ?act_cal) Deporte) then
        (printout t "        "  "- " (send ?act_cal get-Nombre_deporte) crlf)
        (printout t "        " "  " "Duracion: " (div (send ?ent_cal get-Tiempo) 60)" minutos" crlf)
      )
			(printout t crlf)
			(bind ?j (- ?j 1))
    )

		(printout t crlf)
    (bind ?nuc (send ?sesion get-Sigue_con))
		(printout t "     Sesion (" (div (send ?nuc get-Duracion_etapa) 60) " minutos)" crlf)
    (bind ?ents_nuc (send ?nuc get-Compuesto_por))
    (loop-for-count (?j 1 (length ?ents_nuc)) do
      (bind ?ent_nuc (nth$ ?j ?ents_nuc))
      (bind ?act_nuc (send ?ent_nuc get-Tiene))

      (if (eq (class ?act_nuc) Aerobico) then
        (printout t "        " "- " (send ?act_nuc get-Nombre_ej_aerobico) crlf)
        (printout t "        " "  " "Duracion: " (div (send ?ent_nuc get-Tiempo) 60)" minutos" crlf)
				(bind ?material (send ?act_nuc get-Requiere))
				(if (eq (length$ ?material) 0) then
					(printout t "        " "  " "Material: (ninguno)" crlf)
					else
						(printout t "        " "  " "Material: " )
						(loop-for-count (?k 1 (length ?material)) do
							(bind ?nombre_material (nth$ ?k ?material))
							(printout t (send ?nombre_material get-Tipo_material))
							(if (not (eq ?k (length$ ?material))) then (printout t ", "))
						)
						(printout t crlf)
				)
      )

      (if (eq (class ?act_nuc) Musculacion) then
        (printout t "        " "- " (send ?act_nuc get-Nombre_ej_musculacion) crlf)
        (printout t "        " "  " "Duracion: " (send ?ent_nuc get-Series) " series de " (send ?ent_nuc get-Repeticiones) " repeticiones" crlf)
				(bind ?material (send ?act_nuc get-Requiere))
				(if (eq (length$ ?material) 0) then
					(printout t "        " "  " "Material: (ninguno)" crlf)
					else
						(printout t "        " "  " "Material: " )
						(loop-for-count (?k 1 (length ?material)) do
							(bind ?nombre_material (nth$ ?k ?material))
							(printout t (send ?nombre_material get-Tipo_material))
							(if (not (eq ?k (length$ ?material))) then (printout t ", "))
						)
						(printout t crlf)
				)
      )

      (if (eq (class ?act_nuc) Equilibrio) then
        (printout t "        " "- " (send ?act_nuc get-Nombre_ej_eq) crlf)
        (printout t "        " "  " "Duracion: " (send ?ent_nuc get-Series) " series de " (send ?ent_nuc get-Repeticiones) " repeticiones" crlf)
				(bind ?material (send ?act_nuc get-Requiere))
				(if (eq (length$ ?material) 0) then
					(printout t "        " "  " "Material: (ninguno)" crlf)
					else
						(printout t "        " "  " "Material: " )
						(loop-for-count (?k 1 (length ?material)) do
							(bind ?nombre_material (nth$ ?k ?material))
							(printout t (send ?nombre_material get-Tipo_material))
							(if (not (eq ?k (length$ ?material))) then (printout t ", "))
						)
						(printout t crlf)
				)
      )

      (if (eq (class ?act_nuc) Flexibilidad) then
        (printout t "        " "- " (send ?act_nuc get-Nombre_ej_flexi) crlf)
        (printout t "        " "  " "Duracion: " (send ?ent_nuc get-Series) " series de " (send ?ent_nuc get-Tiempo) " segundos" crlf)
				(bind ?material (send ?act_nuc get-Requiere))
				(if (eq (length$ ?material) 0) then
					(printout t "        " "  " "Material: (ninguno)" crlf)
					else
						(printout t "        " "  " "Material: " )
						(loop-for-count (?k 1 (length ?material)) do
							(bind ?nombre_material (nth$ ?k ?material))
							(printout t (send ?nombre_material get-Tipo_material))
							(if (not (eq ?k (length$ ?material))) then (printout t ", "))
						)
						(printout t crlf)
				)
      )

      (if (eq (class ?act_nuc) Deporte) then
        (printout t "        " "- " (send ?act_nuc get-Nombre_deporte) crlf)
        (printout t "        " "  " "Duracion: " (div (send ?ent_nuc get-Tiempo) 60)" minutos" crlf)
      )

			(printout t crlf)
    )

		(printout t crlf)
    (bind ?rep (send ?sesion get-Termina_con))
		(printout t "     Vuelta al reposo (" (div (send ?rep get-Duracion_etapa) 60)" minutos)" crlf)
    (bind ?ents_rep (send ?rep get-Compuesto_por))
		; Hacemos el recorrido al revés para mostrar primero el cardio
		(bind ?j (length ?ents_rep))
		(while (not (eq ?j 0)) do
      (bind ?ent_rep (nth$ ?j ?ents_rep))
      (bind ?act_rep (send ?ent_rep get-Tiene))

      (if (eq (class ?act_rep) Aerobico) then
        (printout t "        " "- " (send ?act_rep get-Nombre_ej_aerobico) crlf)
        (printout t "        " "  " "Duracion: " (div (send ?ent_rep get-Tiempo) 60)" minutos" crlf)
				(bind ?material (send ?act_rep get-Requiere))
				(if (eq (length$ ?material) 0) then
					(printout t "        " "  " "Material: (ninguno)" crlf)
					else
						(printout t "        " "  " "Material: " )
						(loop-for-count (?k 1 (length ?material)) do
							(bind ?nombre_material (nth$ ?k ?material))
							(printout t (send ?nombre_material get-Tipo_material))
							(if (not (eq ?k (length$ ?material))) then (printout t ", "))
						)
						(printout t crlf)
				)
      )

      (if (eq (class ?act_rep) Musculacion) then
        (printout t "        " "- " (send ?act_rep get-Nombre_ej_musculacion) crlf)
        (printout t "        " "  " "Duracion: " (send ?ent_rep get-Series) " series de " (send ?ent_rep get-Repeticiones) " repeticiones" crlf)
				(bind ?material (send ?act_rep get-Requiere))
				(if (eq (length$ ?material) 0) then
					(printout t "        " "  " "Material: (ninguno)" crlf)
					else
						(printout t "        " "  " "Material: " )
						(loop-for-count (?k 1 (length ?material)) do
							(bind ?nombre_material (nth$ ?k ?material))
							(printout t (send ?nombre_material get-Tipo_material))
							(if (not (eq ?k (length$ ?material))) then (printout t ", "))
						)
						(printout t crlf)
				)
      )

      (if (eq (class ?act_rep) Equilibrio) then
        (printout t "        " "- " (send ?act_rep get-Nombre_ej_eq) crlf)
        (printout t "        " "  " "Duracion: " (send ?ent_rep get-Series) " series de " (send ?ent_rep get-Repeticiones) " repeticiones" crlf)
				(bind ?material (send ?act_rep get-Requiere))
				(if (eq (length$ ?material) 0) then
					(printout t "        " "  " "Material: (ninguno)" crlf)
					else
						(printout t "        " "  " "Material: " )
						(loop-for-count (?k 1 (length ?material)) do
							(bind ?nombre_material (nth$ ?k ?material))
							(printout t (send ?nombre_material get-Tipo_material))
							(if (not (eq ?k (length$ ?material))) then (printout t ", "))
						)
						(printout t crlf)
				)
      )

      (if (eq (class ?act_rep) Flexibilidad) then
        (printout t "        " "- " (send ?act_rep get-Nombre_ej_flexi) crlf)
        (printout t "        " "  " "Duracion: " (send ?ent_rep get-Series) " series de " (send ?ent_rep get-Tiempo) " segundos" crlf)
				(bind ?material (send ?act_rep get-Requiere))
				(if (eq (length$ ?material) 0) then
					(printout t "        " "  " "Material: (ninguno)" crlf)
					else
						(printout t "        " "  " "Material: " )
						(loop-for-count (?k 1 (length ?material)) do
							(bind ?nombre_material (nth$ ?k ?material))
							(printout t (send ?nombre_material get-Tipo_material))
							(if (not (eq ?k (length$ ?material))) then (printout t ", "))
						)
						(printout t crlf)
				)
      )

      (if (eq (class ?act_rep) Deporte) then
        (printout t "        " "- " (send ?act_rep get-Nombre_deporte) crlf)
        (printout t "        " "  " "Duracion: " (div (send ?ent_rep get-Tiempo) 60) " minutos" crlf)
      )

			(bind ?j (- ?j 1))
			(printout t crlf)
    )
  )
)
