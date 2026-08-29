{
  =============================================================================
  This Source Code Form is subject to the terms of the Mozilla Public
  License, v. 2.0. If a copy of the MPL was not distributed with this
  file, You can obtain one at https://mozilla.org/MPL/2.0/.
  =============================================================================
}

{$INCLUDE ../ProjectDefines.inc}
{ COMPLETE TRANSFERING! }

unit ufrmAvroMouse;

interface

uses
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  StdCtrls,
  Buttons,
  ExtCtrls,
  System.Skia;

type
  TfrmAvroMouse = class(TForm)
    Panel1: TPanel;
    BitBtn3: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    BitBtn16: TBitBtn;
    BitBtn17: TBitBtn;
    BitBtn18: TBitBtn;
    BitBtn19: TBitBtn;
    BitBtn20: TBitBtn;
    BitBtn21: TBitBtn;
    BitBtn24: TBitBtn;
    BitBtn25: TBitBtn;
    BitBtn28: TBitBtn;
    BitBtn29: TBitBtn;
    BitBtn22: TBitBtn;
    BitBtn23: TBitBtn;
    BitBtn26: TBitBtn;
    BitBtn27: TBitBtn;
    BitBtn30: TBitBtn;
    BitBtn31: TBitBtn;
    BitBtn32: TBitBtn;
    BitBtn33: TBitBtn;
    BitBtn34: TBitBtn;
    BitBtn35: TBitBtn;
    BitBtn36: TBitBtn;
    BitBtn37: TBitBtn;
    BitBtn38: TBitBtn;
    BitBtn39: TBitBtn;
    Panel2: TPanel;
    BitBtn40: TBitBtn;
    BitBtn42: TBitBtn;
    BitBtn43: TBitBtn;
    BitBtn44: TBitBtn;
    BitBtn45: TBitBtn;
    BitBtn46: TBitBtn;
    BitBtn47: TBitBtn;
    BitBtn48: TBitBtn;
    BitBtn49: TBitBtn;
    BitBtn50: TBitBtn;
    BitBtn51: TBitBtn;
    BitBtn52: TBitBtn;
    BitBtn53: TBitBtn;
    BitBtn54: TBitBtn;
    BitBtn55: TBitBtn;
    BitBtn56: TBitBtn;
    BitBtn57: TBitBtn;
    BitBtn58: TBitBtn;
    BitBtn59: TBitBtn;
    BitBtn60: TBitBtn;
    BitBtn61: TBitBtn;
    Panel3: TPanel;
    BitBtn62: TBitBtn;
    BitBtn63: TBitBtn;
    BitBtn64: TBitBtn;
    BitBtn65: TBitBtn;
    BitBtn66: TBitBtn;
    BitBtn67: TBitBtn;
    BitBtn68: TBitBtn;
    BitBtn69: TBitBtn;
    BitBtn70: TBitBtn;
    BitBtn71: TBitBtn;
    GroupBox1: TGroupBox;
    BitBtn72: TBitBtn;
    BitBtn73: TBitBtn;
    BitBtn74: TBitBtn;
    BitBtn75: TBitBtn;
    BitBtn76: TBitBtn;
    BitBtn77: TBitBtn;
    BitBtn78: TBitBtn;
    BitBtn79: TBitBtn;
    BitBtn80: TBitBtn;
    BitBtn81: TBitBtn;
    BitBtn82: TBitBtn;
    BitBtn83: TBitBtn;
    BitBtn84: TBitBtn;
    BitBtn85: TBitBtn;
    BitBtn86: TBitBtn;
    BitBtn87: TBitBtn;
    BitBtn88: TBitBtn;
    GroupBox2: TGroupBox;
    But_KSs: TBitBtn;
    But_NGK: TBitBtn;
    But_NgG: TBitBtn;
    But_JNYA: TBitBtn;
    But_NYAC: TBitBtn;
    But_NYACh: TBitBtn;
    But_NYAJ: TBitBtn;
    But_T_T: TBitBtn;
    But_SsNYA: TBitBtn;
    But_HM: TBitBtn;
    But_ND: TBitBtn;
    But_ZFola: TBitBtn;
    But_RFola: TBitBtn;
    BitBtn102: TBitBtn;
    BitBtn103: TBitBtn;
    BitBtn104: TBitBtn;
    BitBtn105: TBitBtn;
    BitBtn106: TBitBtn;
    BitBtn107: TBitBtn;
    BitBtn108: TBitBtn;
    BitBtn109: TBitBtn;
    BitBtn110: TBitBtn;
    BitBtn111: TBitBtn;
    BitBtn112: TBitBtn;
    BitBtn113: TBitBtn;
    BitBtn114: TBitBtn;
    btnTab: TButton;
    btnBackspace: TButton;
    btnSpace: TButton;
    btnEnter: TButton;
    BitBtn89: TBitBtn;
    BitBtn90: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnTabClick(Sender: TObject);
    procedure But_KSsClick(Sender: TObject);
    procedure But_NGKClick(Sender: TObject);
    procedure But_NgGClick(Sender: TObject);
    procedure But_JNYAClick(Sender: TObject);
    procedure But_NYACClick(Sender: TObject);
    procedure But_NYAChClick(Sender: TObject);
    procedure But_NYAJClick(Sender: TObject);
    procedure But_T_TClick(Sender: TObject);
    procedure But_SsNYAClick(Sender: TObject);
    procedure But_HMClick(Sender: TObject);
    procedure But_NDClick(Sender: TObject);
    procedure But_RFolaClick(Sender: TObject);
    procedure But_ZFolaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    private
      { Private declarations }
      procedure TypeIt(const tStr: string);
      procedure DetectLeftClickOnTitleBar(var Msg: TWMNCLButtonDown); message WM_NCLBUTTONDOWN;
      procedure DetectRightClickOnTitleBar(var Msg: TWMNCLButtonDown); message WM_NCRBUTTONDOWN;
      procedure RegenerateGlyphs;
      procedure RenderGlyph(const ABtn: TBitBtn);
      procedure AssignSvgGlyph(const ABtn: TBitBtn; const ASvgPath: string);
      function DisplayTextOf(const ABtn: TBitBtn): string;
      function ThemeColor(const ASysColor: TColor): TColor;
      function MouseGlyphDir: string;
      function AssetMouseGlyphDir: string;
      procedure AssignButtonTooltips;
      function UnicodeCharName(ATag: Integer): string;
      function UnicodeCharVersion(ATag: Integer): string;
      function TagToDisplay(ATag: Integer): string;
    public
      { Public declarations }
    protected
      procedure CreateParams(var Params: TCreateParams); override;
  end;

