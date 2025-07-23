extends Node

var key = 0
var cup = 0

func add_key():
	key += 1

func add_cup():
	cup += 1
	print(cup)

func add_mega_cup():
	cup += 10
	print(cup)

func take_key():
	key -= 1
