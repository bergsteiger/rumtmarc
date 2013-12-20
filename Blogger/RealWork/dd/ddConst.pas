unit ddConst;

{$I ddDefine.inc }

interface

{$IFNDEF Envision}
Uses
 imageenio;
{$ENDIF}

const
  alcuPrefix     = 'Auto Import #';
  StagesFileName = 'stage.dat';
  BridgeFileName = 'bridge.dat';

const
{$IFDEF Envision}
  pictNONE = 0;
  pictBMP  = 1;
  pictICO  = 2;
  pictWMF  = 3;
  pictTIFF = 4;
  pictPNG  = 5;
  pictJPG  = 6;
  pictTGA  = 7;
  pictPCX  = 8;
  pictGIF  = 9;
  PictExt : array[pictNONE..pictGIF] of String = (
    '', '.bmp', '.ico', '.wmf', '.tif', '.png', '.jpg', '.tga', '.pcx', '.gif');
{$ELSE}
  pictNONE = ioUnknown;
  pictTIFF = ioTIFF;
  pictGIF  = ioGIF;
  pictJPG  = ioJPEG;
  pictPCX  = ioPCX;
  pictBMP  = ioBMP;
  pictICO  = ioICO;
  pictCUR  = ioCUR;
  {$ifdef IEINCLUDEPNG}
  pictPNG  = ioPNG;
  {$endif}
  pictWMF  = ioWMF;
  pictEMF  = ioEMF;
  pictTGA  = ioTGA;
  pictPXM  = ioPXM;

  PictExt : array[pictNONE..pictPXM] of String = (
            '', '.tif', '.gif', '.jpg', '.pcx', '.bmp', '.ico', '.cur', '.png',
            '.wmf', '.emf', '.tga', '.pxm');
{$ENDIF}

implementation

end.
 