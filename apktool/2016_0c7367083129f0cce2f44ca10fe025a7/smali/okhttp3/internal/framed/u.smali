.class final Lokhttp3/internal/framed/u;
.super Ljava/lang/Object;
.source "FramedStream.java"

# interfaces
.implements Lokio/Sink;


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Lokhttp3/internal/framed/t;

.field private final c:Lokio/Buffer;

.field private d:Z

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 468
    const-class v0, Lokhttp3/internal/framed/t;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lokhttp3/internal/framed/u;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lokhttp3/internal/framed/t;)V
    .locals 1

    .prologue
    .line 468
    iput-object p1, p0, Lokhttp3/internal/framed/u;->b:Lokhttp3/internal/framed/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 475
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/framed/u;->c:Lokio/Buffer;

    return-void
.end method

.method private a(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 498
    iget-object v1, p0, Lokhttp3/internal/framed/u;->b:Lokhttp3/internal/framed/t;

    monitor-enter v1

    .line 499
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/u;->b:Lokhttp3/internal/framed/t;

    invoke-static {v0}, Lokhttp3/internal/framed/t;->g(Lokhttp3/internal/framed/t;)Lokhttp3/internal/framed/w;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/framed/w;->enter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 501
    :goto_0
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/framed/u;->b:Lokhttp3/internal/framed/t;

    iget-wide v2, v0, Lokhttp3/internal/framed/t;->b:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lokhttp3/internal/framed/u;->e:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lokhttp3/internal/framed/u;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/framed/u;->b:Lokhttp3/internal/framed/t;

    invoke-static {v0}, Lokhttp3/internal/framed/t;->d(Lokhttp3/internal/framed/t;)Lokhttp3/internal/framed/a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 502
    iget-object v0, p0, Lokhttp3/internal/framed/u;->b:Lokhttp3/internal/framed/t;

    invoke-static {v0}, Lokhttp3/internal/framed/t;->e(Lokhttp3/internal/framed/t;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 505
    :catchall_0
    move-exception v0

    :try_start_2
    iget-object v2, p0, Lokhttp3/internal/framed/u;->b:Lokhttp3/internal/framed/t;

    invoke-static {v2}, Lokhttp3/internal/framed/t;->g(Lokhttp3/internal/framed/t;)Lokhttp3/internal/framed/w;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/internal/framed/w;->a()V

    throw v0

    .line 511
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 505
    :cond_0
    :try_start_3
    iget-object v0, p0, Lokhttp3/internal/framed/u;->b:Lokhttp3/internal/framed/t;

    invoke-static {v0}, Lokhttp3/internal/framed/t;->g(Lokhttp3/internal/framed/t;)Lokhttp3/internal/framed/w;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/framed/w;->a()V

    .line 508
    iget-object v0, p0, Lokhttp3/internal/framed/u;->b:Lokhttp3/internal/framed/t;

    invoke-static {v0}, Lokhttp3/internal/framed/t;->h(Lokhttp3/internal/framed/t;)V

    .line 509
    iget-object v0, p0, Lokhttp3/internal/framed/u;->b:Lokhttp3/internal/framed/t;

    iget-wide v2, v0, Lokhttp3/internal/framed/t;->b:J

    iget-object v0, p0, Lokhttp3/internal/framed/u;->c:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 510
    iget-object v0, p0, Lokhttp3/internal/framed/u;->b:Lokhttp3/internal/framed/t;

    iget-wide v2, v0, Lokhttp3/internal/framed/t;->b:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lokhttp3/internal/framed/t;->b:J

    .line 511
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 513
    iget-object v0, p0, Lokhttp3/internal/framed/u;->b:Lokhttp3/internal/framed/t;

    invoke-static {v0}, Lokhttp3/internal/framed/t;->g(Lokhttp3/internal/framed/t;)Lokhttp3/internal/framed/w;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/framed/w;->enter()V

    .line 515
    :try_start_4
    iget-object v0, p0, Lokhttp3/internal/framed/u;->b:Lokhttp3/internal/framed/t;

    invoke-static {v0}, Lokhttp3/internal/framed/t;->a(Lokhttp3/internal/framed/t;)Lokhttp3/internal/framed/e;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/framed/u;->b:Lokhttp3/internal/framed/t;

    invoke-static {v1}, Lokhttp3/internal/framed/t;->b(Lokhttp3/internal/framed/t;)I

    move-result v1

    if-eqz p1, :cond_1

    iget-object v2, p0, Lokhttp3/internal/framed/u;->c:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    iget-object v3, p0, Lokhttp3/internal/framed/u;->c:Lokio/Buffer;

    invoke-virtual/range {v0 .. v5}, Lokhttp3/internal/framed/e;->a(IZLokio/Buffer;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 517
    iget-object v0, p0, Lokhttp3/internal/framed/u;->b:Lokhttp3/internal/framed/t;

    invoke-static {v0}, Lokhttp3/internal/framed/t;->g(Lokhttp3/internal/framed/t;)Lokhttp3/internal/framed/w;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/framed/w;->a()V

    .line 518
    return-void

    .line 515
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 517
    :catchall_2
    move-exception v0

    iget-object v1, p0, Lokhttp3/internal/framed/u;->b:Lokhttp3/internal/framed/t;

    invoke-static {v1}, Lokhttp3/internal/framed/t;->g(Lokhttp3/internal/framed/t;)Lokhttp3/internal/framed/w;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/framed/w;->a()V

    throw v0
.end method

.method static synthetic a(Lokhttp3/internal/framed/u;)Z
    .locals 1

    .prologue
    .line 468
    iget-boolean v0, p0, Lokhttp3/internal/framed/u;->e:Z

    return v0
.end method

.method static synthetic a(Lokhttp3/internal/framed/u;Z)Z
    .locals 0

    .prologue
    .line 468
    iput-boolean p1, p0, Lokhttp3/internal/framed/u;->e:Z

    return p1
.end method

.method static synthetic b(Lokhttp3/internal/framed/u;)Z
    .locals 1

    .prologue
    .line 468
    iget-boolean v0, p0, Lokhttp3/internal/framed/u;->d:Z

    return v0
.end method


# virtual methods
.method public final close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    .line 537
    sget-boolean v0, Lokhttp3/internal/framed/u;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/framed/u;->b:Lokhttp3/internal/framed/t;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 538
    :cond_0
    iget-object v1, p0, Lokhttp3/internal/framed/u;->b:Lokhttp3/internal/framed/t;

    monitor-enter v1

    .line 539
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/framed/u;->d:Z

    if-eqz v0, :cond_1

    monitor-exit v1

    .line 557
    :goto_0
    return-void

    .line 540
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 541
    iget-object v0, p0, Lokhttp3/internal/framed/u;->b:Lokhttp3/internal/framed/t;

    iget-object v0, v0, Lokhttp3/internal/framed/t;->g:Lokhttp3/internal/framed/u;

    iget-boolean v0, v0, Lokhttp3/internal/framed/u;->e:Z

    if-nez v0, :cond_3

    .line 543
    iget-object v0, p0, Lokhttp3/internal/framed/u;->c:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    .line 544
    :goto_1
    iget-object v0, p0, Lokhttp3/internal/framed/u;->c:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_3

    .line 545
    invoke-direct {p0, v2}, Lokhttp3/internal/framed/u;->a(Z)V

    goto :goto_1

    .line 540
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 549
    :cond_2
    iget-object v0, p0, Lokhttp3/internal/framed/u;->b:Lokhttp3/internal/framed/t;

    invoke-static {v0}, Lokhttp3/internal/framed/t;->a(Lokhttp3/internal/framed/t;)Lokhttp3/internal/framed/e;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/framed/u;->b:Lokhttp3/internal/framed/t;

    invoke-static {v1}, Lokhttp3/internal/framed/t;->b(Lokhttp3/internal/framed/t;)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lokhttp3/internal/framed/e;->a(IZLokio/Buffer;J)V

    .line 552
    :cond_3
    iget-object v1, p0, Lokhttp3/internal/framed/u;->b:Lokhttp3/internal/framed/t;

    monitor-enter v1

    .line 553
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lokhttp3/internal/framed/u;->d:Z

    .line 554
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 555
    iget-object v0, p0, Lokhttp3/internal/framed/u;->b:Lokhttp3/internal/framed/t;

    invoke-static {v0}, Lokhttp3/internal/framed/t;->a(Lokhttp3/internal/framed/t;)Lokhttp3/internal/framed/e;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/framed/e;->b()V

    .line 556
    iget-object v0, p0, Lokhttp3/internal/framed/u;->b:Lokhttp3/internal/framed/t;

    invoke-static {v0}, Lokhttp3/internal/framed/t;->f(Lokhttp3/internal/framed/t;)V

    goto :goto_0

    .line 554
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public final flush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 522
    sget-boolean v0, Lokhttp3/internal/framed/u;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/framed/u;->b:Lokhttp3/internal/framed/t;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 523
    :cond_0
    iget-object v1, p0, Lokhttp3/internal/framed/u;->b:Lokhttp3/internal/framed/t;

    monitor-enter v1

    .line 524
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/u;->b:Lokhttp3/internal/framed/t;

    invoke-static {v0}, Lokhttp3/internal/framed/t;->h(Lokhttp3/internal/framed/t;)V

    .line 525
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    :goto_0
    iget-object v0, p0, Lokhttp3/internal/framed/u;->c:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 527
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lokhttp3/internal/framed/u;->a(Z)V

    .line 528
    iget-object v0, p0, Lokhttp3/internal/framed/u;->b:Lokhttp3/internal/framed/t;

    invoke-static {v0}, Lokhttp3/internal/framed/t;->a(Lokhttp3/internal/framed/t;)Lokhttp3/internal/framed/e;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/framed/e;->b()V

    goto :goto_0

    .line 525
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 530
    :cond_1
    return-void
.end method

.method public final timeout()Lokio/Timeout;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lokhttp3/internal/framed/u;->b:Lokhttp3/internal/framed/t;

    invoke-static {v0}, Lokhttp3/internal/framed/t;->g(Lokhttp3/internal/framed/t;)Lokhttp3/internal/framed/w;

    move-result-object v0

    return-object v0
.end method

.method public final write(Lokio/Buffer;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 485
    sget-boolean v0, Lokhttp3/internal/framed/u;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/framed/u;->b:Lokhttp3/internal/framed/t;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 486
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/framed/u;->c:Lokio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 487
    :goto_0
    iget-object v0, p0, Lokhttp3/internal/framed/u;->c:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x4000

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 488
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lokhttp3/internal/framed/u;->a(Z)V

    goto :goto_0

    .line 490
    :cond_1
    return-void
.end method
