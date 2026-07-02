
extends Control

@onready var barra_cordura = $PanelContainer/Cordura    # Ajusta el nombre si cambiaste el Panel
@onready var barra_calamidad = $PanelContainer/Calamidad

func _ready():
	Dialogic.start("Departamento")
	

func _on_dialogic_variable_changed(_info: Dictionary):
	_actualizar_barras()

func _actualizar_barras():
	# Usamos get_variable para obtener el valor de forma segura sin romper el juego
	var cordura_val = Dialogic.VAR.get_variable("Cordura")
	var calamidad_val = Dialogic.VAR.get_variable("Calamidad")
	
	if cordura_val != null:
		barra_cordura.value = float(cordura_val)
	if calamidad_val != null:
		barra_calamidad.value = float(calamidad_val)
