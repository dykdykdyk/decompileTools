.class Lcom/amap/api/mapcore2d/ax$a;
.super Ljava/lang/Thread;
.source "MarkerDelegateImp.java"


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/ax;


# direct methods
.method private constructor <init>(Lcom/amap/api/mapcore2d/ax;)V
    .locals 0

    .prologue
    .line 607
    iput-object p1, p0, Lcom/amap/api/mapcore2d/ax$a;->a:Lcom/amap/api/mapcore2d/ax;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/mapcore2d/ax;Lcom/amap/api/mapcore2d/ax$1;)V
    .locals 0

    .prologue
    .line 607
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/ax$a;-><init>(Lcom/amap/api/mapcore2d/ax;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 611
    const-string v1, "run"

    .line 612
    const-string v0, "MarkerThread"

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/ax$a;->setName(Ljava/lang/String;)V

    .line 613
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax$a;->a:Lcom/amap/api/mapcore2d/ax;

    .line 614
    invoke-static {v0}, Lcom/amap/api/mapcore2d/ax;->a(Lcom/amap/api/mapcore2d/ax;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax$a;->a:Lcom/amap/api/mapcore2d/ax;

    .line 615
    invoke-static {v0}, Lcom/amap/api/mapcore2d/ax;->a(Lcom/amap/api/mapcore2d/ax;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    .line 616
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax$a;->a:Lcom/amap/api/mapcore2d/ax;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ax;->b(Lcom/amap/api/mapcore2d/ax;)I

    move-result v0

    iget-object v2, p0, Lcom/amap/api/mapcore2d/ax$a;->a:Lcom/amap/api/mapcore2d/ax;

    invoke-static {v2}, Lcom/amap/api/mapcore2d/ax;->a(Lcom/amap/api/mapcore2d/ax;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_1

    .line 617
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax$a;->a:Lcom/amap/api/mapcore2d/ax;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/amap/api/mapcore2d/ax;->a(Lcom/amap/api/mapcore2d/ax;I)I

    .line 621
    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax$a;->a:Lcom/amap/api/mapcore2d/ax;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ax;->d(Lcom/amap/api/mapcore2d/ax;)Lcom/amap/api/mapcore2d/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/as;->a()Lcom/amap/api/mapcore2d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    .line 623
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax$a;->a:Lcom/amap/api/mapcore2d/ax;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ax;->e(Lcom/amap/api/mapcore2d/ax;)I

    move-result v0

    mul-int/lit16 v0, v0, 0xfa

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    :goto_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax$a;->a:Lcom/amap/api/mapcore2d/ax;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ax;->a(Lcom/amap/api/mapcore2d/ax;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 628
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 619
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax$a;->a:Lcom/amap/api/mapcore2d/ax;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ax;->c(Lcom/amap/api/mapcore2d/ax;)I

    goto :goto_1

    .line 625
    :catch_0
    move-exception v0

    const-string v2, "MarkerDelegateImp"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 631
    :cond_2
    return-void
.end method
