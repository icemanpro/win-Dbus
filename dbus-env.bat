:: environment setting for dbus clients
@echo off

:: session bus address
set DBUS_SESSION_BUS_ADDRESS=tcp:host=localhost,port=54321,family=ipv4

:: system bus address
set DBUS_SYSTEM_BUS_DEFAULT_ADDRESS=nonce-tcp: 
