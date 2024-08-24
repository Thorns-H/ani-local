<h3 align="center">
A CLI to watch anime locally stored somewhere in your hard drive.</a>
</h3>

I make this simple bash script because i get used to ani-cli from the terminal, but sometimes i like to watch anime with spanish subs or dubs,
so this represents a problem because ani-cli only shows anime in english. And the machine i use with linux is not too powerful, so watching it
from the terminal is the best option.

## Install

```sh
git clone https://github.com/Thorns-H/ani-local.git && cd ani-local
chmod +x install-ani-local.sh
./install-ani-local.sh
```

## Configuration

In order to get this script to work you'll need to specify a source folder in the **ani-local.conf** file,
for example:

```
# Specify the source directory for anime
SOURCE_DIR="$HOME/Videos/anime"
```

This is extremely userful to me because it allows me to use external storage as source directory for my series.

Also the formatting in this directory needs to be like this, with each anime separated in a different directory
and no subdirectories inside those.

```
source/
├── evangelion
│   └── 1x1.mp4
└── lain
    └── 1x1.mp4
```

## Dependencies

You will need to install mpv to reproduce the video from the terminal, follow the installation guide [here](https://mpv.io/installation/).
