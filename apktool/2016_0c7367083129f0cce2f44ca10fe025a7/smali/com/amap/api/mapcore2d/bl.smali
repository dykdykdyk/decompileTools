.class Lcom/amap/api/mapcore2d/bl;
.super Ljava/lang/Object;
.source "TaskPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected final b:Ljava/util/concurrent/Semaphore;

.field protected c:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bl;->a:Ljava/util/LinkedList;

    .line 12
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1, v1}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bl;->b:Ljava/util/concurrent/Semaphore;

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/bl;->c:Z

    return-void
.end method


# virtual methods
.method public a(IZ)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 58
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bl;->a:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-object v0

    .line 62
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bl;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 69
    :goto_1
    :try_start_1
    iget-boolean v1, p0, Lcom/amap/api/mapcore2d/bl;->c:Z

    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {p0, p1, p2}, Lcom/amap/api/mapcore2d/bl;->b(IZ)Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public a()V
    .locals 2

    .prologue
    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/bl;->c:Z

    .line 17
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl;->b:Ljava/util/concurrent/Semaphore;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/concurrent/Semaphore;->release(I)V

    .line 18
    return-void
.end method

.method public declared-synchronized a(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 26
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl;->a:Ljava/util/LinkedList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 36
    :goto_0
    monitor-exit p0

    return-void

    .line 29
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 30
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 32
    :cond_1
    if-eqz p1, :cond_2

    .line 33
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 35
    :cond_2
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bl;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized b(IZ)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 79
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl;->a:Ljava/util/LinkedList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 80
    const/4 v0, 0x0

    .line 94
    :goto_0
    monitor-exit p0

    return-object v0

    .line 82
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 83
    if-le p1, v0, :cond_1

    move p1, v0

    .line 87
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 88
    :goto_1
    if-ge v1, p1, :cond_2

    .line 89
    iget-object v2, p0, Lcom/amap/api/mapcore2d/bl;->a:Ljava/util/LinkedList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v2, p0, Lcom/amap/api/mapcore2d/bl;->a:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 93
    :cond_2
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bl;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl;->a:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/bl;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl;->a:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    goto :goto_0
.end method
