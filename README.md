# Docker-Essentials
Criacao de uma pagina web com imagem nginx rodando no Docker 




Este arquivo README.md fornece instruções detalhadas sobre como configurar e executar uma página web simples utilizando o Nginx dentro de um contêiner Docker.

Pré-requisitos
Certifique-se de ter o Docker instalado em sua máquina. Para instruções de instalação, consulte a documentação do Docker.

Como usar
Clone este repositório:
<!-- end list -->

Bash

git clone git@github.com:jhonwilame/Docker-Essentials.git
Navegue até o diretório do projeto:
<!-- end list -->

Bash

cd seu-repositorio
Construa a imagem Docker:
<!-- end list -->

Bash

docker build -t minha-pagina-web .
Este comando irá construir uma imagem Docker com o nome minha-pagina-web utilizando o arquivo Dockerfile no diretório atual.

Execute o contêiner Docker:
<!-- end list -->

Bash

docker run -d -p 8082:80
Este comando irá executar um contêiner Docker com a imagem minha-pagina-web e mapear a porta 8082 do contêiner para a porta 80 da sua máquina.

Acesse a sua página web:
Abra um navegador web e acesse http://localhost/html. Você deverá ver a sua página web "Rocket Access" exibida no navegador.

![Screenshot from 2025-02-10 23-03-59](https://github.com/user-attachments/assets/986a828d-edad-4c9b-ba8d-14292afedc58)

Conteúdo do repositório
index.html: O arquivo HTML da sua página web.
Dockerfile: O arquivo de configuração do Docker.
nginx.conf: O arquivo de configuração do Nginx.
README.md: Este arquivo.
Arquivos de configuração
index.html
HTML

<!DOCTYPE html>
<html>
<head>
    <title>Minha Página Web com Nginx e Docker</title>
</head>
<body>
    
    <h1>Rocket Access Docker</h1>
    <p>Esta é a minha página web hospedada com Nginx e Docker.</p>
</body>
</html>
Dockerfile
Dockerfile

FROM nginx
COPY hello.html /usr/share/nginx/html

COPY nginx.conf /etc/nginx/conf.d/default.conf
nginx.conf
Nginx

server {
    listen 80;
    server_name localhost;
    root /var/www/html;
}


Contribuições
Contribuições são bem-vindas! Sinta-se à vontade para enviar pull requests ou abrir issues para melhorias e correções.

Licença
Este projeto está sob a licença Jhon Wilame.

Recursos adicionais
Documentação do Docker
Documentação do Nginx
Sinta-se à vontade para perguntar se tiver alguma dúvida ou precisar de ajuda adicional.
