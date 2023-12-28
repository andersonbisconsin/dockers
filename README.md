# DOCKERS

# Tutorial de uso do Docker
`docker run -d -p 8081:80 docker/getting-started`

[Para acessar Abra aqui!](https://localhost:8081)

# Iniciar um novo container minimizado
`docker run -d andersonbiscoito/chrome-standalone:98.0.4758.48`

#Inicializa imagem existente de forma iterativa. O comando -dit permite que a imagem seja aberta e não atachada.
`docker run -dit <imagem:versao>`

# Comandos para Construir Dockerfile
`docker build -t webservice:1.0 .`

# Mudar TagName da Imagem
`docker tag <tagantiga:versão> <tagnova:versao>`

# Loga no Docker Hub
`docker login -u andersonbiscoito -p @@&&@&`

# Envia imagem para o Repositorio no Docker Hub
`docker push andersonbiscoito/<nome_repositorio>:<versão>`

# Acessar o Container em execução pelo Bash, precisa de um Container em execução.
`docker exec -i -t <Container_name> /bin/bash`

# Exibe apenas containers ativos
`docker ps`

# Exibe todos os containers criados
`docker ps -a`

# Remover todas as Imagens ou Containers criados
Para containers
`docker rm $(docker ps -aq) -f`
Para Imagens
`docker rmi $(docker images -aq) -f`

# Cria Rede para Container
docker network create skynet

# Cria Volume para Container
docker volume create jenkins-data

# Crie e Executa o Container Docker na Rede e usando Volume e porta Local especifica 8080.
docker container run --name jenkins-blueocean --detach   --network skynet -u root   --volume jenkins-data:/var/jenkins_home   --volume /var/run/docker.sock:/var/run/docker.sock   --publish 8080:8080 --publish 50000:50000 jenkins/jenkins

# Executa um Container Parado
docker start jenkins-blueocean

Referencia: https://www.codegrepper.com/code-examples/whatever/view+image+contents+docker