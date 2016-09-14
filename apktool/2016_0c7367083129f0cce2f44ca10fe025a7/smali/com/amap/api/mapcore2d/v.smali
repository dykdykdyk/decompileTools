.class Lcom/amap/api/mapcore2d/v;
.super Ljava/lang/Object;
.source "GroundOverlayDelegateImp.java"

# interfaces
.implements Lcom/amap/api/mapcore2d/y;


# instance fields
.field private final a:D

.field private final b:D

.field private c:Lcom/amap/api/mapcore2d/b;

.field private d:Lcom/amap/api/maps2d/model/BitmapDescriptor;

.field private e:Lcom/amap/api/maps2d/model/LatLng;

.field private f:F

.field private g:F

.field private h:Lcom/amap/api/maps2d/model/LatLngBounds;

.field private i:F

.field private j:F

.field private k:Z

.field private l:F

.field private m:F

.field private n:F

.field private o:Ljava/lang/String;

.field private p:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/b;)V
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-wide v0, 0x3f91df46a2529d37L    # 0.01745329251994329

    iput-wide v0, p0, Lcom/amap/api/mapcore2d/v;->a:D

    .line 25
    const-wide v0, 0x41584dae328f5c29L    # 6371000.79

    iput-wide v0, p0, Lcom/amap/api/mapcore2d/v;->b:D

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/v;->k:Z

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore2d/v;->l:F

    .line 36
    iput v2, p0, Lcom/amap/api/mapcore2d/v;->m:F

    .line 37
    iput v2, p0, Lcom/amap/api/mapcore2d/v;->n:F

    .line 42
    const-string v1, "GroundOverlayDelegateImp"

    .line 43
    iput-object p1, p0, Lcom/amap/api/mapcore2d/v;->c:Lcom/amap/api/mapcore2d/b;

    .line 45
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/v;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/v;->o:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    const-string v2, "GroundOverlayDelegateImp"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/mapcore2d/u;
    .locals 6

    .prologue
    const-wide v4, 0x412e848000000000L    # 1000000.0

    .line 324
    if-nez p1, :cond_0

    .line 325
    const/4 v0, 0x0

    .line 330
    :goto_0
    return-object v0

    .line 327
    :cond_0
    iget-wide v0, p1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    mul-double/2addr v0, v4

    double-to-int v1, v0

    .line 328
    iget-wide v2, p1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    .line 329
    new-instance v0, Lcom/amap/api/mapcore2d/u;

    invoke-direct {v0, v1, v2}, Lcom/amap/api/mapcore2d/u;-><init>(II)V

    goto :goto_0
.end method

.method private o()V
    .locals 13

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    const-wide v6, 0x3f91df46a2529d37L    # 0.01745329251994329

    .line 110
    iget v0, p0, Lcom/amap/api/mapcore2d/v;->f:F

    float-to-double v0, v0

    const-wide v2, 0x41584dae328f5c29L    # 6371000.79

    iget-object v4, p0, Lcom/amap/api/mapcore2d/v;->e:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, v4, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    mul-double/2addr v4, v6

    .line 111
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    mul-double/2addr v2, v6

    div-double/2addr v0, v2

    .line 112
    iget v2, p0, Lcom/amap/api/mapcore2d/v;->g:F

    float-to-double v2, v2

    const-wide v4, 0x40fb25af0c031ddeL    # 111194.94043265979

    div-double/2addr v2, v4

    .line 114
    new-instance v4, Lcom/amap/api/maps2d/model/LatLngBounds;

    new-instance v5, Lcom/amap/api/maps2d/model/LatLng;

    iget-object v6, p0, Lcom/amap/api/mapcore2d/v;->e:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v6, v6, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget v8, p0, Lcom/amap/api/mapcore2d/v;->n:F

    sub-float v8, v12, v8

    float-to-double v8, v8

    mul-double/2addr v8, v2

    sub-double/2addr v6, v8

    iget-object v8, p0, Lcom/amap/api/mapcore2d/v;->e:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v8, v8, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    iget v10, p0, Lcom/amap/api/mapcore2d/v;->m:F

    float-to-double v10, v10

    mul-double/2addr v10, v0

    sub-double/2addr v8, v10

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    new-instance v6, Lcom/amap/api/maps2d/model/LatLng;

    iget-object v7, p0, Lcom/amap/api/mapcore2d/v;->e:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v8, v7, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget v7, p0, Lcom/amap/api/mapcore2d/v;->n:F

    float-to-double v10, v7

    mul-double/2addr v2, v10

    add-double/2addr v2, v8

    iget-object v7, p0, Lcom/amap/api/mapcore2d/v;->e:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v8, v7, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    iget v7, p0, Lcom/amap/api/mapcore2d/v;->m:F

    sub-float v7, v12, v7

    float-to-double v10, v7

    mul-double/2addr v0, v10

    add-double/2addr v0, v8

    invoke-direct {v6, v2, v3, v0, v1}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    invoke-direct {v4, v5, v6}, Lcom/amap/api/maps2d/model/LatLngBounds;-><init>(Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;)V

    iput-object v4, p0, Lcom/amap/api/mapcore2d/v;->h:Lcom/amap/api/maps2d/model/LatLngBounds;

    .line 119
    return-void
