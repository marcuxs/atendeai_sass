FROM ubuntu:22.04

# Atualizar o sistema e instalar Bash
RUN apt update && apt install -y bash

# Copiar os arquivos do projeto
COPY . /atendeai_sass

# Tornar o script executável
RUN chmod +x whaticketsaas.sh

# Executar o script
CMD ["whaticketsaas.sh"]
