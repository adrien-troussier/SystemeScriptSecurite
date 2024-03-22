import csv

Jean = ["Jean","25 ans","Paris"]
Marie = ["Marie","30 ans","Lyon"]
Pierre = ["Pierre","22 ans","Marseille"]
Sophie = ["Sophie","35 ans","Toulouse"]


with open('liste.csv', 'w') as f:
	writer = csv.writer(f)
	writer.writerow(Jean)
	writer.writerow(Marie)
	writer.writerow(Pierre)
	writer.writerow(Sophie)
