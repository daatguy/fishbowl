#!/bin/bash
hint="press Ctrl+c to exit"
lines="$(tput lines)"
cols="$(tput cols)"
mlen=${#1}
if [ $mlen -eq 0 ]; then
  msg="Gone fishin'"
else
  msg="$1"
fi
tpad="$(( (lines + 1) / 2 - 9 ))"
printf -v top '\n%.0s' $(seq 1 $tpad)
bpad="$(( (lines) / 2 - 9 ))"
printf -v bot '\n%.0s' $(seq 1 $bpad)
mlen=${#msg} 
mpad="$(( (cols - mlen) / 2 ))"
bowl=26
lefpad="$(( (cols - bowl - 1) / 2 ))"
hintpadding="$(( (cols - 20) / 2 ))"
printf -v msgpad ' %.0s' $(seq 1 $mpad)
printf -v lpad ' %.0s' $(seq 1 $lefpad)
printf -v hintpad ' %.0s' $(seq 1 $hintpadding)
printf -v bot "\n$msgpad$msg              \n$bot\n$hintpad$hint"
wipe="$(( 16 + tpad + bpad ))"
erase="\033[$(( wipe ))F\033[K"
echo ""
printf -v stripe ' %.0s' $(seq 1 $cols)
printf "$stripe%.0s" $(seq 1 $wipe)
echo -en "$erase"
while [ 1 ]
do
  curtime="$(date +%H:%M)"
  if [[ "$curtime" > "22:00" || "$curtime" < "08:00" ]]; then
    bubble="z"
    eye="-"
  else
    bubble="o"
    eye="o"
  fi
  echo "$top"
  echo '
      _,,--``````--,,_
     _,> -  `  `  - <,_
   ^`__________________`^ 
  /                      \ 
 /           |\  /        \
 |      / [,(< o=|        |
 \      \  / /Y` \ /      /
  \      \ |\     ||     /
   `^-,,__\|/____/_\,,-^`
     `^--,,______,,--^`' | sed -z "s/\n/\n$lpad/g" | sed -z "s/z/$bubble/g" | sed -z "s/o/$eye/g"
  echo "$bot"
  sleep 0.4
  echo -en "$erase"
  echo "$top"
  echo '
      _,,--``````--,,_
     _,> -  `  `  - <,_
   ^`__________________`^
  /                      \
 /            |\  ,       \
 |      ,  />(< o/        |
 \      | /  /`Y`|   |    /
  \     \ \ |    \  /`   /
   `^-,,_\_|/_____|_|,-^`
     `^--,,______,,--^`' | sed -z "s/\n/\n$lpad/g" | sed -z "s/z/$bubble/g" | sed -z "s/o/$eye/g"
  echo "$bot"
  sleep 0.4
  echo -en "$erase"
  echo "$top"
  echo '
      _,,--``````--,,_
     _,> -  `  `  - <,_
   ^`__________________`^
  /                      \
 /             |\/        \
 |         ,[>(< \=       |
 \     `\  \\  `Y|  \     /
  \      |  /|   /  |    /
   `^-,,_\_//____\_/,,-^`
     `^--,,______,,--^`' | sed -z "s/\n/\n$lpad/g" | sed -z "s/z/$bubble/g" | sed -z "s/o/$eye/g"
  echo "$bot"
  sleep 0.4
  echo -en "$erase"
  echo "$top"
  echo '
      _,,--``````--,,_
     _,> -  `  `  - <,_
   ^`__________________`^ 
  /                      \ 
 /             .|/        \
 |      /  , [>(<|o=      |
 \      \  / /  `\`/      /
  \      \ |\     ||     /
   `^-,,__\|/____/_\,,-^`
     `^--,,______,,--^`' | sed -z "s/\n/\n$lpad/g" | sed -z "s/z/$bubble/g" | sed -z "s/o/$eye/g"
  echo "$bot"
  sleep 0.4
  echo -en "$erase"
  echo "$top"
  echo '
      _,,--``````--,,_
     _,> -  `  `  - <,_
   ^`__________________`^
  /            z         \
 /               |,       \
 |      ,  /  [>(/ o=     |
 \      | /  /   |Y` |    /
  \     \ \ |    \  /`   /
   `^-,,_\_|/_____|_|,-^`
     `^--,,______,,--^`' | sed -z "s/\n/\n$lpad/g" | sed -z "s/z/$bubble/g" | sed -z "s/o/$eye/g"
  echo "$bot"
  sleep 0.4
  echo -en "$erase"
  echo "$top"
  echo '
      _,,--``````--,,_
     _,> -  `  `  - <,_
   ^`__________._______`^
  /                      \
 /               / |\     \
 |         ,     \(<o=o   |
 \     `\  \\    | `\`    /
  \      |  /|   /  |    /
   `^-,,_\_//____\_/,,-^`
     `^--,,______,,--^`' | sed -z "s/\n/\n$lpad/g" | sed -z "s/z/$bubble/g" | sed -z "s/o/$eye/g"
  echo "$bot"
  sleep 0.4
  echo -en "$erase"
  echo "$top"
  echo '
      _,,--``````--,,_
     _,> -  `  `  - <,_
   ^`_________. .______`^ 
  /                      \ 
 /               /  |\    \
 |      /  ,     |)(<o=o  |
 \      \  / /   \ /`Y`   /
  \      \ |\     ||     /
   `^-,,__\|/____/_\,,-^`
     `^--,,______,,--^`' | sed -z "s/\n/\n$lpad/g" | sed -z "s/z/$bubble/g" | sed -z "s/o/$eye/g"
  echo "$bot"
  sleep 0.4
  echo -en "$erase"
  echo "$top"
  echo '
      _,,--``````--,,_
     _,> -  `  `  - <,_
   ^`________. _ ._____`^
  /                      \
 /                ,  \    \
 |      ,  /     / <(o=o) |
 \      | /  /   |  `|`   /
  \     \ \ |    \  /`   /
   `^-,,_\_|/_____|_|,-^`
     `^--,,______,,--^`' | sed -z "s/\n/\n$lpad/g" | sed -z "s/z/$bubble/g" | sed -z "s/o/$eye/g"
  echo "$bot"
  sleep 0.4
  echo -en "$erase"
  echo "$top"
  echo '
      _,,--``````--,,_
     _,> -  `  `  - <,_
   ^`__________________`^
  /                      \
 /               /    |   \
 |         ,     \ <(o=o)>|
 \     `\  \\    |  \`Y`  /
  \      |  /|   /  |    /
   `^-,,_\_//____\_/,,-^`
     `^--,,______,,--^`' | sed -z "s/\n/\n$lpad/g" | sed -z "s/z/$bubble/g" | sed -z "s/o/$eye/g"
  echo "$bot"
  sleep 0.4
  echo -en "$erase"
  echo "$top"
  echo '
      _,,--``````--,,_
     _,> -  `  `  - <,_
   ^`__________________`^ 
  /                      \ 
 /               /    /   \
 |      /  ,     | (o=o)> |
 \      \  / /   \ / `Y`  /
  \      \ |\     ||     /
   `^-,,__\|/____/_\,,-^`
     `^--,,______,,--^`' | sed -z "s/\n/\n$lpad/g" | sed -z "s/z/$bubble/g" | sed -z "s/o/$eye/g"
  echo "$bot"
  sleep 0.4
  echo -en "$erase"
  echo "$top"
  echo '
      _,,--``````--,,_
     _,> -  `  `  - <,_
   ^`__________________`^
  /                      \
 /                ,  /|   \
 |      ,  /     / o=o>)( |
 \      | /  /   |  `Y`   /
  \     \ \ |    \  /`   /
   `^-,,_\_|/_____|_|,-^`
     `^--,,______,,--^`' | sed -z "s/\n/\n$lpad/g" | sed -z "s/z/$bubble/g" | sed -z "s/o/$eye/g"
  echo "$bot"
  sleep 0.4
  echo -en "$erase"
  echo "$top"
  echo '
      _,,--``````--,,_
     _,> -  `  `  - <,_
   ^`__________________`^ 
  /                      \ 
 /               /  /|    \
 |      /  ,     |=o >)<] |
 \      \  / /   \ `Y`    /
  \      \ |\     ||     /
   `^-,,__\|/____/_\,,-^`
     `^--,,______,,--^`' | sed -z "s/\n/\n$lpad/g" | sed -z "s/z/$bubble/g" | sed -z "s/o/$eye/g"
  echo "$bot"
  sleep 0.4
  echo -en "$erase"
  echo "$top"
  echo '
      _,,--``````--,,_
     _,> -  `  `  - <,_
   ^`__________________`^
  /                      \
 /                ,/|z    \
 |      ,  /     =o >)<]  |
 \      | /  /   |`Y`|    /
  \     \ \ |    \  /`   /
   `^-,,_\_|/_____|_|,-^`
     `^--,,______,,--^`' | sed -z "s/\n/\n$lpad/g" | sed -z "s/z/$bubble/g" | sed -z "s/o/$eye/g"
  echo "$bot"
  sleep 0.4
  echo -en "$erase"
  echo "$top"
  echo '
      _,,--``````--,,_
     _,> -  `  `  - <,_
   ^`__________________`^
  /                  z   \
 /               //|      \
 |         ,    =o >)<]   |
 \     `\  \\    `Y`\     /
  \      |  /|   /  |    /
   `^-,,_\_//____\_/,,-^`
     `^--,,______,,--^`' | sed -z "s/\n/\n$lpad/g" | sed -z "s/z/$bubble/g" | sed -z "s/o/$eye/g"
  echo "$bot"
  sleep 0.4
  echo -en "$erase"
  echo "$top"
  echo '
      _,,--``````--,,_
     _,> -  `  `  - <,_
   ^`________________._`^ 
  /                      \ 
 /               /|       \
 |      /  ,   =o >)<]    |
 \      \  / /  `Y`/      /
  \      \ |\     ||     /
   `^-,,__\|/____/_\,,-^`
     `^--,,______,,--^`' | sed -z "s/\n/\n$lpad/g" | sed -z "s/z/$bubble/g" | sed -z "s/o/$eye/g"
  echo "$bot"
  sleep 0.4
  echo -en "$erase"
  echo "$top"
  echo '
      _,,--``````--,,_
     _,> -  `  `  - <,_
   ^`_______________. .`^
  /                      \
 /              /|,       \
 |      ,  /  =o >)<]     |
 \      | /  / `Y`   |    /
  \     \ \ |    \  /`   /
   `^-,,_\_|/_____|_|,-^`
     `^--,,______,,--^`' | sed -z "s/\n/\n$lpad/g" | sed -z "s/z/$bubble/g" | sed -z "s/o/$eye/g"
  echo "$bot"
  sleep 0.4
  echo -en "$erase"
  echo "$top"
  echo '
      _,,--``````--,,_
     _,> -  `  `  - <,_
   ^`______________. _ `^
  /                      \
 /             /|/        \
 |         , =o >)<]      |
 \     `\  \\ `Y`|  \     /
  \      |  /|   /  |    /
   `^-,,_\_//____\_/,,-^`
     `^--,,______,,--^`' | sed -z "s/\n/\n$lpad/g" | sed -z "s/z/$bubble/g" | sed -z "s/o/$eye/g"
  echo "$bot"
  sleep 0.4
  echo -en "$erase"
  echo "$top"
  echo '
      _,,--``````--,,_
     _,> -  `  `  - <,_
   ^`__________________`^ 
  /                      \ 
 /           ./| /        \
 |      /  ,=o >)<]       |
 \      \  / `Y` \ /      /
  \      \ |\     ||     /
   `^-,,__\|/____/_\,,-^`
     `^--,,______,,--^`' | sed -z "s/\n/\n$lpad/g" | sed -z "s/z/$bubble/g" | sed -z "s/o/$eye/g"
  echo "$bot"
  sleep 0.4
  echo -en "$erase"
  echo "$top"
  echo '
      _,,--``````--,,_
     _,> -  `  `  - <,_
   ^`__________________`^
  /          z           \
 /           /|   ,       \
 |      ,  =o >)<]        |
 \      | / `Y`  |   |    /
  \     \ \ |    \  /`   /
   `^-,,_\_|/_____|_|,-^`
     `^--,,______,,--^`' | sed -z "s/\n/\n$lpad/g" | sed -z "s/z/$bubble/g" | sed -z "s/o/$eye/g"
  echo "$bot"
  sleep 0.4
  echo -en "$erase"
  echo "$top"
  echo '
      _,,--``````--,,_
     _,> -  `  `  - <,_
   ^`________._________`^
  /                      \
 /          /|   /        \
 |        =o >)<]\        |
 \     `\  `Y`   |  \     /
  \      |  /|   /  |    /
   `^-,,_\_//____\_/,,-^`
     `^--,,______,,--^`' | sed -z "s/\n/\n$lpad/g" | sed -z "s/z/$bubble/g" | sed -z "s/o/$eye/g"
  echo "$bot"
  sleep 0.4
  echo -en "$erase"
  echo "$top"
  echo '
      _,,--``````--,,_
     _,> -  `  `  - <,_
   ^`_______. .________`^ 
  /                      \ 
 /         /|    /        \
 |      /=o >)<] |        |
 \      \ `Y`/   \ /      /
  \      \ |\     ||     /
   `^-,,__\|/____/_\,,-^`
     `^--,,______,,--^`' | sed -z "s/\n/\n$lpad/g" | sed -z "s/z/$bubble/g" | sed -z "s/o/$eye/g"
  echo "$bot"
  sleep 0.4
  echo -en "$erase"
  echo "$top"
  echo '
      _,,--``````--,,_
     _,> -  `  `  - <,_
   ^`______. _ ._______`^
  /                      \
 /        /|      ,       \
 |      =o >)<]  /        |
 \      |`Y` /   |   |    /
  \     \ \ |    \  /`   /
   `^-,,_\_|/_____|_|,-^`
     `^--,,______,,--^`' | sed -z "s/\n/\n$lpad/g" | sed -z "s/z/$bubble/g" | sed -z "s/o/$eye/g"
  echo "$bot"
  sleep 0.4
  echo -en "$erase"
  echo "$top"
  echo '
      _,,--``````--,,_
     _,> -  `  `  - <,_
   ^`__________________`^
  /                      \
 /       /|      /        \
 |     =o >)<]   \        |
 \     ``Y`\\    |  \     /
  \      |  /|   /  |    /
   `^-,,_\_//____\_/,,-^`
     `^--,,______,,--^`' | sed -z "s/\n/\n$lpad/g" | sed -z "s/z/$bubble/g" | sed -z "s/o/$eye/g"
  echo "$bot"
  sleep 0.4
  echo -en "$erase"
  echo "$top"
  echo '
      _,,--``````--,,_
     _,> -  `  `  - <,_
   ^`__________________`^ 
  /                      \ 
 /      /|       /        \
 |    =o >)<]    |        |
 \     `Y` / /   \ /      /
  \      \ |\     ||     /
   `^-,,__\|/____/_\,,-^`
     `^--,,______,,--^`' | sed -z "s/\n/\n$lpad/g" | sed -z "s/z/$bubble/g" | sed -z "s/o/$eye/g"
  echo "$bot"
  sleep 0.4
  echo -en "$erase"
  echo "$top"
  echo '
      _,,--``````--,,_
     _,> -  `  `  - <,_
   ^`__________________`^
  /                      \
 /     /|         ,       \
 |   =o >)<]     /        |
 \    `Y` /  /   |   |    /
  \     \ \ |    \  /`   /
   `^-,,_\_|/_____|_|,-^`
     `^--,,______,,--^`' | sed -z "s/\n/\n$lpad/g" | sed -z "s/z/$bubble/g" | sed -z "s/o/$eye/g"
  echo "$bot"
  sleep 0.4
  echo -en "$erase"
  echo "$top"
  echo '
      _,,--``````--,,_
     _,> -  `  `  - <,_
   ^`__________________`^
  /                      \
 /    /|         /        \
 |  =o >)<],     \        |
 \   `Y` | \\    |  \     /
  \      |  /|   /  |    /
   `^-,,_\_//____\_/,,-^`
     `^--,,______,,--^`' | sed -z "s/\n/\n$lpad/g" | sed -z "s/z/$bubble/g" | sed -z "s/o/$eye/g"
  echo "$bot"
  sleep 0.4
  echo -en "$erase"
  echo "$top"
  echo '
      _,,--``````--,,_
     _,> -  `  `  - <,_
   ^`__________________`^
  /                      \
 /   /|           |       \
 |  o> )(  \      \       |
 \   \/  \  |,   / ,      /
  \       | /    \ \     /
   `^-,,__|//_____||,,-^`
     `^--,,______,,--^`' | sed -z "s/\n/\n$lpad/g" | sed -z "s/z/$bubble/g" | sed -z "s/o/$eye/g"
  echo "$bot"
  sleep 0.4
  echo -en "$erase"
  echo "$top"
  echo '
      _,,--``````--,,_
     _,> -  `  `  - <,_
   ^`__________________`^ 
  /                      \ 
 /   /\          /        \
 |  > |]/  ,     |        |
 \  `Y` \  / /   \ /      /
  \      \ |\     ||     /
   `^-,,__\|/____/_\,,-^`
     `^--,,_____,,--^`' | sed -z "s/\n/\n$lpad/g" | sed -z "s/z/$bubble/g" | sed -z "s/o/$eye/g"
  echo "$bot"
  sleep 0.4
  echo -en "$erase"
  echo "$top"
  echo '
      _,,--``````--,,_
     _,> -  `  `  - <,_
   ^`__________________`^
  /                      \
 /  /\            ,       \
 |<([])>   /     /        |
 \  \/  | /  /   |   |    /
  \     \ \ |    \  /`   /
   `^-,,_\_|/_____|_|,-^`
     `^--,,______,,--^`' | sed -z "s/\n/\n$lpad/g" | sed -z "s/z/$bubble/g" | sed -z "s/o/$eye/g"
  echo "$bot"
  sleep 0.4
  echo -en "$erase"
  echo "$top"
  echo '
      _,,--``````--,,_
     _,> -  `  `  - <,_
   ^`__________________`^
  /                      \
 /  ./\          /        \
 | <[| <   ,     \        |
 \  `Y``\  \\    |  \     /
  \      |  /|   /  |    /
   `^-,,_\_//____\_/,,-^`
     `^--,,______,,--^`' | sed -z "s/\n/\n$lpad/g" | sed -z "s/z/$bubble/g" | sed -z "s/o/$eye/g"
  echo "$bot"
  sleep 0.4
  echo -en "$erase"
  echo "$top"
  echo '
      _,,--``````--,,_
     _,> -  `  `  - <,_
   ^`__________________`^
  / z                    \
 /   |\           |       \
 |  <[( ,  \      \       |
 \   `Y` \  |,   / ,      /
  \       | /    \ \     /
   `^-,,__|//_____||,,-^`
     `^--,,______,,--^`' | sed -z "s/\n/\n$lpad/g" | sed -z "s/z/$bubble/g" | sed -z "s/o/$eye/g"
  echo "$bot"
  sleep 0.4
  echo -en "$erase"
  echo "$top"
  echo '
      _,,--``````--,,_
     _,> -  `  `  - <,_
   ^`._________________`^ 
  /                      \ 
 /    |\         /        \
 |  )( </  ,     |        |
 \    `Y\  / /   \ /      /
  \      \ |\     ||     /
   `^-,,__\|/____/_\,,-^`
     `^--,,______,,--^`' | sed -z "s/\n/\n$lpad/g" | sed -z "s/z/$bubble/g" | sed -z "s/o/$eye/g"
  echo "$bot"
  sleep 0.4
  echo -en "$erase"
  echo "$top"
  echo '
      _,,--``````--,,_
     _,> -  `  `  - <,_
   ^` .________________`^
  /                      \
 /     |\         ,       \
 |   )( ,o /     /        |
 \     `|`/  /   |   |    /
  \     \ \ |    \  /`   /
   `^-,,_\_|/_____|_|,-^`
     `^--,,______,,--^`' | sed -z "s/\n/\n$lpad/g" | sed -z "s/z/$bubble/g" | sed -z "s/o/$eye/g"
  echo "$bot"
  sleep 0.4
  echo -en "$erase"
  echo "$top"
  echo '
      _,,--``````--,,_
     _,> -  `  `  - <,_
   ^`_ ._______________`^
  /                      \
 /      |\ .      |       \
 |   [>(, o\      \       |
 \      `\` |,   / ,      /
  \       | /    \ \     /
   `^-,,__|//_____||,,-^`
     `^--,,______,,--^`' | sed -z "s/\n/\n$lpad/g" | sed -z "s/z/$bubble/g" | sed -z "s/o/$eye/g"
  echo "$bot"
  sleep 0.4
  echo -en "$erase"
  echo "$top"
  echo '
      _,,--``````--,,_
     _,> -  `  `  - <,_
   ^`__________________`^ 
  /        z             \ 
 /       |\      /        \
 |    [>/< ,=    |        |
 \      \`Y/ /   \ /      /
  \      \ |\     ||     /
   `^-,,__\|/____/_\,,-^`
     `^--,,______,,--^`' | sed -z "s/\n/\n$lpad/g" | sed -z "s/z/$bubble/g" | sed -z "s/o/$eye/g"
  echo "$bot"
  sleep 0.4
  echo -en "$erase"
  echo "$top"
  echo '
      _,,--``````--,,_
     _,> -  `  `  - <,_
   ^`______.___________`^
  /                      \
 /        |\      ,       \
 |     [,(</o=   /        |
 \      | /Y`/   |   |    /
  \     \ \ |    \  /`   /
   `^-,,_\_|/_____|_|,-^`
     `^--,,______,,--^`' | sed -z "s/\n/\n$lpad/g" | sed -z "s/z/$bubble/g" | sed -z "s/o/$eye/g"
  echo "$bot"
  sleep 0.4
  echo -en "$erase"
  echo "$top"
  echo '
      _,,--``````--,,_
     _,> -  `  `  - <,_
   ^`_____. .__________`^
  /                      \
 /         |\    /        \
 |      [>(, o=  \        |
 \     `\  \\`   |  \     /
  \      |  /|   /  |    /
   `^-,,_\_//____\_/,,-^`
     `^--,,______,,--^`' | sed -z "s/\n/\n$lpad/g" | sed -z "s/z/$bubble/g" | sed -z "s/o/$eye/g"
  echo "$bot"
  sleep 0.4
  echo -en "$erase"
  echo "$top"
  echo '
      _,,--``````--,,_
     _,> -  `  `  - <,_
   ^`____. _ ._________`^
  /                      \
 /          |\    |       \
 |      ,[>\< o=  \       |
 \       \  |,`  / ,      /
  \       | /    \ \     /
   `^-,,__|//_____||,,-^`
     `^--,,______,,--^`' | sed -z "s/\n/\n$lpad/g" | sed -z "s/z/$bubble/g" | sed -z "s/o/$eye/g"
  echo "$bot"
  sleep 0.4
  echo -en "$erase"
done

