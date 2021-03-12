#!/bin/bash
 
cat $1_Dealer_schedule | grep "$2 $3" | awk '{print $1, $2, $5, $6}' >> Dealers_working_during_losses.txt