var
  frmAvroMouse: TfrmAvroMouse;

implementation

{$R *.dfm}

uses
  uForm1,
  BanglaChars,
  KeyboardFunctions,
  uWindowHandlers,
  uRegistrySettings,
  clsLayout,
  WindowsDarkMode,
  Vcl.Themes,
  System.Types,
  System.RegularExpressions;

const
  Show_Window_in_Taskbar = True;

procedure TfrmAvroMouse.BitBtn1Click(Sender: TObject);
var
  TagVal: Integer;
  S: string;
begin
  TagVal := (Sender as TBitBtn).Tag;
  if TagVal > $FFFF then
  begin
    { Astral plane character (e.g. Bengali Supplement): send as a
      UTF-16 surrogate pair; KEYEVENTF_UNICODE recombines it. }
    SetLength(S, 2);
    S[1] := Char($D800 + ((TagVal - $10000) shr 10));
    S[2] := Char($DC00 + ((TagVal - $10000) and $3FF));
    TypeIt(S);
  end
  else
    TypeIt(Char(TagVal));
end;

procedure TfrmAvroMouse.btnTabClick(Sender: TObject);
begin
  SendKey_SendInput((Sender as TButton).Tag);
end;

procedure TfrmAvroMouse.But_HMClick(Sender: TObject);
begin
  TypeIt(b_H + b_Hasanta + b_M);
