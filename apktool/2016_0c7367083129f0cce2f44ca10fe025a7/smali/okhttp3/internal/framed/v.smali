.class final Lokhttp3/internal/framed/v;
.super Ljava/lang/Object;
.source "FramedStream.java"

# interfaces
.implements Lokio/Source;


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Lokhttp3/internal/framed/t;

.field private final c:Lokio/Buffer;

.field private final d:Lokio/Buffer;

.field private final e:J

.field private f:Z

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 313
    const-class v0, Lokhttp3/internal/framed/t;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lokhttp3/internal/framed/v;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lokhttp3/internal/framed/t;J)V
    .locals 2

    .prologue
    .line 332
    iput-object p1, p0, Lokhttp3/internal/framed/v;->b:Lokhttp3/internal/framed/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/framed/v;->c:Lokio/Buffer;

    .line 318
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/framed/v;->d:Lokio/Buffer;

    .line 333
    iput-wide p2, p0, Lokhttp3/internal/framed/v;->e:J

    .line 334
    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/internal/framed/t;JB)V
    .locals 0

    .prologue
    .line 313
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/internal/framed/v;-><init>(Lokhttp3/internal/framed/t;J)V

    return-void
.end method

.method private a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 373
    iget-object v0, p0, Lokhttp3/internal/framed/v;->b:Lokhttp3/internal/framed/t;

    invoke-static {v0}, Lokhttp3/internal/framed/t;->c(Lokhttp3/internal/framed/t;)Lokhttp3/internal/framed/w;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/framed/w;->enter()V

    .line 375
    :goto_0
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/v;->d:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lokhttp3/internal/framed/v;->g:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lokhttp3/internal/framed/v;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/framed/v;->b:Lokhttp3/internal/framed/t;

    invoke-static {v0}, Lokhttp3/internal/framed/t;->d(Lokhttp3/internal/framed/t;)Lokhttp3/internal/framed/a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 376
    iget-object v0, p0, Lokhttp3/internal/framed/v;->b:Lokhttp3/internal/framed/t;

    invoke-static {v0}, Lokhttp3/internal/framed/t;->e(Lokhttp3/internal/framed/t;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 379
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lokhttp3/internal/framed/v;->b:Lokhttp3/internal/framed/t;

    invoke-static {v1}, Lokhttp3/internal/framed/t;->c(Lokhttp3/internal/framed/t;)Lokhttp3/internal/framed/w;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/framed/w;->a()V

    throw v0

    :cond_0
    iget-object v0, p0, Lokhttp3/internal/framed/v;->b:Lokhttp3/internal/framed/t;

    invoke-static {v0}, Lokhttp3/internal/framed/t;->c(Lokhttp3/internal/framed/t;)Lokhttp3/internal/framed/w;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/framed/w;->a()V

    .line 380
    return-void
.end method

.method static synthetic a(Lokhttp3/internal/framed/v;)Z
    .locals 1

    .prologue
    .line 313
    iget-boolean v0, p0, Lokhttp3/internal/framed/v;->g:Z

    return v0
.end method

.method static synthetic a(Lokhttp3/internal/framed/v;Z)Z
    .locals 0

    .prologue
    .line 313
    iput-boolean p1, p0, Lokhttp3/internal/framed/v;->g:Z

    return p1
.end method

.method static synthetic b(Lokhttp3/internal/framed/v;)Z
    .locals 1

    .prologue
    .line 313
    iget-boolean v0, p0, Lokhttp3/internal/framed/v;->f:Z

    return v0
.end method


# virtual methods
.method final a(Lokio/BufferedSource;J)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 384
    sget-boolean v0, Lokhttp3/internal/framed/v;->a:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lokhttp3/internal/framed/v;->b:Lokhttp3/internal/framed/t;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 410
    :cond_0
    sub-long/2addr p2, v4

    .line 413
    iget-object v3, p0, Lokhttp3/internal/framed/v;->b:Lokhttp3/internal/framed/t;

    monitor-enter v3

    .line 414
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/v;->d:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v4

    cmp-long v0, v4, v10

    if-nez v0, :cond_7

    move v0, v1

    .line 415
    :goto_0
    iget-object v4, p0, Lokhttp3/internal/framed/v;->d:Lokio/Buffer;

    iget-object v5, p0, Lokhttp3/internal/framed/v;->c:Lokio/Buffer;

    invoke-virtual {v4, v5}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    .line 416
    if-eqz v0, :cond_1

    .line 417
    iget-object v0, p0, Lokhttp3/internal/framed/v;->b:Lokhttp3/internal/framed/t;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 419
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 386
    :cond_2
    cmp-long v0, p2, v10

    if-lez v0, :cond_3

    .line 389
    iget-object v3, p0, Lokhttp3/internal/framed/v;->b:Lokhttp3/internal/framed/t;

    monitor-enter v3

    .line 390
    :try_start_1
    iget-boolean v4, p0, Lokhttp3/internal/framed/v;->g:Z

    .line 391
    iget-object v0, p0, Lokhttp3/internal/framed/v;->d:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v6

    add-long/2addr v6, p2

    iget-wide v8, p0, Lokhttp3/internal/framed/v;->e:J

    cmp-long v0, v6, v8

    if-lez v0, :cond_4

    move v0, v1

    .line 392
    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 395
    if-eqz v0, :cond_5

    .line 396
    invoke-interface {p1, p2, p3}, Lokio/BufferedSource;->skip(J)V

    .line 397
    iget-object v0, p0, Lokhttp3/internal/framed/v;->b:Lokhttp3/internal/framed/t;

    sget-object v1, Lokhttp3/internal/framed/a;->h:Lokhttp3/internal/framed/a;

    invoke-virtual {v0, v1}, Lokhttp3/internal/framed/t;->b(Lokhttp3/internal/framed/a;)V

    .line 421
    :cond_3
    :goto_2
    return-void

    :cond_4
    move v0, v2

    .line 391
    goto :goto_1

    .line 392
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 402
    :cond_5
    if-eqz v4, :cond_6

    .line 403
    invoke-interface {p1, p2, p3}, Lokio/BufferedSource;->skip(J)V

    goto :goto_2

    .line 408
    :cond_6
    iget-object v0, p0, Lokhttp3/internal/framed/v;->c:Lokio/Buffer;

    invoke-interface {p1, v0, p2, p3}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    move-result-wide v4

    .line 409
    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_7
    move v0, v2

    .line 414
    goto :goto_0

    .line 419
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 428
    iget-object v1, p0, Lokhttp3/internal/framed/v;->b:Lokhttp3/internal/framed/t;

    monitor-enter v1

    .line 429
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lokhttp3/internal/framed/v;->f:Z

    .line 430
    iget-object v0, p0, Lokhttp3/internal/framed/v;->d:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->clear()V

    .line 431
    iget-object v0, p0, Lokhttp3/internal/framed/v;->b:Lokhttp3/internal/framed/t;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 432
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    iget-object v0, p0, Lokhttp3/internal/framed/v;->b:Lokhttp3/internal/framed/t;

    invoke-static {v0}, Lokhttp3/internal/framed/t;->f(Lokhttp3/internal/framed/t;)V

    .line 434
    return-void

    .line 432
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final read(Lokio/Buffer;J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 338
    cmp-long v0, p2, v4

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "byteCount < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :cond_0
    iget-object v2, p0, Lokhttp3/internal/framed/v;->b:Lokhttp3/internal/framed/t;

    monitor-enter v2

    .line 342
    :try_start_0
    invoke-direct {p0}, Lokhttp3/internal/framed/v;->a()V

    .line 1437
    iget-boolean v0, p0, Lokhttp3/internal/framed/v;->f:Z

    if-eqz v0, :cond_1

    .line 1438
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1440
    :cond_1
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/framed/v;->b:Lokhttp3/internal/framed/t;

    invoke-static {v0}, Lokhttp3/internal/framed/t;->d(Lokhttp3/internal/framed/t;)Lokhttp3/internal/framed/a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1441
    new-instance v0, Lokhttp3/internal/framed/StreamResetException;

    iget-object v1, p0, Lokhttp3/internal/framed/v;->b:Lokhttp3/internal/framed/t;

    invoke-static {v1}, Lokhttp3/internal/framed/t;->d(Lokhttp3/internal/framed/t;)Lokhttp3/internal/framed/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lokhttp3/internal/framed/StreamResetException;-><init>(Lokhttp3/internal/framed/a;)V

    throw v0

    .line 344
    :cond_2
    iget-object v0, p0, Lokhttp3/internal/framed/v;->d:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_3

    const-wide/16 v0, -0x1

    monitor-exit v2

    .line 368
    :goto_0
    return-wide v0

    .line 347
    :cond_3
    iget-object v0, p0, Lokhttp3/internal/framed/v;->d:Lokio/Buffer;

    iget-object v1, p0, Lokhttp3/internal/framed/v;->d:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v4

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual {v0, p1, v4, v5}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    move-result-wide v0

    .line 350
    iget-object v3, p0, Lokhttp3/internal/framed/v;->b:Lokhttp3/internal/framed/t;

    iget-wide v4, v3, Lokhttp3/internal/framed/t;->a:J

    add-long/2addr v4, v0

    iput-wide v4, v3, Lokhttp3/internal/framed/t;->a:J

    .line 351
    iget-object v3, p0, Lokhttp3/internal/framed/v;->b:Lokhttp3/internal/framed/t;

    iget-wide v4, v3, Lokhttp3/internal/framed/t;->a:J

    iget-object v3, p0, Lokhttp3/internal/framed/v;->b:Lokhttp3/internal/framed/t;

    .line 352
    invoke-static {v3}, Lokhttp3/internal/framed/t;->a(Lokhttp3/internal/framed/t;)Lokhttp3/internal/framed/e;

    move-result-object v3

    iget-object v3, v3, Lokhttp3/internal/framed/e;->e:Lokhttp3/internal/framed/ap;

    invoke-virtual {v3}, Lokhttp3/internal/framed/ap;->b()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-ltz v3, :cond_4

    .line 353
    iget-object v3, p0, Lokhttp3/internal/framed/v;->b:Lokhttp3/internal/framed/t;

    invoke-static {v3}, Lokhttp3/internal/framed/t;->a(Lokhttp3/internal/framed/t;)Lokhttp3/internal/framed/e;

    move-result-object v3

    iget-object v4, p0, Lokhttp3/internal/framed/v;->b:Lokhttp3/internal/framed/t;

    invoke-static {v4}, Lokhttp3/internal/framed/t;->b(Lokhttp3/internal/framed/t;)I

    move-result v4

    iget-object v5, p0, Lokhttp3/internal/framed/v;->b:Lokhttp3/internal/framed/t;

    iget-wide v6, v5, Lokhttp3/internal/framed/t;->a:J

    invoke-virtual {v3, v4, v6, v7}, Lokhttp3/internal/framed/e;->a(IJ)V

    .line 354
    iget-object v3, p0, Lokhttp3/internal/framed/v;->b:Lokhttp3/internal/framed/t;

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lokhttp3/internal/framed/t;->a:J

    .line 356
    :cond_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 359
    iget-object v2, p0, Lokhttp3/internal/framed/v;->b:Lokhttp3/internal/framed/t;

    invoke-static {v2}, Lokhttp3/internal/framed/t;->a(Lokhttp3/internal/framed/t;)Lokhttp3/internal/framed/e;

    move-result-object v2

    monitor-enter v2

    .line 360
    :try_start_2
    iget-object v3, p0, Lokhttp3/internal/framed/v;->b:Lokhttp3/internal/framed/t;

    invoke-static {v3}, Lokhttp3/internal/framed/t;->a(Lokhttp3/internal/framed/t;)Lokhttp3/internal/framed/e;

    move-result-object v3

    iget-wide v4, v3, Lokhttp3/internal/framed/e;->c:J

    add-long/2addr v4, v0

    iput-wide v4, v3, Lokhttp3/internal/framed/e;->c:J

    .line 361
    iget-object v3, p0, Lokhttp3/internal/framed/v;->b:Lokhttp3/internal/framed/t;

    invoke-static {v3}, Lokhttp3/internal/framed/t;->a(Lokhttp3/internal/framed/t;)Lokhttp3/internal/framed/e;

    move-result-object v3

    iget-wide v4, v3, Lokhttp3/internal/framed/e;->c:J

    iget-object v3, p0, Lokhttp3/internal/framed/v;->b:Lokhttp3/internal/framed/t;

    .line 362
    invoke-static {v3}, Lokhttp3/internal/framed/t;->a(Lokhttp3/internal/framed/t;)Lokhttp3/internal/framed/e;

    move-result-object v3

    iget-object v3, v3, Lokhttp3/internal/framed/e;->e:Lokhttp3/internal/framed/ap;

    invoke-virtual {v3}, Lokhttp3/internal/framed/ap;->b()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-ltz v3, :cond_5

    .line 363
    iget-object v3, p0, Lokhttp3/internal/framed/v;->b:Lokhttp3/internal/framed/t;

    invoke-static {v3}, Lokhttp3/internal/framed/t;->a(Lokhttp3/internal/framed/t;)Lokhttp3/internal/framed/e;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lokhttp3/internal/framed/v;->b:Lokhttp3/internal/framed/t;

    invoke-static {v5}, Lokhttp3/internal/framed/t;->a(Lokhttp3/internal/framed/t;)Lokhttp3/internal/framed/e;

    move-result-object v5

    iget-wide v6, v5, Lokhttp3/internal/framed/e;->c:J

    invoke-virtual {v3, v4, v6, v7}, Lokhttp3/internal/framed/e;->a(IJ)V

    .line 364
    iget-object v3, p0, Lokhttp3/internal/framed/v;->b:Lokhttp3/internal/framed/t;

    invoke-static {v3}, Lokhttp3/internal/framed/t;->a(Lokhttp3/internal/framed/t;)Lokhttp3/internal/framed/e;

    move-result-object v3

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lokhttp3/internal/framed/e;->c:J

    .line 366
    :cond_5
    monitor-exit v2

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public final timeout()Lokio/Timeout;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lokhttp3/internal/framed/v;->b:Lokhttp3/internal/framed/t;

    invoke-static {v0}, Lokhttp3/internal/framed/t;->c(Lokhttp3/internal/framed/t;)Lokhttp3/internal/framed/w;

    move-result-object v0

    return-object v0
.end method
