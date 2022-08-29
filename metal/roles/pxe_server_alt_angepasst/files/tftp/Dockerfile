FROM alpine:3

RUN apk add --update --no-cache syslinux && \
    mkdir -p /var/lib/tftpboot/pxelinux.cfg   && \
    cp -v /usr/share/syslinux/pxelinux.0 /var/lib/tftpboot/pxelinux.0 && \
    cp -v /usr/share/syslinux/vesamenu.c32 /var/lib/tftpboot/vesamenu.c32 && \
    cp -v /usr/share/syslinux/lpxelinux.0 /var/lib/tftpboot/lpxelinux.0 && \
    cp -v /usr/share/syslinux/ldlinux.c32 /var/lib/tftpboot/ldlinux.c32 && \
    cp -v /usr/share/syslinux/libcom32.c32 /var/lib/tftpboot/libcom32.c32 && \
    cp -v /usr/share/syslinux/libutil.c32 /var/lib/tftpboot/libutil.c32 && \
    apk del --update --purge --no-cache syslinux && \
    rm -f /var/cache/apk/*
        
RUN apk add tftp-hpa
     
CMD [ "in.tftpd", "--foreground", "--secure", "/var/lib/tftpboot"]
