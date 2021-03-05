# COMANDO EJECUCIÓN PACKER #

packer build -var 'aws_access_key=NUESTRA_ACCESS_KEY' -var 'aws_secret_key=NUESTRA_SECRET_KEY' recetas.json

## Descripción Funcional ##

Permite crearnos una imagen con nuestra aplicación Play: API REST de Recetas</br></br>
Requiere de 3 ficheros durante el proceso: </br>
	- recetas.service : Fichero de servicio, que permite crear la ejecución de nuestra aplicación como servicio en la instancia linux creada.</br>
	- start.sh : Fichero de configuración y arranque de la aplicación. Falta añadir dirección de la base de datos y credenciales. </br>
	- practica-play-dist/recetas.zip :  Fichero comprimido con nuestra aplicación de recetas</br>
	
# COMANDOS EJECUCIÓN TERRAFORM ##

Nos situamos en el directorio de el fichero main.tf y lanzamos:

export AWS_SECRET_ACCESS_KEY=${Nuestra secret key}
export AWS_ACCESS_KEY_ID=${Nuestra access key}
terraform init
terraform plan
terraform apply

## Descripción Funcional ##

Permite: </br>
	- Crearnos un grupo de auto escalado y su launch configuration asociado</br>
	- Crearnos un load balancer al que añadir las instancias de nuestra aplicación (con su target group)</br>
	- Crearnos un security group para las instancias a lanzar</br>
	- Crearnos un security group para el load balancer</br>
	
Se realiza con el fin de desplegar las instancias requeridas de nuestra aplicación, segun las reglas definidas de autoescalado.
Todo ello, se realiza a partir del AMI creado con anterioridad desde PACKER, al cual tenemos que referenciar en "image_id"

