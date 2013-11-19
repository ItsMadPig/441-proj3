################################################################################
# Makefile                                                                     #
#                                                                              #
# Description: This file contains the make rules for Recitation 1.             #
#                                                                              #
# Authors: Athula Balachandran <abalacha@cs.cmu.edu>,                          #
#          Wolf Richter <wolf@cs.cmu.edu>                                      #
#                                                                              #
################################################################################

default: proxy echo_client

proxy: proxy.c helper.c http_parser.c
	gcc proxy.c helper.c http_parser.c -o proxy -Wall

echo_client: echo_client.c helper.c
	gcc echo_client.c helper.c -o echo_client -Wall

clean:
	rm -rf proxy echo_client *~
