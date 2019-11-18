#!/bin/bash

PS3='Selecciona una opcio: '
options=("Aleatori" "Pantalla_Completa" "Repetir_Llista" "Elegir_Cançons" "Video_al_minuto" "Video_Wall" "Webcam" "Subtitulos")
select opt in "${options[@]}"
do
    case $opt in
        "Aleatori")
   clear
            vlc --random /home/$USER/VLC_playlist
            break
   ;;
        "Pantalla_Completa")
   clear
            vlc --fullscreen /home/$USER/VLC_playlist
   break
            ;;
        "Repetir_Llista")
            vlc --loop /home/$USER/VLC_playlist
   break
            ;;
        "Elegir_Cançons")
   clear
   ls /home/$USER/VLC_playlist
   echo Indica una carpeta:
   read patro1  
     ls /home/$USER/VLC_playlist/*$patro1*
   echo Indica una canço:
   read patro2
   llista=$(ls /home/$USER/VLC_playlist/*$patro1*/*$patro2*)
   echo $llista
   vlc "$llista"
   break
            ;;
"Video_al_minuto")
   ls /home/$USER/VLC_playlist
   echo Indica una carpeta:
   read patro1  
     ls /home/$USER/VLC_playlist/*$patro1*
   echo Indica una canço:
   read patro2
   llista=$(ls /home/$USER/VLC_playlist/*$patro1*/*$patro2*)
   echo Indica el segundo de inicio:
   read seginicio
   echo Indica el segundo de finalización:
   read segfinal
     vlc --start-time=$seginicio --stop-time=$segfinal /home/$USER/VLC_playlist/*$patro1*/*$patro2*
   ;;
        "Video_Wall")
   ls /home/$USER/VLC_playlist
   echo Indica una carpeta:
   read patro1  
     ls /home/$USER/VLC_playlist/*$patro1*
   echo Indica una canço:
   read patro2
   llista=$(ls /home/$USER/VLC_playlist/*$patro1*/*$patro2*)
   echo $llista
   echo Indica les columnes:
   read columnas
   echo Indica les files:
   read fila
   vlc --wall-cols $columnas vlc --wall-row=$filas --wall-active NULL /home/$USER/VLC_playlist/*$patro1*/*$patro2*
   ;;
"Webcam")
   clear
   vlc -vvv v4l2:///dev/video0
   ;;
"Subtitulos")
   clear
   ls /home/$USER/VLC_playlist/
   echo Indica una carpeta:
   read patro1  
     ls /home/$USER/VLC_playlist/*$patro1*
   echo Indica una canço:
   read patro2
     ls /home/$USER/VLC_playlist/*$patro1*
   llista1=$(ls /home/$USER/VLC_playlist/*$patro1*/*$patro2*)
   echo "Introducir archivo que contiene los subtitulos:"
   read sub  
   vlc /home/$USER/VLC_playlist/*$patro1*/*$patro2* :sub-file=/home/$USER/VLC_playlist/*$patro1*/*$sub*
   ;;
    esac
done
