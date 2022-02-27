---->[路径绝对移动]----
void moveTo(double x, double y)
void lineTo(double x, double y)
void quadraticBezierTo(double x1, double y1, double x2, double y2)
void cubicTo(double x1, double y1, double x2, double y2, double x3, double y3)
void conicTo(double x1, double y1, double x2, double y2, double w)
void arcTo(Rect rect, double startAngle, double sweepAngle, bool forceMoveTo)
void arcToPoint(Offset arcEnd, {Radius radius = Radius.zero, double rotation = 0.0, bool largeArc = false, bool clockwise = true,})

---->[路径相对移动]----
void relativeMoveTo(double dx, double dy)
void relativeLineTo(double dx, double dy)
void relativeQuadraticBezierTo(double x1, double y1, double x2, double y2)
void relativeCubicTo(double x1, double y1, double x2, double y2, double x3, double y3)
void relativeConicTo(double x1, double y1, double x2, double y2, double w)
void relativeArcToPoint(Offset arcEndDelta, { Radius radius = Radius.zero, double rotation = 0.0, bool largeArc = false, bool clockwise = true, })

---->[路径添加]----
void addRect(Rect rect)
void addRRect(RRect rrect)
void addOval(Rect oval)
void addArc(Rect oval, double startAngle, double sweepAngle)
void addPolygon(List<Offset> points, bool close)
void addPath(Path path, Offset offset, {Float64List matrix4})
void extendWithPath(Path path, Offset offset, {Float64List matrix4})

---->[路径操作]----
void close()
void reset()
bool contains(Offset point)
Path shift(Offset offset)
Path transform(Float64List matrix4)
Rect getBounds()
set fillType(PathFillType value)
static Path combine(PathOperation operation, Path path1, Path path2)
PathMetrics computeMetrics({bool forceClosed = false})