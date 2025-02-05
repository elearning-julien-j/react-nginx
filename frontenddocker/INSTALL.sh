#!/bin/bash

docker build -t myreact .

docker run -it -p 3000:3000 --mount type=bind,src="$(pwd)",dst=/app myreact

docker container run --rm -it -p 3000:3000 --mount dst=/app/node_modules --mount type=bind,src="$(pwd)",dst=/app myreact

docker run -it -p 3000:3000 -e WATCHPACK_POLLING=true --mount type=bind,src="$(pwd)",dst=/app myreact

npm install --save-dev vitest @testing-library/react @testing-library/jest-dom jsdom
