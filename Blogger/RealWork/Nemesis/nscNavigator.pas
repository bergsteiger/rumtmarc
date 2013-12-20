unit nscNavigator;

// Библиотека : "Визуальные компоненты проекта Немезис"
// Автор      : М. Морозов.
// Начат      : 06.12.2006 г.
// Назначение : Компонент с вкладками
// Версия     : $Id: nscNavigator.pas,v 1.5 2009/01/12 17:38:11 lulin Exp $

// $Log: nscNavigator.pas,v $
// Revision 1.5  2009/01/12 17:38:11  lulin
// - <K>: 133138664. № 24.
//
// Revision 1.4  2009/01/12 09:14:30  oman
// - new: Учим навигатор закрываться по Ctrl+F4 (К-113508400)
//
// Revision 1.3  2007/08/20 09:06:07  mmorozov
// - new: уведомление об изменении активной вкладки (CQ: OIT5-26352);
//
// Revision 1.2  2006/12/12 11:42:27  mmorozov
// - new: возможность определять класс плавающего окна;
//
// Revision 1.1  2006/12/07 14:23:11  mmorozov
// - new: используем единые настройки для компонента с вкладками (CQ: OIT5-23819);
//

interface

uses
  Classes,

  ElPgCtl,

  vcmExternalInterfaces,

  nscInterfaces,

  vtNavigator
  ;

type
  _nscDestPageControl_ = TnpPageControl;
  {$Include nscPageControl.inc}
  TnscNavigatorPageControl = _nscPageControl_;

  TnscNavigator = class(TvtNavigator,
                        IvcmOperationsProvider)
  private
    procedure CloseChildExecute(const aParams : IvcmExecuteParamsPrim);
      {-}
    procedure CloseChildTest(const aParams : IvcmTestParamsPrim);
      {-}
  protected
  // IvcmOperationsProvider
    procedure ProvideOps(const aPublisher : IvcmOperationsPublisher);
      {* - предоставить список доступных операций. }
  protected
  // methods
    function GetPageControlClass: RnpPageControl;
      override;
      {-}
    function GetFloatingWindowClass: RnpFloatingWindow;
      override;
      {* - получить класс плавающего окна. }
  end;//TnscNavigator

  TnscFloatingWindow = class(TnpFloatingWindow)
  {* Плавающего окно навигатора. }
  protected
  // methods
    function GetNavigatorClass: RvtNavigator;
      override;
      {* - ссылка на класс навигатора. }
  end;//TnscFloatingWindow

implementation

uses
  SysUtils,
  Graphics,
  Controls,

  afwVCL,

  {$IfNDef DesignTimeLibrary}
  vcmBase,
  {$EndIf DesignTimeLibrary}

  nscNewInterfaces,
  nscTabFont
  ;

const
 vcm_deEnclosedForms = 'EnclosedForms';
  vcm_doCloseChild = 'CloseChild';

{$Include nscPageControl.inc}

{ TnscNavigator }

procedure TnscNavigator.CloseChildExecute(
  const aParams: IvcmExecuteParamsPrim);
begin
 Header.CloseButton.Click
end;

procedure TnscNavigator.CloseChildTest(const aParams: IvcmTestParamsPrim);
begin
 if aParams.Op.Flag[vcm_ofEnabled] then
  aParams.Op.Flag[vcm_ofEnabled] := Assigned(Header.CloseButton) and Header.CloseButton.Visible;
end;

function TnscNavigator.GetFloatingWindowClass: RnpFloatingWindow;
begin
 Result := TnscFloatingWindow;
end;

function TnscNavigator.GetPageControlClass: RnpPageControl;
begin
 Result := TnscNavigatorPageControl;
end;//GetPageControlClass

procedure TnscNavigator.ProvideOps(
  const aPublisher: IvcmOperationsPublisher);
begin
 aPublisher.PublishOp(vcm_deEnclosedForms, vcm_doCloseChild, CloseChildExecute, CloseChildTest);
end;

{ TnscFloatingWindow }

function TnscFloatingWindow.GetNavigatorClass: RvtNavigator;
begin
 Result := TnscNavigator;
end;

end.