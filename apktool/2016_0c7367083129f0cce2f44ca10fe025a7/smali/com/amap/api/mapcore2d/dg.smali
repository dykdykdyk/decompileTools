.class public Lcom/amap/api/mapcore2d/dg;
.super Lcom/amap/api/mapcore2d/dh;
.source "ExceptionLogProcessor.java"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x1

    sput-boolean v0, Lcom/amap/api/mapcore2d/dg;->a:Z

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/dh;-><init>(I)V

    .line 24
    return-void
.end method


# virtual methods
.method protected a(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/mapcore2d/cv;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 33
    invoke-static {p1}, Lcom/amap/api/mapcore2d/cq;->m(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v0, :cond_2

    sget-boolean v2, Lcom/amap/api/mapcore2d/dg;->a:Z

    if-eqz v2, :cond_2

    .line 35
    sput-boolean v1, Lcom/amap/api/mapcore2d/dg;->a:Z

    .line 39
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    monitor-enter v2

    .line 41
    :try_start_0
    new-instance v3, Lcom/amap/api/mapcore2d/du;

    invoke-direct {v3, p1}, Lcom/amap/api/mapcore2d/du;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/du;->a()Lcom/amap/api/mapcore2d/dv;

    move-result-object v4

    .line 45
    if-nez v4, :cond_0

    .line 46
    monitor-exit v2

    .line 58
    :goto_0
    return v0

    .line 48
    :cond_0
    invoke-virtual {v4}, Lcom/amap/api/mapcore2d/dv;->b()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 49
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Lcom/amap/api/mapcore2d/dv;->b(Z)V

    .line 51
    invoke-virtual {v3, v4}, Lcom/amap/api/mapcore2d/du;->a(Lcom/amap/api/mapcore2d/dv;)V

    .line 52
    monitor-exit v2

    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 54
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 58
    goto :goto_0
.end method
