unit umain;

{$mode objfpc}{$H+}

interface

uses
  Windows, Classes, SysUtils, dbf, DB, fpsUtils, csvdataset, SQLDB, FileUtil,
  RTTICtrls, LR_Class, LR_DBSet, LR_E_HTM, Forms, Controls, Graphics, Dialogs,
  ExtCtrls, StdCtrls, LMessages, DBGrids, Menus, Buttons, ComCtrls, Spin,
  ATScrollBar, TplSpinEditUnit, TplScrollbarUnit, rxDBGridExportSpreadSheet,
  IdIPWatch, rxdbgrid, rxspin, uCEFChromium, uCEFWindowParent, uCEFInterfaces,
  uSapa, uCEFConstants, uCEFTypes, uCEFChromiumEvents, StrUtils, Math,
  fphttpclient, process, uScript, ucetak,DateUtils,Clipbrd,

  // unit dari form
  uphonebook,
  ugoodbye,
  usendlog,
  uabout,
  uschedule,
  uimpor,
  uview,
  upicture,
  uregistration,
  utemplate,
  usplash,
  upesan,
  usettingproxy,
  uvcfmaker,
  uqmessage   ,
  uInformasi,
  ukozinfo,
 //***************

  ZConnection,
  LCLIntf,
  ZDataset,
  ubugfix,
  fpspreadsheetctrls,
  fpspreadsheetgrid,
  Grids,
  urlmon,
  DBCtrls;

type
  { TFMain }
  TFMain = class(TForm)
    CEFWindowParent1: TCEFWindowParent;
    ckAutoSend: TCheckBox;
    ckRandom: TCheckBox;
    ckSplit: TCheckBox;
    ckShowTanggal: TCheckBox;
    ckLimit: TCheckBox;
    cbJMessage: TComboBox;
    DataContact1: TZTable;
    DataContactCEMAIL1: TStringField;
    DataContactCNAME1: TStringField;
    DataContactCNUMBER1: TStringField;
    DataContactCPIC1: TStringField;
    DataContactID1: TLargeintField;
    DataContactIDC1: TStringField;
    DataMessage1: TZTable;
    DataSource1: TDataSource;
    DCetak: TZTable;
    DBImage1: TDBImage;
    DSDataBanner: TDataSource;
    DSVCF: TDataSource;
    DVCF: TZTable;
    EFindCustomers: TEdit;
    Epage: TEdit;
    EFailedSend: TEdit;
    ENotSend: TEdit;
    ESuccessSend: TEdit;
    CetakLaporan: TfrReport;
    frDBDataSet1: TfrDBDataSet;
    frHTMExport1: TfrHTMExport;
    IdIPWatch1: TIdIPWatch;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    imgMenu: TImageList;
    ivAkhir: TrxSpinEdit;
    ivAwal: TrxSpinEdit;
    ke: TLabel;
    ke1: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    EMemo: TMemo;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    lbreg: TLabel;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
    MenuItem17: TMenuItem;
    mnGoMon: TMenuItem;
    mnGoMap: TMenuItem;
    mnGoWA: TMenuItem;
    mnPopularity: TMenuItem;
    mnShowMonitoring: TMenuItem;
    mncekUpdate: TMenuItem;
    mnSetting: TMenuItem;
    mnJadwalkan: TMenuItem;
    mnJadwal: TMenuItem;
    mnHapusNotValid: TMenuItem;
    mnSaveDB: TMenuItem;
    mnRestoreDB: TMenuItem;
    mnShowAll: TMenuItem;
    mnOnlySend: TMenuItem;
    mnOnlyFailedSend: TMenuItem;
    mnOnlyYetSend: TMenuItem;
    mnLock: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    mnTest: TMenuItem;
    mnQMessage: TMenuItem;
    MenuItem8: TMenuItem;
    mnBug: TMenuItem;
    mnGoogleContact: TMenuItem;
    MenuItem6: TMenuItem;
    mnExportVCF: TMenuItem;
    mnDelete: TMenuItem;
    mnDeleteAll: TMenuItem;
    MenuItem4: TMenuItem;
    mnDeletePlus: TMenuItem;
    mnDeleteMin: TMenuItem;
    MenuItem7: TMenuItem;
    mnExportCSV: TMenuItem;
    dbOpen: TOpenDialog;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    Panel20: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel9: TPanel;
    Process1: TProcess;
    progsend: TProgressBar;
    grdSendMessage: TrxDBGrid;
    grdExporExcel: TrxDBGridExportSpreadSheet;
    RxDBGridExportSpreadSheet1: TRxDBGridExportSpreadSheet;
    savDlg: TSaveDialog;
    dbSave: TSaveDialog;
    spBugFix1: TSpeedButton;
    spSettingLog: TSpeedButton;
    spLogToServer: TSpeedButton;
    spFullscreen: TSpeedButton;
    spCheck: TSpeedButton;
    Splitter4: TSplitter;
    spPage: TScrollBar;
    spPrint: TSpeedButton;
    spReset: TSpeedButton;
    spReset3: TSpeedButton;
    spExcel: TSpeedButton;
    spSetting: TSpeedButton;
    spQuit: TSpeedButton;
    svDown: TSaveDialog;
    spWa: TImage;
    rbloop: TCheckBox;
    ckTemplate: TCheckBox;
    ImageList1: TImageList;
    mSource: TMemo;
    popSend: TPopupMenu;
    ckWithPic: TCheckBox;
    Chromium1: TChromium;
    cbTemplate: TComboBox;
    DataContact: TZTable;
    DataContactCEMAIL: TStringField;
    DataContactCNAME: TStringField;
    DataContactCNUMBER: TStringField;
    DataContactCPIC: TStringField;
    DataContactID: TLargeintField;
    DataContactIDC: TStringField;
    DataMessage: TZTable;
    DSDataSend: TDataSource;
    DSDataContact: TDataSource;
    DSDataMessage: TDataSource;
    Esend: TEdit;
    ENomorWA: TEdit;
    ENama: TEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    gbPicture: TGroupBox;
    ImageBlank: TImage;
    picAttach: TImage;
    Label2: TLabel;
    Label3: TLabel;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    mnManual: TMenuItem;
    mnAbout: TMenuItem;
    MenuItem14: TMenuItem;
    mnNew: TMenuItem;
    mnImpor: TMenuItem;
    mnTemplate: TMenuItem;
    mnPrint: TMenuItem;
    mnQuit: TMenuItem;
    MenuItem9: TMenuItem;
    menuMain: TMainMenu;
    Panel1: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    pnLeft: TPanel;
    pnBottom: TPanel;
    pnWebWA: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    pnSend: TPanel;
    spBugFix: TSpeedButton;
    spNew: TSpeedButton;
    spDown: TSpeedButton;
    spNext: TSpeedButton;
    spUp: TSpeedButton;
    spStop: TSpeedButton;
    spSend: TSpeedButton;
    spTemplate: TSpeedButton;
    spImport: TSpeedButton;
    spView: TSpeedButton;
    spPrior: TSpeedButton;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    Splitter3: TSplitter;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    tmLimit: TTimer;
    tmbanner: TTimer;
    tmSendWithPic: TTimer;
    tmCekInet: TTimer;
    tmLoopSolution: TTimer;
    tmLoopCekCode: TTimer;
    ZServer: TZConnection;
    ZKoneksi: TZConnection;
    DataGetPhone: TZQuery;
    DataGetM: TZQuery;
    DataGet: TZQuery;
    DataBanner: TZQuery;
    DataSend2: TZQuery;
    DConfiguration: TZTable;
    ZVCF: TZConnection;
    procedure cbJMessageChange(Sender: TObject);
    procedure cbTemplateChange(Sender: TObject);

    procedure Chromium1BeforeDownload(Sender: TObject;
      const browser: ICefBrowser; const downloadItem: ICefDownloadItem;
      const suggestedName: ustring; const callback: ICefBeforeDownloadCallback);
    procedure Chromium1TextResultAvailable(Sender: TObject; const aText: ustring
      );
    procedure ckAutoSendClick(Sender: TObject);
    procedure Chromium1AfterCreated(Sender: TObject; const browser: ICefBrowser
      );
    procedure Chromium1BeforeClose(Sender: TObject; const browser: ICefBrowser);
    procedure Chromium1BeforePopup(Sender: TObject; const browser: ICefBrowser;
      const frame: ICefFrame; const targetUrl, targetFrameName: ustring;
      targetDisposition: TCefWindowOpenDisposition; userGesture: Boolean;
      const popupFeatures: TCefPopupFeatures; var windowInfo: TCefWindowInfo;
      var client: ICefClient; var settings: TCefBrowserSettings;
      var noJavascriptAccess: Boolean; var Result: Boolean);
    procedure Chromium1Close(Sender: TObject; const browser: ICefBrowser; out
      Result: Boolean);
    procedure Chromium1DownloadUpdated(Sender: TObject;
      const browser: ICefBrowser; const downloadItem: ICefDownloadItem;
      const callback: ICefDownloadItemCallback);
    procedure ckLimitClick(Sender: TObject);
    procedure ckSplitClick(Sender: TObject);
    procedure ckTemplateClick(Sender: TObject);
    procedure ckUsePhonebookClick(Sender: TObject);
    procedure ckWithPicChange(Sender: TObject);
    procedure ckWithPicClick(Sender: TObject);
    procedure DataSend2AfterOpen(DataSet: TDataSet);
    procedure EFindCustomersChange(Sender: TObject);
    procedure EMemoChange(Sender: TObject);
    procedure ENomorWAChange(Sender: TObject);
    procedure EsendChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure grdDataCCellClick(Column: TColumn);
    procedure grdExporExcelAfterExecute(Sender: TObject);
     procedure grdSendMessageCellClick(Column: TColumn);
    procedure grdSendMessageDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ivAkhirChange(Sender: TObject);
    procedure ivAwalChange(Sender: TObject);
    procedure mnGoMapClick(Sender: TObject);
    procedure mnGoMonClick(Sender: TObject);
    procedure mnGoWAClick(Sender: TObject);
    procedure mnPopularityClick(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure mnBugClick(Sender: TObject);
    procedure mncekUpdateClick(Sender: TObject);
    procedure mnGetPesanClick(Sender: TObject);
    procedure mnDeleteMinClick(Sender: TObject);
    procedure mnDeleteAllClick(Sender: TObject);
    procedure mnDeleteClick(Sender: TObject);
    procedure mnDeletePlusClick(Sender: TObject);
    procedure mnExportCSVClick(Sender: TObject);
    procedure mnExportVCFClick(Sender: TObject);
    procedure mnGoogleClick(Sender: TObject);
    procedure mnGoogleContactClick(Sender: TObject);
    procedure mnHapusNotValidClick(Sender: TObject);
    procedure mnJadwalClick(Sender: TObject);
    procedure mnJadwalkanClick(Sender: TObject);
    procedure mnKozProjClick(Sender: TObject);
    procedure mnLockClick(Sender: TObject);
    procedure mnOnlyFailedSendClick(Sender: TObject);
    procedure mnOnlySendClick(Sender: TObject);
    procedure mnOnlyYetSendClick(Sender: TObject);
    procedure mnQuitClick(Sender: TObject);
    procedure mnManualClick(Sender: TObject);
    procedure mnPrintClick(Sender: TObject);
    procedure mnRegisterClick(Sender: TObject);
    procedure mnResetClick(Sender: TObject);
    procedure mnRepairClick(Sender: TObject);
    procedure mnAboutClick(Sender: TObject);
    procedure mnRestoreDBClick(Sender: TObject);
    procedure mnSaveDBClick(Sender: TObject);
    procedure mnScriptClick(Sender: TObject);
    procedure mnServerLogClick(Sender: TObject);
    procedure mnSettingClick(Sender: TObject);
    procedure mnShowAllClick(Sender: TObject);
    procedure mnShowInpectmentClick(Sender: TObject);
    procedure mnShowMonitoringClick(Sender: TObject);
    procedure mnTestClick(Sender: TObject);
    procedure mnWhatsappClick(Sender: TObject);
    procedure rbloopClick(Sender: TObject);
    procedure spBugFix1Click(Sender: TObject);
    procedure spBugFixClick(Sender: TObject);
    procedure spCheckClick(Sender: TObject);
    procedure spDownClick(Sender: TObject);
    procedure spFullscreenClick(Sender: TObject);
    procedure spGoMapClick(Sender: TObject);
    procedure spGoMonClick(Sender: TObject);
    procedure spGoWAClick(Sender: TObject);
    procedure spImportClick(Sender: TObject);
    procedure spInfoClick(Sender: TObject);
    procedure spLogToServerClick(Sender: TObject);
    procedure spNewClick(Sender: TObject);
    procedure spNextClick(Sender: TObject);
    procedure spPageChange(Sender: TObject);
    procedure spPesanClick(Sender: TObject);
    procedure spPhonebookClick(Sender: TObject);
    procedure spPriorClick(Sender: TObject);
    procedure spQuitClick(Sender: TObject);
    procedure spSendClick(Sender: TObject);
    procedure spSendMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer
      );
    procedure spSettingClick(Sender: TObject);
    procedure spSettingLogClick(Sender: TObject);
    procedure spStopClick(Sender: TObject);
    procedure spTemplateClick(Sender: TObject);
    procedure spUpClick(Sender: TObject);
    procedure spQMessageClick(Sender: TObject);
    procedure spViewClick(Sender: TObject);
    procedure spWaClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure LoadAwal;
    procedure tmbannerTimer(Sender: TObject);
    procedure tmLimitStartTimer(Sender: TObject);
    procedure tmLoopCekCodeTimer(Sender: TObject);
    procedure tmLoopSolutionTimer(Sender: TObject);
    procedure tmSendWithPicTimer(Sender: TObject);
    procedure Catat(j:integer);


  private

    Fabout        :TFabout;
    FGoodBy       :TfrmGoodBy;
    Fphonebook    :TFphonebook;
    Fview         :TFview;
    Fpicture      :TFpicture;
    Fregistration :TFregistration;
    Ftemplate     :TFtemplate;
    FSplash       :TFsplash;
    FBugFix       :TFBugFix;
    FPesan        :TFPesan;
    FImpor        :TFImpor;
    FSettingproxy : TFsettingproxy;
    Fvcfmaker    : TFvcfmaker;
    FInformasi   : TFInformasi;
    Fkozinfo     : TFkozinfo;
    FSapa        : TFSapa;
    FScriptWA    : TfrmScriptWA;
    FCetak       : TfrmCetak;
    FSchedule    : TfrmSchedule;
    FSendLog     : TfrmSendLog;
  protected
    // Variables to control when can we destroy the form safely
    FCanClose  : boolean;  // Set to True in TChromium.OnBeforeClose
    FClosing   : boolean;  // Set to True in the CloseQuery event. 

    // You have to handle this two messages to call NotifyMoveOrResizeStarted or some page elements will be misaligned.
    procedure WMMove(var aMessage : TWMMove); message WM_MOVE;
    procedure WMMoving(var aMessage : TMessage); message WM_MOVING;
    // You also have to handle these two messages to set GlobalCEFApp.OsmodalLoop
    procedure WMEnterMenuLoop(var aMessage: TMessage); message WM_ENTERMENULOOP;
    procedure WMExitMenuLoop(var aMessage: TMessage); message WM_EXITMENULOOP;

    procedure BrowserCreatedMsg(var aMessage : TMessage); message CEF_AFTERCREATED;
    procedure BrowserDestroyMsg(var aMessage : TMessage); message CEF_DESTROY;
  public
   procedure setProxy;
   procedure SendONeMessage(n,s:string);
  private

    Procedure PrepareSend(a:boolean);

    procedure Resume ;
    procedure recordlog(n,s:string);
    procedure CekAct;
    function GetNewVersion:string;
    function CompareVersion:string;

    function cekLoginWa:boolean;

    Function GetIpLocal:String;    // Tidak digunakan karena IP Adress berganti-ganti

    function tanggal(y:boolean):string;

    procedure CMessageByTemplate(byref:boolean) ;
    procedure CMessageByExcel(byref:boolean);
    procedure ConnetToWA;
    procedure GetPesan;
    procedure SplitDaftarPesan(i:integer);

    // Procedure Terkait Database Server Monitoring

    procedure GetDBServer;
    procedure LogSend(nom,nam,isi,id,tg_tugas,nam_tugas,nam_petugas:string;tg_kirim : TDate);
    procedure LogNotSend(nom,nam,isi,id,tg_tugas,nam_tugas,nam_petugas:string;tg_kirim : TDate);


    //------------



    procedure DoInspectElement(p:TPoint);


    const VERSI = '0.7.2.007 [25 MARET 2021]';

  public

    G_USER_APP        : String;
    G_SERIAL_APP      : String;
    G_KODE_APP        : STring;
    G_EMAIL           : STring;
    G_KOTA            : String;
    G_PROV            : String;

    S_CANCEL_END      : String;
    S_SEND_TEXT       : String;
    S_WITH_PICTURE    : String;
    S_AUTOSEND_WITP   : String;
    S_TEXTBOX_MESSAGE : String;
    S_CHECK_LOGIN     : String;

    SERVER_DB         : String;
    SERVER_HOST       : String;
    SERVER_PORT       : integer;
    SERVER_PASSWORD   : String;
    SERVER_USER       : String;

    PROXY_USE          : Boolean;
    PROXY_SERVER       : String;
    PROXY_PORT        : integer;
    PROXY_USERNAME    : String;
    PROXY_PASSWORD    : String;

   procedure DoCetakLaporan;
   procedure openDataSend2(sq:string);
   procedure ShowPesan(p:string);
   procedure SetConfigAppSamawa;
   function GetMacAddress:string; // Digunakan karena MacAdress Unique
   procedure SetNewUser;

  end;

