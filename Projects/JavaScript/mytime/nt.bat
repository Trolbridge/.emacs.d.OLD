set delay=4
:loop
@time 0:03:00
TIMEOUT %delay%
@time 0:01:00
::TIMEOUT %delay%
::GOTO :loop
