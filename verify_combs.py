with open('combs.txt') as file:
	lines = file.readlines()
	print(len(lines))

	for line in lines:
		line = line.rstrip('\n')


		if len(line) > 21:
			print('wrong')
		if sum(map(int, list(line))) != 10:
			print('wrong')
