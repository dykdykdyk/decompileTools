.class Lcom/amap/api/mapcore2d/b$3;
.super Landroid/os/Handler;
.source "AMapDelegateImpGLSurfaceView.java"


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcom/amap/api/mapcore2d/b;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/b;)V
    .locals 1

    .prologue
    .line 202
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 203
    const-string v0, "handleMessage"

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b$3;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 206
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    if-nez v0, :cond_1

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 224
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    const-string v1, "Key\u9a8c\u8bc1\u5931\u8d25\uff1a["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 227
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 231
    :goto_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    const-string v1, "amapsdk"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 343
    :catch_0
    move-exception v0

    const-string v1, "AMapDelegateImpGLSurfaceView"

    const-string v2, "handle_handleMessage"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :pswitch_2
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/b;->b(Lcom/amap/api/mapcore2d/b;)V

    goto :goto_0

    .line 218
    :pswitch_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/b;->c(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/AMap$OnMapLoadedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/b;->c(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/AMap$OnMapLoadedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/maps2d/AMap$OnMapLoadedListener;->onMapLoaded()V

    goto :goto_0

    .line 229
    :cond_2
    sget-object v1, Lcom/amap/api/mapcore2d/cn;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 238
    :pswitch_4
    :try_start_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    .line 239
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 242
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 246
    :goto_2
    if-eqz v0, :cond_6

    .line 247
    :try_start_3
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 248
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v2}, Lcom/amap/api/mapcore2d/b;->d(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/mapcore2d/ca;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 249
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v2}, Lcom/amap/api/mapcore2d/b;->d(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/mapcore2d/ca;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore2d/ca;->draw(Landroid/graphics/Canvas;)V

    .line 251
    :cond_3
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v2}, Lcom/amap/api/mapcore2d/b;->e(Lcom/amap/api/mapcore2d/b;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v2}, Lcom/amap/api/mapcore2d/b;->f(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/mapcore2d/ax;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 252
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v2}, Lcom/amap/api/mapcore2d/b;->e(Lcom/amap/api/mapcore2d/b;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 253
    if-eqz v2, :cond_4

    .line 254
    iget-object v3, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v3}, Lcom/amap/api/mapcore2d/b;->e(Lcom/amap/api/mapcore2d/b;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 255
    iget-object v4, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v4}, Lcom/amap/api/mapcore2d/b;->e(Lcom/amap/api/mapcore2d/b;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    .line 256
    int-to-float v3, v3

    int-to-float v4, v4

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 259
    :cond_4
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/b;->g(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 260
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/b;->g(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;->onMapScreenShot(Landroid/graphics/Bitmap;)V

    .line 267
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->destroyDrawingCache()V

    .line 268
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/b;->a(Lcom/amap/api/mapcore2d/b;Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;)Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;

    goto/16 :goto_0

    .line 244
    :catch_1
    move-exception v0

    const-string v2, "AMapDelegateImpGLSurfaceView"

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b$3;->a:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_2

    .line 263
    :cond_6
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/b;->g(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 264
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/b;->g(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;->onMapScreenShot(Landroid/graphics/Bitmap;)V

    goto :goto_3

    .line 273
    :pswitch_5
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/b;->h(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/model/CameraPosition;

    move-result-object v0

    .line 274
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/b;->i(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 275
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore2d/b;->a(Lcom/amap/api/mapcore2d/b;ZLcom/amap/api/maps2d/model/CameraPosition;)V

    .line 278
    :cond_7
    sget-object v1, Lcom/amap/api/mapcore2d/p;->h:Ljava/lang/String;

    if-eqz v1, :cond_8

    sget-object v1, Lcom/amap/api/mapcore2d/p;->h:Ljava/lang/String;

    .line 279
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_9

    .line 280
    :cond_8
    iget v1, v0, Lcom/amap/api/maps2d/model/CameraPosition;->zoom:F

    const/high16 v2, 0x41200000    # 10.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_b

    iget-object v1, v0, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-object v0, v0, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v0, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    .line 281
    invoke-static {v2, v3, v0, v1}, Lcom/amap/api/mapcore2d/cj;->a(DD)Z

    move-result v0

    if-nez v0, :cond_b

    .line 284
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/b;->d(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/mapcore2d/ca;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/ca;->setVisibility(I)V

    .line 289
    :cond_9
    :goto_4
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/b;->j(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/AMap$CancelableCallback;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 290
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/b;->a(Lcom/amap/api/mapcore2d/b;Z)Z

    .line 291
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/b;->j(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/AMap$CancelableCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/maps2d/AMap$CancelableCallback;->onFinish()V

    .line 292
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/b;->a(Lcom/amap/api/mapcore2d/b;Z)Z

    .line 294
    :cond_a
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/b;->k(Lcom/amap/api/mapcore2d/b;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 295
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/b;->a(Lcom/amap/api/mapcore2d/b;Lcom/amap/api/maps2d/AMap$CancelableCallback;)Lcom/amap/api/maps2d/AMap$CancelableCallback;

    goto/16 :goto_0

    .line 286
    :cond_b
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/b;->d(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/mapcore2d/ca;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/ca;->setVisibility(I)V

    goto :goto_4

    .line 297
    :cond_c
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/b;->b(Lcom/amap/api/mapcore2d/b;Z)Z

    goto/16 :goto_0

    .line 303
    :pswitch_6
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/b;->i(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 304
    new-instance v0, Lcom/amap/api/maps2d/model/CameraPosition;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    .line 305
    invoke-static {v1}, Lcom/amap/api/mapcore2d/b;->l(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/b;->f()F

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amap/api/maps2d/model/CameraPosition;-><init>(Lcom/amap/api/maps2d/model/LatLng;FFF)V

    .line 306
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/b;->i(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;->onCameraChange(Lcom/amap/api/maps2d/model/CameraPosition;)V

    goto/16 :goto_0

    .line 311
    :pswitch_7
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/b;->m(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/mapcore2d/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    .line 312
    invoke-static {v0}, Lcom/amap/api/mapcore2d/b;->m(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/mapcore2d/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/j;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/b;->m(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/mapcore2d/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/j;->h()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 315
    :pswitch_8
    new-instance v0, Lcom/amap/api/mapcore2d/ad;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    .line 317
    invoke-static {v1}, Lcom/amap/api/mapcore2d/b;->m(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/mapcore2d/j;

    move-result-object v1

    .line 318
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/j;->b()I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    .line 319
    invoke-static {v2}, Lcom/amap/api/mapcore2d/b;->m(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/mapcore2d/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/j;->c()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/amap/api/mapcore2d/ad;-><init>(II)V

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    .line 320
    invoke-static {v1}, Lcom/amap/api/mapcore2d/b;->m(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/mapcore2d/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/j;->d()F

    move-result v1

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    .line 321
    invoke-static {v2}, Lcom/amap/api/mapcore2d/b;->m(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/mapcore2d/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/j;->e()F

    move-result v2

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    .line 322
    invoke-static {v3}, Lcom/amap/api/mapcore2d/b;->m(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/mapcore2d/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/j;->f()F

    move-result v3

    .line 316
    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/mapcore2d/l;->a(Lcom/amap/api/mapcore2d/ad;FFF)Lcom/amap/api/mapcore2d/l;

    move-result-object v0

    .line 323
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/b;->m(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/mapcore2d/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/j;->a()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 324
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amap/api/mapcore2d/l;->l:Z

    .line 326
    :cond_d
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/b;->e:Lcom/amap/api/mapcore2d/ar;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/ar;->a(Lcom/amap/api/mapcore2d/l;)V

    goto/16 :goto_0

    .line 336
    :pswitch_9
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->d:Lcom/amap/api/mapcore2d/ay$b;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->d:Lcom/amap/api/mapcore2d/ay$b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay$b;->a()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_9
    .end packed-switch

    .line 313
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_8
    .end packed-switch
.end method
