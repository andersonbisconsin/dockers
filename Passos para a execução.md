# Passo a Passo

## Criar a Imagem do NodeJS usando o arquivo "Dockerfile"
`docker build -t nodehello:1.0 .`

## Executa a imagem e cria um volume com base no diretorio atual [ Windows ${pwd} ou Linux $(pwd) ].

`docker run -p 3000:3000 -v ${pwd}:/usr/src/app --name my-running-app nodehello:1.0`


