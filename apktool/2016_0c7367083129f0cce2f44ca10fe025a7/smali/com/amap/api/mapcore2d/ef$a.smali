.class Lcom/amap/api/mapcore2d/ef$a;
.super Landroid/os/Handler;
.source "NetManger.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 439
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 441
    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 434
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 436
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Lcom/amap/api/mapcore2d/ef$1;)V
    .locals 0

    .prologue
    .line 432
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/ef$a;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 445
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 446
    packed-switch v0, :pswitch_data_0

    .line 465
    :goto_0
    return-void

    .line 448
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/mapcore2d/ej;

    .line 449
    iget-object v0, v0, Lcom/amap/api/mapcore2d/ej;->b:Lcom/amap/api/mapcore2d/eh;

    .line 450
    invoke-interface {v0}, Lcom/amap/api/mapcore2d/eh;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 462
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 453
    :pswitch_1
    :try_start_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/mapcore2d/ej;

    .line 454
    iget-object v1, v0, Lcom/amap/api/mapcore2d/ej;->b:Lcom/amap/api/mapcore2d/eh;

    .line 455
    iget-object v0, v0, Lcom/amap/api/mapcore2d/ej;->a:Lcom/amap/api/mapcore2d/cl;

    invoke-interface {v1, v0}, Lcom/amap/api/mapcore2d/eh;->a(Lcom/amap/api/mapcore2d/cl;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 446
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
