#!/bin/bash
set -xv

refresh_token=`curl \
-d "client_id=course-management" -d "client_secret=EEuvLRZauOsOSItDwWOOG25TdxLJuGLG" \
-d "username=alen.tuning" -d "password=12345678" \
-d "grant_type=password"  \
-d "scope=offline_access"  \
http://192.168.1.160:8080/auth/realms/university/protocol/openid-connect/token  | jq -r '.refresh_token'`

#iter 2

curl \
-d "client_id=course-management" -d "client_secret=EEuvLRZauOsOSItDwWOOG25TdxLJuGLG" \
-d "grant_type=refresh_token" \
http://192.168.1.160:8080/auth/realms/university/protocol/openid-connect/token   \
 -d "refresh_token=$refresh_token" | jq

sleep 200

#iter 3
curl \
-d "client_id=course-management" -d "client_secret=EEuvLRZauOsOSItDwWOOG25TdxLJuGLG" \
-d "grant_type=refresh_token" \
http://192.168.1.160:8080/auth/realms/university/protocol/openid-connect/token   \
 -d "refresh_token=$refresh_token" | jq

sleep 200

#iter 4

curl \
-d "client_id=course-management" -d "client_secret=EEuvLRZauOsOSItDwWOOG25TdxLJuGLG" \
-d "grant_type=refresh_token" \
http://192.168.1.160:8080/auth/realms/university/protocol/openid-connect/token   \
 -d "refresh_token=$refresh_token" | jq
