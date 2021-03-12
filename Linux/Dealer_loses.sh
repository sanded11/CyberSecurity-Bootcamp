#!/bin/bash

grep $1 $2_Dealer_schedule | grep $3 | awk '{print $1, $2, $5, $6}' >> Dealers_working_during_losses.txt