end;

procedure TfrmAvroMouse.But_JNYAClick(Sender: TObject);
begin
  TypeIt(b_J + b_Hasanta + b_NYA);
end;

procedure TfrmAvroMouse.But_KSsClick(Sender: TObject);
begin
  TypeIt(b_K + b_Hasanta + b_Ss);
end;

procedure TfrmAvroMouse.But_NDClick(Sender: TObject);
begin
  TypeIt(b_Nn + b_Hasanta + b_Dd);
end;

procedure TfrmAvroMouse.But_NgGClick(Sender: TObject);
begin
  TypeIt(b_NGA + b_Hasanta + b_G);
end;

procedure TfrmAvroMouse.But_NGKClick(Sender: TObject);
begin
  TypeIt(b_NGA + b_Hasanta + b_K);
end;

procedure TfrmAvroMouse.But_NYACClick(Sender: TObject);
begin
  TypeIt(b_NYA + b_Hasanta + b_C);
end;

procedure TfrmAvroMouse.But_NYAChClick(Sender: TObject);
begin
  TypeIt(b_NYA + b_Hasanta + b_CH);
end;

procedure TfrmAvroMouse.But_NYAJClick(Sender: TObject);
begin
  TypeIt(b_NYA + b_Hasanta + b_J);
end;

procedure TfrmAvroMouse.But_RFolaClick(Sender: TObject);
begin
  TypeIt(b_Hasanta + b_R);
end;

procedure TfrmAvroMouse.But_SsNYAClick(Sender: TObject);
begin
  TypeIt(b_Ss + b_Hasanta + b_Nn);
end;

procedure TfrmAvroMouse.But_T_TClick(Sender: TObject);
begin
  TypeIt(b_T + b_Hasanta + b_T);
end;

procedure TfrmAvroMouse.But_ZFolaClick(Sender: TObject);
begin
  TypeIt(b_Hasanta + b_Z);
end;

procedure TfrmAvroMouse.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  with Params do
  begin
    if Show_Window_in_Taskbar then
    begin
      ExStyle := ExStyle or WS_EX_APPWINDOW and not WS_EX_TOOLWINDOW;
      ExStyle := ExStyle or WS_EX_TOPMOST or WS_EX_NOACTIVATE;
      WndParent := GetDesktopwindow;
    end
    else if not Show_Window_in_Taskbar then
    begin
      ExStyle := ExStyle and not WS_EX_APPWINDOW;
    end;
  end;
end;

procedure TfrmAvroMouse.DetectLeftClickOnTitleBar(var Msg: TWMNCLButtonDown);
begin
  if (Msg.HitTest = htCaption) then
    SetForegroundWindow(Self.Handle);
  inherited;
end;

procedure TfrmAvroMouse.DetectRightClickOnTitleBar(var Msg: TWMNCLButtonDown);
begin
  if (Msg.HitTest = htCaption) then
    SetForegroundWindow(Self.Handle);
  inherited;
end;

procedure TfrmAvroMouse.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Self.Top >= 0 then
    AvroMousePosX := intToStr(Self.Top);
  if Self.Left >= 0 then
    AvroMousePosY := intToStr(Self.Left);

  Action := caFree;

  frmAvroMouse := nil;
end;

procedure TfrmAvroMouse.FormCreate(Sender: TObject);
begin
  try
    if (StrToInt(AvroMousePosX) > Screen.Width) or (StrToInt(AvroMousePosX) < 0) then
      AvroMousePosX := '0';
    if (StrToInt(AvroMousePosY) > Screen.Height) or (StrToInt(AvroMousePosY) < 0) then
      AvroMousePosY := '0';

    Self.Top := StrToInt(AvroMousePosX);
    Self.Left := StrToInt(AvroMousePosY);
  except
    on E: Exception do
    begin
      AvroMousePosX := '0';
      AvroMousePosY := '0';
      Self.Top := 0;
      Self.Left := 0;
    end;
  end;

  RegenerateGlyphs;
  AssignButtonTooltips;
