#!/usr/bin/expect -f
#jvogel script was created with autoextract and then passowrd was fixed

set timeout -1
spawn git pull
match_max 100000
expect -exact "Username for 'https://github.com': "
send -- "john.vogel123@gmail.com\r"
expect -exact "john.vogel123@gmail.com\r
Password for 'https://john.vogel123@gmail.com@github.com': "
send -- "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\r"
expect eof
