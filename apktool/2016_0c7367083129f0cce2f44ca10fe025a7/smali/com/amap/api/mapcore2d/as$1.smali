.class Lcom/amap/api/mapcore2d/as$1;
.super Ljava/lang/Object;
.source "MapOverlayImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/as;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/as;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/amap/api/mapcore2d/as$1;->a:Lcom/amap/api/mapcore2d/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 3

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/as$1;->a:Lcom/amap/api/mapcore2d/as;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/as;->a(Lcom/amap/api/mapcore2d/as;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/as$1;->a:Lcom/amap/api/mapcore2d/as;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/as;->b:Lcom/amap/api/mapcore2d/as$a;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 83
    iget-object v0, p0, Lcom/amap/api/mapcore2d/as$1;->a:Lcom/amap/api/mapcore2d/as;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/as;->b(Lcom/amap/api/mapcore2d/as;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/as$1;->a:Lcom/amap/api/mapcore2d/as;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/as;->b:Lcom/amap/api/mapcore2d/as$a;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 84
    iget-object v0, p0, Lcom/amap/api/mapcore2d/as$1;->a:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/as;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :goto_0
    monitor-exit p0

    return-void

    .line 86
    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "MapOverlayImageView"

    const-string v2, "changeOverlayIndex"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/dd;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
