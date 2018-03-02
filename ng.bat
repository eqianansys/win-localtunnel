@echo off
setlocal enableextensions enabledelayedexpansion
rem call exception init
title Dev Local Tunnel

@echo Starting tunnel...
@echo !date! !time!
@for /L %%n in (1,0,10) do @(
		echo lt --port 80 --subdomain YOURSUBDOMAIN --local-host localhost/dev && (
		lt --port 80 --subdomain YOURSUBDOMAIN --local-host localhost/dev
	) || (
		echo.
		echo reconnecting tunnel...
		echo.
	)

	rem use rem as it is the proper comment do not use ::
)