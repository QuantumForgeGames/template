extends Node


func _ready() -> void:
	$World/Player.player_attacked.connect(game_over)
	$GUI/HUD.game_started.connect(new_game)


func game_over():
	$GUI.end()
	$World.end()
	$Music.stop()


func new_game():
	$GUI.start()
	$World.start()
	$StartTimer.start()
	get_tree().call_group("mobs", "queue_free")
	$Music.play()


func _on_start_timer_timeout() -> void:
	$World/MobTimer.start()
	$GUI/ScoreTimer.start()
