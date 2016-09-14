.class Lcom/amap/api/mapcore2d/al;
.super Lcom/amap/api/mapcore2d/bk;
.source "InprocessingTiles.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/mapcore2d/bk",
        "<",
        "Lcom/amap/api/mapcore2d/bp;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/bk;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized a(Lcom/amap/api/mapcore2d/bp;)V
    .locals 1

    .prologue
    .line 5
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/al;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    .line 5
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(Lcom/amap/api/mapcore2d/bp;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 9
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/al;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-ne v1, v0, :cond_0

    .line 10
    const/4 v0, 0x0

    .line 13
    :goto_0
    monitor-exit p0

    return v0

    .line 12
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/al;->a(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 9
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
