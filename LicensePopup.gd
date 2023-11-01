extends Popup

func _ready():
	var license_info = Engine.get_license_info()
	var copyright_info = Engine.get_copyright_info()
	
	var game_text = $Camera2D/ScrollContainer/VBoxContainer/GameLicenseContainer/GameLicense
	game_text.text = FileAccess.open('res://LICENSE', FileAccess.READ).get_as_text()
	
	var godot_text = $"Camera2D/ScrollContainer/VBoxContainer/GodotLicenseContainer/GodotLicense"
	godot_text.text = FileAccess.open('res://LICENSE.godot', FileAccess.READ).get_as_text()

	var freetype_text = $"Camera2D/ScrollContainer/VBoxContainer/FreeTypeCopyrightContainer/FreeTypeCopyright"
	freetype_text.text = FileAccess.open('res://COPYRIGHT.freetype', FileAccess.READ).get_as_text()

	var enet_text = $"Camera2D/ScrollContainer/VBoxContainer/ENetLicenseContainer/ENetLicense"
	enet_text.text = FileAccess.open('res://LICENSE.enet', FileAccess.READ).get_as_text()

	var mbed_text = $"Camera2D/ScrollContainer/VBoxContainer/MbedLicenseContainer/MbedLicense"
	mbed_text.text = FileAccess.open('res://LICENSE.mbed', FileAccess.READ).get_as_text()

func _process(delta):
	
	if Input.is_action_just_pressed("license_show"):
		show()

func _on_close_requested():
	hide()
