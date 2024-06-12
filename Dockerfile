FROM alpine:latest

ENV EXCALIDRAW_VERSION=0.0.2
RUN FILENAME=excalidraw-complete_Linux_x86_64.tar.gz \
    && wget https://github.com/PatWie/excalidraw-complete/releases/download/$EXCALIDRAW_VERSION/$FILENAME \
    && mv $FILENAME excalidraw-complete
RUN chmod +x excalidraw-complete

EXPOSE 3002

ENTRYPOINT ["./excalidraw-complete"]
