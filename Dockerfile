FROM nieleyde/rpi-nodered
COPY settings.js /root/
COPY flows.json /root/.node-red/node-red-pi
COPY  51-blink1.rules /etc/udev/rules.d/

EXPOSE 80

CMD ["npm install"]
CMD ["node-red-pi","-v","--max-old-space-size=128", "-s", "/root/settings.js"]
