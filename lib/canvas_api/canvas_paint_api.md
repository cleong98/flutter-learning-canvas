---->[画布状态]----
void save()
void saveLayer(Rect bounds, Paint paint)
void restore()
int getSaveCount()

---->[画布变换]----
void skew(double sx, double sy)
void rotate(double radians)
void scale(double sx, [double sy])
void translate(double dx, double dy)
void transform(Float64List matrix4)

---->[画布裁剪]----
void clipRect(Rect rect, { ClipOp clipOp = ClipOp.intersect, bool doAntiAlias = true })
void clipRRect(RRect rrect, {bool doAntiAlias = true})
void clipPath(Path path, {bool doAntiAlias = true})

---->[画布绘制--点相关]----
void drawPoints(PointMode pointMode, List<Offset> points, Paint paint)
void drawRawPoints(PointMode pointMode, Float32List points, Paint paint)
void drawLine(Offset p1, Offset p2, Paint paint)
void drawVertices(Vertices vertices, BlendMode blendMode, Paint paint)

---->[画布绘制--矩形相关]----
void drawRect(Rect rect, Paint paint)
void drawRRect(RRect rrect, Paint paint)
void drawDRRect(RRect outer, RRect inner, Paint paint)

---->[画布绘制--类圆相关]----
void drawOval(Rect rect, Paint paint)
void drawCircle(Offset c, double radius, Paint paint)
void drawArc(Rect rect, double startAngle, double sweepAngle, bool useCenter, Paint paint)

---->[画布绘制--图片相关]----
void drawImage(Image image, Offset p, Paint paint)
void drawImageRect(Image image, Rect src, Rect dst, Paint paint)
void drawImageNine(Image image, Rect center, Rect dst, Paint paint)
void drawAtlas(Image atlas,List<RSTransform> transforms,List<Rect> rects,List<Color> colors,BlendMode blendMode,Rect cullRect,Paint paint)
void drawRawAtlas(Image atlas,Float32List rstTransforms,Float32List rects,Int32List colors,BlendMode blendMode,Rect cullRect,Paint paint)

---->[画布绘制--文字]----
void drawParagraph(Paragraph paragraph, Offset offset)

---->[画布绘制--其他]----
void drawColor(Color color, BlendMode blendMode)
void drawPath(Path path, Paint paint)
void drawPaint(Paint paint)
void drawShadow(Path path, Color color, double elevation, bool transparentOccluder)
void drawPicture(Picture picture)