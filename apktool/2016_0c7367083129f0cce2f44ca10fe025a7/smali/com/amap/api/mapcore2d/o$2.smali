.class Lcom/amap/api/mapcore2d/o$2;
.super Ljava/lang/Object;
.source "CompassView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/o;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/o;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/amap/api/mapcore2d/o$2;->a:Lcom/amap/api/mapcore2d/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    .line 72
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/amap/api/mapcore2d/o$2;->a:Lcom/amap/api/mapcore2d/o;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/o;->b(Lcom/amap/api/mapcore2d/o;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/o$2;->a:Lcom/amap/api/mapcore2d/o;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/o;->a(Lcom/amap/api/mapcore2d/o;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 85
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 74
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/o$2;->a:Lcom/amap/api/mapcore2d/o;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/o;->b(Lcom/amap/api/mapcore2d/o;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/o$2;->a:Lcom/amap/api/mapcore2d/o;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/o;->c(Lcom/amap/api/mapcore2d/o;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 77
    iget-object v0, p0, Lcom/amap/api/mapcore2d/o$2;->a:Lcom/amap/api/mapcore2d/o;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/o;->d(Lcom/amap/api/mapcore2d/o;)Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/w;->g()Lcom/amap/api/maps2d/model/CameraPosition;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/amap/api/mapcore2d/o$2;->a:Lcom/amap/api/mapcore2d/o;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/o;->d(Lcom/amap/api/mapcore2d/o;)Lcom/amap/api/mapcore2d/w;

    move-result-object v1

    new-instance v2, Lcom/amap/api/maps2d/model/CameraPosition;

    iget-object v3, v0, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    iget v0, v0, Lcom/amap/api/maps2d/model/CameraPosition;->zoom:F

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v0, v4, v5}, Lcom/amap/api/maps2d/model/CameraPosition;-><init>(Lcom/amap/api/maps2d/model/LatLng;FFF)V

    .line 79
    invoke-static {v2}, Lcom/amap/api/mapcore2d/l;->a(Lcom/amap/api/maps2d/model/CameraPosition;)Lcom/amap/api/mapcore2d/l;

    move-result-object v0

    .line 78
    invoke-interface {v1, v0}, Lcom/amap/api/mapcore2d/w;->b(Lcom/amap/api/mapcore2d/l;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    const-string v1, "CompassView"

    const-string v2, "onTouch"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
