FROM ubuntu:latest
MAINTAINER hashitha
RUN rm -rf ansible/
COPY ansible/ ansible/
WORKDIR /ansible
CMD ansible-playbook -vvv -i ${ANSIBLE_INVENTORY:-UNSET} ${ANSIBLE_PLAYBOOK:-UNSET.yml}

