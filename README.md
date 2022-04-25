# Cómo trabajar con máquinas virtuales

# Brew

La forma más sencilla de instalar paquetes en Mac sin necesidad de permisos de administrador es utilizar brew.
El problema es que cualquier paquete ocupa un espacio que restará de los escasos 5 GB de los que disponemos. Por ello, podemos instalar Brew en una ubicación en la que sí que tenemos espacio suficiente: sgoinfre.

Para crear tu carpeta en sgoinfre:
````
mkdir -p /sgoinfre/students/$USER/
chmod -R 700 /sgoinfre/students/$USER/
````
Para instalar brew y configurar sgoinfre como carpeta por defecto para las instalaciones:
````
curl -fsSL https://raw.githubusercontent.com/bazuara/42madrid_homebrew_sgoinfre/master/install.sh | zsh
````
Para instalar cualquier paquete con brew:
````
brew install python3
...
brew install <paquete>
````

# Vagrant

Vagrant permite descargar máquinas virtuales preconfiguradas para su uso inmediato.
La gran ventaja es que con un par de comandos, tenemos entornos virtuales funcionando.
El inconveniente es que cada máquina virtual ocupa una cantidad de espacio que no nos permiten usar __en principio__.

Pero para eso tenemos una solución:

 - Comprobamos que Vagrant y Virtualbox están actualizados en el MSC
 - Ejecutamos:
````
rm -rf ~/.vagrant* 
mkdir -p /goinfre/.vagrant.d
ln -s /goinfre/.vagrant.d ~/.vagrant.d
vagrant plugin expunge --reinstall --force
````

Debemos configurar Virtualbox para que las máquinas se instalen en una carpeta en la que dispongamos de suficient espacio.

En 42 hay tres formas de ampliar nuestros 5 GB:
- Comprar otros 5 GB en la store.
- Utilizar goinfre/ o sgoinfre/
    - goinfre no tiene límite de espacio pero se borra en intervalos impredecibles.
    - sgoinfre nos permite utilizar 15 GB pero si nos sobrepasamos, se borran todos los datos. Usar con precaución.
    - /tmp es una carpeta local que utiliza todo el disco duro, por lo que disponemos de 1TB de espacio.
    El problema es que los archivos se borran si no los utilizamos durante un tiempo determinado (3 días por defecto). Por lo tanto: todos los archivos que queráis conservar, utilizadlos desde las carpetas compartidas y haced commits regulares a un repositorio remoto.

Las máquinas de Vagrant crean una carpeta compartida en el disco duro de la máquina virtual.
[https://www.vagrantup.com/docs/synced-folders](https://www.vagrantup.com/docs/synced-folders)




## Docker

Docker permite levantar máquinas virtuales ligeras porque comparte los recursos del sistema físico.


### Requisitos

| Nombre | Descripción |
