.class public final Lokhttp3/internal/framed/e;
.super Ljava/lang/Object;
.source "FramedConnection.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field static final synthetic k:Z

.field private static final l:Ljava/util/concurrent/ExecutorService;


# instance fields
.field public final a:Lokhttp3/ap;

.field final b:Z

.field c:J

.field d:J

.field public e:Lokhttp3/internal/framed/ap;

.field final f:Lokhttp3/internal/framed/ap;

.field final g:Lokhttp3/internal/framed/at;

.field final h:Ljava/net/Socket;

.field public final i:Lokhttp3/internal/framed/d;

.field public final j:Lokhttp3/internal/framed/p;

.field private final m:Lokhttp3/internal/framed/n;

.field private final n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lokhttp3/internal/framed/t;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Ljava/lang/String;

.field private p:I

.field private q:I

.field private r:Z

.field private final s:Ljava/util/concurrent/ExecutorService;

.field private t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lokhttp3/internal/framed/am;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Lokhttp3/internal/framed/an;

.field private v:I

.field private w:Z

.field private final x:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 55
    const-class v0, Lokhttp3/internal/framed/e;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v8

    :goto_0
    sput-boolean v0, Lokhttp3/internal/framed/e;->k:Z

    .line 69
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "OkHttp FramedConnection"

    .line 71
    invoke-static {v0, v8}, Lokhttp3/internal/c;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lokhttp3/internal/framed/e;->l:Ljava/util/concurrent/ExecutorService;

    .line 69
    return-void

    :cond_0
    move v0, v2

    .line 55
    goto :goto_0
.end method

