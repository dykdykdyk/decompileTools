.class public Lcom/amap/api/mapcore2d/f;
.super Ljava/lang/Thread;
.source "AuthTask.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/amap/api/mapcore2d/w;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/w;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/amap/api/mapcore2d/f;->a:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/amap/api/mapcore2d/f;->b:Lcom/amap/api/mapcore2d/w;

    .line 29
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 34
    :try_start_0
    invoke-static {}, Lcom/amap/api/maps2d/MapsInitializer;->getNetworkEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 38
    :cond_0
    new-instance v0, Lcom/amap/api/mapcore2d/cv$a;

    const-string v1, "2dmap"

    const-string v2, "2.9.0"

    const-string v3, "AMAP_SDK_Android_2DMap_2.9.0"

    invoke-direct {v0, v1, v2, v3}, Lcom/amap/api/mapcore2d/cv$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.amap.api.maps"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "com.amap.api.mapcore"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "com.autonavi.amap.mapcore"

    aput-object v3, v1, v2

    .line 40
    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/cv$a;->a([Ljava/lang/String;)Lcom/amap/api/mapcore2d/cv$a;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/cv$a;->a()Lcom/amap/api/mapcore2d/cv;

    move-result-object v0

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    const-string v2, "002"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v2, "11K"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    iget-object v2, p0, Lcom/amap/api/mapcore2d/f;->a:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/mapcore2d/ck;->a()Lcom/amap/api/mapcore2d/cv;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4}, Lcom/amap/api/mapcore2d/cn;->a(Landroid/content/Context;Lcom/amap/api/mapcore2d/cv;Ljava/lang/String;Ljava/util/Map;)Lcom/amap/api/mapcore2d/cn$a;

    move-result-object v1

    .line 52
    sget v2, Lcom/amap/api/mapcore2d/cn;->a:I

    if-eq v2, v5, :cond_2

    .line 53
    iget-object v2, p0, Lcom/amap/api/mapcore2d/f;->b:Lcom/amap/api/mapcore2d/w;

    invoke-interface {v2}, Lcom/amap/api/mapcore2d/w;->a()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 54
    const/4 v3, 0x2

    iput v3, v2, Landroid/os/Message;->what:I

    .line 55
    iget-object v3, v1, Lcom/amap/api/mapcore2d/cn$a;->a:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 56
    iget-object v3, v1, Lcom/amap/api/mapcore2d/cn$a;->a:Ljava/lang/String;

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 58
    :cond_1
    iget-object v3, p0, Lcom/amap/api/mapcore2d/f;->b:Lcom/amap/api/mapcore2d/w;

    invoke-interface {v3}, Lcom/amap/api/mapcore2d/w;->a()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 61
    :cond_2
    if-eqz v1, :cond_4

    .line 62
    iget-object v2, v1, Lcom/amap/api/mapcore2d/cn$a;->l:Lcom/amap/api/mapcore2d/cn$a$a;

    if-eqz v2, :cond_3

    .line 63
    invoke-static {}, Lcom/amap/api/mapcore2d/ck;->a()Lcom/amap/api/mapcore2d/cv;

    move-result-object v2

    iget-object v3, v1, Lcom/amap/api/mapcore2d/cn$a;->l:Lcom/amap/api/mapcore2d/cn$a$a;

    iget-boolean v3, v3, Lcom/amap/api/mapcore2d/cn$a$a;->a:Z

    invoke-virtual {v2, v3}, Lcom/amap/api/mapcore2d/cv;->a(Z)V

    .line 66
    :cond_3
    iget-object v2, v1, Lcom/amap/api/mapcore2d/cn$a;->n:Lcom/amap/api/mapcore2d/cn$a$b;

    if-eqz v2, :cond_4

    .line 67
    new-instance v2, Lcom/amap/api/mapcore2d/cu;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/f;->a:Landroid/content/Context;

    const-string v4, "2dmap"

    iget-object v5, v1, Lcom/amap/api/mapcore2d/cn$a;->n:Lcom/amap/api/mapcore2d/cn$a$b;

    iget-object v5, v5, Lcom/amap/api/mapcore2d/cn$a$b;->a:Ljava/lang/String;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/cn$a;->n:Lcom/amap/api/mapcore2d/cn$a$b;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/cn$a$b;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/amap/api/mapcore2d/cu;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/cu;->a()V

    .line 75
    :cond_4
    sput-object v0, Lcom/amap/api/mapcore2d/p;->o:Lcom/amap/api/mapcore2d/cv;

    .line 76
    iget-object v1, p0, Lcom/amap/api/mapcore2d/f;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/amap/api/mapcore2d/dd;->a(Landroid/content/Context;Lcom/amap/api/mapcore2d/cv;)Lcom/amap/api/mapcore2d/dd;

    .line 77
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/f;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/f;->interrupt()V

    .line 80
    const-string v1, "AMapDelegateImpGLSurfaceView"

    const-string v2, "mVerfy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/dd;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0
.end method
