# Usando uma imagem base de Ubuntu 20.04 
FROM ubuntu:20.04 

# Instalar dependências do sistema (gcc, make, etc)
RUN apt update -y && apt install  python3 python3-pip -y
RUN pip3 install virtualenv
RUN apt install git -y
RUN apt install curl -y
RUN apt install zsh -y 
# Instalar Miniconda manualmente
RUN curl -fsSL https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -o miniconda.sh && \
    bash miniconda.sh -b -p /opt/conda && \
    rm miniconda.sh

# Adicionar Conda ao PATH
ENV PATH="/opt/conda/bin:$PATH"

# Criar um ambiente virtual Conda
RUN conda create -n crewai-env python=3.12 -y

RUN pip install 'crewai[tools]'


# Definir o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copiar o código local para o contêiner
COPY . /app

# Ativar o ambiente virtual e rodar o arquivo principal
CMD ["/app/.venv/bin/python", "main.py"]
