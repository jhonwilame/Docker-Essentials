Docker-Essentials

Criação de uma página web com Nginx rodando no Docker

Este repositório demonstra como criar e executar uma página web simples utilizando o Nginx dentro de um contêiner Docker.

Pré-requisitos

Certifique-se de ter o Docker instalado em sua máquina. Para instruções de instalação, consulte a documentação do Docker.

Como usar

Clone este repositório:
<!-- end list -->

Bash

<pre>
  <code>
    git clone git@github.com:jhonwilame/Docker-Essentials.git
  </code>
</pre>


Navegue até o diretório do projeto:
<!-- end list -->

Bash

cd Docker-Essentials
Construa a imagem Docker:
<!-- end list -->

Bash
<pre>
  <code>
docker build -t minha-pagina-web .
  </code>
</pre>

Este comando irá construir uma imagem Docker com o nome minha-pagina-web utilizando o arquivo Dockerfile no diretório atual.

Execute o contêiner Docker:
<!-- end list -->

Bash
<pre>
  <code>
    
docker run -d -p 8082:80 minha-pagina-web
    
 </code>
</pre>

Este comando irá executar um contêiner Docker com a imagem minha-pagina-web em segundo plano (-d) e mapear a porta 8082 da sua máquina para a porta 80 do contêiner.


Acesse a sua página web:
Abra um navegador web e acesse http://localhost:8082/hello.html Você deverá ver a sua página web "Rocket Access" exibida no navegador.


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
    <title>Rocket Access</title>
</head>
<body>
    <h1>Rocket Access</h1>
    <p>Bem-vindo à sua página web com Nginx e Docker!</p>
</body>
</html>
Dockerfile

Dockerfile

<pre>
  <code> 
    
FROM nginx
COPY hello.html /usr/share/nginx/html
 </code>
</pre>



Nginx

server 
    listen 8082:80
    server_name http://localhost:8082/hello.html
  



Observações

Certifique-se de que o arquivo index.html esteja no diretório do projeto antes de construir a imagem Docker.
O arquivo nginx.conf configura o Nginx para servir o arquivo index.html na raiz do servidor.
Recursos adicionais

Documentação do Docker
Documentação do Nginx
Contribuições

Contribuições são sempre bem-vindas! Sinta-se à vontade para enviar pull requests ou abrir issues para melhorias e correções.

Licença

Este projeto está sob a licença Jhon Wilame.
