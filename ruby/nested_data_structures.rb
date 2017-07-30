#5.4 Nested Data Structures
#Andreas Bach Landgrebe
#This nested data strucutre is about various tennis equipment

tennis = {
	racquets: {
		pretty_name: 'Babolat Pure Aero',
		racquet_info: {
			strung_weight: 11.3,
			head_size: 100
		},#racquet_info
		string_pattern: [
			"16 x 19",
			"Two piece job",
			"no shared holes"
		] #string_pattern
	},#racquets
	tennis_string: {
		pretty_name: "Tennis Strings",
		tennis_string_examples: {
			polyster: "Luxilon ALU Power 16L String",
			natural_gut: "VS Touch Natural Gut 16 String",
			synthetic_gut: "Prince Synthetic Gut 16 Duraflex String",
			multifilament: "Tecnifibre X-One Biphase 16 String",
			hybrid: "Babolat Hybrid RPM Blast 17+VS 16 String"
		},#string_examples
		babolat_strings: [
			"RPM Blast",
			"RPM Blast Rough",
			"RPM Team",
			"Pro Hurricane",
			"Pro Hurricane Tour",
			"VS Touch",
			"Xcel"
		]#babolat_strings
	},#tennis_string
	grips: {
		pretty_name: "Grips",
		grip_names: {
			Babolat: "Pro Tour Overgrip",
			Wilson: "Pro Overgrip",
			Yonex: "Super Grap Overip",
			Solinco: "Wonder Overgrip"
		},#grip_names
		grip_colors: []
	}#grips
}#tennis

puts tennis[:racquets][:pretty_name] #This will print out "Babolat Pure Aero"

p tennis[:grips][:grip_colors].push("white", "black") #add white and black elements to grip_colors array declared on line 45

puts tennis[:tennis_string][:babolat_strings].reverse #reverse the order of strings specified under babolat_strings

puts tennis[:tennis_string][:babolat_strings].push("Origin") #add origin to babolat_strings hash

puts tennis[:tennis_string][:pretty_name].downcase #display 'Tennis Strings' string to be lowercase to display 'tennis strings'

puts tennis[:tennis_string][:babolat_strings][4] #call index 4 of babolat_string array to display 'Pro Hurricane Tour'

puts tennis[:tennis_string][:tennis_string_examples][:polyster] #calling polyster key from 'tennis_string_examples' hash to display the value which is 'Luxilon ALU Power 16L String'