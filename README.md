# youtube-cli-raku
A simple CLI video viewer, an improved version of my older `youtube-cli-viewer` script, rewritten in Raku.

## Dependencies
To run this script, you need to have these packages installed:

* Rakudo (in order to run Raku scripts)
* mpv (support for other players may be added in the future)
* youtube-dl (or any fork - `yt-dlp` is tested to work)

## Getting Started
To run the script, type `./youtube-cli.raku` on the terminal emulator of your choice. You can also set the resolution of the video as an argument (see below).

Then paste the link of the video of your choice. It's not necessary to be a YouTube link, as `youtube-dl` and its forks support videos from various platforms.

After the end of the video, you will be prompted to insert another link, if you want to. To end the script, type `exit` at the video link prompt.

### Resolution setup
One of the major features of the script is the ability to easily change the resolution of the video that you want to watch.

You can set your preferred resolution as an argument, like this:
`./youtube-cli.raku 1080`
By default, the resolution is set to 720p.

## TODO
* Add missing features from the older script (best quality and no video options)
* Disable debug options from the code (when it's ready)
* Add a download mode with options to download a video in various video and sound formats
* Make the program configurable with a config file
