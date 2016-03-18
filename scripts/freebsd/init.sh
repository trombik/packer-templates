#!/bin/sh

set -e
set -x

sed -e 's/\(ttyv[^0].*getty.*\)on /\1off/' /etc/ttys | sudo tee /etc/ttys > /dev/null

sudo tee -a /etc/rc.conf <<EOF
ifconfig_vtnet0_name="em0"
ifconfig_vtnet1_name="em1"
ifconfig_vtnet2_name="em2"
ifconfig_vtnet3_name="em3"
sendmail_enable="NO"
sendmail_submit_enable="NO"
sendmail_outbound_enable="NO"
sendmail_msp_queue_enable="NO"
EOF
