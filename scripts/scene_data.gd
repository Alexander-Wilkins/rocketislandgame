extends Node

const SCENE_DATA: Dictionary = {
  "bridgef1": {
	"forward_scene": preload("res://Scenes/bridgef2.tscn"),
  },
  "bridgef2": {
	"forward_scene": preload("res://Scenes/bridgef3.tscn"),
	"left_scene": preload("res://Scenes/bridgeImailbox.tscn"),
  },
  "bridgef3": {
	"forward_scene": preload("res://Scenes/bridgef4.tscn"),
  },
  "bridgef4": {
	"forward_scene": preload("res://Scenes/bridgef5.tscn"),
  },
  "bridgef5": {
	"forward_scene": null,
	"right_scene": preload("res://Scenes/bridgeR5.tscn"),
	"left_scene": preload("res://Scenes/bridgeL5.tscn"),
  },
  "bridgeL5": {
	"right_scene": preload("res://Scenes/bridgef5.tscn"),
	"left_scene": preload("res://Scenes/bridgef1.tscn"),
  },
  "bridgeR5": {
	"left_scene": preload("res://Scenes/bridgef5.tscn"),
  },
  "bridgeImailbox": {
	"right_scene": preload("res://Scenes/bridgef2.tscn"),
	"back_scene": preload("res://Scenes/bridgef2.tscn"),
	"left_scene": preload("res://Scenes/bridgef2.tscn"),
  },
}

#  "name": {
#	"forward_scene": null,
#	"right_scene": null,
#	"back_scene": null,
#	"left_scene": preload("res://Scenes/name.tscn"),
#	"interactable": null
#	},
