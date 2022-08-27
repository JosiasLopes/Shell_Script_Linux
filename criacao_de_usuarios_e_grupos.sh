pwd mostra a pasta autal
cd / sai da pasta atual e vai pra pasta raiz( troque / pra pasta que voce quer)
ls mostra uma lista dos arquivos e pastas dentro da pasta atual(equivale ao dir no windows)
cd .. volta uma pasta pra tras
ls | mostra os arquivos em forma de lista com rolagem( pra sair aperte CTRL+C)
ls nome - lista os arquivos que tem esse nome especifico ou parte dele
ls /pasta - lista os arquivos numa pasta especifica
ls /pasta/letras* lista os arquivos com as letras especificas
touch nome_arquivo cria um arquivo vazio
exit: é o comando que finaliza a sessão na linha de comando;
logout: é o comando que encerra a sessão que está sendo utilizada, mas apenas na C shell e na bash shell;

buscando  um arquivo dentro dA PASTA EM QUE ESTA

/pasta find -name nome_arquivo ou nome*

criar pastas
mkdir nome_ou_caminho_arquivo

apagar pastas
rmdir nome_pasta

apagar arquivos
rm nome_arquivo

pra vizualizar arquivos de texto
cat nome_arqiuvo

criar uma senha de root no ubuntu
sudo passwd root

gerenciar dscos
lsblk lista discos

listar discos
fdisk -l

pra particionar disco
fdisk /dev/sdb n

escolha P pra primaria depois 1
escolha o setor inicial
escolha o tamnaho do disco
aperte w pra salvar

agora escolha o tipo de formato de arquivos
mkfs.tipo_de_sistema_arquivo(ext3,ext4,ntfs) /dev/sdb

agora é necessario montar o disco
cd /mnt/
mkdir deisco

desmontar 
umount /dev/sdb
mnt /dev/sdb /mnt/disco2
mudar para root
su 

pra liberar acesso remoto via root
cat /etc/ssh/sshd_config	arquivo que configura o servico ssh

dentro dele vá ate
#PermitRootLogin prohibit-passwd

use o nano(editor de texto pra editar a configuraacao)
sudo nano /etc/ssh/sshd_config	

mude de #PermitRootLogin prohibit-passwd para PermitRootLogin yes

reinia a maquina com reboot

ou resstart o servico sshd
pra ver o estado do serviço faça
systemctl status nome_serviço

sudo systemctl restart nome_serviço

ver historico dos comandos usados
bash history

Crfiando Usuarfios no ubuntu
sudo passwd nomedeLogon
sudo useradd nomedeLogon
sudo useradd -m -c nomelogin "usuario para fazer tal coisa"
coloca o bash padrao
chsh -s /bin/bash nomelogin

useradd nome -m -c "ghghjhh" -s /bin/bash

criar usuarios e adicionar em um grupo
adduser -ingroup nomegrupo nomelogin -m -c "usuario do grupo tal" -s /bin/bash

criar usuario com tempo especifico pra acessar o sistema
useradd nome -c "convidado" -m -s /bin/bash -e 26/06/2022
passwd
//mudar tempo de acesso do usuario usermod pode mudar qualquer info do usuario
usermod nome -e 22/06/2022
passwd nome -e 24/06/2011

verificar os usuarios cadastrados
cat /etc/passwd

criar grupos
addgroup nomegrupo

apagar grupo
groupdel nome

adicionar usuario em um grupo
usermod -a -G grupo usuario

tirar usuario de um grupo
gpasswd -d user grupo

criando usuario com pasta home
apagar usuario
userdel -f -r nomedelogon

useradd guest -c "cobidade" -s bin/bash -m -p $(openssl passwd -crypt senha1234)

criar um user a adicionar em grupo
sudo useradd -g grupo usuario -c "sjhjhks" -s bin/bash -m


criar um script de shell
nano script.sh

#!/bin/bash

echo "Criando usuarios do sistema"
read -p "Quantos usuarios deseja criar?" qtd
for((c=1;c<=qtd;c++))
do
useradd guest$c -c "covidados -s /bin/bash -m -p$(openssl passwd -crypt senha123)
usermod -a -G usuariosBash guest$c
gpasswd -d guest$c guest$c
groupdel guest$c
done

useradd guest10 -c "covidados -s /bin/bash -m -p$(openssl passwd -crypt senha123)
useradd guest11 -c "covidados -s /bin/bash -m -p$(openssl passwd -crypt senha123)
useradd guest12 -c "covidados -s /bin/bash -m -p$(openssl passwd -crypt senha123)
useradd guest13 -c "covidados -s /bin/bash -m -p$(openssl passwd -crypt senha123)
useradd guest14 -c "covidados -s /bin/bash -m -p$(openssl passwd -crypt senha123)
useradd guest15 -c "covidados -s /bin/bash -m -p$(openssl passwd -crypt senha123)
useradd guest16 -c "covidados -s /bin/bash -m -p$(openssl passwd -crypt senha123)
useradd guest17 -c "covidados -s /bin/bash -m -p$(openssl passwd -crypt senha123)
useradd guest18 -c "covidados -s /bin/bash -m -p$(openssl passwd -crypt senha123)
echo "Finalizado"

//muda a permisssao do arquivo
chmod +x nomearquivo.sh

valores de permissao em arquivos:
leitura 4
gravação 2
execução 1
nenhuma 0

o chmod funciona da sequinte maneira 
chmod nmpermissao1dono, npermissaogrupo, nperissauser nomearquivo
permissao total
chmod 777 /arq.txt

permissao total dono, permissao execucao dos demais
chmod 711 /arq.sh

listar todos os usuarios do sistema
cat /etc/passwd

atualizar sistema operacional

passo 1 fazer update dos pacoptes
apt update

passo 2 instalar
apt upgrade -y

instalr paconte no ubunto
apt install pacote -y

remover pacote
apt remove pacote

copiar arquivos
cp /nome_arquivo.extensao destino

todos que tenham um extensao especifica
cp noarquivo.*extensao destino

todos que iniciem com um nome especifico e qualquer extensao
cp ./letra* destino

perguntar se quer sobrepor um arquivo
cp arquivo.txt destino/arquivo.txt -i

acompanha o progresso de copia do arquivo
cp arquvo.txt destino -v

os parametro -f força o movimento impedindo de perguntar
-i pergunta se voce tem certeza que quer sobrescrever
-v mostra o progreso da copia
move um arquivo para outro diretorio
mv origem.txt pastadestino

para mover um arquivo mudando o nome
mv origem.txt pasdestino/nomediferente.txt

visualizar, iniciar e encerrar processos
ps au - mostra os processos de todos os usuarios, u é usuario, x mostra os processos em execução

encerrar um processo
Kill nome do processo, ou o pid do processo(id do processo)

who -a mostra o id do usuario logado
kill