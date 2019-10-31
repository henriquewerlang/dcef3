unit cefreg;

{$I ..\src\cef.inc}
{$R chromium.dcr}
interface

procedure Register;

implementation
uses
  Classes,
{$IF Defined(VCL)}
  cefvcl
{$ELSEIF Defined(FMX) and Defined(VCL)}
    ,
{$ELSEIF Defined(FMX)}
  ceffmx
{$IFEND}
  ;

procedure Register;
begin
  RegisterComponents('Chromium', [
{$IF Defined(VCL)}
    TChromiumDevTools, TChromium, TChromiumOSR
{$ELSEIF Defined(FMX) and Defined(VCL)}
    ,
{$ELSEIF Defined(FMX)}
    TChromiumFMX
{$IFEND}
    ]);
end;

end.
