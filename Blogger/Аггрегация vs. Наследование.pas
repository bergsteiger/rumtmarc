Пример из жизни.

Пусть мы хотим сделать "компонент", который наследуется от TClienDataSet и добавляет ему некие "прелестные фичи".

Вариант "в лоб"

TmySmartDataSet = class(TClientDataSet)
 constructor Create(anOwner : TComponent; тут много разных дополнительных параметров); reintroduce;
 ...
 inherited Create(anOwner);
 тут эти параметры используются

Сделали? Отлично!

И тут мы задумались о том, "а как нам "подсказать" будущему пользователю нашего "компонента", что в Design-Time его создавать не надо, и НАДО звать НАШ "кошерный" конструктор.

И ТОЛЬКО его.

По-моему - решение на поверхности.

TmySmartDataSet = class(TObject)
 constructor Create(anOwner : TComponent; тут много разных дополнительных параметров); reintroduce;
 private
  FInnerSmartDataSet : TClientDataSet;
 public
  InnerSmartDataSet : TClientDataSet
   read FInnerSmartDataSet;
implementation
 TmySmartDataSetImplementation = class(TClientDataSet)
  тут переопределяем ПОВЕДЕНИЕ
 ...
 FInnerSmartDataSet := TmySmartDataSetImplementation.Create(anOwner); 
 inherited Create;
 тут эти параметры используются, чтобы довесить "чудные штучки" и "поднастроить"  FInnerSmartDataSet

Создаём так:
 l_MySmartDataSet := TmySmartDataSet.Create(anOwner, тут остальные "чудные" параметры);
 SomeDataSource.DataSet := l_MySmartDataSet.InnerSmartDataSet;

Идея понятна?
