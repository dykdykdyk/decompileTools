.class Lcom/amap/api/mapcore2d/cb$4;
.super Ljava/lang/Object;
.source "ZoomControllerView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/cb;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/cb;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/amap/api/mapcore2d/cb$4;->a:Lcom/amap/api/mapcore2d/cb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 147
    const-string v1, "onTouch"

    .line 148
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cb$4;->a:Lcom/amap/api/mapcore2d/cb;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cb;->c(Lcom/amap/api/mapcore2d/cb;)Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/w;->f()F

    move-result v0

    iget-object v2, p0, Lcom/amap/api/mapcore2d/cb$4;->a:Lcom/amap/api/mapcore2d/cb;

    invoke-static {v2}, Lcom/amap/api/mapcore2d/cb;->c(Lcom/amap/api/mapcore2d/cb;)Lcom/amap/api/mapcore2d/w;

    move-result-object v2

    invoke-interface {v2}, Lcom/amap/api/mapcore2d/w;->i()F

    move-result v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    .line 164
    :cond_0
    :goto_0
    return v3

    .line 151
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 152
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cb$4;->a:Lcom/amap/api/mapcore2d/cb;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cb;->b(Lcom/amap/api/mapcore2d/cb;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/cb$4;->a:Lcom/amap/api/mapcore2d/cb;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/cb;->j(Lcom/amap/api/mapcore2d/cb;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 153
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 154
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cb$4;->a:Lcom/amap/api/mapcore2d/cb;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cb;->b(Lcom/amap/api/mapcore2d/cb;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lcom/amap/api/mapcore2d/cb$4;->a:Lcom/amap/api/mapcore2d/cb;

    invoke-static {v2}, Lcom/amap/api/mapcore2d/cb;->a(Lcom/amap/api/mapcore2d/cb;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cb$4;->a:Lcom/amap/api/mapcore2d/cb;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cb;->c(Lcom/amap/api/mapcore2d/cb;)Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    .line 159
    invoke-static {}, Lcom/amap/api/mapcore2d/l;->c()Lcom/amap/api/mapcore2d/l;

    move-result-object v2

    .line 158
    invoke-interface {v0, v2}, Lcom/amap/api/mapcore2d/w;->b(Lcom/amap/api/mapcore2d/l;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    const-string v2, "ZoomControllerView"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