end;

function TfrmAvroMouse.DisplayTextOf(const ABtn: TBitBtn): string;
begin
  if (ABtn.Tag = $200C) or (ABtn.Tag = $200D) then
    Result := ''
  else if ABtn.Tag <> 0 then
    Result := WideChar(ABtn.Tag)
  else if ABtn.Name = 'But_KSs' then
    Result := b_K + b_Hasanta + b_Ss
  else if ABtn.Name = 'But_NGK' then
    Result := b_NGA + b_Hasanta + b_K
  else if ABtn.Name = 'But_NgG' then
    Result := b_NGA + b_Hasanta + b_G
  else if ABtn.Name = 'But_JNYA' then
    Result := b_J + b_Hasanta + b_NYA
  else if ABtn.Name = 'But_NYAC' then
    Result := b_NYA + b_Hasanta + b_C
  else if ABtn.Name = 'But_NYACh' then
    Result := b_NYA + b_Hasanta + b_CH
  else if ABtn.Name = 'But_NYAJ' then
    Result := b_NYA + b_Hasanta + b_J
  else if ABtn.Name = 'But_T_T' then
    Result := b_T + b_Hasanta + b_T
  else if ABtn.Name = 'But_SsNYA' then
    Result := b_Ss + b_Hasanta + b_Nn
  else if ABtn.Name = 'But_HM' then
    Result := b_H + b_Hasanta + b_M
  else if ABtn.Name = 'But_ND' then
    Result := b_Nn + b_Hasanta + b_Dd
  else if ABtn.Name = 'But_ZFola' then
    Result := b_Hasanta + b_Z
  else if ABtn.Name = 'But_RFola' then
    Result := b_Hasanta + b_R
  else
    Result := '';
end;

function TfrmAvroMouse.ThemeColor(const ASysColor: TColor): TColor;
begin
  Result := TStyleManager.ActiveStyle.GetSystemColor(ASysColor);
end;

function TfrmAvroMouse.MouseGlyphDir: string;
begin
  Result := ExtractFilePath(ParamStr(0)) + 'mouse-glyphs\';
end;

function TfrmAvroMouse.AssetMouseGlyphDir: string;
begin
  Result := ExtractFilePath(ParamStr(0)) + '..\assets\mouse-glyphs\';
end;

procedure TfrmAvroMouse.AssignSvgGlyph(const ABtn: TBitBtn; const ASvgPath: string);
const
  MaskColor = clFuchsia;
var
  W, H: Integer;
  InkC, FaceC: TColor;
  InR, InG, InB: Byte;
  FaR, FaG, FaB: Byte;
  DOM: ISkSVGDOM;
  Surface: ISkSurface;
  Pixmap: ISkPixmap;
  X, Y, Alpha: Integer;
  Px: PByte;
  KP: PByteArray;
  Key: TBitmap;
  RootW, RootH, FitScale: Single;

  function LeadingNumber(const AValue: string; out ANumber: Single): Boolean;
  var
    M: TMatch;
  begin
    M := TRegEx.Match(AValue, '\s*([0-9]*\.?[0-9]+)');
    Result := M.Success and
      TryStrToFloat(M.Groups[1].Value, ANumber, TFormatSettings.Invariant);
  end;

  { True when the root <svg> tag carries explicit width/height attributes:
    such documents render at a fixed size and ignore the container size. }
  function TryRootSize(out AWidth, AHeight: Single): Boolean;
  var
    Svg: TStringList;
    Tag, WStr, HStr: string;

    function AttrValue(const ATag, AName: string): string;
    var
      M: TMatch;
    begin
      Result := '';
      M := TRegEx.Match(ATag, '\b' + AName + '\s*=\s*["'']([^"'']+)');
      if M.Success then
        Result := M.Groups[1].Value;
    end;

  begin
    Result := False;
    AWidth := 0;
    AHeight := 0;
    Svg := TStringList.Create;
    try
      try
        Svg.LoadFromFile(ASvgPath, TEncoding.UTF8);
      except
        Svg.Text := '';
      end;
      Tag := TRegEx.Match(Svg.Text, '<svg\b[^>]*').Value;
      if Tag = '' then
        Exit;
      WStr := AttrValue(Tag, 'width');
      HStr := AttrValue(Tag, 'height');
      { Percentages are relative sizes, not fixed ones. }
      if (Pos('%', WStr) > 0) or (Pos('%', HStr) > 0) then
        Exit;
      Result := LeadingNumber(WStr, AWidth) and LeadingNumber(HStr, AHeight) and
        (AWidth > 0) and (AHeight > 0);
    finally
      Svg.Free;
    end;
  end;

