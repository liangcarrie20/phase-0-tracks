# Build nested structure for shopping mall
shopping_mall = {
	first_floor: {
		category: 'food',
		store_directory: [
			'beard_grandpas',
			'jumbo_juice',
			'dragon_express'
		],
		unit_info: {
			total_units: 6,
			units_available: 3
		}
	},
	second_floor: {
		category: 'apparel',
		store_directory: [
			'old_violet',
			'the cap',
			'apple_republic',
			'lacys',
			'saks_sixth_ave'
		],
		unit_info: {
			total_units: 8,
			units_available: 3
		}
	},
	third_floor: {
		category: 'shoes',
		store_directory: [
			'foot_locker_room',
			'paymore_shoe_source',
			'conversely',
			'UGG_New_Zealand',
		],
		unit_info: {
			total_units: 9,
			units_available: 5
		}
	}
}

# Access category of first floor:
p shopping_mall[:first_floor][:category]

# Access list of stores on second floor:
p shopping_mall[:second_floor][:store_directory]