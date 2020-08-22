FROM sighery/archbuilder:latest AS builder

USER builder

COPY --chown=builder ./libfixposix/* package/
WORKDIR package

RUN makepkg -s --needed --noconfirm --noprogressbar

CMD ["/bin/bash"]
