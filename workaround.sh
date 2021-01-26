#!/bin/sh
(
ffmpeg -y -i 516-x.ts -an -c:v copy 516-x.m4v
ffmpeg -y -i 516-x.ts -vn -c:a copy 516-x.m4a

ffmpeg -y -i 517-x.ts -an -c:v copy 517-x.m4v
ffmpeg -y -i 517-x.ts -vn -c:a copy 517-x.m4a

ffmpeg -y -i playlist-x-a.ffconcat -c copy result.m4a

ffmpeg -y -i playlist-x-v.ffconcat -c copy result.m4v


ffmpeg -y -i result.m4v -i result.m4a -c copy result-good.mp4

)
