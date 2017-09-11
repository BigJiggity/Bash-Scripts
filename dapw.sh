#!/bin/bash

dakey='No m0re stup!d pa$$words.'
echo -n "${dakey}+$1" | openssl md5 | tail -c 16

