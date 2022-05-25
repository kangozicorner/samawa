unit uabout;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, LCLIntf, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  ECLink;

type

  { TFAbout }

  TFAbout = class(TForm)
    btclose: TButton;
    ECLink1: TECLink;
    ECLink2: TECLink;
    goChromium: TImage;
    goCT: TImage;
    goFPC: TImage;
    goLazarus: TImage;
    Image1: TImage;
    Image6: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Panel1: TPanel;
    procedure btcloseClick(Sender: TObject);
    procedure goChromiumClick(Sender: TObject);
    procedure goCTClick(Sender: TObject);
    procedure goFPCClick(Sender: TObject);
    procedure goLazarusClick(Sender: TObject);
  private

  public

  end;

var
  FAbout: TFAbout;

implementation

{$R *.frm}

{ TFAbout }

procedure TFAbout.goLazarusClick(Sender: TObject);
begin
    OpenURL('https://www.lazarus-ide.org');
end;

procedure TFAbout.goFPCClick(Sender: TObject);
begin
    OpenURL('https://www.freepascal.org');
end;

procedure TFAbout.goCTClick(Sender: TObject);
begin
    OpenURL('https://www.pilotlogic.com/sitejoom/');
end;

procedure TFAbout.goChromiumClick(Sender: TObject);
begin
    OpenURL('https://cef-builds.spotifycdn.com/index.html');
end;

procedure TFAbout.btcloseClick(Sender: TObject);
begin
  close;
end;

end.