begin
  W := ABtn.ClientWidth;
  H := ABtn.ClientHeight;
  if (W <= 0) or (H <= 0) then
    Exit;

  DOM := TSkSVGDOM.MakeFromFile(ASvgPath);
  if DOM = nil then
    Exit;

  InkC := ThemeColor(clBtnText);
  InR := GetRValue(InkC);  InG := GetGValue(InkC);  InB := GetBValue(InkC);
  FaceC := ThemeColor(clBtnFace);
  FaR := GetRValue(FaceC);  FaG := GetGValue(FaceC);  FaB := GetBValue(FaceC);

  Surface := TSkSurface.MakeRaster(W, H);
  Surface.Canvas.Clear($00000000);
  DOM.SetContainerSize(TSizeF.Create(W, H));

  { Fixed-size SVGs ignore the container and would render at design size
    pinned to the top-left corner (visible as misalignment at high DPI).
    Fit and center them on the canvas so they behave like viewBox-only
    SVGs, which Skia scales and centers by itself. }
  if TryRootSize(RootW, RootH) then
  begin
    FitScale := W / RootW;
    if H / RootH < FitScale then
      FitScale := H / RootH;
    Surface.Canvas.Save;
    try
      Surface.Canvas.Translate((W - RootW * FitScale) / 2, (H - RootH * FitScale) / 2);
      Surface.Canvas.Scale(FitScale, FitScale);
      DOM.Render(Surface.Canvas);
    finally
      Surface.Canvas.Restore;
    end;
  end
  else
    DOM.Render(Surface.Canvas);

  Pixmap := Surface.PeekPixels;
  if Pixmap = nil then
    Exit;

  Key := TBitmap.Create;
  try
    Key.PixelFormat := pf32bit;
    Key.Width       := W;
    Key.Height      := H;
    Key.Canvas.Brush.Color := MaskColor;
    Key.Canvas.FillRect(Rect(0, 0, W, H));

    for Y := 0 to H - 1 do
    begin
      KP := Key.ScanLine[Y];
      for X := 0 to W - 1 do
      begin
        Px := PByte(Pixmap.GetPixelAddr(X, Y));
        Alpha := PByte(NativeUInt(Px) + 3)^;
        if Alpha = 0 then
        begin
          KP[X * 4]     := $FF;
          KP[X * 4 + 1] := 0;
          KP[X * 4 + 2] := $FF;
        end
        else
        begin
          KP[X * 4]     := (Alpha * InB + (255 - Alpha) * FaB) div 255;
          KP[X * 4 + 1] := (Alpha * InG + (255 - Alpha) * FaG) div 255;
          KP[X * 4 + 2] := (Alpha * InR + (255 - Alpha) * FaR) div 255;
        end;
      end;
    end;

    Key.Canvas.Pixels[0, H - 1]     := MaskColor;
    Key.Canvas.Pixels[W - 1, H - 1] := MaskColor;
    Key.Canvas.Pixels[0, 0]         := MaskColor;

    ABtn.Glyph.Assign(Key);
    ABtn.Glyph.Transparent      := True;
    ABtn.Glyph.TransparentColor := MaskColor;
  finally
    Key.Free;
  end;