.end method

.method private p()V
    .locals 14

    .prologue
    .line 122
    iget-object v0, p0, Lcom/amap/api/mapcore2d/v;->h:Lcom/amap/api/maps2d/model/LatLngBounds;

    iget-object v0, v0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    .line 123
    iget-object v1, p0, Lcom/amap/api/mapcore2d/v;->h:Lcom/amap/api/maps2d/model/LatLngBounds;

    iget-object v1, v1, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    .line 125
    new-instance v2, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, v0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    const/high16 v3, 0x3f800000    # 1.0f

    iget v6, p0, Lcom/amap/api/mapcore2d/v;->n:F

    sub-float/2addr v3, v6

    float-to-double v6, v3

    iget-wide v8, v1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v10, v0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    sub-double/2addr v8, v10

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iget-wide v6, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    iget v3, p0, Lcom/amap/api/mapcore2d/v;->m:F

    float-to-double v8, v3

    iget-wide v10, v1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    iget-wide v12, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    iput-object v2, p0, Lcom/amap/api/mapcore2d/v;->e:Lcom/amap/api/maps2d/model/LatLng;

    .line 130
    const-wide v2, 0x41584dae328f5c29L    # 6371000.79

    iget-object v4, p0, Lcom/amap/api/mapcore2d/v;->e:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, v4, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    const-wide v6, 0x3f91df46a2529d37L    # 0.01745329251994329

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    iget-wide v4, v1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    iget-wide v6, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    const-wide v4, 0x3f91df46a2529d37L    # 0.01745329251994329

    mul-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p0, Lcom/amap/api/mapcore2d/v;->f:F

    .line 132
    const-wide v2, 0x41584dae328f5c29L    # 6371000.79

    iget-wide v4, v1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v0, v0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    sub-double v0, v4, v0

    mul-double/2addr v0, v2

    const-wide v2, 0x3f91df46a2529d37L    # 0.01745329251994329

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/amap/api/mapcore2d/v;->g:F

    .line 133
    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 66
    iput p1, p0, Lcom/amap/api/mapcore2d/v;->j:F

    .line 67
    iget-object v0, p0, Lcom/amap/api/mapcore2d/v;->c:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->invalidate()V

    .line 68
    return-void
.end method

