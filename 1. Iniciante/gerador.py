import os
 
# Lista de nomes de arquivos da imagem
nomes_arquivos = [
    "1070", "1064", "1060", "1059", "1014",
    "1007", "1011", "1010", "1008", "1050",
    "1038", "1037", "1184", "1182", "1182",
    "1021", "1061", "1013", "1043", "1073",
    "1113", "1101", "1098", "1174", "1175",
    "1173", "1065", "1044", "1172", "1180",
    "1096", "1048", "1095", "1080", "1072",
    "1052", "1035", "1094", "1080", "1072", 
    "1070", "1000", "1002", "1037", "1038"  
]
 
# Cria cada arquivo com a extensão '.c' no diretório atual
for nome in nomes_arquivos:
    # Constrói o nome completo do arquivo com o caminho
    nome_arquivo = f"1. Iniciante/{nome}.c"
   
   
    # Cria um arquivo vazio se ele ainda não existir
    if not os.path.exists(nome_arquivo):
        open(nome_arquivo, 'w').close()
 