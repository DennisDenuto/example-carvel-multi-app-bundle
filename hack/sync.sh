#!/bin/bash

vendir sync
cosign verify-blob -cert config/example-carvel-app/config.crt -signature config/example-carvel-app/config.sig config/example-carvel-app/config.yml
cosign verify-blob -cert config/example-carvel-complex-app/config.crt -signature config/example-carvel-complex-app/config.sig config/example-carvel-complex-app/config.yml

kbld -f config --imgpkg-lock-output .imgpkg/images.yml