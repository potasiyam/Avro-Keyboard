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
  Winapi.GDIPAPI,
  Winapi.GDIPOBJ;

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
    BitBtn41: TBitBtn;
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
      procedure RenderGlyph(const ABtn: TBitBtn; const AText: string);
      procedure GenerateGlyph(const ABtn: TBitBtn; const AText: string);
      procedure AssignPngGlyph(const ABtn: TBitBtn; const APngPath: string);
      function CreateGpFont(const ASizePx: Integer): TGPFont;
      function DisplayTextOf(const ABtn: TBitBtn): string;
      function ThemeColor(const ASysColor: TColor): TColor;
      function MouseGlyphDir: string;
      procedure EnsureBanglaFont;
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
  uFileFolderHandling,
  Vcl.Themes,
  Vcl.Imaging.pngimage;

const
  Show_Window_in_Taskbar = True;

procedure TfrmAvroMouse.BitBtn1Click(Sender: TObject);
var
  WC: Char;
begin
  WC := Char((Sender as TBitBtn).Tag);
  TypeIt(WC);
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
end;

procedure TfrmAvroMouse.EnsureBanglaFont;
var
  ExeDir, Path: string;
  I: Integer;
begin
  ExeDir := ExtractFilePath(ParamStr(0));
  for I := 0 to 3 do
  begin
    case I of
      0: Path := ExeDir + 'kalpurush.ttf';
      1: Path := ExeDir + 'fonts\kalpurush.ttf';
      2: Path := ExeDir + '..\..\assets\fonts\kalpurush.ttf';
      3: Path := GetAvroDataDir + 'fonts\kalpurush.ttf';
    end;
    if FileExists(Path) then
    begin
      AddFontResourceEx(PChar(Path), FR_PRIVATE, nil);
      Break;
    end;
  end;
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

function TfrmAvroMouse.CreateGpFont(const ASizePx: Integer): TGPFont;
var
  MemDc: HDC;
  Lf: TLogFont;
  HF: HFONT;
  Bmp: HBITMAP;
  OldBmp, OldFont: HGDIOBJ;
begin
  Result := nil;
  MemDc := CreateCompatibleDC(0);
  if MemDc = 0 then
    Exit;
  try
    Bmp := CreateCompatibleBitmap(MemDc, 1, 1);
    if Bmp = 0 then
      Exit;
    try
      OldBmp := SelectObject(MemDc, Bmp);
      ZeroMemory(@Lf, SizeOf(Lf));
      Lf.lfHeight   := -ASizePx;
      Lf.lfWeight   := FW_NORMAL;
      Lf.lfCharSet  := DEFAULT_CHARSET;
      Lf.lfQuality  := ANTIALIASED_QUALITY;
      Lf.lfPitchAndFamily := DEFAULT_PITCH;
      StrPLCopy(Lf.lfFaceName, 'Kalpurush', LF_FACESIZE - 1);
      HF := CreateFontIndirect(Lf);
      if HF = 0 then
        Exit;
      try
        OldFont := SelectObject(MemDc, HF);
        Result := TGPFont.Create(MemDc);
        SelectObject(MemDc, OldFont);
      finally
        DeleteObject(HF);
      end;
      SelectObject(MemDc, OldBmp);
    finally
      DeleteObject(Bmp);
    end;
  finally
    DeleteDC(MemDc);
  end;
end;

procedure TfrmAvroMouse.GenerateGlyph(const ABtn: TBitBtn; const AText: string);
const
  MaskColor = clFuchsia;
