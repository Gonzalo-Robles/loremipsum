#!/bin/bash

# Cambiar /path/to/folder por la ruta de la carpeta que quieres buscar, en mi caso para ejecutarlo coloque
# el path "/home/gonzalo/Documentos/tarea/tareaShGitBash/loremipsum"... usted deberia colocar la carpeta que quiera chequear
folder="/home/gonzalo/Documentos/tarea/tareaShGitBash/loremipsum"

# Usamos -type f para buscar solo archivos y -name "*.txt" para buscar solo archivos con extensión .txt
count=$(find "$folder" -type f -name "*.txt" | wc -l)

echo "Hay $count archivos txt en la carpeta $folder "
#si no quiero leer la cantidad de archivos directamente reemplazo $count por 5. y comento todo lo anterior
for (( i=1; i <= $count; i++ ))

# Uso i para moverme por el numero de archivos que se generaron de lipsum.sh ( por default con 5 pero si uso un aleatorio de lipsum deberia cambiar)
do
archivo="loremipsum-$i.txt"

# Guardo en numero_lineas la cantidad de lineas arrojadas por wc -l leido por el contenido de $archivo
numero_lineas=$(wc -l < "$archivo")

# Imprimo el contenido de cada archivo indicando el numero de lineas 
echo "El archivo $archivo tiene $numero_lineas líneas."
done



