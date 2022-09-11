# dev-env
My dockerized dev environment.

It contains:

- My [neovim setup](https://github.com/andersonjoseph/init.vim)
- git
- npm
- nodejs
- git

---
## Usage

Build the image:
```
docker build -t ander-env .
```

Run a container:
```
docker run --name ander-env -d -t ander-env 
```

You can now access to the container executing:
```
docker exec -it ander-env sh
```

---

Executing `nvim` will start the plugins installation automatically.

