extends Node

const scene_data = {
  "bridgef1": {
	"forward_scene": preload("res://Scenes/bridgef2.tscn"),
	"right_scene": null,
	"back_scene": null,
	"left_scene": null,
	"interactable": null
  },
  "bridgef2": {
	"forward_scene": preload("res://Scenes/bridgef3.tscn"),
	"right_scene": null,
	"back_scene": null,
	"left_scene": preload("res://Scenes/bridgeImailbox.tscn"),
	"interactable": null
  },
  "bridgef3": {
	"forward_scene": preload("res://Scenes/bridgef4.tscn"),
	"right_scene": null,
	"back_scene": null,
	"left_scene": null,
	"interactable": null
  },
  "bridgef4": {
	"forward_scene": preload("res://Scenes/bridgef5.tscn"),
	"right_scene": null,
	"back_scene": null,
	"left_scene": null,
	"interactable": null
  },
  "bridgef5": {
	"forward_scene": preload("res://Scenes/bridgef6.tscn"),
	"right_scene": preload("res://Scenes/bridgeR5.tscn"),
	"back_scene": null,
	"left_scene": preload("res://Scenes/bridgeL5.tscn"),
	"interactable": null
  },
  "bridgeL5": {
	"forward_scene": null,
	"right_scene": preload("res://Scenes/bridgef5.tscn"),
	"back_scene": null,
	"left_scene": preload("res://Scenes/bridgef1.tscn"),
	"interactable": null
  },
  "bridgeR5": {
	"forward_scene": null,
	"right_scene": null,
	"back_scene": null,
	"left_scene": preload("res://Scenes/bridgef5.tscn"),
	"interactable": null
  },
  "bridgeImailbox": {
	"forward_scene": null,
	"right_scene": preload("res://Scenes/bridgef2.tscn"),
	"back_scene": preload("res://Scenes/bridgef2.tscn"),
	"left_scene": preload("res://Scenes/bridgef2.tscn"),
	"interactable": null
  },
}
