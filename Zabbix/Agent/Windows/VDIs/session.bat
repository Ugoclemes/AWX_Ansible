@echo off

query  session | findstr /I "Ativo Active" | find /v "" /c