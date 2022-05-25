unit usplash;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TFsplash }

  TFsplash = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    lbTerminate: TLabel;
    tmLoad: TTimer;
    procedure FormShow(Sender: TObject);
    procedure lbTerminateClick(Sender: TObject);

    procedure tmLoadTimer(Sender: TObject);
  private

  public
  h : integer;
  end;

var
  Fsplash: TFsplash;

implementation

{$R *.frm}

{ TFsplash }

procedure TFsplash.FormShow(Sender: TObject);
begin
  h := 0 ;
  tmLoad.Enabled:=true;
end;

procedure TFsplash.lbTerminateClick(Sender: TObject);
begin
  Application.Terminate;
end;



procedure TFsplash.tmLoadTimer(Sender: TObject);
begin
  Inc(h);
  if h=4 then
     begin
     close;
     tmLoad.Enabled:=false;
     end;
end;

end.

