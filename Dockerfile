FROM pierrezemb/gostatic
COPY public/index.html /srv/http/
COPY public/docs.html /srv/http/docs.html
COPY public/examples.html /srv/http/examples.html
COPY public/faq.html /srv/http/faq.html
COPY public/skill.md /srv/http/
COPY public/wallet-setup.md /srv/http/wallet-setup.md
COPY public/generate-agent-wallet.js /srv/http/generate-agent-wallet.js
COPY public/robots.txt /srv/http/
COPY public/sitemap.xml /srv/http/
CMD ["-port","8080","-https-promote", "-enable-logging"]