var

  FMain : TFMain;

  // Global Variable

  urlnow            :string;
  Hit_load          :integer;
  wa_login          :boolean;
  inet_ready        :boolean;
  proc_send         :integer;
  send_with_pic     :integer;
  limit_time        :integer;




  prog : integer;
  jtool : TCEFWindowParent;

implementation

{$R *.frm}


uses
  uCEFApplication;

{ TFMain }

// Prosedur Activasi
procedure TFMain.CekAct;
var
  noser : integer;
  code: String;
  serial : string;
  fc : string;
  f : TStringList;
  act : String;
  keyact:int64;
  cek : string;
begin

  // Dapatkan MaCAdress
  serial := GetMacAddress;
  keyact := StrtoInt('$' + AnsiLeftStr(serial,7));
  act := IntToStr(Abs( keyact));
  fc :=ExtractFilePath(Application.ExeName)+ 'regact.cfd';

  try

   if not FileExists(fc) then
   begin
     try
       f:= TStringList.create;
       f.Add('kangozi');
       f.Add('shedelphi@gmail.com');
       f.Add('solok');
       f.Add(serial);
       f.Add('12345678');
       f.SaveToFile(fc);
     finally
       f.Free;
     end;
   end;


   f:= TStringList.create;
   f.LoadFromFile(ExtractFilePath(Application.ExeName)+ 'regact.cfd');
   cek :=  f.Strings[4];
   if cek<>act then
   begin
    // tmCekInet.Enabled:=false;

     Fregistration.nama:=f.Strings[0];
     Fregistration.email:=f.Strings[1];
     Fregistration.kota:=f.Strings[2];
     Fregistration.EAccCode.Text:='INVALID KEY';
     Fregistration.serial:=serial;
     Fregistration.gbID.Caption:='Belum Terdaftar';
     Fregistration.EAccCode.Enabled:=true;
     Fregistration.showModal;
     exit;
   end
   else
   begin
    // tmCekInet.Enabled:=true;


     Fregistration.BorderIcons:=[biSystemMenu];
     Fregistration.EName.Enabled:=false;
     Fregistration.EEmail.Enabled:=false;
     Fregistration.Ekota.Enabled:=false;
     Fregistration.ESerial.Enabled:=false;
     Fregistration.EAccCode.Enabled:=false;
     Fregistration.nama:=f.Strings[0];
     Fregistration.email:=f.Strings[1];
     Fregistration.kota:=f.Strings[2];
     Fregistration.serial:=f.Strings[3];
     Fregistration.EAccCode.Text:=f.Strings[4];

     Fregistration.gbID.Caption:='Telah Terdaftar';
     Fregistration.lbInfo.Caption:=#13#10+#13+#10+'Selamat Menggunakan samaWA semoga bermanfaat ' + #13#10 +
                                   'Kirimkan saran dan masukan ke kangozicorner@gmail.com';
     FSplash.ShowModal;
     ConnetToWA;
   end;



   finally
     f.free;
   end;

end;

function TFMain.CompareVersion:string;
var
  go,gn:string;
begin

  gn := GetNewVersion;
  Result := 'Anda menggunakan SamaWA ' + VERSI + #13 +
            'Versi Terbaru Adalah ' + gn;

end;

