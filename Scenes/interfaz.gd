extends Control

@onready var barra_cordura = $CanvasLayer/PanelContainer/Cordura
@onready var barra_calamidad = $CanvasLayer/PanelContainer/Calamidad

func _process(_delta):
	# Revisamos directamente el estado de Dialogic en cada instante del juego
	if Dialogic.VAR:
		if Dialogic.VAR.has("Cordura"):
			barra_cordura.value = float(Dialogic.VAR.Cordura)
		
		if Dialogic.VAR.has("Calamidad"):
			barra_calamidad.value = float(Dialogic.VAR.Calamidad)
