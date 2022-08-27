#!/bin/bash

echo "Criando Diretorios..."
echo "Criando diretorio publico"
sudo mkdir /publica
chown root /publica
sudo chmod 777 /publica

echo "Criando diretorio Admin"
sudo mkdir /admin
chown root /admin
sudo chmod 770 /admin

echo "Criando diretorio ven"
sudo mkdir /ven
chown root /ven
sudo chmod 770 /ven

echo "Criando diretorio sec"
sudo mkdir /sec
chown root /sec
sudo chmod 770 /sec

echo "Criando Grupos"
sudo addgroup grp_admin
sudo addgroup grp_ven
sudo addgroup grp_sec

echo "Adicionando usuarios administradores"
sudo useradd -g grp_admin carlos -c "Usuario Administrador" -m -s /bin/bash
sudo useradd -g grp_admin maria -c "Usuario Administrador" -m -s /bin/bash
sudo useradd -g grp_admin joao_ -c "Usuario Administrador" -m -s /bin/bash

echo "Adicionando usuarios ven"
sudo useradd -g grp_ven debora  -m -s /bin/bash
sudo useradd -g grp_ven sebastiana -m -s /bin/bash
sudo useradd -g grp_ven roberto  -m -s /bin/bash

echo "Adicionando usuarios sec"
sudo useradd -g grp_sec josefina -m -s /bin/bash
sudo useradd -g grp_sec amanda -m -s /bin/bash
sudo useradd -g grp_sec rogerio -m -s /bin/bash
echo "Finalizando"

