FROM hyperledger/indy-core-baseci
LABEL maintainer="Hyperledger <hyperledger-indy@lists.hyperledger.org>"

ARG uid=1000
ARG user=indy
ARG venv=venv

RUN indy_ci_add_user $uid $user $venv && \
    indy_ci_charm_crypto $user $venv

RUN indy_image_clean

USER $user
WORKDIR /home/$user