var
  W, H: Integer;
  InkC, FaceC: TColor;
  InR, InG, InB: Byte;
  FaR, FaG, FaB: Byte;
  GpBmp: TGPBitmap;
  GpGfx: TGPGraphics;
  GpFmt: TGPStringFormat;
  GpBrush: TGPSolidBrush;
  FontObj: TGPFont;
  SizePx: Integer;
  S: string;
  NeedBase: Boolean;
  Box: TGPRectF;
  TotalW, BaseW, MarkW: Single;
  X0, BaseX, OffsetY: Single;
  BaseLeft, BaseWidth: Integer;
  Data: TBitmapData;
  LockRect: TGPRect;
  Y, X, Alpha: Integer;
  Row, Px: PByte;
  Key: TBitmap;
  Png: TPngImage;
  KP, AP: PByteArray;

  function IsCombiningMark(C: WideChar): Boolean;
  begin
    Result := (C = #$0981) or (C = #$09BC) or
      ((C >= #$09BE) and (C <= #$09C4)) or
      (C = #$09C7) or (C = #$09C8) or
      (C = #$09CB) or (C = #$09CC) or
      (C = #$09CD) or (C = #$09D7) or
      (C = #$09E2) or (C = #$09E3);
  end;

  function IsPreBaseMatra(C: WideChar): Boolean;
  begin
    Result := (C = #$09BF) or (C = #$09C7) or (C = #$09C8) or
              (C = #$09CB) or (C = #$09CC);
  end;

  function MeasureW(const AString: string): Single;
  begin
    Box := MakeRect(0.0, 0.0, 0.0, 0.0);
    GpGfx.MeasureString(AString, -1, FontObj, Box, GpFmt, Box);
    Result := Box.Width;
  end;

begin
  if (AText = '') or (ABtn.ClientWidth <= 0) or (ABtn.ClientHeight <= 0) then
    Exit;
  W := ABtn.ClientWidth;
  H := ABtn.ClientHeight;

  InkC := ThemeColor(clBtnText);
  InR := GetRValue(InkC);
  InG := GetGValue(InkC);
  InB := GetBValue(InkC);
  FaceC := ThemeColor(clBtnFace);
  FaR := GetRValue(FaceC);
  FaG := GetGValue(FaceC);
  FaB := GetBValue(FaceC);

  NeedBase := IsCombiningMark(AText[1]);
  if NeedBase then
    S := b_K + AText
  else
    S := AText;

  GpBmp   := TGPBitmap.Create(W, H, PixelFormat32bppARGB);
  GpGfx   := TGPGraphics.Create(GpBmp);
  GpFmt   := TGPStringFormat.Create;
  GpBrush := TGPSolidBrush.Create(MakeColor(255, InR, InG, InB));
  try
    GpGfx.SetSmoothingMode(SmoothingModeAntiAlias);
    GpGfx.SetTextRenderingHint(TextRenderingHintAntiAlias);
    GpGfx.Clear(MakeColor(0, 0, 0, 0));

    SizePx := H;
    repeat
      FontObj := CreateGpFont(SizePx);
      Box := MakeRect(0.0, 0.0, 0.0, 0.0);
      GpGfx.MeasureString(S, -1, FontObj, Box, GpFmt, Box);
      if ((Box.Width <= W) and (Box.Height <= H)) or (SizePx <= 5) then
        Break;
      FontObj.Free;
      Dec(SizePx);
    until False;

    try
      TotalW := MeasureW(S);
      if NeedBase then
      begin
        BaseW := MeasureW(b_K);
        MarkW := MeasureW(AText);
        if IsPreBaseMatra(AText[1]) then
        begin
          BaseX := TotalW - BaseW;
          X0    := (W - MarkW) / 2.0;
        end
        else
        begin
          BaseX := 0.0;
          X0    := (W - MarkW) / 2.0 - BaseW;
        end;
      end
      else
      begin
        BaseX := 0.0;
        X0    := (W - TotalW) / 2.0;
      end;

      Box := MakeRect(0.0, 0.0, 0.0, 0.0);
      GpGfx.MeasureString(S, -1, FontObj, Box, GpFmt, Box);
      OffsetY := (H - Box.Height) / 2.0 - Box.Y;

      GpGfx.DrawString(S, -1, FontObj, MakePoint(X0, OffsetY), GpFmt, GpBrush);
    finally
      FontObj.Free;
    end;

    if NeedBase then
    begin
      BaseLeft  := Round(X0 + BaseX);
      BaseWidth := Round(BaseW);
    end
    else
    begin
      BaseLeft  := 0;
      BaseWidth := 0;
    end;

    Png := TPngImage.CreateBlank(COLOR_RGBALPHA, 8, W, H);
    try
      Key := TBitmap.Create;
      try
        Key.PixelFormat := pf32bit;
        Key.Width       := W;
        Key.Height      := H;
        Key.Canvas.Brush.Color := MaskColor;
        Key.Canvas.FillRect(Rect(0, 0, W, H));

        LockRect := MakeRect(0, 0, W, H);
        Data := Default(TBitmapData);
        if GpBmp.LockBits(LockRect, ImageLockModeRead, PixelFormat32bppARGB, Data) = Ok then
        begin
          try
            for Y := 0 to H - 1 do
            begin
              Row := PByte(NativeUInt(Data.Scan0) + NativeUInt(Y * Data.Stride));
              KP  := Key.ScanLine[Y];
              AP  := Png.AlphaScanline[Y];
              for X := 0 to W - 1 do
              begin
                Px := PByte(NativeUInt(Row) + NativeUInt(X * 4));
                Alpha := PByte(NativeUInt(Px) + 3)^;

                if (BaseWidth > 0) and (X >= BaseLeft) and
                   (X < BaseLeft + BaseWidth) and (Alpha < 128) then
                  Alpha := 0;

                AP[X] := Byte(Alpha);
                Png.Pixels[X, Y] := RGB(0, 0, 0);

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
          finally
            GpBmp.UnlockBits(Data);
          end;
        end;

        Key.Canvas.Pixels[0, H - 1]     := MaskColor;
        Key.Canvas.Pixels[W - 1, H - 1] := MaskColor;
        Key.Canvas.Pixels[0, 0]         := MaskColor;

        try
          ForceDirectories(MouseGlyphDir);
          Png.SaveToFile(MouseGlyphDir + ABtn.Name + '.png');
        except
          on E: Exception do
            begin
            end;
        end;

        ABtn.Glyph.Assign(Key);
        ABtn.Glyph.Transparent      := True;
        ABtn.Glyph.TransparentColor := MaskColor;
      finally
        Key.Free;
      end;
    finally
      Png.Free;
    end;
  finally
    GpBrush.Free;
    GpFmt.Free;
    GpGfx.Free;
    GpBmp.Free;
  end;
end;

procedure TfrmAvroMouse.AssignPngGlyph(const ABtn: TBitBtn; const APngPath: string);
const
  MaskColor = clFuchsia;
var
  Png: TPngImage;
  Key: TBitmap;
  W, H, X, Y: Integer;
  KP:   PByteArray;
  AP:   PByteArray;
  Alpha: Integer;
  InR, InG, InB: Byte;
  FaR, FaG, FaB: Byte;
  C, KeyCol: TColor;
  HasAlpha: Boolean;
begin
  Png := TPngImage.Create;
  try
    Png.LoadFromFile(APngPath);
    W := Png.Width;
    H := Png.Height;
    if (W <= 0) or (H <= 0) then
      Exit;

    C := ThemeColor(clBtnText);
    InR := GetRValue(C);
    InG := GetGValue(C);
    InB := GetBValue(C);
    C := ThemeColor(clBtnFace);
    FaR := GetRValue(C);
    FaG := GetGValue(C);
    FaB := GetBValue(C);

    HasAlpha := (Png.Header.ColorType = COLOR_RGBALPHA) or
                (Png.Header.ColorType = COLOR_GRAYSCALEALPHA);

    Key := TBitmap.Create;
    try
      Key.PixelFormat := pf32bit;
      Key.Width       := W;
      Key.Height      := H;
      Key.Canvas.Brush.Color := MaskColor;
      Key.Canvas.FillRect(Rect(0, 0, W, H));

      if HasAlpha then
      begin
        for Y := 0 to H - 1 do
        begin
          KP := Key.ScanLine[Y];
          AP := Png.AlphaScanline[Y];
          for X := 0 to W - 1 do
          begin
            Alpha := AP[X];
            if Alpha <= 0 then
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
      end
      else
      begin
        { No alpha channel: use a colour key from the bottom-left pixel }
        KeyCol := Png.Pixels[0, H - 1];
        for Y := 0 to H - 1 do
        begin
          KP := Key.ScanLine[Y];
          for X := 0 to W - 1 do
          begin
            C := Png.Pixels[X, Y];
            if C = KeyCol then
            begin
              KP[X * 4]     := $FF;
              KP[X * 4 + 1] := 0;
              KP[X * 4 + 2] := $FF;
            end
            else
            begin
              KP[X * 4]     := InB;
              KP[X * 4 + 1] := InG;
              KP[X * 4 + 2] := InR;
            end;
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
  finally
    Png.Free;
  end;
end;

procedure TfrmAvroMouse.RenderGlyph(const ABtn: TBitBtn; const AText: string);
var
  Path: string;
begin
  if (AText = '') or (ABtn.ClientWidth <= 0) or (ABtn.ClientHeight <= 0) then
    Exit;

  Path := MouseGlyphDir + ABtn.Name + '.png';
  if FileExists(Path) then
    AssignPngGlyph(ABtn, Path)
  else
    GenerateGlyph(ABtn, AText);
end;

procedure TfrmAvroMouse.RegenerateGlyphs;
var
  I: Integer;
  Btn:  TBitBtn;
  Display: string;
begin
  EnsureBanglaFont;

  for I := 0 to ComponentCount - 1 do
    if Components[I] is TBitBtn then
    begin
      Btn     := TBitBtn(Components[I]);
      Display := DisplayTextOf(Btn);
      if Display <> '' then
        RenderGlyph(Btn, Display);
    end;
end;

procedure TfrmAvroMouse.TypeIt(const tStr: string);
begin
  SendKey_Char(tStr);
end;

end.
