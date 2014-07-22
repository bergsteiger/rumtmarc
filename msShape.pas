unit msShape;

interface
uses
 FMX.Graphics,
 System.Types,
 FMX.Types;

type
 TmsShape = class
 protected
  FStartPoint, FFinalPoint: TPointF;
  FNeedsSecondClick : Boolean;
  procedure DrawShape(const aCanvas : TCanvas); virtual; abstract;
  procedure DoLogic; virtual; abstract;
 public
  constructor Create(const aStartPoint, aFinalPoint: TPointF); virtual;
  procedure DrawTo(const aCanvas : TCanvas);
  property StartPoint : TPointF read FStartPoint write FStartPoint;
  property FinalPoint : TPointF read FFinalPoint write FFinalPoint;
  class function IsNeedsSecondClick : Boolean; virtual; abstract;
 end;

implementation

constructor TmsShape.Create(const aStartPoint, aFinalPoint: TPointF);
begin
 FStartPoint := aStartPoint;
 FFinalPoint := aFinalPoint;
end;

procedure TmsShape.DrawTo(const aCanvas: TCanvas);
begin
 aCanvas.BeginScene;
 DrawShape(aCanvas);
 aCanvas.EndScene;
end;



end.
