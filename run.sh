cd /Users/af/Code/hubspace
if [ ! -f ./key.pem ]; then
    openssl req -newkey rsa:2048 -nodes -keyout key.pem -x509 -days 365 -out certificate.pem
fi
jupyterhub --port=1443 --ssl-key=key.pem --ssl-cert=certificate.pem