.method public a(FF)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 201
    cmpl-float v0, p1, v4

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Width must be non-negative"

    invoke-static {v0, v3}, Lcom/amap/api/mapcore2d/ch;->b(ZLjava/lang/Object;)V

    .line 203
    cmpl-float v0, p2, v4

    if-ltz v0, :cond_1

    :goto_1
    const-string v0, "Height must be non-negative"

    invoke-static {v1, v0}, Lcom/amap/api/mapcore2d/ch;->b(ZLjava/lang/Object;)V

    .line 210
    iput p1, p0, Lcom/amap/api/mapcore2d/v;->f:F

    .line 211
    iput p2, p0, Lcom/amap/api/mapcore2d/v;->g:F

    .line 213
    return-void

    :cond_0
    move v0, v2

    .line 201
    goto :goto_0

    :cond_1
    move v1, v2

    .line 203
    goto :goto_1
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/high16 v7, 0x437f0000    # 255.0f

    const/4 v1, 0x0

    .line 285
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/v;->k:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/v;->e:Lcom/amap/api/maps2d/model/LatLng;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/v;->h:Lcom/amap/api/maps2d/model/LatLngBounds;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/v;->d:Lcom/amap/api/maps2d/model/BitmapDescriptor;

    if-nez v0, :cond_2

    .line 320
    :cond_1
    :goto_0
    return-void

    .line 290
    :cond_2
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/v;->g()V

    .line 291
    iget v0, p0, Lcom/amap/api/mapcore2d/v;->f:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    iget v0, p0, Lcom/amap/api/mapcore2d/v;->g:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 294
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/v;->d:Lcom/amap/api/maps2d/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/v;->p:Landroid/graphics/Bitmap;

    .line 295
    iget-object v0, p0, Lcom/amap/api/mapcore2d/v;->p:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/v;->p:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/amap/api/mapcore2d/v;->h:Lcom/amap/api/maps2d/model/LatLngBounds;

    iget-object v0, v0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    .line 298
    iget-object v1, p0, Lcom/amap/api/mapcore2d/v;->h:Lcom/amap/api/maps2d/model/LatLngBounds;

    iget-object v1, v1, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    .line 299
    iget-object v2, p0, Lcom/amap/api/mapcore2d/v;->e:Lcom/amap/api/maps2d/model/LatLng;

    .line 300
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore2d/v;->b(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/mapcore2d/u;

    move-result-object v0

    .line 301
    invoke-direct {p0, v1}, Lcom/amap/api/mapcore2d/v;->b(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/mapcore2d/u;

    move-result-object v1

    .line 302
    invoke-direct {p0, v2}, Lcom/amap/api/mapcore2d/v;->b(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/mapcore2d/u;

    move-result-object v2

    .line 303
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 304
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 305
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 306
    iget-object v6, p0, Lcom/amap/api/mapcore2d/v;->c:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v6}, Lcom/amap/api/mapcore2d/b;->s()Lcom/amap/api/mapcore2d/bf;

    move-result-object v6

    invoke-interface {v6, v0, v3}, Lcom/amap/api/mapcore2d/bf;->a(Lcom/amap/api/mapcore2d/u;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 307
    iget-object v0, p0, Lcom/amap/api/mapcore2d/v;->c:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->s()Lcom/amap/api/mapcore2d/bf;

    move-result-object v0

    invoke-interface {v0, v1, v4}, Lcom/amap/api/mapcore2d/bf;->a(Lcom/amap/api/mapcore2d/u;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 308
    iget-object v0, p0, Lcom/amap/api/mapcore2d/v;->c:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->s()Lcom/amap/api/mapcore2d/bf;

    move-result-object v0

    invoke-interface {v0, v2, v5}, Lcom/amap/api/mapcore2d/bf;->a(Lcom/amap/api/mapcore2d/u;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 309
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 310
    new-instance v1, Landroid/graphics/RectF;

    iget v2, v3, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v6, v4, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-direct {v1, v2, v6, v4, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 311
    iget v2, p0, Lcom/amap/api/mapcore2d/v;->l:F

    mul-float/2addr v2, v7

    sub-float v2, v7, v2

    float-to-int v2, v2

    .line 312
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 313
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 314
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 315
    iget v2, p0, Lcom/amap/api/mapcore2d/v;->i:F

    iget v3, v5, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, v5, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 316
    iget-object v2, p0, Lcom/amap/api/mapcore2d/v;->p:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 318
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0
.end method

.method public a(Lcom/amap/api/maps2d/model/BitmapDescriptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 274
    iput-object p1, p0, Lcom/amap/api/mapcore2d/v;->d:Lcom/amap/api/maps2d/model/BitmapDescriptor;

    .line 275
    return-void
.end method

.method public a(Lcom/amap/api/maps2d/model/LatLng;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/amap/api/mapcore2d/v;->e:Lcom/amap/api/maps2d/model/LatLng;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/v;->e:Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps2d/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    iput-object p1, p0, Lcom/amap/api/mapcore2d/v;->e:Lcom/amap/api/maps2d/model/LatLng;

    .line 173
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/v;->o()V

    .line 178
    :goto_0
    return-void

    .line 175
    :cond_0
    iput-object p1, p0, Lcom/amap/api/mapcore2d/v;->e:Lcom/amap/api/maps2d/model/LatLng;

    goto :goto_0
.end method

.method public a(Lcom/amap/api/maps2d/model/LatLngBounds;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lcom/amap/api/mapcore2d/v;->h:Lcom/amap/api/maps2d/model/LatLngBounds;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/v;->h:Lcom/amap/api/maps2d/model/LatLngBounds;

    .line 229
    invoke-virtual {v0, p1}, Lcom/amap/api/maps2d/model/LatLngBounds;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    iput-object p1, p0, Lcom/amap/api/mapcore2d/v;->h:Lcom/amap/api/maps2d/model/LatLngBounds;

    .line 231
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/v;->p()V

    .line 235
    :goto_0
    return-void

    .line 233
    :cond_0
    iput-object p1, p0, Lcom/amap/api/mapcore2d/v;->h:Lcom/amap/api/maps2d/model/LatLngBounds;

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/v;->k:Z

    .line 78
    iget-object v0, p0, Lcom/amap/api/mapcore2d/v;->c:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    .line 79
    return-void
.end method

.method public a()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 158
    iget-object v2, p0, Lcom/amap/api/mapcore2d/v;->h:Lcom/amap/api/maps2d/model/LatLngBounds;

    if-nez v2, :cond_1

    .line 166
    :cond_0
    :goto_0
    return v0

    .line 161
    :cond_1
    iget-object v2, p0, Lcom/amap/api/mapcore2d/v;->c:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/b;->x()Lcom/amap/api/maps2d/model/LatLngBounds;

    move-result-object v2

    .line 162
    if-nez v2, :cond_2

    move v0, v1

    .line 163
    goto :goto_0

    .line 165
    :cond_2
    iget-object v3, p0, Lcom/amap/api/mapcore2d/v;->h:Lcom/amap/api/maps2d/model/LatLngBounds;

    invoke-virtual {v2, v3}, Lcom/amap/api/maps2d/model/LatLngBounds;->contains(Lcom/amap/api/maps2d/model/LatLngBounds;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/amap/api/mapcore2d/v;->h:Lcom/amap/api/maps2d/model/LatLngBounds;

    .line 166
    invoke-virtual {v3, v2}, Lcom/amap/api/maps2d/model/LatLngBounds;->intersects(Lcom/amap/api/maps2d/model/LatLngBounds;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public a(Lcom/amap/api/mapcore2d/ac;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ac;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/v;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    :cond_0
    const/4 v0, 0x1

    .line 93
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/amap/api/mapcore2d/v;->c:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/v;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/b;->a(Ljava/lang/String;)Z

    .line 54
    return-void
.end method

.method public b(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 187
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Width must be non-negative"

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/ch;->b(ZLjava/lang/Object;)V

    .line 194
    iput p1, p0, Lcom/amap/api/mapcore2d/v;->f:F

    .line 195
    iput p1, p0, Lcom/amap/api/mapcore2d/v;->g:F

    .line 197
    return-void

    .line 187
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 279
    iput p1, p0, Lcom/amap/api/mapcore2d/v;->m:F

    .line 280
    iput p2, p0, Lcom/amap/api/mapcore2d/v;->n:F

    .line 281
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/amap/api/mapcore2d/v;->o:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 59
    const-string v0, "GroundOverlay"

    invoke-static {v0}, Lcom/amap/api/mapcore2d/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/v;->o:Ljava/lang/String;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/v;->o:Ljava/lang/String;

    return-object v0
.end method

.method public c(F)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/high16 v1, 0x43b40000    # 360.0f

    .line 244
    neg-float v0, p1

    rem-float/2addr v0, v1

    add-float/2addr v0, v1

    rem-float/2addr v0, v1

    .line 245
    iget v1, p0, Lcom/amap/api/mapcore2d/v;->i:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    float-to-double v2, v0

    .line 246
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 249
    iput v0, p0, Lcom/amap/api/mapcore2d/v;->i:F

    .line 251
    return-void
.end method

.method public d()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 72
    iget v0, p0, Lcom/amap/api/mapcore2d/v;->j:F

    return v0
.end method

.method public d(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 260
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Transparency must be in the range [0..1]"

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/ch;->b(ZLjava/lang/Object;)V

    .line 263
    iput p1, p0, Lcom/amap/api/mapcore2d/v;->l:F

    .line 264
    return-void

    .line 260
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/v;->k:Z

    return v0
.end method

.method public f()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public g()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/amap/api/mapcore2d/v;->e:Lcom/amap/api/maps2d/model/LatLng;

    if-nez v0, :cond_1

    .line 103
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/v;->p()V

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/v;->h:Lcom/amap/api/maps2d/model/LatLngBounds;

    if-nez v0, :cond_0

    .line 105
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/v;->o()V

    goto :goto_0
.end method

.method public h()Lcom/amap/api/maps2d/model/LatLng;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lcom/amap/api/mapcore2d/v;->e:Lcom/amap/api/maps2d/model/LatLng;

    return-object v0
.end method

.method public i()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 217
    iget v0, p0, Lcom/amap/api/mapcore2d/v;->f:F

    return v0
.end method

.method public j()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 222
    iget v0, p0, Lcom/amap/api/mapcore2d/v;->g:F

    return v0
.end method

.method public k()Lcom/amap/api/maps2d/model/LatLngBounds;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lcom/amap/api/mapcore2d/v;->h:Lcom/amap/api/maps2d/model/LatLngBounds;

    return-object v0
.end method

.method public l()V
    .locals 3

    .prologue
    .line 137
    const-string v1, "destroy"

    .line 139
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/v;->b()V

    .line 140
    iget-object v0, p0, Lcom/amap/api/mapcore2d/v;->d:Lcom/amap/api/maps2d/model/BitmapDescriptor;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/amap/api/mapcore2d/v;->d:Lcom/amap/api/maps2d/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/v;->d:Lcom/amap/api/maps2d/model/BitmapDescriptor;

    .line 148
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/v;->e:Lcom/amap/api/maps2d/model/LatLng;

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/v;->h:Lcom/amap/api/maps2d/model/LatLngBounds;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v0

    const-string v2, "GroundOverlayDelegateImp"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v0, "destroy erro"

    const-string v1, "GroundOverlayDelegateImp destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public m()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 255
    iget v0, p0, Lcom/amap/api/mapcore2d/v;->i:F

    return v0
.end method

.method public n()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 268
    iget v0, p0, Lcom/amap/api/mapcore2d/v;->l:F

    return v0
.end method
