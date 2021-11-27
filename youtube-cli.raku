#!/usr/bin/env raku

# Variables
my ($resolution, $video_link);

# Configuration
my Bool $debug = True; 		# Debug mode. Should be turned off for actual use.

if @*ARGS[] eq '' {
	$resolution = 720;
} else {
	$resolution = @*ARGS[0];
}

# Main program
say "YouTube CLI Viewer - Raku version";
sleep 0.5;
if $debug eq True {
	if @*ARGS[] eq '' {
		say "DEBUG: Arguments: (no arguments)";
	} else {
		say "DEBUG: Arguments: " ~ @*ARGS[];
	}
	sleep 0.5;
}
$video_link = prompt "Paste the video link: ";

if $video_link eq "exit" {
	say "Exiting YouTube viewer...";
	sleep 0.75;
} else {
	if $debug eq True {
	say "DEBUG: Resolution: " ~ $resolution ~ "p";
	}
	shell "mpv '$video_link' --ytdl-format='bestvideo[height<=?$resolution]+bestaudio/best'";
	run "./youtube-script.raku";
}
