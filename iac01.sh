#!/bin/bash

echo "Criando Diretórios ...  "

mkdir /publica
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando Grupos ... "
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando Usuários e Adicionando aos Grupos ... "
useradd carlos -c "carlos chagas" -m -s /bin/bash -p $(openssl passwd -crypt Muda123) -G GRP_ADM
useradd maria -c "maria da graça" -m -s /bin/bash -p $(openssl passwd -crypt Muda123) -G GRP_ADM
useradd joao -c "joão de deus" -m -s /bin/bash -p $(openssl passwd -crypt Muda123) -G GRP_ADM

useradd debora -c "debora seco" -m -s /bin/bash -p $(openssl passwd -crypt Muda123) -G GRP_VEN
useradd sebastiana -c "sebastiana de jesus" -m -s /bin/bash -p $(openssl passwd -crypt Muda123) -G GRP_VEN
useradd roberto -c "roberto carlos" -m -s /bin/bash -p $(openssl passwd -crypt Muda123) -G GRP_VEN

useradd josefina -c "josefina farofino"  -m -s /bin/bash -p $(openssl passwd -crypt Muda123) -G GRP_SEC
useradd amanda -c "amanda apple" -m -s /bin/bash -p $(openssl passwd -crypt Muda123) -G GRP_SEC
useradd rogerio -c "rogerio ceni" -m -s /bin/bash -p $(openssl passwd -crypt Muda123) -G GRP_SEC

echo "Definindo as Permissões dos diretórios ... "
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publica

echo "Fim do script."

