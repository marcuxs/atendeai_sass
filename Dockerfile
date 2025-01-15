FROM ubuntu:22.04

# Atualizar o sistema e instalar Bash
RUN apt update && apt install -y bash

# Copiar os arquivos do projeto
COPY . /whaticket

# Tornar o script executável
RUN chmod +x /whaticket/install.sh

# Executar o script
CMD ["/whaticket/install.sh"]
