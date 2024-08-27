extends Control


var score


func start():
	score = 0
	$HUD.update_score(score)
	$HUD.show_message("Get Ready")


func end():
	$ScoreTimer.stop()
	$HUD.show_game_over()


func _on_score_timer_timeout() -> void:
	score += 1
	$HUD.update_score(score)
