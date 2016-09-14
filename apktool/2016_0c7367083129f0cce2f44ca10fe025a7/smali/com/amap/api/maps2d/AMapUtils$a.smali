.class Lcom/amap/api/maps2d/AMapUtils$a;
.super Ljava/lang/Thread;
.source "AMapUtils.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 502
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 499
    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/maps2d/AMapUtils$a;->a:Ljava/lang/String;

    .line 503
    iput-object p1, p0, Lcom/amap/api/maps2d/AMapUtils$a;->a:Ljava/lang/String;

    .line 504
    if-eqz p2, :cond_0

    .line 505
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/maps2d/AMapUtils$a;->b:Landroid/content/Context;

    .line 507
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 511
    iget-object v0, p0, Lcom/amap/api/maps2d/AMapUtils$a;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 513
    :try_start_0
    new-instance v0, Lcom/amap/api/mapcore2d/cv$a;

    iget-object v1, p0, Lcom/amap/api/maps2d/AMapUtils$a;->a:Ljava/lang/String;

    const-string v2, "2.9.0"

    const-string v3, "AMAP_SDK_Android_2DMap_2.9.0"

    invoke-direct {v0, v1, v2, v3}, Lcom/amap/api/mapcore2d/cv$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.amap.api.maps"

    aput-object v3, v1, v2

    .line 515
    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/cv$a;->a([Ljava/lang/String;)Lcom/amap/api/mapcore2d/cv$a;

    move-result-object v0

    .line 516
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/cv$a;->a()Lcom/amap/api/mapcore2d/cv;

    move-result-object v0

    .line 517
    iget-object v1, p0, Lcom/amap/api/maps2d/AMapUtils$a;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/amap/api/mapcore2d/co;->a(Landroid/content/Context;Lcom/amap/api/mapcore2d/cv;)Z

    .line 518
    invoke-virtual {p0}, Lcom/amap/api/maps2d/AMapUtils$a;->interrupt()V
    :try_end_0
    .catch Lcom/amap/api/mapcore2d/cl; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 520
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/cl;->printStackTrace()V

    goto :goto_0
.end method