end;

procedure TfrmAvroMouse.RenderGlyph(const ABtn: TBitBtn);
var
  Path: string;
begin
  if (ABtn.ClientWidth <= 0) or (ABtn.ClientHeight <= 0) then
    Exit;

  { The dfm carries a Bangla caption per button for design-time readability;
    clear it so the runtime shows only the SVG glyph. }
  ABtn.Caption := '';

  Path := MouseGlyphDir + ABtn.Name + '.svg';
  if not FileExists(Path) then
    Path := AssetMouseGlyphDir + ABtn.Name + '.svg';
  if FileExists(Path) then
    AssignSvgGlyph(ABtn, Path);
end;


procedure TfrmAvroMouse.RegenerateGlyphs;
var
  I: Integer;
  Btn:  TBitBtn;
  Display: string;
begin
  for I := 0 to ComponentCount - 1 do
    if Components[I] is TBitBtn then
    begin
      Btn     := TBitBtn(Components[I]);
      Display := DisplayTextOf(Btn);
      if Display <> '' then
        RenderGlyph(Btn);
    end;
end;

function TfrmAvroMouse.TagToDisplay(ATag: Integer): string;
begin
  if ATag > $FFFF then
  begin
    Result := Char($D800 + ((ATag - $10000) shr 10));
    Result := Result + Char($DC00 + ((ATag - $10000) and $3FF));
  end
  else
    Result := Char(ATag);
end;

function TfrmAvroMouse.UnicodeCharVersion(ATag: Integer): string;
begin
  { Version in which the code point was first assigned (UCD DerivedAge). }
  case ATag of
    2509: Result := '4.0';
    2510: Result := '4.1';
    2555: Result := '5.2';
    8377: Result := '6.0';
    2432: Result := '7.0';
    2556, 2557: Result := '10.0';
    2558: Result := '11.0';
    73200, 73201: Result := '18.0';
  else
    Result := '1.1';
  end;
end;

