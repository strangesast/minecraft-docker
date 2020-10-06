#!/bin/bash
docker run --rm -v $(pwd)/data:/data -p 25565:25565 $(docker build . -q)
