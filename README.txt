STOIAN MIRUNA MARIA
315 CB

read input data
Citesc numarul de centroizi si matricea de puncte.

clustering_pc
Iau variabila centroids si setez matricea de centroizi cu primele NC puncte.
Aflu marimea liniilor si al coloanelor si initializez o noua matrice cu 0.
Imi iau o variabila care isi va schimba valoarea atunci cand conditia
nu mai este indeplinita .
Cat timp variabila ramane neschimbata matricea goala ia valoarea matricei actuale,
parcurg liniile si gasesc minimul.
Pentru fiecare centroid calculez distanta si o compar cu minimul. Daca distanta este
mai mica decat minimul, minimul ia valoarea distantei.
Parcurg centroizii si pentru fiecare in parte calculez centrul de greutate, acesta
urmand sa devina noii centroizi.

view_clusters
Calculez dimensiunea liniilor si a coloanelor matricii de puncte si
apoi dimensiunea centroizilor.
Parcurg liniile ,initializez minimul cu infinit, parcurg centroizii , calculez 
distanta si verific minimul. Salvez indicele.
La final flosind comanda scatter3 reprezentam graficul.


compute_cost_pc
Calculez dimensiunea centroizilor si apoi dimensiunea liniilor si a coloanelor.
Parcurg liniile , calculez distanta, verific minimul, in cazul in care distanta
este mai mica decat minimul, minimul isi schimba valoarea, si salvez indicele.
Pentru fiecare cetroid calculez suna normelod , la final suma va fi adaugata la 
costul total.

compute_cost
Citesc matricea de puncte si centroizii.
Daca lungimra centroidilui e 0 costul este infinit altfel calculam costul cu functia 
implementata mai sus.

view_cost_vs_nc
Citesc matricea de puncte.
Parcurg de la 1 la 10 si pentru fiecare centoid calculez noua pozitie si pastram
valoarea costului intr-un vectro.
Cu ajutorul comenzii plot afisam graficul.
