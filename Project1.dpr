program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  strMessage: string;

begin
  strMessage := 'Hello World!';
  writeln (strMessage);
  readln;
end.
