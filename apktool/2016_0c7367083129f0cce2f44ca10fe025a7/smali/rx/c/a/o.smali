.class final Lrx/c/a/o;
.super Lrx/t;
.source "OperatorMerge.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/t",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final f:I


# instance fields
.field final a:Lrx/c/a/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/a/q",
            "<TT;>;"
        }
    .end annotation
.end field

.field final b:J

.field volatile c:Z

.field volatile d:Lrx/c/d/h;

.field e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 827
    sget v0, Lrx/c/d/h;->d:I

    div-int/lit8 v0, v0, 0x4

    sput v0, Lrx/c/a/o;->f:I

    return-void
.end method

.method public constructor <init>(Lrx/c/a/q;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/a/q",
            "<TT;>;J)V"
        }
    .end annotation

    .prologue
    .line 829
    invoke-direct {p0}, Lrx/t;-><init>()V

    .line 830
    iput-object p1, p0, Lrx/c/a/o;->a:Lrx/c/a/q;

    .line 831
    iput-wide p2, p0, Lrx/c/a/o;->b:J

    .line 832
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 3

    .prologue
    .line 854
    iget v0, p0, Lrx/c/a/o;->e:I

    long-to-int v1, p1

    sub-int/2addr v0, v1

    .line 855
    sget v1, Lrx/c/a/o;->f:I

    if-le v0, v1, :cond_1

    .line 856
    iput v0, p0, Lrx/c/a/o;->e:I

    .line 864
    :cond_0
    :goto_0
    return-void

    .line 859
    :cond_1
    sget v1, Lrx/c/d/h;->d:I

    iput v1, p0, Lrx/c/a/o;->e:I

    .line 860
    sget v1, Lrx/c/d/h;->d:I

    sub-int v0, v1, v0

    .line 861
    if-lez v0, :cond_0

    .line 862
    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lrx/c/a/o;->request(J)V

    goto :goto_0
.end method