function TfrmAvroMouse.UnicodeCharName(ATag: Integer): string;
begin
  case ATag of
    2404: Result := 'DEVANAGARI DANDA';
    2432: Result := 'BENGALI ANJI';
    2433: Result := 'BENGALI SIGN CANDRABINDU';
    2434: Result := 'BENGALI SIGN ANUSVARA';
    2435: Result := 'BENGALI SIGN VISARGA';
    2437: Result := 'BENGALI LETTER A';
    2438: Result := 'BENGALI LETTER AA';
    2439: Result := 'BENGALI LETTER I';
    2440: Result := 'BENGALI LETTER II';
    2441: Result := 'BENGALI LETTER U';
    2442: Result := 'BENGALI LETTER UU';
    2443: Result := 'BENGALI LETTER VOCALIC R';
    2444: Result := 'BENGALI LETTER VOCALIC L';
    2447: Result := 'BENGALI LETTER E';
    2448: Result := 'BENGALI LETTER AI';
    2451: Result := 'BENGALI LETTER O';
    2452: Result := 'BENGALI LETTER AU';
    2453: Result := 'BENGALI LETTER KA';
    2454: Result := 'BENGALI LETTER KHA';
    2455: Result := 'BENGALI LETTER GA';
    2456: Result := 'BENGALI LETTER GHA';
    2457: Result := 'BENGALI LETTER NGA';
    2458: Result := 'BENGALI LETTER CA';
    2459: Result := 'BENGALI LETTER CHA';
    2460: Result := 'BENGALI LETTER JA';
    2461: Result := 'BENGALI LETTER JHA';
    2462: Result := 'BENGALI LETTER NYA';
    2463: Result := 'BENGALI LETTER TTA';
    2464: Result := 'BENGALI LETTER TTHA';
    2465: Result := 'BENGALI LETTER DDA';
    2466: Result := 'BENGALI LETTER DDHA';
    2467: Result := 'BENGALI LETTER NNA';
    2468: Result := 'BENGALI LETTER TA';
    2469: Result := 'BENGALI LETTER THA';
    2470: Result := 'BENGALI LETTER DA';
    2471: Result := 'BENGALI LETTER DHA';
    2472: Result := 'BENGALI LETTER NA';
    2474: Result := 'BENGALI LETTER PA';
    2475: Result := 'BENGALI LETTER PHA';
    2476: Result := 'BENGALI LETTER BA';
    2477: Result := 'BENGALI LETTER BHA';
    2478: Result := 'BENGALI LETTER MA';
    2479: Result := 'BENGALI LETTER YA';
    2480: Result := 'BENGALI LETTER RA';
    2482: Result := 'BENGALI LETTER LA';
    2486: Result := 'BENGALI LETTER SHA';
    2487: Result := 'BENGALI LETTER SSA';
    2488: Result := 'BENGALI LETTER SA';
    2489: Result := 'BENGALI LETTER HA';
    2492: Result := 'BENGALI SIGN NUKTA';
    2493: Result := 'BENGALI SIGN AVAGRAHA';
    2494: Result := 'BENGALI VOWEL SIGN AA';
    2495: Result := 'BENGALI VOWEL SIGN I';
    2496: Result := 'BENGALI VOWEL SIGN II';
    2497: Result := 'BENGALI VOWEL SIGN U';
    2498: Result := 'BENGALI VOWEL SIGN UU';
    2499: Result := 'BENGALI VOWEL SIGN VOCALIC R';
    2500: Result := 'BENGALI VOWEL SIGN VOCALIC RR';
    2503: Result := 'BENGALI VOWEL SIGN E';
    2504: Result := 'BENGALI VOWEL SIGN AI';
    2507: Result := 'BENGALI VOWEL SIGN O';
    2508: Result := 'BENGALI VOWEL SIGN AU';
    2509: Result := 'BENGALI SIGN VIRAMA';
    2510: Result := 'BENGALI LETTER KHANDA TA';
    2519: Result := 'BENGALI AU LENGTH MARK';
    2524: Result := 'BENGALI LETTER RRA';
    2525: Result := 'BENGALI LETTER RHA';
    2527: Result := 'BENGALI LETTER YYA';
    2528: Result := 'BENGALI LETTER VOCALIC RR';
    2529: Result := 'BENGALI LETTER VOCALIC LL';
    2530: Result := 'BENGALI VOWEL SIGN VOCALIC L';
    2531: Result := 'BENGALI VOWEL SIGN VOCALIC LL';
    2534: Result := 'BENGALI DIGIT ZERO';
    2535: Result := 'BENGALI DIGIT ONE';
    2536: Result := 'BENGALI DIGIT TWO';
    2537: Result := 'BENGALI DIGIT THREE';
    2538: Result := 'BENGALI DIGIT FOUR';
    2539: Result := 'BENGALI DIGIT FIVE';
    2540: Result := 'BENGALI DIGIT SIX';
    2541: Result := 'BENGALI DIGIT SEVEN';
    2542: Result := 'BENGALI DIGIT EIGHT';
    2543: Result := 'BENGALI DIGIT NINE';
    2544: Result := 'BENGALI LETTER RA WITH MIDDLE DIAGONAL';
    2545: Result := 'BENGALI LETTER RA WITH LOWER DIAGONAL';
    2546: Result := 'BENGALI RUPEE MARK';
    2547: Result := 'BENGALI RUPEE SIGN';
    2548: Result := 'BENGALI CURRENCY NUMERATOR ONE';
    2549: Result := 'BENGALI CURRENCY NUMERATOR TWO';
    2550: Result := 'BENGALI CURRENCY NUMERATOR THREE';
    2551: Result := 'BENGALI CURRENCY NUMERATOR FOUR';
    2552: Result := 'BENGALI CURRENCY NUMERATOR ONE LESS THAN THE DENOMINATOR';
    2553: Result := 'BENGALI CURRENCY DENOMINATOR SIXTEEN';
    2554: Result := 'BENGALI ISSHAR';
    2555: Result := 'BENGALI GANDA MARK';
    2556: Result := 'BENGALI LETTER VEDIC ANUSVARA';
    2557: Result := 'BENGALI ABBREVIATION SIGN';
    2558: Result := 'BENGALI SANDHI MARK';
    8204: Result := 'ZERO WIDTH NON-JOINER';
    8205: Result := 'ZERO WIDTH JOINER';
    8377: Result := 'INDIAN RUPEE SIGN';
    73200: Result := 'BENGALI SIGN COMBINING ANUSVARA ABOVE';
    73201: Result := 'BENGALI LETTER ALTERNATE BARGIYA BA';
  else
    Result := '';
  end;
