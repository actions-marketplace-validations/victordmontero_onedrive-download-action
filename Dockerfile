FROM node:14
RUN npm install -g @microsoft/microsoft-graph-client
RUN chown -R node /root
COPY entrypoint.sh /root/entrypoint.sh
ENTRYPOINT ["/root/entrypoint.sh"]