.method public final onCompleted()V
    .locals 1

    .prologue
    .line 850
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/c/a/o;->c:Z

    .line 851
    iget-object v0, p0, Lrx/c/a/o;->a:Lrx/c/a/q;

    invoke-virtual {v0}, Lrx/c/a/q;->b()V

    .line 852
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 844
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/c/a/o;->c:Z

    .line 845
    iget-object v0, p0, Lrx/c/a/o;->a:Lrx/c/a/q;

    invoke-virtual {v0}, Lrx/c/a/q;->a()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 846
    iget-object v0, p0, Lrx/c/a/o;->a:Lrx/c/a/q;

    invoke-virtual {v0}, Lrx/c/a/q;->b()V

    .line 847
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 840
    iget-object v6, p0, Lrx/c/a/o;->a:Lrx/c/a/q;

    .line 1343
    iget-object v2, v6, Lrx/c/a/q;->d:Lrx/c/a/p;

    invoke-virtual {v2}, Lrx/c/a/p;->get()J

    move-result-wide v2

    .line 1344
    cmp-long v2, v2, v4

    if-eqz v2, :cond_c

    .line 1345
    monitor-enter v6

    .line 1347
    :try_start_0
    iget-object v2, v6, Lrx/c/a/q;->d:Lrx/c/a/p;

    invoke-virtual {v2}, Lrx/c/a/p;->get()J

    move-result-wide v2

    .line 1348
    iget-boolean v7, v6, Lrx/c/a/q;->j:Z

    if-nez v7, :cond_b

    cmp-long v4, v2, v4

    if-eqz v4, :cond_b

    .line 1349
    const/4 v4, 0x1

    iput-boolean v4, v6, Lrx/c/a/q;->j:Z

    move v4, v0

    .line 1352
    :goto_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v8, v2

    move v2, v4

    move-wide v4, v8

    .line 1354
    :goto_1
    if-eqz v2, :cond_5

    .line 1393
    :try_start_1
    iget-object v2, v6, Lrx/c/a/q;->a:Lrx/t;

    invoke-virtual {v2, p1}, Lrx/t;->onNext(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1404
    :goto_2
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v4, v2

    if-eqz v2, :cond_0

    .line 1405
    :try_start_2
    iget-object v2, v6, Lrx/c/a/q;->d:Lrx/c/a/p;

    .line 2139
    const-wide/16 v4, -0x1

    invoke-virtual {v2, v4, v5}, Lrx/c/a/p;->addAndGet(J)J

    .line 1407
    :cond_0
    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Lrx/c/a/o;->a(J)V

    .line 1409
    monitor-enter v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1411
    :try_start_3
    iget-boolean v1, v6, Lrx/c/a/q;->k:Z

    if-nez v1, :cond_4

    .line 1412
    const/4 v1, 0x0

    iput-boolean v1, v6, Lrx/c/a/q;->j:Z

    .line 1413
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 2384
    :cond_1
    :goto_3
    return-void

    .line 1352
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 1394
    :catch_0
    move-exception v2

    .line 1395
    :try_start_5
    iget-boolean v3, v6, Lrx/c/a/q;->b:Z

    if-nez v3, :cond_3

    .line 1396
    invoke-static {v2}, Lrx/exceptions/e;->a(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1398
    :try_start_6
    invoke-virtual {p0}, Lrx/c/a/o;->unsubscribe()V

    .line 1399
    invoke-virtual {p0, v2}, Lrx/c/a/o;->onError(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    .line 1418
    :catchall_1
    move-exception v1

    move-object v8, v1

    move v1, v0

    move-object v0, v8

    :goto_4
    if-nez v1, :cond_2

    .line 1419
    monitor-enter v6

    .line 1420
    const/4 v1, 0x0

    :try_start_7
    iput-boolean v1, v6, Lrx/c/a/q;->j:Z

    .line 1421
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :cond_2
    throw v0

    .line 1402
    :cond_3
    :try_start_8
    invoke-virtual {v6}, Lrx/c/a/q;->a()Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_2

    .line 1418
    :catchall_2
    move-exception v0

    goto :goto_4

    .line 1415
    :cond_4
    const/4 v1, 0x0

    :try_start_9
    iput-boolean v1, v6, Lrx/c/a/q;->k:Z

    .line 1416
    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1431
    invoke-virtual {v6}, Lrx/c/a/q;->c()V

    goto :goto_3

    .line 1416
    :catchall_3
    move-exception v1

    :try_start_a
    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1421
    :catchall_4
    move-exception v0

    :try_start_c
    monitor-exit v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v0

    .line 2367
    :cond_5
    iget-object v2, p0, Lrx/c/a/o;->d:Lrx/c/d/h;

    .line 2368
    if-nez v2, :cond_6

    .line 2369
    invoke-static {}, Lrx/c/d/h;->a()Lrx/c/d/h;

    move-result-object v2

    .line 2370
    invoke-virtual {p0, v2}, Lrx/c/a/o;->add(Lrx/u;)V

    .line 2371
    iput-object v2, p0, Lrx/c/a/o;->d:Lrx/c/d/h;

    .line 2374
    :cond_6
    :try_start_d
    invoke-static {p1}, Lrx/c/a/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 3339
    monitor-enter v2
    :try_end_d
    .catch Lrx/exceptions/MissingBackpressureException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_2

    .line 3340
    :try_start_e
    iget-object v4, v2, Lrx/c/d/h;->a:Ljava/util/Queue;

    .line 3341
    if-eqz v4, :cond_8

    .line 3342
    invoke-static {v3}, Lrx/c/a/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 3346
    :goto_5
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 3348
    if-eqz v1, :cond_9

    .line 3349
    :try_start_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This instance has been unsubscribed and the queue is no longer usable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catch Lrx/exceptions/MissingBackpressureException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_f} :catch_2

    .line 2375
    :catch_1
    move-exception v0

    .line 2376
    invoke-virtual {p0}, Lrx/c/a/o;->unsubscribe()V

    .line 2377
    invoke-virtual {p0, v0}, Lrx/c/a/o;->onError(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_7
    move v0, v1

    .line 3342
    goto :goto_5

    :cond_8
    move v8, v1

    move v1, v0

    move v0, v8

    .line 3344
    goto :goto_5

    .line 3346
    :catchall_5
    move-exception v0

    :try_start_10
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    :try_start_11
    throw v0
    :try_end_11
    .catch Lrx/exceptions/MissingBackpressureException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_11} :catch_2

    .line 2379
    :catch_2
    move-exception v0

    .line 2380
    invoke-virtual {p0}, Lrx/c/a/o;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2381
    invoke-virtual {p0}, Lrx/c/a/o;->unsubscribe()V

    .line 2382
    invoke-virtual {p0, v0}, Lrx/c/a/o;->onError(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 3351
    :cond_9
    if-eqz v0, :cond_a

    .line 3352
    :try_start_12
    new-instance v0, Lrx/exceptions/MissingBackpressureException;

    invoke-direct {v0}, Lrx/exceptions/MissingBackpressureException;-><init>()V

    throw v0
    :try_end_12
    .catch Lrx/exceptions/MissingBackpressureException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_12} :catch_2

    .line 2386
    :cond_a
    invoke-virtual {v6}, Lrx/c/a/q;->b()V

    goto/16 :goto_3

    :cond_b
    move v4, v1

    goto/16 :goto_0

    :cond_c
    move v2, v1

    goto/16 :goto_1
.end method

.method public final onStart()V
    .locals 2

    .prologue
    .line 835
    sget v0, Lrx/c/d/h;->d:I

    iput v0, p0, Lrx/c/a/o;->e:I

    .line 836
    sget v0, Lrx/c/d/h;->d:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lrx/c/a/o;->request(J)V

    .line 837
    return-void
.end method
