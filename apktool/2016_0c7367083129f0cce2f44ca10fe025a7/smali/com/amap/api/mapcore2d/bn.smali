.class Lcom/amap/api/mapcore2d/bn;
.super Ljava/lang/Object;
.source "ThreadPool.java"


# instance fields
.field private a:[Ljava/lang/Thread;


# direct methods
.method public constructor <init>(ILjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-array v0, p1, [Ljava/lang/Thread;

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bn;->a:[Ljava/lang/Thread;

    .line 11
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 12
    if-nez v0, :cond_0

    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    .line 13
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bn;->a:[Ljava/lang/Thread;

    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    aput-object v2, v1, v0

    .line 11
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bn;->a:[Ljava/lang/Thread;

    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    aput-object v2, v1, v0

    goto :goto_1

    .line 19
    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 22
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bn;->a:[Ljava/lang/Thread;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 23
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 24
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 22
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 60
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bn;->a:[Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 69
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bn;->a:[Ljava/lang/Thread;

    array-length v1, v0

    .line 64
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 65
    iget-object v2, p0, Lcom/amap/api/mapcore2d/bn;->a:[Ljava/lang/Thread;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 66
    iget-object v2, p0, Lcom/amap/api/mapcore2d/bn;->a:[Ljava/lang/Thread;

    aput-object v3, v2, v0

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 68
    :cond_1
    iput-object v3, p0, Lcom/amap/api/mapcore2d/bn;->a:[Ljava/lang/Thread;

    goto :goto_0
.end method
