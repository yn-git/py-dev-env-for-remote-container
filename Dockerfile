FROM python

ARG username=developer
RUN apt-get update && \
    apt-get install -y fish git && \ 
    useradd -m -p "dev" ${username}

ARG home=/home/${username}
WORKDIR ${home}
USER ${username}
RUN curl -sSL https://raw.githubusercontent.com/sdispater/poetry/master/get-poetry.py | python

VOLUME [ "/home/developer/project" ]
