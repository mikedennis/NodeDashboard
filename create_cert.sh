#!/bin/bash
echo basicConstraints=CA:true > android_options.txt
openssl genrsa -out key.pem 2048
openssl req -subj '/CN=localhost' -new -days 3650 -key key.pem -out cert.csr
openssl x509 -req -days 3650 -in cert.csr -signkey key.pem -extfile ./android_options.txt -out cert.pem
openssl x509 -inform PEM -outform DER -in cert.pem -out cert.der.crt

