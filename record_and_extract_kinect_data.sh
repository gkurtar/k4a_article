
sleep 1
echo BASLIYOR
sleep 1

for i in {1..15}
do
   echo "Welcome $i times"
   echo -en "\007"
   #touch deneme$i.xx
   k4arecorder.exe -c 3072p -d NFOV_UNBINNED --imu OFF -l 1 data$i.mkv

   for j in {0..2}
   do
	  ffmpeg.exe -i data$i.mkv -vf "select=eq(n\, 5)" -map 0:$j -vframes 1 data$i\track$j.png
   done
   
   sleep 10
done

echo -en "\007"
echo -en "\007"
echo OK