end;

procedure TfrmAvroMouse.AssignButtonTooltips;
var
  I: Integer;
  Btn: TBitBtn;
begin
  for I := 0 to ComponentCount - 1 do
    if Components[I] is TBitBtn then
    begin
      Btn := TBitBtn(Components[I]);
      Btn.ShowHint := True;
      if Btn.Tag <> 0 then
        Btn.Hint := TagToDisplay(Btn.Tag) + ' - ' + UnicodeCharName(Btn.Tag) +
          ' (Unicode ' + UnicodeCharVersion(Btn.Tag) + ')'
      else if Btn.Name = 'But_KSs' then
        Btn.Hint := DisplayTextOf(Btn) + ' - conjunct (KHA + VIRAMA + KA)'
      else if Btn.Name = 'But_NGK' then
        Btn.Hint := DisplayTextOf(Btn) + ' - conjunct (NGA + VIRAMA + KA)'
      else if Btn.Name = 'But_NgG' then
        Btn.Hint := DisplayTextOf(Btn) + ' - conjunct (NGA + VIRAMA + GA)'
      else if Btn.Name = 'But_JNYA' then
        Btn.Hint := DisplayTextOf(Btn) + ' - conjunct (JA + VIRAMA + NYA)'
      else if Btn.Name = 'But_NYAC' then
        Btn.Hint := DisplayTextOf(Btn) + ' - conjunct (NYA + VIRAMA + CA)'
      else if Btn.Name = 'But_NYACh' then
        Btn.Hint := DisplayTextOf(Btn) + ' - conjunct (NYA + VIRAMA + CHA)'
      else if Btn.Name = 'But_NYAJ' then
        Btn.Hint := DisplayTextOf(Btn) + ' - conjunct (NYA + VIRAMA + JA)'
      else if Btn.Name = 'But_T_T' then
        Btn.Hint := DisplayTextOf(Btn) + ' - conjunct (TA + VIRAMA + TA)'
      else if Btn.Name = 'But_SsNYA' then
        Btn.Hint := DisplayTextOf(Btn) + ' - conjunct (SSA + VIRAMA + NNA)'
      else if Btn.Name = 'But_HM' then
        Btn.Hint := DisplayTextOf(Btn) + ' - conjunct (HA + VIRAMA + MA)'
      else if Btn.Name = 'But_ND' then
        Btn.Hint := DisplayTextOf(Btn) + ' - conjunct (NNA + VIRAMA + DDA)'
      else if Btn.Name = 'But_ZFola' then
        Btn.Hint := 'YA-phala (ya joined to the preceding letter)'
      else if Btn.Name = 'But_RFola' then
        Btn.Hint := 'RA-phala (ra joined to the preceding letter)';
    end;
  btnTab.Hint := 'Tab';
  btnTab.ShowHint := True;
  btnBackspace.Hint := 'Backspace';
  btnBackspace.ShowHint := True;
  btnSpace.Hint := 'Space';
  btnSpace.ShowHint := True;
  btnEnter.Hint := 'Enter';
  btnEnter.ShowHint := True;
end;

procedure TfrmAvroMouse.TypeIt(const tStr: string);
begin
  SendKey_Char(tStr);
end;

end.
