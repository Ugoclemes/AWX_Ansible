@echo off

query  session | findstr Active | find /v "" /c