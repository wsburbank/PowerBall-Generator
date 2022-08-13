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
		foreach i [1 2 3 4 5] [
			until [
				y: random/secure 69
				not find x y
			]
			if y < 10 [
				append x 0
			]
			append x y
			append x "  "
		]
		y: random/secure 26
		if y < 10 [
			append x 0
		]
		append x y
		append x "  "

		return x
	]

results: "winning numbers"
view [
	size 350x450
	title "Generate Power Ball Tickets"
	button "Generate" [append append results "^(line)" gen]
	return
	winners: area results
	]
