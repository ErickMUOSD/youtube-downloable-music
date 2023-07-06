
A simple shell script to download Youtube videos and convert to mp3 file  by copying the URL.

## Dependencies

1. **xsel**: `sudo apt install xsel`
2. [**clipnotify**](https://github.com/cdown/clipnotify). You can use the pre-compiled clipnotify provided in the repository or compile yourself.  
    **To compile clipnotify yourself**
    
    ```bash
    sudo apt install git build-essential libx11-dev libxtst-dev
    git clone https://github.com/cdown/clipnotify.git
    cd clipnotify
    sudo make
    ```
3. **youtube-dl**: `sudo apt install youtube-dl`

## Usage

1. Download this repository.
2. Specify the path for  clipnotify (downloaded or precompiled) in the `settings.txt` file.
4. run with `./store_urls.sh`
