# Use a imagem oficial do Nginx como imagem base
FROM nginx:latest

# Copie o script de entrada para o contêiner
COPY entrypoint.sh /usr/share/nginx/entrypoint.sh

# Conceda permissões de execução ao script
RUN chmod +x /usr/share/nginx/entrypoint.sh

# Copie o arquivo HTML para o diretório padrão do Nginx
COPY index.html /usr/share/nginx/html

# Defina o diretório de trabalho para o diretório padrão do Nginx
WORKDIR /usr/share/nginx/html

# Exponha a porta 80 para o mundo externo
EXPOSE 80

# Defina o script de entrada como ponto de entrada
ENTRYPOINT ["/usr/share/nginx/entrypoint.sh"]

# Exemplo de entrypoint com comando
#ENTRYPOINT ["nginx", "-g", "daemon off;"]