.method private constructor <init>(Lokhttp3/internal/framed/m;)V
    .locals 11

    .prologue
    const/4 v10, 0x7

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/framed/e;->n:Ljava/util/Map;

    .line 104
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lokhttp3/internal/framed/e;->c:J

    .line 113
    new-instance v0, Lokhttp3/internal/framed/ap;

    invoke-direct {v0}, Lokhttp3/internal/framed/ap;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/framed/e;->e:Lokhttp3/internal/framed/ap;

    .line 119
    new-instance v0, Lokhttp3/internal/framed/ap;

    invoke-direct {v0}, Lokhttp3/internal/framed/ap;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/framed/e;->f:Lokhttp3/internal/framed/ap;

    .line 121
    iput-boolean v2, p0, Lokhttp3/internal/framed/e;->w:Z

    .line 816
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/framed/e;->x:Ljava/util/Set;

    .line 1518
    iget-object v0, p1, Lokhttp3/internal/framed/m;->f:Lokhttp3/ap;

    .line 130
    iput-object v0, p0, Lokhttp3/internal/framed/e;->a:Lokhttp3/ap;

    .line 2518
    iget-object v0, p1, Lokhttp3/internal/framed/m;->g:Lokhttp3/internal/framed/an;

    .line 131
    iput-object v0, p0, Lokhttp3/internal/framed/e;->u:Lokhttp3/internal/framed/an;

    .line 3518
    iget-boolean v0, p1, Lokhttp3/internal/framed/m;->h:Z

    .line 132
    iput-boolean v0, p0, Lokhttp3/internal/framed/e;->b:Z

    .line 4518
    iget-object v0, p1, Lokhttp3/internal/framed/m;->e:Lokhttp3/internal/framed/n;

    .line 133
    iput-object v0, p0, Lokhttp3/internal/framed/e;->m:Lokhttp3/internal/framed/n;

    .line 5518
    iget-boolean v0, p1, Lokhttp3/internal/framed/m;->h:Z

    .line 135
    if-eqz v0, :cond_3

    move v0, v3

    :goto_0
    iput v0, p0, Lokhttp3/internal/framed/e;->q:I

    .line 6518
    iget-boolean v0, p1, Lokhttp3/internal/framed/m;->h:Z

    .line 136
    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/framed/e;->a:Lokhttp3/ap;

    sget-object v4, Lokhttp3/ap;->d:Lokhttp3/ap;

    if-ne v0, v4, :cond_0

    .line 137
    iget v0, p0, Lokhttp3/internal/framed/e;->q:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lokhttp3/internal/framed/e;->q:I

    .line 7518
    :cond_0
    iget-boolean v0, p1, Lokhttp3/internal/framed/m;->h:Z

    .line 140
    if-eqz v0, :cond_1

    move v1, v3

    :cond_1
    iput v1, p0, Lokhttp3/internal/framed/e;->v:I

    .line 8518
    iget-boolean v0, p1, Lokhttp3/internal/framed/m;->h:Z

    .line 146
    if-eqz v0, :cond_2

    .line 147
    iget-object v0, p0, Lokhttp3/internal/framed/e;->e:Lokhttp3/internal/framed/ap;

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v10, v2, v1}, Lokhttp3/internal/framed/ap;->a(III)Lokhttp3/internal/framed/ap;

    .line 9518
    :cond_2
    iget-object v0, p1, Lokhttp3/internal/framed/m;->b:Ljava/lang/String;

    .line 150
    iput-object v0, p0, Lokhttp3/internal/framed/e;->o:Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lokhttp3/internal/framed/e;->a:Lokhttp3/ap;

    sget-object v1, Lokhttp3/ap;->d:Lokhttp3/ap;

    if-ne v0, v1, :cond_4

    .line 153
    new-instance v0, Lokhttp3/internal/framed/ac;

    invoke-direct {v0}, Lokhttp3/internal/framed/ac;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/framed/e;->g:Lokhttp3/internal/framed/at;

    .line 155
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v0, "OkHttp %s Push Observer"

    new-array v8, v3, [Ljava/lang/Object;

    iget-object v9, p0, Lokhttp3/internal/framed/e;->o:Ljava/lang/String;

    aput-object v9, v8, v2

    .line 157
    invoke-static {v0, v8}, Lokhttp3/internal/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lokhttp3/internal/c;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lokhttp3/internal/framed/e;->s:Ljava/util/concurrent/ExecutorService;

    .line 159
    iget-object v0, p0, Lokhttp3/internal/framed/e;->f:Lokhttp3/internal/framed/ap;

    const v1, 0xffff

    invoke-virtual {v0, v10, v2, v1}, Lokhttp3/internal/framed/ap;->a(III)Lokhttp3/internal/framed/ap;

    .line 160
    iget-object v0, p0, Lokhttp3/internal/framed/e;->f:Lokhttp3/internal/framed/ap;

    const/4 v1, 0x5

    const/16 v3, 0x4000

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/internal/framed/ap;->a(III)Lokhttp3/internal/framed/ap;

    .line 167
    :goto_1
    iget-object v0, p0, Lokhttp3/internal/framed/e;->f:Lokhttp3/internal/framed/ap;

    invoke-virtual {v0}, Lokhttp3/internal/framed/ap;->b()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lokhttp3/internal/framed/e;->d:J

    .line 10518
    iget-object v0, p1, Lokhttp3/internal/framed/m;->a:Ljava/net/Socket;

    .line 168
    iput-object v0, p0, Lokhttp3/internal/framed/e;->h:Ljava/net/Socket;

    .line 169
    iget-object v0, p0, Lokhttp3/internal/framed/e;->g:Lokhttp3/internal/framed/at;

    .line 11518
    iget-object v1, p1, Lokhttp3/internal/framed/m;->d:Lokio/BufferedSink;

    .line 169
    iget-boolean v3, p0, Lokhttp3/internal/framed/e;->b:Z

    invoke-interface {v0, v1, v3}, Lokhttp3/internal/framed/at;->a(Lokio/BufferedSink;Z)Lokhttp3/internal/framed/d;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/framed/e;->i:Lokhttp3/internal/framed/d;

    .line 171
    new-instance v0, Lokhttp3/internal/framed/p;

    iget-object v1, p0, Lokhttp3/internal/framed/e;->g:Lokhttp3/internal/framed/at;

    .line 12518
    iget-object v3, p1, Lokhttp3/internal/framed/m;->c:Lokio/BufferedSource;

    .line 171
    iget-boolean v4, p0, Lokhttp3/internal/framed/e;->b:Z

    invoke-interface {v1, v3, v4}, Lokhttp3/internal/framed/at;->a(Lokio/BufferedSource;Z)Lokhttp3/internal/framed/b;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Lokhttp3/internal/framed/p;-><init>(Lokhttp3/internal/framed/e;Lokhttp3/internal/framed/b;B)V

    iput-object v0, p0, Lokhttp3/internal/framed/e;->j:Lokhttp3/internal/framed/p;

    .line 172
    return-void

    :cond_3
    move v0, v1

    .line 135
    goto/16 :goto_0

    .line 161
    :cond_4
    iget-object v0, p0, Lokhttp3/internal/framed/e;->a:Lokhttp3/ap;

    sget-object v1, Lokhttp3/ap;->c:Lokhttp3/ap;

    if-ne v0, v1, :cond_5

    .line 162
    new-instance v0, Lokhttp3/internal/framed/aq;

    invoke-direct {v0}, Lokhttp3/internal/framed/aq;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/framed/e;->g:Lokhttp3/internal/framed/at;

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/internal/framed/e;->s:Ljava/util/concurrent/ExecutorService;

    goto :goto_1

    .line 165
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Lokhttp3/internal/framed/e;->a:Lokhttp3/ap;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public synthetic constructor <init>(Lokhttp3/internal/framed/m;B)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lokhttp3/internal/framed/e;-><init>(Lokhttp3/internal/framed/m;)V

    return-void
.end method

.method static synthetic a(Lokhttp3/internal/framed/e;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lokhttp3/internal/framed/e;->o:Ljava/lang/String;

    return-object v0
.end method

.method private a(Lokhttp3/internal/framed/a;Lokhttp3/internal/framed/a;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 427
    sget-boolean v0, Lokhttp3/internal/framed/e;->k:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 13404
    :cond_0
    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/framed/e;->i:Lokhttp3/internal/framed/d;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13406
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 13407
    :try_start_2
    iget-boolean v0, p0, Lokhttp3/internal/framed/e;->r:Z

    if-eqz v0, :cond_2

    .line 13408
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v1, v2

    .line 437
    :goto_0
    monitor-enter p0

    .line 438
    :try_start_4
    iget-object v0, p0, Lokhttp3/internal/framed/e;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 439
    iget-object v0, p0, Lokhttp3/internal/framed/e;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v4, p0, Lokhttp3/internal/framed/e;->n:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Lokhttp3/internal/framed/t;

    invoke-interface {v0, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp3/internal/framed/t;

    .line 440
    iget-object v4, p0, Lokhttp3/internal/framed/e;->n:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    move-object v5, v0

    .line 442
    :goto_1
    iget-object v0, p0, Lokhttp3/internal/framed/e;->t:Ljava/util/Map;

    if-eqz v0, :cond_a

    .line 443
    iget-object v0, p0, Lokhttp3/internal/framed/e;->t:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lokhttp3/internal/framed/e;->t:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lokhttp3/internal/framed/am;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp3/internal/framed/am;

    .line 444
    const/4 v2, 0x0

    iput-object v2, p0, Lokhttp3/internal/framed/e;->t:Ljava/util/Map;

    move-object v4, v0

    .line 446
    :goto_2
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 448
    if-eqz v5, :cond_4

    .line 449
    array-length v6, v5

    move v2, v3

    move-object v0, v1

    :goto_3
    if-ge v2, v6, :cond_3

    aget-object v1, v5, v2

    .line 451
    :try_start_5
    invoke-virtual {v1, p2}, Lokhttp3/internal/framed/t;->a(Lokhttp3/internal/framed/a;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 449
    :cond_1
    :goto_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    .line 13410
    :cond_2
    const/4 v0, 0x1

    :try_start_6
    iput-boolean v0, p0, Lokhttp3/internal/framed/e;->r:Z

    .line 13411
    iget v0, p0, Lokhttp3/internal/framed/e;->p:I

    .line 13412
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 13414
    :try_start_7
    iget-object v4, p0, Lokhttp3/internal/framed/e;->i:Lokhttp3/internal/framed/d;

    sget-object v5, Lokhttp3/internal/c;->a:[B

    invoke-interface {v4, v0, p1, v5}, Lokhttp3/internal/framed/d;->a(ILokhttp3/internal/framed/a;[B)V

    .line 13415
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v1, v2

    goto :goto_0

    .line 13412
    :catchall_0
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v0

    .line 13415
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    .line 432
    :catch_0
    move-exception v0

    move-object v1, v0

    goto :goto_0

    .line 446
    :catchall_2
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v0

    .line 452
    :catch_1
    move-exception v1

    .line 453
    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_4

    :cond_3
    move-object v1, v0

    .line 458
    :cond_4
    if-eqz v4, :cond_7

    .line 459
    array-length v2, v4

    move v0, v3

    :goto_5
    if-ge v0, v2, :cond_7

    aget-object v3, v4, v0

    .line 14044
    iget-wide v6, v3, Lokhttp3/internal/framed/am;->c:J

    cmp-long v5, v6, v10

    if-nez v5, :cond_5

    iget-wide v6, v3, Lokhttp3/internal/framed/am;->b:J

    cmp-long v5, v6, v10

    if-nez v5, :cond_6

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 14045
    :cond_6
    iget-wide v6, v3, Lokhttp3/internal/framed/am;->b:J

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    iput-wide v6, v3, Lokhttp3/internal/framed/am;->c:J

    .line 14046
    iget-object v3, v3, Lokhttp3/internal/framed/am;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 459
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 466
    :cond_7
    :try_start_c
    iget-object v0, p0, Lokhttp3/internal/framed/e;->i:Lokhttp3/internal/framed/d;

    invoke-interface {v0}, Lokhttp3/internal/framed/d;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    move-object v0, v1

    .line 473
    :cond_8
    :goto_6
    :try_start_d
    iget-object v1, p0, Lokhttp3/internal/framed/e;->h:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    .line 478
    :goto_7
    if-eqz v0, :cond_9

    throw v0

    .line 467
    :catch_2
    move-exception v0

    .line 468
    if-eqz v1, :cond_8

    move-object v0, v1

    goto :goto_6

    .line 479
    :cond_9
    return-void

    .line 475
    :catch_3
    move-exception v0

    goto :goto_7

    :cond_a
    move-object v4, v2

    goto :goto_2

    :cond_b
    move-object v5, v2

    goto/16 :goto_1
.end method

.method static synthetic a(Lokhttp3/internal/framed/e;II)V
    .locals 7

    .prologue
    .line 17371
    sget-object v6, Lokhttp3/internal/framed/e;->l:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lokhttp3/internal/framed/h;

    const-string v2, "OkHttp %s ping %08x%08x"

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lokhttp3/internal/framed/e;->o:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    .line 17372
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/framed/h;-><init>(Lokhttp3/internal/framed/e;Ljava/lang/String;[Ljava/lang/Object;II)V

    .line 17371
    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 55
    return-void
.end method

.method static synthetic a(Lokhttp3/internal/framed/e;ILjava/util/List;)V
    .locals 7

    .prologue
    .line 55
    .line 17819
    monitor-enter p0

    .line 17820
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/e;->x:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17821
    sget-object v0, Lokhttp3/internal/framed/a;->b:Lokhttp3/internal/framed/a;

    invoke-virtual {p0, p1, v0}, Lokhttp3/internal/framed/e;->a(ILokhttp3/internal/framed/a;)V

    .line 17822
    monitor-exit p0

    :goto_0
    return-void

    .line 17824
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/framed/e;->x:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 17825
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17826
    iget-object v6, p0, Lokhttp3/internal/framed/e;->s:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lokhttp3/internal/framed/i;

    const-string v2, "OkHttp %s Push Request[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lokhttp3/internal/framed/e;->o:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/framed/i;-><init>(Lokhttp3/internal/framed/e;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 17825
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lokhttp3/internal/framed/e;ILjava/util/List;Z)V
    .locals 8

    .prologue
    .line 55
    .line 16844
    iget-object v7, p0, Lokhttp3/internal/framed/e;->s:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lokhttp3/internal/framed/j;

    const-string v2, "OkHttp %s Push Headers[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lokhttp3/internal/framed/e;->o:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lokhttp3/internal/framed/j;-><init>(Lokhttp3/internal/framed/e;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 55
    return-void
.end method

.method static synthetic a(Lokhttp3/internal/framed/e;ILokhttp3/internal/framed/a;)V
    .locals 7

    .prologue
    .line 55
    .line 16887
    iget-object v6, p0, Lokhttp3/internal/framed/e;->s:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lokhttp3/internal/framed/l;

    const-string v2, "OkHttp %s Push Reset[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lokhttp3/internal/framed/e;->o:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/framed/l;-><init>(Lokhttp3/internal/framed/e;Ljava/lang/String;[Ljava/lang/Object;ILokhttp3/internal/framed/a;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 55
    return-void
.end method

.method static synthetic a(Lokhttp3/internal/framed/e;ILokio/BufferedSource;IZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    .line 15866
    new-instance v5, Lokio/Buffer;

    invoke-direct {v5}, Lokio/Buffer;-><init>()V

    .line 15867
    int-to-long v0, p3

    invoke-interface {p2, v0, v1}, Lokio/BufferedSource;->require(J)V

    .line 15868
    int-to-long v0, p3

    invoke-interface {p2, v5, v0, v1}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    .line 15869
    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v0

    int-to-long v2, p3

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15870
    :cond_0
    iget-object v8, p0, Lokhttp3/internal/framed/e;->s:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lokhttp3/internal/framed/k;

    const-string v2, "OkHttp %s Push Data[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lokhttp3/internal/framed/e;->o:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lokhttp3/internal/framed/k;-><init>(Lokhttp3/internal/framed/e;Ljava/lang/String;[Ljava/lang/Object;ILokio/Buffer;IZ)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 55
    return-void
.end method

.method static synthetic a(Lokhttp3/internal/framed/e;Lokhttp3/internal/framed/a;Lokhttp3/internal/framed/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/framed/e;->a(Lokhttp3/internal/framed/a;Lokhttp3/internal/framed/a;)V

    return-void
.end method

.method static synthetic a(Lokhttp3/internal/framed/e;ZIILokhttp3/internal/framed/am;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    .line 14383
    iget-object v1, p0, Lokhttp3/internal/framed/e;->i:Lokhttp3/internal/framed/d;

    monitor-enter v1

    .line 14385
    if-eqz p4, :cond_1

    .line 15033
    :try_start_0
    iget-wide v2, p4, Lokhttp3/internal/framed/am;->b:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 14387
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 15034
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p4, Lokhttp3/internal/framed/am;->b:J

    .line 14386
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/framed/e;->i:Lokhttp3/internal/framed/d;

    invoke-interface {v0, p1, p2, p3}, Lokhttp3/internal/framed/d;->a(ZII)V

    .line 14387
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method static synthetic a(Lokhttp3/internal/framed/e;I)Z
    .locals 2

    .prologue
    .line 55
    .line 15812
    iget-object v0, p0, Lokhttp3/internal/framed/e;->a:Lokhttp3/ap;

    sget-object v1, Lokhttp3/ap;->d:Lokhttp3/ap;

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 55
    goto :goto_0
.end method

.method static synthetic b(Lokhttp3/internal/framed/e;I)I
    .locals 0

    .prologue
    .line 55
    iput p1, p0, Lokhttp3/internal/framed/e;->p:I

    return p1
.end method

.method static synthetic b(Lokhttp3/internal/framed/e;)Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lokhttp3/internal/framed/e;->r:Z

    return v0
.end method

.method static synthetic c(Lokhttp3/internal/framed/e;)I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lokhttp3/internal/framed/e;->p:I

    return v0
.end method

.method static synthetic c()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lokhttp3/internal/framed/e;->l:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private declared-synchronized c(I)Lokhttp3/internal/framed/am;
    .locals 2

    .prologue
    .line 391
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/e;->t:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/framed/e;->t:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/framed/am;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lokhttp3/internal/framed/e;I)Lokhttp3/internal/framed/am;
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lokhttp3/internal/framed/e;->c(I)Lokhttp3/internal/framed/am;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lokhttp3/internal/framed/e;)I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lokhttp3/internal/framed/e;->q:I

    return v0
.end method

.method static synthetic e(Lokhttp3/internal/framed/e;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lokhttp3/internal/framed/e;->n:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic f(Lokhttp3/internal/framed/e;)Lokhttp3/internal/framed/n;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lokhttp3/internal/framed/e;->m:Lokhttp3/internal/framed/n;

    return-object v0
.end method

.method static synthetic g(Lokhttp3/internal/framed/e;)Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lokhttp3/internal/framed/e;->w:Z

    return v0
.end method

.method static synthetic h(Lokhttp3/internal/framed/e;)Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/framed/e;->w:Z

    return v0
.end method

.method static synthetic i(Lokhttp3/internal/framed/e;)Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/framed/e;->r:Z

    return v0
.end method

.method static synthetic j(Lokhttp3/internal/framed/e;)Lokhttp3/internal/framed/an;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lokhttp3/internal/framed/e;->u:Lokhttp3/internal/framed/an;

    return-object v0
.end method

.method static synthetic k(Lokhttp3/internal/framed/e;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lokhttp3/internal/framed/e;->x:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a()I
    .locals 2

    .prologue
    .line 197
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/e;->f:Lokhttp3/internal/framed/ap;

    .line 13169
    iget v1, v0, Lokhttp3/internal/framed/ap;->a:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    iget-object v0, v0, Lokhttp3/internal/framed/ap;->d:[I

    const/4 v1, 0x4

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const v0, 0x7fffffff

    .line 197
    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(I)Lokhttp3/internal/framed/t;
    .locals 2

    .prologue
    .line 187
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/e;->n:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/framed/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/util/List;Z)Lokhttp3/internal/framed/t;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/x;",
            ">;Z)",
            "Lokhttp3/internal/framed/t;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 229
    if-nez p2, :cond_0

    move v3, v6

    .line 235
    :goto_0
    iget-object v8, p0, Lokhttp3/internal/framed/e;->i:Lokhttp3/internal/framed/d;

    monitor-enter v8

    .line 236
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 237
    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/framed/e;->r:Z

    if-eqz v0, :cond_1

    .line 238
    new-instance v0, Ljava/io/IOException;

    const-string v1, "shutdown"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 256
    :catchall_1
    move-exception v0

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_0
    move v3, v7

    .line 229
    goto :goto_0

    .line 240
    :cond_1
    :try_start_3
    iget v1, p0, Lokhttp3/internal/framed/e;->q:I

    .line 241
    iget v0, p0, Lokhttp3/internal/framed/e;->q:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lokhttp3/internal/framed/e;->q:I

    .line 242
    new-instance v0, Lokhttp3/internal/framed/t;

    const/4 v4, 0x0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/framed/t;-><init>(ILokhttp3/internal/framed/e;ZZLjava/util/List;)V

    .line 243
    if-eqz p2, :cond_2

    iget-wide v4, p0, Lokhttp3/internal/framed/e;->d:J

    cmp-long v2, v4, v10

    if-eqz v2, :cond_2

    iget-wide v4, v0, Lokhttp3/internal/framed/t;->b:J

    cmp-long v2, v4, v10

    if-nez v2, :cond_3

    :cond_2
    move v7, v6

    .line 244
    :cond_3
    invoke-virtual {v0}, Lokhttp3/internal/framed/t;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 245
    iget-object v2, p0, Lokhttp3/internal/framed/e;->n:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    :cond_4
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 249
    :try_start_4
    iget-object v2, p0, Lokhttp3/internal/framed/e;->i:Lokhttp3/internal/framed/d;

    invoke-interface {v2, v3, v1, p1}, Lokhttp3/internal/framed/d;->a(ZILjava/util/List;)V

    .line 256
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 258
    if-eqz v7, :cond_5

    .line 259
    iget-object v1, p0, Lokhttp3/internal/framed/e;->i:Lokhttp3/internal/framed/d;

    invoke-interface {v1}, Lokhttp3/internal/framed/d;->b()V

    .line 262
    :cond_5
    return-object v0
.end method

.method final a(IJ)V
    .locals 8

    .prologue
    .line 339
    sget-object v0, Lokhttp3/internal/framed/e;->l:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lokhttp3/internal/framed/g;

    const-string v3, "OkHttp Window Update %s stream %d"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v5, p0, Lokhttp3/internal/framed/e;->o:Ljava/lang/String;

    aput-object v5, v4, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lokhttp3/internal/framed/g;-><init>(Lokhttp3/internal/framed/e;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 347
    return-void
.end method

.method final a(ILokhttp3/internal/framed/a;)V
    .locals 7

    .prologue
    .line 324
    sget-object v6, Lokhttp3/internal/framed/e;->l:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lokhttp3/internal/framed/f;

    const-string v2, "OkHttp %s stream %d"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lokhttp3/internal/framed/e;->o:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/framed/f;-><init>(Lokhttp3/internal/framed/e;Ljava/lang/String;[Ljava/lang/Object;ILokhttp3/internal/framed/a;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 332
    return-void
.end method

.method public final a(IZLokio/Buffer;J)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const-wide/16 v8, 0x0

    .line 284
    cmp-long v0, p4, v8

    if-nez v0, :cond_2

    .line 285
    iget-object v0, p0, Lokhttp3/internal/framed/e;->i:Lokhttp3/internal/framed/d;

    invoke-interface {v0, p2, p1, p3, v1}, Lokhttp3/internal/framed/d;->a(ZILokio/Buffer;I)V

    .line 313
    :cond_0
    return-void

    .line 305
    :cond_1
    :try_start_0
    iget-wide v2, p0, Lokhttp3/internal/framed/e;->d:J

    invoke-static {p4, p5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    .line 306
    iget-object v2, p0, Lokhttp3/internal/framed/e;->i:Lokhttp3/internal/framed/d;

    invoke-interface {v2}, Lokhttp3/internal/framed/d;->c()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 307
    iget-wide v4, p0, Lokhttp3/internal/framed/e;->d:J

    int-to-long v6, v2

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lokhttp3/internal/framed/e;->d:J

    .line 308
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    int-to-long v4, v2

    sub-long/2addr p4, v4

    .line 311
    iget-object v3, p0, Lokhttp3/internal/framed/e;->i:Lokhttp3/internal/framed/d;

    if-eqz p2, :cond_4

    cmp-long v0, p4, v8

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v3, v0, p1, p3, v2}, Lokhttp3/internal/framed/d;->a(ZILokio/Buffer;I)V

    .line 289
    :cond_2
    cmp-long v0, p4, v8

    if-lez v0, :cond_0

    .line 291
    monitor-enter p0

    .line 293
    :goto_1
    :try_start_1
    iget-wide v2, p0, Lokhttp3/internal/framed/e;->d:J

    cmp-long v0, v2, v8

    if-gtz v0, :cond_1

    .line 296
    iget-object v0, p0, Lokhttp3/internal/framed/e;->n:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 297
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    :catch_0
    move-exception v0

    :try_start_2
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    .line 308
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 299
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_4
    move v0, v1

    .line 311
    goto :goto_0
.end method

.method final declared-synchronized b(I)Lokhttp3/internal/framed/t;
    .locals 2

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/e;->n:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/framed/t;

    .line 192
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    monitor-exit p0

    return-object v0

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 395
    iget-object v0, p0, Lokhttp3/internal/framed/e;->i:Lokhttp3/internal/framed/d;

    invoke-interface {v0}, Lokhttp3/internal/framed/d;->b()V

    .line 396
    return-void
.end method

.method final b(ILokhttp3/internal/framed/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 335
    iget-object v0, p0, Lokhttp3/internal/framed/e;->i:Lokhttp3/internal/framed/d;

    invoke-interface {v0, p1, p2}, Lokhttp3/internal/framed/d;->a(ILokhttp3/internal/framed/a;)V

    .line 336
    return-void
.end method

.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 423
    sget-object v0, Lokhttp3/internal/framed/a;->a:Lokhttp3/internal/framed/a;

    sget-object v1, Lokhttp3/internal/framed/a;->l:Lokhttp3/internal/framed/a;

    invoke-direct {p0, v0, v1}, Lokhttp3/internal/framed/e;->a(Lokhttp3/internal/framed/a;Lokhttp3/internal/framed/a;)V

    .line 424
    return-void
.end method
