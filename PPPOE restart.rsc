/interface pppoe-client
:foreach i in=[/interface pppoe-client find disabled=no] do={	
	:log warning ([get $i name] . " restarting...")
	[disable $i]
	:delay 3s
	[enable $i]
}