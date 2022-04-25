# Cómo trabajar con máquinas virtuales



# Vagrant

Vagrant permite descargar máquinas virtuales preconfiguradas para su uso inmediato.
La gran ventaja es que con un par de comandos, tenemos entornos virtuales funcionando.
El inconveniente es que cada máquina virtual ocupa una cantidad de espacio que no nos permiten usar __en principio__.

Pero para eso tenemos una solución:

 - Comprobamos que Vagrant y Virtualbox están actualizados en el MSC
 - Ejecutamos:
````
curl https://raw.githubusercontent.com/42Cyber/Vagrantfiles/main/move_vagrant_to_goinfre.sh | bash -ex
````
 - Ejecutamos:


## Docker

Docker permite levantar máquinas virtuales ligeras porque comparte los recursos del sistema físico.

### Requisitos

| Nombre | Descripción |
