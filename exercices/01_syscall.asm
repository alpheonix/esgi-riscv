# Exercice 1
# Utiliser un appel système comme write

# Segements quand utiliser .data/.text?
# =====================================
#
# .data pour les données connues à la compilation genre les chaines ou des tableaux
# de taille connue.
# .text pour le code. :)

# On indique qu'on souhaite ranger des données dans le segment de data.
.data

# la directive .asciz permet de déclarer une chaine fini par un 0x00, '\0' en ascii.
message: .asciz "Hello ASM from .data"

.text # <- segment de code.

# Exercice: Observation dans Rars
#
# - Quelle est l'addresse de base de la chaine msg? Son addresse de fin?
#   -> addresse de base: 0x10010000
#   -> addresse de fin:  0x10010014
# - Dans quelle segment de la mémoire est elle?
#   -> dans .data
# - Quelle sont les valeurs en hexadecimales présente dans .data?
#   -> 0x6c6c6548  0x6f57206f  0x20646c72  0x6d6f7266  0x61642e20  0x00006174
#   -> .data: 2e 64 61 74 61

# la: Load Address, charge une adresse (label) dans un registre
la a0, ??? # argument de l'appel systeme
li a7, ??? # appel systeme numéro 4 selon la doc de Rars printString
ecall      # Permet de basculer en mode kernel pour faire l'appel systeme

# Bonus: Afficher maintenant un nombre, vous aurrez besoin de la documentation.
