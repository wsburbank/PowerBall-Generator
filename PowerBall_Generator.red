Red [
    Title:   "Unit Converter"
	Author:  "Winston Burbank"
	File: 	 PowerBall Generator.red
	License: "Public domain"
	Needs:	 'View
	Notes:   "Creat Random PowerBall numbers."
]

gen: function [] [
		x: [1]
		clear x 0
		append x random 67
		append x " "
		append x random 67
		append x " "
		append x random 67
		append x " "
		append x random 67
		append x " "
		append x random 67
		append x " "
		append x random 31
		return append "^(line)" x
	]

results: "winning numbers"
view [
	size 350x450
	title "Generate Power Ball Tickets"
	button "Generate" [append results gen]
	return
	winners: area results
	]
