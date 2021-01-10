# twitch_download
Docker project to use youtube-dl to detect when a twitch stream goes live and record to local disk

to run `docker run --rm --name=twitchdl -e LINK=https://www.twitch.tv/Laserath -v /mnt/:/mnt/vods laserath/twitch_download:latest`

## Environment Variables

There are other environment variables if you want to customize various things inside the docker container:

| Docker Environment Var. | Description |
| ----------------------- | ----------- |
| `LINK: <twitch stream link>`<br/> *Optional Default: 'https://twitch.tv/Laserath'* | Sets the twitch channel that will be monitored and have streams downloaded
| `COOLDOWN: <time between checks>`<br/> **Recommended** *Default: 60* | time to sleep between checks if the stream is live.

## Arguments
Arguments specific to this container.

| Docker Arguments | Description |
| ---------------- | ----------- |
| `-v /mnt/:/mnt/vods`<br/> **Recommended** | The location where the streams will be saved
