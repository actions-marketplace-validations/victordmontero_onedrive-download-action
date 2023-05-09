FROM node:14
RUN npm install -g @microsoft/microsoft-graph-client
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