procedure TFMain.SendONeMessage(n,s:string);
begin

     Chromium1.Browser.StopLoad;
     urlnow := 'https://web.whatsapp.com/send?phone='+ n+
                  '&text=' + AnsiReplaceStr(s, #13#10,'%0A');
     Chromium1.LoadURL(urlnow);
end;

procedure TFMain.setProxy;
var
   prox:TStringList;
begin
try
   prox := TStringList.Create;
   prox.LoadFromFile(ExtractFilePath(Application.ExeName) + 'proxy.cfg');

   if PROXY_USE =True then
    begin
      Chromium1.ProxyType:= CEF_PROXYTYPE_FIXED_SERVERS;
      Chromium1.ProxyServer:='http://'+ PROXY_SERVER;
      Chromium1.ProxyPort:= PROXY_PORT;
      Chromium1.ProxyUsername:=PROXY_USERNAME;
      Chromium1.ProxyPassword:=PROXY_PASSWORD;
    end
    else
    begin
      Chromium1.ProxyType:= CEF_PROXYTYPE_DIRECT;
      Chromium1.ProxyServer:='';
      Chromium1.ProxyPort:= 0;
      Chromium1.ProxyUsername:='' ;
      Chromium1.ProxyPassword:='' ;
    end;


  finally
    prox.Free;
  end;



end;



function TFMain.GetNewVersion:string;
 var
     pesan : string;
     filep : string;
     p:TStringList;
  begin

  pesan := 'https://drive.google.com/uc?export=download&id=1qg8x0ALslRiqaYGb9UfH6J6XIghH5zE8';
  filep := ExtractFilePath(Application.ExeName) + 'vernew.log';



  if URLDownloadToFile(nil, PChar(pesan), PChar(filep), 0, nil) = 0 then
     begin
     try
     p := TStringList.Create;
     p.LoadFromFile(filep);
     Result:= p.Strings[0];
     finally
     p.Free;
     end;

     end
  else
     Result:= '';

end;

procedure TFMain.SplitDaftarPesan(i:integer);
var
   i_part : int64;
   i_rec : integer;
   i_first : integer;
begin

   openDataSend2('Select * from data') ;
   DataSend2.First;

   i_first:= DataSend2.Fields[0].AsInteger;
   i_rec := DataSend2.RecordCount;
   i_part := Round (i_rec/i) +1;

   spPage.Min:= 1 ;
   spPage.Max:= i_part;
   spPage.Position:=1;
   Epage.Text:='1';

   openDataSend2('Select * from data where ID<=' + Inttostr( i_first + i -1 ));


end;

procedure TFMain.GetPesan;
var
   pesan : string;
   filep : string;
   p:TStringList;
   cv : string;
begin

pesan := 'https://drive.google.com/uc?export=download&id=1Pl4Fj_ErrxCSbR1uOYrBuMttemqFYGK6';
filep := ExtractFilePath(Application.ExeName) + 'pesan.txt';

if URLDownloadToFile(nil, PChar(pesan), PChar(filep), 0, nil) = 0 then
   begin
   try
   p := TStringList.Create;
   p.LoadFromFile(filep);
   FInformasi.mInformasi.Text:=  p.Text;
   FInformasi.ShowModal;
   finally
   p.Free;
   end;

   end;


end;

procedure TFMain.ConnetToWA;
begin
     setProxy;
     Chromium1.LoadURL('web.whatsapp.com');


end;

function TFMain.GetMacAddress:string;

var

  AProcess:TProcess;
  AStringList:TStringList;
  aw,ak:integer;
  mac,serial : string ;
  amac: string;
begin
  // Buat Objek TProcess baru
  AProcess := TProcess.Create(nil);
  // Buat Objek AStringlist baru
  AStringList := TStringList.Create;
  With AProcess do
  begin
      // Menjalankan cmd untuk mendapatkan MacAdres ( Hanya untuk Windows )
      // Untuk Linux kami belum mencoba
      // Kemungkinan output penulisannnya beda
      // Sehingga perlu diubah kode untuk mendapatkan MacAdress
       CommandLine := 'getmac';
       Options := AProcess.Options + [poWaitOnExit, poUsePipes,poNoConsole];
       Execute;
       sleep(2000);
       // hasil eksekusi ditampilkan pada AStringList;
       AStringList.LoadFromStream(Output);

  end;
  AStringList.Text:=trim(AStringList.Text);


  // Ambil nilai MAcAdress pada Baris ke 3 ASTringList

  if AStringList.Count<6 then
    begin
    amac := trim(AStringList.Strings[2]) ;
     if AnsiContainsStr(amac,'{')=true then
     mac := trim(AStringList.Strings[2])
     else
     mac := trim(AStringList.Strings[3]);
    end
  else
  begin
   amac := trim(AStringList.Strings[4]) ;
   if AnsiContainsStr(amac,'{')=true then
     mac := trim(AStringList.Strings[4])
     else
     mac := trim(AStringList.Strings[5]);
  end;


  aw := PosEx('{',mac);
  ak := PosEx('}',mac);

  serial := AnsiReplaceStr(AnsiMidStr(mac,aw + 1,ak-aw-1),'-','');
  serial := AnsiLeftStr(serial,10) + AnsiRightStr(serial,4);
  if Length(trim(serial))<>14 then
     begin
     Result := 'C5CD32F' ;

  //   ShowPesan('Jalankan SamaWA Dalam Kondisi Ada Koneksi Internet');
  //   Application.Terminate;
     end
  else
  Result:= AnsiReverseString(serial);
  // Hapus Objek AProcess dan AStringlist setelah digunakan
  Aprocess.Destroy;
  AStringList.Destroy;

end;

// Prosedur Menampilkan Pesan
procedure TFMain.ShowPesan(p:string);
begin

  //
  if FPesan<>nil then FPEsan.free;
  FPesan  := TFPesan.create(self);
  FPEsan.d:= p;
  Fpesan.showmodal;

end;

// Prosedur Mencatat Log kevalidan sudatu nomor WA setelah dilakukan pengiriman
procedure TFMain.recordlog(n,s:string);
begin

  // Jika Sukses Kirim  Catat di log sebagai valid
  if s='+' then
     begin

     ZKoneksi.ExecuteDirect('delete from logcontact where lcontact=' + QuotedStr(n));
     ZKoneksi.ExecuteDirect('insert into logcontact(lcontact,lstatus) values ' +
                            '(' + QuotedStr(n) + ',' + QuotedStr('valid') + ')' );

     end;

  // Jika Gagal Kirim Catat di log sebagai not valid
   if s='-' then
     begin

     ZKoneksi.ExecuteDirect('delete from logcontact where lcontact=' + QuotedStr(n));
     ZKoneksi.ExecuteDirect('insert into logcontact(lcontact,lstatus) values ' +
                            '(' + QuotedStr(n) + ',' + QuotedStr('not valid') + ')' );

     end;

end;

// Prosedur Membuat Resume / Ringkasan Pengiriman
procedure TFMain.Resume ;
begin


   With DataGet do
   begin

     close;
     sql.Clear;
     sql.Add('select  count(*) as J from data where Cpost=''+''');
     open ;

     // Jumlah yang Sukses Terkirim
     ESuccessSend.Text := FieldByName('J').AsString;

     close;
     sql.Clear;
     sql.Add('select  count(*) as J from data where Cpost=''-''');
     open;

     // Jumlah yang Gagal Kirim
     EFailedSend.Text := FieldByName('J').AsString;

     close;
     sql.Clear;
     sql.Add('select  count(*) as J from data where CPost='''' or CPost ISNULL');
     open;

     // Jumlah yang belum dikirim
     ENotSend.Text := FieldByName('J').AsString;


   end;


end;

// Prosedur untuk mendapatkan isi pesan sesuai parameter yang digunakan  yaitu
// Menggunakan Template
procedure TFMain.CMessageByTemplate(byref:boolean) ;
var
  content:string;
begin

   // Dapatkan Isi Template
   DataGetM.close;
   DataGetM.ParamByName('vtitle').Value := cbTemplate.Text;
   DataGetM.open;

   // Jika Menggunakan Phonebook
  if byref=true then
   begin
     DataGetPhone.Close;
     DataGetPhone.ParamByName('vIDC').Value := DataSend2.FieldByName('IDC').AsString;
     DataGetPhone.open;

     ENomorWA.Text := DataGetPhone.FieldByName('CNumber').AsWideString ;
     ENama.Text := DataGetPhone.FieldByName('CName').AsWideString ;
     content:= DataGetM.FieldByName('MMessage').AsWideString ;

     content := AnsiReplaceStr(content,'@CName',DataGetPhone.FieldByName('CName').AsString);
     content := AnsiReplaceStr(content,'@CPic',DataGetPhone.FieldByName('CPic').AsString);
     content := AnsiReplaceStr(content,'@Date',tanggal(ckShowTanggal.Checked) );
     content := AnsiReplaceStr(content,'@IDC',DataGetPhone.FieldByName('IDC').AsString);
     EMemo.Text := content;

   end
  // Jika Tanpa Phonebook
  else
  begin
     content:= DataGetM.FieldByName('MMessage').AsWideString ;
     content := AnsiReplaceStr(content,'@CName',DataSend2.FieldByName('CName').AsString);
     content := AnsiReplaceStr(content,'@CPic',DataSend2.FieldByName('CPic').AsString);
     content := AnsiReplaceStr(content,'@Date',tanggal(ckShowTanggal.Checked));
     content := AnsiReplaceStr(content,'@IDC',DataSend2.FieldByName('IDC').AsString);

     ENomorWA.Text := DataSend2.FieldByName('CContact').AsString;
     ENama.Text := DataSend2.FieldByName('CName').AsString ;
     EMemo.Text := content;

  end;


end;

// Prosedur untuk mendapatkan isi pesan sesuai parameter yang digunakan  yaitu
// Menggunakan Data dari Impor Excel

procedure TFMain.CMessageByExcel(byref:boolean);
var
  content : string;
begin

  content := DataSend2.FieldByName('CMessageContent').AsString;

  if byref=true then
   begin
     DataGetPhone.Close;
     DataGetPhone.ParamByName('vIDC').Value := DataSend2.FieldByName('IDC').AsString;
     DataGetPhone.open;
     ENomorWA.Text := DataGetPhone.FieldByName('CNumber').AsWideString ;
     ENama.Text := DataGetPhone.FieldByName('CName').AsWideString ;
   end

  else
  begin
    ENomorWA.Text := DataSend2.FieldByName('CContact').AsWideString ;
    ENama.Text := DataSend2.FieldByName('CName').AsWideString ;
  end;

 content := AnsiReplaceStr(content,#13,#13#10);
 EMemo.Text  := DataSend2.FieldByName('CMessageHeader').AsString + #13#10 + #13#10 +
                content + #13#10 + #13#10 +
                DataSend2.FieldByName('CMessageFooter').AsString + #13#10 + #13#10 +
                tanggal(ckShowTanggal.Checked);


end;

function TFMain.tanggal(y:boolean):string;
begin
//
if y=true then
 Result:= '>>' + DateToStr(Now) + ' '+ TimeToStr(Now)
else
 Result := '';

end;

// Prosedur Menyiapkan Teks Pengiriman Pesan
Procedure TFMain.PrepareSend(a:boolean);
begin

    // Jika memilih Template
    if ckTemplate.Checked=true then
        CMessageByTemplate(false)
    // Bukan Template
    else
        CMessageByExcel(false);

end;
// Prosedur saat Form dibuat pada saat awal aplikasi dijalankan
procedure TFMain.FormCreate(Sender: TObject);
begin
  FCanClose   := False;
  FClosing    := False;

end;



// Prosedur yang dijalankan pada saat aplikasi awal dijalankan
// Prosedur ini dipanggil saat event "FormShow"

procedure TFMain.LoadAwal;
var
  f : string;
  prox : TstringList;
begin
  //
  // Membuat new class dari Form-Form yang akan digunakan bersama MainForm

  Fabout         := TFabout.Create(self);
  Fphonebook     := TFphonebook.Create(self);
  Fview          := TFview.Create(self);
  Fpicture       := TFpicture.Create(self);
  Fregistration  := TFregistration.Create(self);
  Ftemplate      := TFtemplate.Create(self);
  FSplash        := TFsplash.Create(self);
  FBugFix        := TFBugFix.create(self);
  FPesan         := TFPesan.create(self);
  FImpor         := TFImpor.create(self);
  FSettingproxy  := TFsettingproxy.create(self);
  Fvcfmaker      := TFvcfmaker.Create(self);
  FQMessage      := TFQMessage.Create(self);
  FInformasi     := TFInformasi.create(self);
  Fkozinfo       := TFkozinfo.create(self);
  FSapa          := TFSapa.create(self); ;
  FScriptWA      := TfrmScriptWA.Create(self);
  FCetak         := TfrmCetak.Create(self);
  FSchedule      := TfrmSchedule.Create(self);
  FSendLog       := TfrmSendLog.Create(Self);
  jtool          := TCEFWindowParent.Create(self);
  FGoodBy        := TfrmGoodBy.create(self);

  f := ExtractFilePath(Application.exeName);

 // Buka Koneksi ke Database SQLITE smw.db
  ZKoneksi.Protocol:='sqlite';
  ZKoneksi.Database:= f  + 'smw.db';
  ZVCF.LibraryLocation:=f + 'SQLite3.dll' ;
  ZKoneksi.Connected:=true;
  ZKoneksi.AutoCommit:=true;
  CekAct;

  DCetak.open;

  ZKoneksi.Protocol:='sqlite';
  ZVCF.Database := f  + 'tovcf.db';
  ZVCF.LibraryLocation:=f + 'SQLite3.dll' ;
  ZVCF.Connected:=true;
  ZVCF.AutoCommit:=true;

  SetConfigAppSamawa;
  setProxy;
 // Buka tabel "Data" yang ditampung dalam komponen ZTable "DataSend"

 openDataSend2('select * from data');
// DataSend2.Open;

// Pemberian Nilai awal beberapa variable Global
  send_with_pic:=0;
  inet_ready:=false;
  Hit_load := 0;
  proc_send:= 0;
  wa_login:=false;
  limit_time:=0;

// Tampilkan Form "Splash"
  picAttach.Picture:= ImageBlank.Picture;
// Tampilkan Main Form Maximized/FullScreen
  WindowState:=wsFullScreen;
// Jalankan Prosedur Resume
  Resume;

  FSapa.ShowModal;




end;

// Prosedur mengganti banner setiap 5 detik dengan mengambil data dari tabel banner
procedure TFMain.tmbannerTimer(Sender: TObject);
var
  id:integer ;
begin
  Randomize;
  id := RandomRange(1,48);
  With DataBanner do
  begin
   close;
   ParamByName('v_idx').Value:= id;
   open;
  end;

end;

procedure TFMain.tmLimitStartTimer(Sender: TObject);
begin

  Inc(limit_time);

  if limit_time=300 then
   begin
        ShowPesan('Waktu Habis , Semua Proses Dihentikan ... ');
        tmLoopSolution.Enabled := false;
        tmLoopCekCode.Enabled := false;
        spSend.Enabled:=true;
        spStop.Enabled:=false;
        esend.Text:='1';
        grdSendMessage.Enabled:=true;
        Chromium1.Browser.StopLoad;
        limit_time:=0;
        tmLimit.Enabled:=false;
   end;

end;

// Prosedur menangkap source code Halaman HTML

procedure TFMain.tmLoopCekCodeTimer(Sender: TObject);
begin
   // Prosedur ini akan menangkap page source dan akan ditampilkan di komponen mSource
   // secara otomatis melalui event OnTextResultAvailable
   Chromium1.RetrieveHTML(Chromium1.Browser.MainFrame);

end;

// Prosedur Pengiriman dengan Timer loop
procedure TFMain.tmLoopSolutionTimer(Sender: TObject);
var
  jscode,jscode1,jscode2:string;
  o : integer;
  x,y:integer;
begin

  o := 0;
   // Nomor telepon WA tidak valid
   if (AnsiContainsStr(msource.Text,
      'Phone number shared via url is invalid.')=true )
      or
      (AnsiContainsStr(msource.Text,
      'Nomor telepon yang dibagikan via tautan tidak valid.')=true)
      then
    begin
      // Klik otomatis tombol ok untuk menutup kotak dialog pada browser
      //jsCode:= 'document.getElementsByClassName("_1dwBj _3xWLK")[0].click()';


      jsCode:= 'document.getElementsByClassName("'+ S_CANCEL_END +'")[0].click()';

      Chromium1.Browser.MainFrame.ExecuteJavaScript(jsCode, 'about:blank', 0);

      ZKoneksi.ExecuteDirect('update data set IWA=' + QuotedStr(EMemo.Text) +
                             ' where ID=' + DataSend2.FieldByName('ID').AsString );
      With DataSend2 do
      begin

        // Catat Log Gagal Kirim
        recordlog(ENomorWA.Text,'-');

        Edit;
        FieldByName('CPost').Value := '-';
        Post;

        // Jika massal , Pindahkan Record ke depan
        if rbLoop.Checked=true then
        begin
          Next ;
          Esend.Text:='';
          Esend.Text:='0';
          end
        else
          Esend.Text:='1';
      end;
    end ;

  // Jika nomor Valid dan Message siap kirim , Teks + Gambar

   if AnsiContainsStr(msource.Text,S_WITH_PICTURE)=true then

   if ckWithPic.Checked=true then
      begin
      pnBottom.Height:=32;
      tmSendWithPic.Enabled := false;
      CEFWindowParent1.Enabled:=True;


      jsCode:= 'document.getElementsByClassName("_1UWac Z2O8p oHEu9")[0].focus()';
      Chromium1.Browser.MainFrame.ExecuteJavaScript(jsCode, 'about:blank', 0);
      jsCode1:= 'document.getElementsByClassName("_1UWac Z2O8p oHEu9")[0].click()';
      Chromium1.Browser.MainFrame.ExecuteJavaScript(jsCode1, 'about:blank', 0);




      // Simulasikan Tombol Control + V untuk mempaste gambar yang tersimpan pada CLipboard
      // Disini Masih Ada Error mengarahkan / memfocuskan Cursor ke Kotak Pesan
      // Cari Terus Solusinya

      keybd_event(VK_Control,MapVirtualKey(VK_Control,0),0,0);
      keybd_event(ord('V'), MapVirtualKey(ord('V'),0), 0, 0);
      keybd_event(ord('V'), MapVirtualKey(ord('V'),0), KEYEVENTF_KEYUP,0);
      keybd_event(VK_Control,MapVirtualKey(VK_Control,0),KEYEVENTF_KEYUP,0);
      keybd_event(13, 0, 0, 0);
      keybd_event(13, 0, 0, 0);

      ESend.Text := '0';

      // Aktifkan Timer Pengiriman Pesan + Gambar

       if ckAutoSend.Checked=true then
         tmSendWithPic.Enabled := true
       else
         tmSendWithPic.Enabled := false;

    end;


  // Jika nomor Valid dan Message siap kirim , Teks saja

  if AnsiContainsStr(msource.Text,S_SEND_TEXT)=true then
    if ckWithPic.Checked=false then
    begin
    if ckAutoSend.Checked=true then
    begin

    jsCode:= 'document.getElementsByClassName("' + S_SEND_TEXT + '")[0].click()';
    Chromium1.Browser.MainFrame.ExecuteJavaScript(jsCode, 'about:blank', 0);
    end;

    ZKoneksi.ExecuteDirect('update data set IWA=' + QuotedStr(EMemo.Text) +
                           ' where ID=' + DataSend2.FieldByName('ID').AsString );

    Sleep(3000);
    With DataSend2 do
      begin
      recordlog(ENomorWA.Text,'+');

      Edit;
      FieldByName('CPost').Value := '+';
      Post;

      if rbLoop.Checked=true then
      begin
            Next ;
            Esend.Text:='';
            Esend.Text:='0';
        end
      else
        Esend.Text:='1';
    end;

    end;


end;

// Prosedur Pengiriman Pesan dengan Gambar melalui timer
procedure TFMain.tmSendWithPicTimer(Sender: TObject);
var
  jscode:string;
begin

  inc(send_with_pic);


  // Setelah 3 detik
  if send_with_pic=5 then
  begin

   Chromium1.SetFocus(true);
   keybd_event(VK_RETURN,MapVirtualKey(VK_RETURN,0),0,0);
   keybd_event(VK_RETURN,MapVirtualKey(VK_RETURN,0),0,0);
   CEFWindowParent1.Enabled:=false;
  end;

  // Setelah 8 Detik matikan timer dan Catat hasil pengiriman
  // 8 Detik diambil sebagai nilai aman mengantisipasi waktu yang digunakan WA Web
  // dalam mengupload gambar , Gunakan Gambar dengan ukuran yang kecil
  // Biasanya dalam format PNG atau JPG
  // Jika Inetrnet lambat , kemungkinannya , pengiriman sukses tetapi gagal dicatat lognya
  // karena loop akan menjalankan record berikutnya

  if send_with_pic=8 then
  begin
    //tmSendWithPic.Enabled:=false;
    send_with_pic:=0;

    ZKoneksi.ExecuteDirect('update data set IWA=' + QuotedStr(EMemo.Text) +
                             ' where ID=' + DataSend2.FieldByName('ID').AsString );
    With DataSend2 do
      begin
      // Catat Log Sukses
      recordlog(ENomorWA.text,'+' );


      //Beri Tanda minuns (+)  / Sukses Kirim
      Edit;
      FieldByName('CPost').Value := '+';
      Post;

      // Jika loop
      if rbLoop.Checked=true then
      begin
       // Majukan Record satu kedepan
            Next ;
            Esend.Text:='';
            Esend.Text:='0';
           end
        else
        begin
          Esend.Text:='1';
    end;

  end;
  end;


end;


// Prosedur Built in
procedure TFMain.FormCloseQuery(Sender: TObject; var CanClose: boolean);
begin
  CanClose := FCanClose;

  if not(FClosing) then
    begin
      FClosing := True;
      Visible  := False;
      Chromium1.CloseBrowser(True);
    end;
end;

// Prosedur Built in
procedure TFMain.Chromium1AfterCreated(Sender: TObject; const browser: ICefBrowser);
begin
  // Now the browser is fully initialized we can send a message to the main form to load the initial web page.
  PostMessage(Handle, CEF_AFTERCREATED, 0, 0);
end;


// Prosedut jika user memilih Salah satu Template
procedure TFMain.cbTemplateChange(Sender: TObject);
begin


    // Jika User memilih salah satu dari Daftar Template

    if ckTemplate.Checked then
     begin
         DataGetM.close;
         DataGetM.ParamByName('vtitle').Value := cbTemplate.Text;
         DataGetM.open;

         EMemo.Text := DataGetM.FieldByName('MMessage').AsWideString ;
     end;

    // Persiapkan Pengiriman
    PrepareSend(true);
end;


procedure TFMain.cbJMessageChange(Sender: TObject);
begin
  if ckSplit.Checked=true then
     SplitDaftarPesan(strtoint(cbJMessage.Text))
  else
  begin
     DataSend2.Filtered:=false;
     cbJMessage.Enabled:=false;
  end;
end;



// Prosedur Untuk Menghandle Download dari Web
procedure TFMain.Chromium1BeforeDownload(Sender: TObject;
  const browser: ICefBrowser; const downloadItem: ICefDownloadItem;
  const suggestedName: ustring; const callback: ICefBeforeDownloadCallback);
begin

 if svDown.Execute=true then
    begin
    svDown.FileName := suggestedName ;
    callback.Cont(svDown.FileName,true);

    end;
end;

procedure TFMain.Chromium1TextResultAvailable(Sender: TObject;
  const aText: ustring);
begin
      // Masukan Page Source ke Memo mSource
      // mSource height diisi = 0 dan Visible False sehingga tidak tampak di Form
      mSource.Text := aText;
      Chromium1.SetFocus(true);
end;

procedure TFMain.ckAutoSendClick(Sender: TObject);
begin

   // Jika user mengklik use template
   // perbarui daftar template
   // sesuai isi tabel "message"

    if ckAutoSend.Checked then
       rbloop.Checked:=true
       else
       rbloop.Checked:=false;

end;


// Prosedur Built in
procedure TFMain.Chromium1BeforeClose(Sender: TObject; const browser: ICefBrowser);
begin
  FCanClose := True;
  PostMessage(Handle, WM_CLOSE, 0, 0);
end;

// Prosedur Built in
procedure TFMain.Chromium1BeforePopup(Sender: TObject;
  const browser: ICefBrowser; const frame: ICefFrame; const targetUrl,
  targetFrameName: ustring; targetDisposition: TCefWindowOpenDisposition;
  userGesture: Boolean; const popupFeatures: TCefPopupFeatures;
  var windowInfo: TCefWindowInfo; var client: ICefClient;
  var settings: TCefBrowserSettings; var noJavascriptAccess: Boolean;
  var Result: Boolean);
begin
  // For simplicity, this demo blocks all popup windows and new tabs
  Result := (targetDisposition in [WOD_NEW_FOREGROUND_TAB, WOD_NEW_BACKGROUND_TAB, WOD_NEW_POPUP, WOD_NEW_WINDOW]);
end;

// Prosedur Built in
procedure TFMain.Chromium1Close(Sender: TObject; const browser: ICefBrowser; out Result: Boolean);
begin
  PostMessage(Handle, CEF_DESTROY, 0, 0);
  Result := True;
end;

// Prosedur menghandle download file dari browser
procedure TFMain.Chromium1DownloadUpdated(Sender: TObject;
  const browser: ICefBrowser; const downloadItem: ICefDownloadItem;
  const callback: ICefDownloadItemCallback);
begin
  if downloadItem.IsComplete then
    ShowPesan('Download Selesai')
end;

procedure TFMain.ckLimitClick(Sender: TObject);
begin

  ShowPesan('Batasan Waktu Hanya Digunakan ' +#13#10 + 'pada Pengiriman Massal');

end;

procedure TFMain.ckSplitClick(Sender: TObject);
begin

     if ckSplit.Checked = true then
       begin
        SplitDaftarPesan(StrToInt(cbJMessage.Text));
        cbJMessage.Enabled:=true;
       end
     else
     begin

        openDataSend2('select * from data');
        cbJMessage.Enabled:=false;
     end;


end;


// Prosedur Jika User memilih menggunakan Template

procedure TFMain.ckTemplateClick(Sender: TObject);
begin
  
 // Jika user mengklik use template
 // perbarui daftar template
 // sesuai isi tabel "message"

 // Bersihkan Isi ComboBox Template
 cbTemplate.Clear;
 // Buka tabel "message"
 DataMessage.Open;
 // Bawa ke  Record Pertama
 DataMessage.First;
 // Mulai Isi ComboBox Template
 while not DataMessage.eof do
   begin
    cbTemplate.AddItem(DataMessage.FieldByName('MTitle').AsString,nil);
    DataMessage.next;
   end;


// Jika Use Template bernilai Checked atau True

 if ckTemplate.Checked then
 begin
  // Tampilkan Daftar Pertama
  cbTemplate.ItemIndex:= 0;
  // Enable kan ComboBox Template
  cbTemplate.Enabled := true;
  // Buka Tabel "message"
  DataGetM.close;
  DataGetM.ParamByName('vtitle').Value := cbTemplate.Text;
  DataGetM.open;
  // Isikan pada EMemo
  EMemo.Text := DataGetM.FieldByName('MMessage').AsWideString ;
  // Siapkan pengiriman
  PrepareSend(true);
 end
 else
 begin

 // Jika User tidak memilih template
 // Gunakan Isi pengiriman sesuai daftar send yang dibuat pake Spreadsheet

  cbTemplate.Enabled  := false;

  EMemo.Text := DataSend2.FieldByName('CMessageHeader').AsString + #13#10 +
                  DataSend2.FieldByName('CMessageContent').AsString + #13#10 +
                  DataSend2.FieldByName('CMessageFooter').AsString ;
 end;
end;

// Prosedur Jika User mengklik CheckBox Phonebook
procedure TFMain.ckUsePhonebookClick(Sender: TObject);
begin
 // Aktifkan Pengiriman
  PrepareSend(true);
end;

procedure TFMain.ckWithPicChange(Sender: TObject);
begin

end;

// Prosedur Jika User mengklik CheckBox Attach Picture
procedure TFMain.ckWithPicClick(Sender: TObject);
begin

   if ckWithPic.Checked=true then
  begin
     ShowPesan('Perhatikan :' + #13 + 'Selama Pengiriman dengan gambar '+
               'Jangan Melakukan Kegiatan Lain pada PC ini ' +
     'Saat Proses Pengiriman');
     Fpicture.showModal;
  end
  // Jika tidak , tampilkan Icon Gambar Blank
  else
  begin
     picAttach.Picture:= ImageBlank.Picture;
     gbPicture.Caption:='Tanpa Gambar';
  end;
end;

procedure TFMain.DataSend2AfterOpen(DataSet: TDataSet);
begin
  Resume;
  ENomorWA.Text := DataSend2.FieldByName('CContact').AsWideString ;
  ENama.Text := DataSend2.FieldByName('CName').AsWideString ;
end;


// Prosedur Untuk Mencari Nama pada Daftar Pengiriman
procedure TFMain.EFindCustomersChange(Sender: TObject);
begin
    if EFindCustomers.Text<>'' then
    begin

    openDataSend2('select * from data where CName like ''%' + EFindCustomers.Text + '%''');

    end
    else
    openDataSend2('select * from data ');


end;

procedure TFMain.EMemoChange(Sender: TObject);
begin
  wa_login:= cekLoginWa;
end;

// Prosedur Pengecekan nomor WA saat proses Pengiriman

procedure TFMain.ENomorWAChange(Sender: TObject);
begin

 // Chromium1.RetrieveHTML(Chromium1.Browser.MainFrame);
  wa_login:= cekLoginWa;

  // Jika Nomor WA Kosong atau  Bukan berawalan 628 maka Matikan Proses

   if (ENomorWA.Text='') or
       (AnsiLeftStr(ENomorWA.Text,3)<>'628') then
      begin
      spSend.Enabled:=false;
      Esend.Text:='1';
      end
      else
      begin
      spSend.Enabled:=true;
      PrepareSend(true);

      end;


  if wa_login=false then
    begin
      spSend.Enabled:=false;
      Esend.Text:='1';
    end;

end;

// Prosesur ini adalah Prosedur Utama Pengiriman, Bergantung pada nilai 1 atau 0 yang
// dimasukan ke kotak ESend , Kotak ini disembunyikan saat aplikasi dijalankan
// diwakili oleh Panel berwarna Hijau jika 0 dan Kuning jika 1
// 0 = Proses Berjalan
// 1 = Proses Off

procedure TFMain.EsendChange(Sender: TObject);
var
  i,j ,v: integer;
begin

   Randomize;
   // Dapatkan
   if ckRandom.Checked then
   v := RandomRange(Round(ivAwal.Value),Round(ivAkhir.Value)) ;

   // Tandai Warna Status Pengiriman
   if eSend.text='0' then
      pnsend.Color:= clGreen
      else
      pnSend.color:= clyellow;

   resume;

  //Jika Pengiriman Manual
   if esend.Text='1'   then
   begin
     tmLoopCekCode.Enabled:=false;
     tmLoopSolution.Enabled:=false;
     grdSendMessage.Enabled:=true;
     spSend.Enabled:=true;
     spStop.Enabled:=false;
     exit;
   end;

   if esend.Text='0'   then
   begin
     tmLoopCekCode.Enabled:=true;
     tmLoopSolution.Enabled:=true;
     grdSendMessage.Enabled:=false;
     spSend.Enabled:=false;
     spStop.Enabled:=true;
   end;

   // Pengaturan waktu Random Interval
   if ckRandom.Checked=true then
   begin
     tmLoopSolution.Interval := v*1000 ;
     StatusBar1.Panels[1].Text := 'Interval ' + IntToStr(v) + ' Sec ';
   end
   else
   begin
     tmLoopSolution.Interval := 5000;
     StatusBar1.Panels[1].Text := 'Interval 5 Sec ';
   end;


   //Penggunaan Pengiriman Manual

   if rbLoop.Checked=false then
   begin
     spSend.Enabled:=false;
     spStop.Enabled:=true;
     PrepareSend(true);
     Chromium1.Browser.StopLoad;
     urlnow := 'https://web.whatsapp.com/send?phone='+ ENomorWA.Text +
                  '&text=' + AnsiReplaceStr(EMEmo.Text, #13#10,'%0A');
     Chromium1.LoadURL(urlnow);

   end;

   // Jika Mengggunakan Loop

   if rbLoop.Checked=true then
   begin

      i:= DataSend2.RecNo;
      j:= DataSend2.RecordCount;

     progsend.Min:=0;
     progsend.Max:=j;
     tmLoopSolution.Interval := v*1000;
     tmLoopSolution.Enabled:=true;
     tmLoopCekCode.Enabled:=true;
     spSend.Enabled:=false;
     spStop.Enabled:=true;

     inc(Hit_load);

      if not DataSend2.Eof then
      begin
        progsend.Position:= DataSend2.RecNo;
        PrepareSend(true);
        Chromium1.Browser.StopLoad;
        urlnow := 'https://web.whatsapp.com/send?phone='+ ENomorWA.Text +
                  '&text=' + AnsiReplaceStr(EMEmo.Text, #13#10,'%0A');
        Chromium1.LoadURL(urlnow);
      end
      else
      begin
        progsend.Position:= DataSend2.RecNo;
        ShowPesan('Proses Pengiriman Selesai') ;
        Catat(StrToInt(ESuccessSend.Text));
        esend.Text := '1' ;
        Chromium1.LoadURL('web.whatsapp.com');
      end;
   end;
end;

procedure TFMain.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  //FGoodBy.ShowModal;
end;

procedure TFMain.FormShow(Sender: TObject);
begin
  // You *MUST* call CreateBrowser to create and initialize the browser.
  // This will trigger the AfterCreated event when the browser is fully
  // initialized and ready to receive commands.

  // GlobalCEFApp.GlobalContextInitialized has to be TRUE before creating any browser
  // If it's not initialized yet, we use a simple timer to create the browser later.
  if not(Chromium1.CreateBrowser(CEFWindowParent1)) then Timer1.Enabled := True;

  // Jalankan Prosedur LoadAwal
  LoadAwal;
end;


// Prosedur saat user mengklik salah satu nama pada daftar
procedure TFMain.grdDataCCellClick(Column: TColumn);
begin

  Chromium1.RetrieveHTML(Chromium1.Browser.MainFrame);
  wa_login:= cekLoginWa;
  PrepareSend(true);
  Resume;

  if wa_login=true  then
    spSend.Enabled:=true;

end;

procedure TFMain.grdExporExcelAfterExecute(Sender: TObject);
begin

end;


procedure TFMain.grdSendMessageCellClick(Column: TColumn);
begin
   Chromium1.RetrieveHTML(Chromium1.Browser.MainFrame);
   // Check Login WA
   wa_login:=cekLoginWa;
   // Siapkan Pengiriman
   PrepareSend(true);
   // Jalan Resume
   Resume;

end;

// Prosedur Menandai Icon sesuai status pengiriman
// Kodingnya njlimet , saya hanya copas dari stackoverflow
// sehingga tidak paham
// :)
procedure TFMain.grdSendMessageDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  bitmap : TBitmap;
  fixRect : TRect;
  bmpWidth : integer;
  imgIndex : integer;
begin

  if (gdSelected in State) then
  begin
     grdSendMessage.Canvas.Font.Color := clblack;
     grdSendMessage.Canvas.Brush.Color := clyellow;
     grdSendMessage.Canvas.FillRect(Rect);
     grdSendMessage.Cursor:=crHandPoint;

  end ;

  fixRect := Rect;

  // customizing the 'LastName' field
  if Column.Field = DataSend2.FieldByName('CPost') then
  begin
    //adding some logic to grab the required image
    if DataSend2.FieldByName('CPost').Value = '+' then
      imgIndex := 0
    else if DataSend2.FieldByName('CPost').Value = '-' then
      imgIndex := 1
    else if DataSend2.FieldByName('CPost').Value = 'x' then
      imgIndex := 3
    else
      imgIndex := 2;

    bitmap := TBitmap.Create;
    try
      //grab the image from the ImageList
      //(using the "Salary" field's value)
      ImageList1.GetBitmap(imgIndex,bitmap);
      //Fix the bitmap dimensions
      bmpWidth := (Rect.Bottom - Rect.Top);
      fixRect.Right := Rect.Left + bmpWidth;
      //draw the bitmap
      grdSendMessage.Canvas.StretchDraw(fixRect,bitmap);
    finally
      bitmap.Free;
    end;

    // reset the output rectangle,
    // add space for the graphics
    fixRect := Rect;
    fixRect.Left := fixRect.Left + bmpWidth;
  end;

  //draw default text (fixed position)
  grdSendMessage.DefaultDrawColumnCell(
     fixRect,
     DataCol,
     Column,
     State);


end;

procedure TFMain.ivAkhirChange(Sender: TObject);
begin
  if ivAwal.Value>ivAkhir.value then
     ivAkhir.Value:= ivAwal.Value
end;

procedure TFMain.ivAwalChange(Sender: TObject);
begin

  if ivAwal.Value>ivAkhir.value then
     ivAkhir.Value:=ivAwal.Value;

end;

procedure TFMain.mnGoMapClick(Sender: TObject);
begin
  spGoMapClick(Sender);
end;

procedure TFMain.mnGoMonClick(Sender: TObject);
begin
  spGoMonClick(sender);
end;

procedure TFMain.mnGoWAClick(Sender: TObject);
begin
  spGoWAClick(sender);
end;

procedure TFMain.mnPopularityClick(Sender: TObject);
begin

 pnBottom.Height:= 0 ;
 pnLeft.Width:=0;
 spFullscreen.Caption:='Fullscreen' ;
 Chromium1.LoadURL('https://kangozicorner.skom.id/showmap.php');

end;

procedure TFMain.MenuItem3Click(Sender: TObject);
begin
  // Membuka Settingan Proxy
  FSettingproxy.showmodal;
end;

procedure TFMain.mnBugClick(Sender: TObject);
begin
   // Membuka Form BugFix
   FBugFix.ShowModal;
end;

procedure TFMain.mncekUpdateClick(Sender: TObject);
var
  s:TStringList;
begin

  s := TStringList.Create;
  s.Add('4%^#3456789**&%js74asadjai3456789787asgahs');
  s.SaveToFile(ExtractFilePath(Application.ExeName) + 'AutoChekTrue.yes');
  FSapa.kozweb.Visible:=false;
  FSapa.ShowModal;



end;

procedure TFMain.mnGetPesanClick(Sender: TObject);
begin
     GetPesan;
end;

procedure TFMain.mnDeleteMinClick(Sender: TObject);
begin
   // Menghapus Data Tidak Terkirim
   if Dialogs.MessageDlg('Hapus Data Gagal Terkirim ?, Tidak bisa dikembalikan ',
    mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
    begin
     ZKoneksi.ExecuteDirect('delete from data where cpost=''-''');
     DataSend2.Close;
     DataSend2.open;
    end;
end;

// Prosedur menghapus seluruh data pada daftar pengiriman
procedure TFMain.mnDeleteAllClick(Sender: TObject);
begin
  // Menghapus Seluruh Data
  if Dialogs.MessageDlg('Hapus Data Ini Semuanya ?, Tidak bisa dikembalikan ',
    mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
    begin
     ZKoneksi.ExecuteDirect('delete  from data');
     DataSend2.Close;
     DataSend2.open;
    end;
end;


// Prosedur menghapus satu record yang dipilih
procedure TFMain.mnDeleteClick(Sender: TObject);
begin
  if Dialogs.MessageDlg('Hapus Data Ini ?, Tidak bisa dikembalikan',
    mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
    begin
      DataSend2.Delete;
    end;
end;


// Prosedur menghapus record dengan status terkirim
procedure TFMain.mnDeletePlusClick(Sender: TObject);
begin

  if Dialogs.MessageDlg('Hapus Data Terkirim ?, Tidak bisa dikembalikan ',
    mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
    begin
     ZKoneksi.ExecuteDirect('delete from data where cpost=''+''');
     DataSend2.Close;
     DataSend2.open;
    end;
end;

// Prosedur mengekspor daftar pengiriman ke CSV
procedure TFMain.mnExportCSVClick(Sender: TObject);
begin
 if DataSend2.RecordCount=0 then exit;
   grdExporExcel.FileName:= ExtractFilePath(Application.ExeName) + 'save\tes.xlsx'  ;
   grdExporExcel.PageName:='Export Data Pengiriman ke Excel';
   grdExporExcel.Execute;
end;

procedure TFMain.mnExportVCFClick(Sender: TObject);
begin
  ZVCF.ExecuteDirect('delete from contact');
  DVCF.close;
  DVCF.open;
  With DataSend2 do
    begin
        First;
        While not eof do
          begin
          DVCF.Insert;
          DVCF.Fields[0].Value:= Fields[2].AsString;
          DVCF.Fields[1].Value:= Fields[6].AsString;
          DVCF.post;
          next ;

          end;
        First;
    end;
  Fvcfmaker.Show;
end;

procedure TFMain.mnGoogleClick(Sender: TObject);
begin
    Chromium1.LoadURL('https://google.com');
end;

procedure TFMain.mnGoogleContactClick(Sender: TObject);
begin
  // Membuka Google Contact
  Chromium1.LoadURL('https://contacts.google.com');
  spFullscreenClick(sender) ;
end;

procedure TFMain.mnHapusNotValidClick(Sender: TObject);
begin
    ZKoneksi.ExecuteDirect('DELETE from data where CPost=''x''');
    ShowPesan('Selesai');
    DataSend2.close;
    DataSend2.Open;
end;

procedure TFMain.mnJadwalClick(Sender: TObject);
begin
  FSchedule.ShowModal;
end;

procedure TFMain.mnJadwalkanClick(Sender: TObject);
begin

   ZKoneksi.ExecuteDirect('delete from data_terjadwal where j_id=' +
     QuotedStr(DataSend2.FieldByName('j_id').AsString));

   ZKoneksi.ExecuteDirect('insert into data_terjadwal(' +
    'IDC,CNAME,CMessageHeader , CMessageContent, CMessageFooter, '+
    'CContact , CPic, CPost, J_Tugas,J_tgl,J_Pembuat,J_Id) ' +
    'Select IDC,CNAME,CMessageHeader , CMessageContent, CMessageFooter, '+
    'CContact , CPic, CPost,J_tugas,J_tgl,J_Pembuat,J_Id  from data ');

   FSchedule.Show;


end;



procedure TFMain.mnKozProjClick(Sender: TObject);
begin

  Fkozinfo.ShowModal;

end;

procedure TFMain.mnLockClick(Sender: TObject);
begin
  // Menampilkan Status Lock/Unlock Layar WA
  CEFWindowParent1.Enabled:= not mnLock.Checked;
  if   StatusBar1.Panels[2].Text ='LOCK' then
       StatusBar1.Panels[2].Text:='UNLOCK'
  else
        StatusBar1.Panels[2].Text:='LOCK';
end;

procedure TFMain.mnOnlyFailedSendClick(Sender: TObject);
begin

  openDataSend2('select * from data where Cpost=''-''');

end;

procedure TFMain.mnOnlySendClick(Sender: TObject);
begin
  openDataSend2('select * from data where Cpost=''+''');

end;

procedure TFMain.mnOnlyYetSendClick(Sender: TObject);
begin
  openDataSend2('select * from data where Cpost='''' OR CPost IS NULL');

end;

// Matikam Aplikasi
procedure TFMain.mnQuitClick(Sender: TObject);
begin
    FGoodBy.ShowModal;
   Application.Terminate;
end;

// Prosedur membuka file samawa.pdf
procedure TFMain.mnManualClick(Sender: TObject);
var
   f:string;

begin

  f:= ExtractFilePath(Application.ExeName) + 'samawa.pdf';
  opendocument(f);

end;

// Prosedur Menjalankan Print Preview  Laporan Pengiriman

procedure TFMain.mnPrintClick(Sender: TObject);
begin

 FCetak.ShowModal;

end;

//Prosedur Tampikan Form Registrasi
procedure TFMain.mnRegisterClick(Sender: TObject);
begin
  Fregistration.serial:= GetMacAddress;
  Fregistration.ShowModal;
end;

// Prosedur Reset Pengiriman , Menghilangkan tanda + dan -
procedure TFMain.mnResetClick(Sender: TObject);
begin
   if Dialogs.MessageDlg('Anda akan me-reset Data Pengiriman ? Tidak bisa dikembalikan',
    mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
    begin
     ZKoneksi.ExecuteDirect('update data set Cpost=''''');
     DataSend2.close;
     DataSend2.open;
     DataSend2.First;
   end;

end;

// Prosedur Memmperbaiki Nomor
procedure TFMain.mnRepairClick(Sender: TObject);
begin

  // Lebih cepat dengan SQL

  ZKoneksi.ExecuteDirect('UPDATE data set CContact=''628''||substr(CContact,2,14) ' +
                         'WHERE substr(CContact,1,1)=''8''');
  ZKoneksi.ExecuteDirect('UPDATE data set CContact=''628''||substr(CContact,3,14) ' +
                          'WHERE substr(CContact,1,2)=''08''');

  ZKoneksi.ExecuteDirect('DELETE from data where length(CContact)<11');
  ZKoneksi.ExecuteDirect('DELETE from data where CContact is null ');
  DataSend2.Close;
  DataSend2.open;
  ShowPesan('Perbaikan Selesai');
  DataSend2.First;

end;

// Buka Form About
procedure TFMain.mnAboutClick(Sender: TObject);
begin
 Catat(1);
 Fabout.ShowModal;
end;

procedure TFMain.mnRestoreDBClick(Sender: TObject);
begin

  if dbopen.Execute then
   begin
    ZKoneksi.Connected:=false;
    CopyFile(dbopen.FileName,ZKoneksi.Database ,true );
    ZKoneksi.Connected:=true;
   end;

end;

// Prosedur Menyimpan Database Sebagai Backup
procedure TFMain.mnSaveDBClick(Sender: TObject);
begin

  if dbSave.Execute then
   begin
    ZKoneksi.Connected:=false;
    CopyFile(ZKoneksi.Database , dbSave.FileName,true);
    ZKoneksi.Connected:=true;
   end;

end;

procedure TFMain.mnScriptClick(Sender: TObject);
begin
  FScriptWA.showModal;
end;

procedure TFMain.mnServerLogClick(Sender: TObject);
begin
  GetDBServer;
end;

procedure TFMain.mnSettingClick(Sender: TObject);
begin
   FSettingproxy.Showmodal;
end;

procedure TFMain.mnShowAllClick(Sender: TObject);
begin
  openDataSend2('select * from data');
 // DataSend2.Filtered:=false;

end;

//Procedure Untuk Menampilkan Inpect Element
procedure TFMain.mnShowInpectmentClick(Sender: TObject);
var
 t : TPoint;
begin


  t.x := Low(integer);
  t.y := low(integer);

  pnLeft.Width:= 0 ;
  pnBottom.Height:=0;

  if Assigned(jtool) then jtool.free;

  jtool := TCEFWindowParent.Create(self);
  jtool.Parent:= pnWebWA;
  jtool.Align:=alRight;
  jtool.Width:=500;
  {
  if not mnShowInpectment.Checked then
     jtool.Visible:=false
  else
  begin

    jtool.Visible:=true;
    Chromium1.ShowDevTools(t,jtool);

  end;
  }
end;

procedure TFMain.mnShowMonitoringClick(Sender: TObject);
begin

  pnBottom.Height:= 0 ;
  pnLeft.Width:=0;
  spFullscreen.Caption:='Fullscreen' ;
  Chromium1.LoadURL(SERVER_HOST +'/showc1.php');
end;

//Procedure Menampilkan Test Message
procedure TFMain.mnTestClick(Sender: TObject);
begin

  Chromium1.RetrieveHTML(Chromium1.Browser.MainFrame);
  wa_login:=cekLoginWa;

  EFindCustomers.SetFocus;

  if wa_login=false then
   begin
     ShowPesan('Login WA dulu Ya');
     exit;
   end
   else
   SendONeMessage(DataSend2.FieldByName('CContact').AsString, DataSend2.FieldByName('CMessageContent').AsString);

end;

procedure TFMain.mnWhatsappClick(Sender: TObject);
begin

    Chromium1.LoadURL('https://web.whatsapp.com');
    spFullscreenClick(sender) ;
end;

// Jika user mengkklik CheckBox loop
procedure TFMain.rbloopClick(Sender: TObject);
begin
 // Ambil Isi pagesource
 Chromium1.RetrieveHTML(Chromium1.Browser.MainFrame);
 // Cek Login WA
 if cekLoginWa= false then
  begin
    ShowPesan('Login Whatsapp dulu Ya');
    exit;
  end;
 // Beri Pesan jika User memilih menggunakan Loop
 if rbLoop.Checked=true then
 begin
  hit_load := 0 ;

  ckAutoSend.Checked :=true;
  ShowPesan('Anda akan menggunakan pengiriman massal ');
  DataSend2.First;


 end;

end;

procedure TFMain.spBugFix1Click(Sender: TObject);
begin
  FSchedule.ShowModal;
end;

//Prosedur Tampilkan Form BugFix
procedure TFMain.spBugFixClick(Sender: TObject);
begin
  FBugFix.ShowModal;
end;

// Prosedur Mengecek Kevalidan nomor berdasar 3 digit depan dan
// Log pengiriman sebelumnya apakah valid atau tidak
procedure TFMain.spCheckClick(Sender: TObject);
begin

 ZKoneksi.ExecuteDirect('update data set ccheck=''wrong format'' where Substr(ccontact,1,3)!=''628''');
 ZKoneksi.ExecuteDirect('update data set CCHECK=(select lstatus from logcontact '+
                        'where data.CContact=logcontact.lcontact)');
 ZKoneksi.ExecuteDirect('update data set Cpost=''x'' where ccheck=''not valid''');
 DataSend2.close;
 DataSend2.open;

 ShowPesan('Pengecekan Nomor Selesai '+ #13 + 'Silahkan Lihat Pada Daftar');



end;

// Klik tombol Down  pada Panel Bottom
procedure TFMain.spDownClick(Sender: TObject);
begin
  pnBottom.Height:=32;
end;

procedure TFMain.spFullscreenClick(Sender: TObject);
begin

  if pnLeft.Width>0  then
   pnLeft.Width:= 0
  else
   pnLeft.Width:=330;

  if pnBottom.Height>0  then
   pnBottom.Height:= 0
  else
   pnBottom.Height:=188;

  if spFullscreen.Caption='Fullscreen' then
  spFullscreen.Caption:='Normal'
  else
  spFullscreen.Caption:='Fullscreen' ;

end;

procedure TFMain.spGoMapClick(Sender: TObject);
begin

 pnBottom.Height:= 0 ;
 pnBottom.Height:= 0 ;
 pnLeft.Width:=0;
 spFullscreen.Caption:='Fullscreen';


 Chromium1.LoadURL('https://kangozicorner.skom.id/showmap.php');

end;

procedure TFMain.spGoMonClick(Sender: TObject);
begin
  pnBottom.Height:= 0 ;
  pnLeft.Width:=0;
  spFullscreen.Caption:='Fullscreen' ;
  Chromium1.LoadURL(SERVER_HOST +'/showc1.php');
end;

procedure TFMain.spGoWAClick(Sender: TObject);
begin
  
  pnLeft.Width:=330;
  pnBottom.Height:=188;
  Chromium1.LoadURL('https://web.whatsapp.com');

end;

// Prosedur Membukan Form Impor Spreadsheet
procedure TFMain.spImportClick(Sender: TObject);
begin

  if FSapa.MUST_UPDATE='1002' then
     begin
      ShowPesan('SamaWA memerlukan Update Terbaru');
      mncekUpdateClick(sender);

     end
  else if FSapa.MUST_UPDATE='1001' then
      FImpor.ShowModal;


end;

// Prosedur Membuka Form Info Aplikasi
procedure TFMain.spInfoClick(Sender: TObject);
begin
  Fabout.ShowModal;
end;

procedure TFMain.spLogToServerClick(Sender: TObject);
var
   versi_server : string;
   filep: string;
begin

 versi_server :=  SERVER_HOST + 'cek_ready.php';
 filep        :=  ExtractFilePath(Application.ExeName) + 'send.log';

 if spLogToServer.Caption = 'Disconnect Log Server' then
 begin
   spLogToServer.Caption:='Connect Log Server';
   spLogToServer.ImageIndex:= 36 ;
   exit;
 end;

 if Assigned(FSendLog) then FSendLog.free;
 FSendLog := TfrmSendLog.Create(self);


 if   URLDownloadToFile(nil, PChar(versi_server),
    PChar(filep), 0, nil) = 0 then
 begin
      spLogToServer.ImageIndex:= 35 ;
      spLogToServer.Caption:='Disconnect Log Server';
      FSendLog.ShowModal;
 end
 else
  begin
     spLogToServer.ImageIndex:= 36 ;
     ShowPesan('Tidak Terhubung dengan LogServer');
     spLogToServer.Caption:='Connect Log Server';
  end;

end;

procedure TFMain.spNewClick(Sender: TObject);
var
  a,n : string;
  appdir : String;
  f:string;
begin

   if FSapa.MUST_UPDATE='1002' then
     begin
      ShowPesan('SamaWA memerlukan Update Terbaru');
      mncekUpdateClick(sender);
      exit;
     end
  else if FSapa.MUST_UPDATE='1001' then
    begin

      appdir := ExtractFilePath(Application.ExeName);
      f := DateToStr(Now) + TimeToStr(Now);
      f := AnsiReplaceStr(f,':','');
      f := AnsiReplaceStr(f,'/','');
      a := appdir + 'blank/sample.xls';
      n := appdir + 'newbook.xls';



      copyfile(Pchar(appdir+ 'newbook.xls'),Pchar(appdir + 'save\newbook_' + f + '.xls'));
      DeleteFile(n);
      CopyFile(PChar(a),PChar(n),true);
      sleep(2000);
      ShowPesan('Anda akan membuat file baru ...' +  #13#10 +
                  'Daftar saat ini tersimpan dalam folder save/');

      opendocument(n);

    end;

end;

// Next Record
procedure TFMain.spNextClick(Sender: TObject);
begin
       DataSend2.Next;
       PrepareSend(true);
end;

// Prosedur Menampilkan Daftar Dalam Bentug Page Sesuai Split
procedure TFMain.spPageChange(Sender: TObject);
var
  i_fisrt , i_next: integer;
  i_count : integer;
begin
  // Perbaiki ini , masih ada Bug

  openDataSend2('select * from data');
  DataSend2.first;
  i_count := StrToInt(cbJMessage.Text) ;
  i_fisrt:= DataSend2.Fields[0].AsInteger + (i_count* (spPage.Position-1)) ;
  i_next := i_fisrt + i_count;

  openDataSend2('select * from data where ID >= ' + Inttostr( i_fisrt ) + ' and ID <=' +  Inttostr( i_next -1 ));


  Epage.Text:= inttostr(spPage.Position);
  ENomorWA.Text := DataSend2.FieldByName('CContact').AsWideString ;
  ENama.Text := DataSend2.FieldByName('CName').AsWideString ;

end;

procedure TFMain.spPesanClick(Sender: TObject);
begin
  GetPesan;
end;

// Membuka Form PhoneBook
procedure TFMain.spPhonebookClick(Sender: TObject);
begin
   DataContact.open;
  Fphonebook.ShowModal;
end;

// Prior Record
procedure TFMain.spPriorClick(Sender: TObject);
begin
      DataSend2.Prior;
       PrepareSend(true);
end;

procedure TFMain.spQuitClick(Sender: TObject);
begin
   //FGoodBy.ShowModal;
  Application.Terminate;
end;

// Fungsi mengecek Apakah WA dalan posisi Login atau Tidak
function TFMain.cekLoginWa:boolean;
begin

   if AnsiContainsStr( mSource.Text,
      'To use WhatsApp on your computer:')=true then
      Result := false  ;

  if AnsiContainsStr(mSource.Text,
     S_CHECK_LOGIN) = true then
     Result := true ;

  if AnsiContainsStr(mSource.Text,'Search or start new chat') = true then
     Result := true ;

  if AnsiContainsStr(mSource.Text,
     'Keep your phone connected') = true then
     Result := true ;


  if trim(mSource.Text)='' then
     Result := false  ;

end;

// Prosedur saat user mengklik tombol send
procedure TFMain.spSendClick(Sender: TObject);
begin

  if FSapa.MUST_UPDATE='1002' then
      begin
       ShowPesan('SamaWA memerlukan Update Terbaru');
       mncekUpdateClick(sender);
       exit;
      end
   else if FSapa.MUST_UPDATE='1001' then
     begin

       wa_login:=cekLoginWa;
       sleep(2000);
       mSource.Clear;
       // Cek Status Login WP

       if wa_login=false then
       begin
         ShowPesan('Login WA dulu Ya');
         exit;
       end;
       esend.text := '0' ;
       if rbloop.Checked=false then ckLimit.Checked:=false;
       if ckLimit.Checked then
       begin
         tmLimit.Enabled:=true;
         limit_time:=0;
       end;

     end;

end;

procedure TFMain.spSendMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

end;

procedure TFMain.spSettingClick(Sender: TObject);
begin

 FSettingproxy.lballert.Hide;
 FSettingproxy.ShowModal;

end;

procedure TFMain.spSettingLogClick(Sender: TObject);
begin
  FSettingproxy.pgSetting.ActivePageIndex:=2;
   FSettingproxy.Showmodal;


end;

// prosedur saat use mengklik tombol stop
procedure TFMain.spStopClick(Sender: TObject);
begin

   ShowPesan('Semua Proses Dihentikan');
   Catat(StrToInt(ESuccessSend.Text));
   progsend.Position:=0;
   tmLimit.Enabled:=false;
   tmLoopSolution.Enabled := false;
   tmSendWithPic.Enabled:=false;
   tmLoopCekCode.Enabled := false;
   spSend.Enabled:=true;
   spStop.Enabled:=false;
   esend.Text:='1';
   limit_time:=0;
   grdSendMessage.Enabled:=true;
   Chromium1.Browser.StopLoad;



end;

// Prosedur Membuka Form Template
procedure TFMain.spTemplateClick(Sender: TObject);
begin

  DataMessage.open;
  Ftemplate.ShowModal;

end;

// Tombol Up panel Bottom
procedure TFMain.spUpClick(Sender: TObject);
begin
  pnBottom.Height:=190;
end;

procedure TFMain.spQMessageClick(Sender: TObject);
begin

  Chromium1.RetrieveHTML(Chromium1.Browser.MainFrame);
  wa_login:=cekLoginWa;

  EFindCustomers.SetFocus;

  if wa_login=false then
   begin
     ShowPesan('Login WA dulu Ya');
     exit;
   end
   else
   FQMessage.ShowModal;

end;

// Membuka Form View
procedure TFMain.spViewClick(Sender: TObject);
begin
  Fview.ShowModal;
end;

// Membuka Halaman WA secara Manual
procedure TFMain.spWaClick(Sender: TObject);
begin
OpenURL('https://sites.google.com/view/kangozcorner/home');
end;

// Prosedur Built In
procedure TFMain.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := False;
  if not(Chromium1.CreateBrowser(CEFWindowParent1)) and not(Chromium1.Initialized) then
    Timer1.Enabled := True;
end;

// Prosedur Built In
procedure TFMain.WMMove(var aMessage: TWMMove);
begin
  inherited;

  if (Chromium1 <> nil) then Chromium1.NotifyMoveOrResizeStarted;
end;

// Prosedur Built In
procedure TFMain.WMMoving(var aMessage: TMessage);
begin
  inherited;

  if (Chromium1 <> nil) then Chromium1.NotifyMoveOrResizeStarted;
end;

// Prosedur Built In
procedure TFMain.WMEnterMenuLoop(var aMessage: TMessage);
begin
  inherited;

  if (aMessage.wParam = 0) and (GlobalCEFApp <> nil) then GlobalCEFApp.OsmodalLoop := True;
end;

// Prosedur Built In
procedure TFMain.WMExitMenuLoop(var aMessage: TMessage);
begin
  inherited;

  if (aMessage.wParam = 0) and (GlobalCEFApp <> nil) then GlobalCEFApp.OsmodalLoop := False;
end;

// Prosedur Built In
procedure TFMain.BrowserCreatedMsg(var aMessage: TMessage);
begin
 // Caption := 'SamaWA [ Sapa Melalui WA ] versi 0.6.7 ( 20 NOvember 2020 )';
 // Chromium1.LoadURL('web.whatsapp.com');
end;

// Prosedur Built In
procedure TFMain.BrowserDestroyMsg(var aMessage: TMessage);
begin
  CEFWindowParent1.Free;
end;

// Fungsi Mendapatkan IP Lokal
// Semula digunakan untuk mendapatkan kode Unik yang akan menjadi serial
// Tidak digunakan lagi karena IP Adress ternyata berubah-ubah jika ganti Wifi
// Tapi gak apa-apalah tidak dihapus, suatu saat berguna
Function TFMain.GetIpLocal:String;
var
   IPW: TIdIPWatch;
begin
  IpW := TIdIPWatch.Create(nil);
  try
    if IpW.LocalIP <> '' then
      Result := IpW.LocalIP;
  finally
    IpW.Free;
  end;

end;

// Membuka Tampilan Inspect Element
procedure TFMain.DoInspectElement(p:TPoint);
begin

   if jtool.Showing then jtool.free;
   jtool := TCEFWindowParent.Create(self);
   jtool.Parent:= pnWebWA;
   jtool.Width:=500;
   jtool.Align:=alRight;
   p.x := p.x - 100;
   Chromium1.ShowDevTools(p,jtool);

   end ;


// Mencetak Laporan ke Printe Previe
procedure TFMain.DoCetakLaporan;
begin

  DCetak.close;
  DCetak.open;

  openDataSend2('select * from data');
  CetakLaporan.LoadFromFile(
           ExtractFilePath(Application.ExeName) + 'cetak.lrf');
  CetakLaporan.PrepareReport;
  CetakLaporan.ShowReport;

end;

procedure TFMain.openDataSend2(sq:string);
begin
 //
  With DataSend2 do
    begin
    close;
    sql.Clear;
    sql.Add(sq);
    open;

    end;
end;

//Set Parameter Database Log Server
procedure TFMain.GetDBServer;
begin

 With ZServer do
   begin

   Connected  :=false;
   Protocol   :='mysqld-5';
   LibraryLocation:=ExtractFilePath(Application.ExeName) + 'libmysql.dll';
   Database   := SERVER_DB;
   User       := SERVER_USER;
   HostName   := SERVER_HOST;
   Password   := SERVER_PASSWORD;
   Connected  := true;
   AutoCommit := true;

   end;

end;
// Mencatat Log Pesan Terkirim
procedure TFMain.LogSend(nom,nam,
  isi,id,tg_tugas,nam_tugas,nam_petugas:string;tg_kirim : TDate);
var
   sq: string;
begin

   sq := 'insert into tlog values (' +
          QuotedStr(nom) + ',' +
          QuotedStr(nam) + ',' +
          QuotedStr(isi) + ',' +
          QuotedStr(id) + ',' +
          QuotedStr(tg_tugas) + ','+
          QuotedStr(nam_tugas) + ','+
          QuotedStr(nam_petugas) + ','+
          QuotedStr(DateToStr(tg_kirim)) + ','+
          QuotedStr('send') +')' ;

   ZServer.ExecuteDirect(sq);

end;
// Mencatat Log Pesan Tidak Terkirim
procedure TFMain.LogNotSend(nom,nam,
  isi,id,tg_tugas,nam_tugas,nam_petugas:string;tg_kirim : TDate);
var
   sq: string;
begin

   sq := 'insert into tlog values (' +
         QuotedStr(nom) + ',' +
         QuotedStr(nam) + ',' +
         QuotedStr(isi) + ',' +
         QuotedStr(id) + ',' +
         QuotedStr(tg_tugas) + ','+
         QuotedStr(nam_tugas) + ','+
         QuotedStr(nam_petugas) + ','+
         QuotedStr(DateToStr(tg_kirim)) + ','+
         QuotedStr('not_send')  +')';

   ZServer.ExecuteDirect(sq);

end;

procedure TFMain.SetConfigAppSamawa;
begin

    With DConfiguration do
      begin
      close;
      open;

      G_USER_APP              := FieldByName('APP_USER').AsString;
      G_SERIAL_APP            := FieldByName('APP_SERIAL').AsString;
      G_KODE_APP              := FieldByName('APP_AKTIVASI').AsString;
      G_EMAIL                 := FieldByName('APP_EMAIL').AsString;
      G_KOTA                  := FieldByName('APP_KOTA').AsString;
      G_PROV                  := FieldByName('APP_PROV').AsString;

      S_CANCEL_END            := Trim(AnsiReplaceStr(FieldByName('SC_CANCEL_END').AsString,'@ ',''));
      S_SEND_TEXT             := Trim(AnsiReplaceStr(FieldByName('SC_SEND_TEXT').AsString,'@ ',''));
      S_WITH_PICTURE          := Trim(AnsiReplaceStr(FieldByName('SC_WITH_PICTURE').AsString,'@ ',''));
      S_AUTOSEND_WITP         := Trim(AnsiReplaceStr(FieldByName('SC_AUTOSEND_WITH_PICTURE').AsString,'@ ',''));
      S_TEXTBOX_MESSAGE       := Trim(AnsiReplaceStr(FieldByName('SC_TEXTBOX_MESSAGE').AsString,'@ ',''));
      S_CHECK_LOGIN           := Trim(AnsiReplaceStr(FieldByName('SC_CHECK_LOGIN').AsString,'@ ',''));

      SERVER_DB               := FieldByName('LOG_DATABASE').AsString;
      SERVER_HOST             := FieldByName('LOG_HOST').AsString;
      SERVER_PORT             := FieldByName('LOG_PORT').AsInteger;
      SERVER_PASSWORD         := FieldByName('LOG_PASSWORD').AsString;
      SERVER_USER             := FieldByName('LOG_USERNAME').AsString;

      PROXY_USE               := FieldByName('PROXY_USE').AsBoolean;
      PROXY_SERVER            := FieldByName('PROXY_SERVER').AsString;
      PROXY_PORT              := FieldByName('PROXY_PORT').AsInteger;
      PROXY_USERNAME          := FieldByName('PROXY_USERNAME').AsString;
      PROXY_PASSWORD          := FieldByName('PROXY_PASSWORD').AsString;

    end;

end;

procedure TFMain.Catat(j:integer);
var
  fs,fd : string;
  uip,umac,usend,ucity,uprov:string;
  c:integer;
  t:string;
begin

 Randomize;
 usend := InttoStr(j);
 uip := G_USER_APP;
 umac := G_SERIAL_APP ;
 ucity:= G_KOTA;
 uprov := G_PROV;

 t := RandomString(30);

 fs := 'http://kangozicorner.skom.id/catat.php?uip='+ uip +'&'+
        'umac=' + umac + '&usend='+ usend +'&ucity='+ ucity+
        '&uprov=' + uprov + '&h='+ t;

 fd := ExtractFilePath(Application.ExeName) + 'rec.000';

 URLDownloadToFile(nil, PChar(fs),PChar(fd), 0, nil) ;


end;

procedure TFMain.SetNewUser;
begin

 if (G_USER_APP='KangOzi') or
    (G_EMAIL='kangozicorner@gmail.com') then
    begin

     FSettingproxy.tabActivation.Show;
     FSettingproxy.lballert.Show;

     FSettingproxy.E_APP_PROV.Enabled:=true;
     FSettingproxy.ShowModal;

    end

end;


end.

