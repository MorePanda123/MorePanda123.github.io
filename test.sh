#! /bin/bash

# MAVID=1
MAVID=`head -n 1 ~/Documents/MAVID.txt`
MAVNUM=3
TARGETNUM=3
TOTALNUM=$((${MAVNUM}+${TARGETNUM}))
USE_PIX=false
# RflySim仿真参数
UE4IP="192.168.110.145"

echo "this MAV id : ${MAVID}"
echo "MAV number : ${MAVNUM}"


roslaunch offboard_pkg bs_mavros.launch  mav_id:=${MAVID} use_pix:=${USE_PIX} port1:=`expr ${MAVID} \* 2 + 20099` port2:=`expr ${MAVID} \* 2 + 20098` & PID1=$!
sleep 2s
roslaunch bs_assis bs_dds.launch  mav_id:=${MAVID} mav_num:=${TOTALNUM} & PID2=$!
sleep 2s
roslaunch rflysim_sensor_rospkg rgb_newprotocol_cpp.launch & PID3=$!
sleep 2s
roslaunch simulation rflysim_sphere.launch & PID4=$!
sleep 2s
roslaunch simulation sim_mcl.launch  mav_id:=${MAVID} & PID5=$!
sleep 2s
roslaunch mcl mcl_filter_sim.launch  mav_id:=${MAVID} mav_num:=${MAVNUM} & PID6=$!
sleep 2s
roslaunch decision allocation.launch  mav_id:=${MAVID} mav_num:=${MAVNUM} & PID7=$!
sleep 2s

# exit
wait
kill -9 PID1 PID2 PID3 PID4 PID5 PID6 PID7&
exit