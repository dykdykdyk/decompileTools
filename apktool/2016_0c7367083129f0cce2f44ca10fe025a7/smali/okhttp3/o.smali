.class public final Lokhttp3/o;
.super Ljava/lang/Object;
.source "ConnectionPool.java"


# static fields
.field static final a:Ljava/util/concurrent/Executor;

.field static final synthetic g:Z


# instance fields
.field final b:I

.field final c:Ljava/lang/Runnable;

.field final d:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lokhttp3/internal/connection/c;",
            ">;"
        }
    .end annotation
.end field

.field final e:Lokhttp3/internal/connection/d;

.field f:Z

.field private final h:J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 43
    const-class v0, Lokhttp3/o;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v8

    :goto_0
    sput-boolean v0, Lokhttp3/o;->g:Z

    .line 49
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "OkHttp ConnectionPool"

    .line 51
    invoke-static {v0, v8}, Lokhttp3/internal/c;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lokhttp3/o;->a:Ljava/util/concurrent/Executor;

    .line 49
    return-void

    :cond_0
    move v0, v2

    .line 43
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 85
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, v0}, Lokhttp3/o;-><init>(Ljava/util/concurrent/TimeUnit;)V

    .line 86
    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/TimeUnit;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x5

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lokhttp3/p;

    invoke-direct {v0, p0}, Lokhttp3/p;-><init>(Lokhttp3/o;)V

    iput-object v0, p0, Lokhttp3/o;->c:Ljava/lang/Runnable;

    .line 75
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lokhttp3/o;->d:Ljava/util/Deque;

    .line 76
    new-instance v0, Lokhttp3/internal/connection/d;

    invoke-direct {v0}, Lokhttp3/internal/connection/d;-><init>()V

    iput-object v0, p0, Lokhttp3/o;->e:Lokhttp3/internal/connection/d;

    .line 89
    const/4 v0, 0x5

    iput v0, p0, Lokhttp3/o;->b:I

    .line 90
    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/o;->h:J

    .line 93
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gtz v0, :cond_0

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keepAliveDuration <= 0: 5"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    return-void
.end method


# virtual methods
.method final a(J)J
    .locals 15

    .prologue
    .line 182
    const/4 v1, 0x0

    .line 183
    const/4 v0, 0x0

    .line 184
    const/4 v6, 0x0

    .line 185
    const-wide/high16 v4, -0x8000000000000000L

    .line 188
    monitor-enter p0

    .line 189
    :try_start_0
    iget-object v2, p0, Lokhttp3/o;->d:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v3, v0

    move v8, v1

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 190
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/connection/c;

    .line 1239
    iget-object v7, v0, Lokhttp3/internal/connection/c;->j:Ljava/util/List;

    .line 1240
    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 1241
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/Reference;

    .line 1243
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1244
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    .line 1245
    goto :goto_1

    .line 1249
    :cond_1
    invoke-static {}, Lokhttp3/internal/d/g;->b()Lokhttp3/internal/d/g;

    move-result-object v1

    const/4 v10, 0x5

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "A connection to "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1349
    iget-object v12, v0, Lokhttp3/internal/connection/c;->a:Lokhttp3/bc;

    .line 2057
    iget-object v12, v12, Lokhttp3/bc;->a:Lokhttp3/a;

    .line 2091
    iget-object v12, v12, Lokhttp3/a;->a:Lokhttp3/ad;

    .line 1249
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " was leaked. Did you forget to close a response body?"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v1, v10, v11, v12}, Lokhttp3/internal/d/g;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 1251
    invoke-interface {v7, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1252
    const/4 v1, 0x1

    iput-boolean v1, v0, Lokhttp3/internal/connection/c;->k:Z

    .line 1255
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1256
    iget-wide v10, p0, Lokhttp3/o;->h:J

    sub-long v10, p1, v10

    iput-wide v10, v0, Lokhttp3/internal/connection/c;->l:J

    .line 1257
    const/4 v1, 0x0

    .line 193
    :goto_2
    if-lez v1, :cond_3

    .line 194
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    .line 195
    goto :goto_0

    .line 1261
    :cond_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_2

    .line 198
    :cond_3
    add-int/lit8 v7, v3, 0x1

    .line 201
    iget-wide v2, v0, Lokhttp3/internal/connection/c;->l:J

    sub-long v2, p1, v2

    .line 202
    cmp-long v1, v2, v4

    if-lez v1, :cond_9

    move-wide v13, v2

    move-object v2, v0

    move-wide v0, v13

    :goto_3
    move-wide v4, v0

    move-object v6, v2

    move v3, v7

    .line 206
    goto :goto_0

    .line 208
    :cond_4
    iget-wide v0, p0, Lokhttp3/o;->h:J

    cmp-long v0, v4, v0

    if-gez v0, :cond_5

    iget v0, p0, Lokhttp3/o;->b:I

    if-le v3, v0, :cond_6

    .line 212
    :cond_5
    iget-object v0, p0, Lokhttp3/o;->d:Ljava/util/Deque;

    invoke-interface {v0, v6}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 224
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2358
    iget-object v0, v6, Lokhttp3/internal/connection/c;->c:Ljava/net/Socket;

    .line 226
    invoke-static {v0}, Lokhttp3/internal/c;->a(Ljava/net/Socket;)V

    .line 229
    const-wide/16 v0, 0x0

    :goto_4
    return-wide v0

    .line 213
    :cond_6
    if-lez v3, :cond_7

    .line 215
    :try_start_1
    iget-wide v0, p0, Lokhttp3/o;->h:J

    sub-long/2addr v0, v4

    monitor-exit p0

    goto :goto_4

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 216
    :cond_7
    if-lez v8, :cond_8

    .line 218
    :try_start_2
    iget-wide v0, p0, Lokhttp3/o;->h:J

    monitor-exit p0

    goto :goto_4

    .line 221
    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lokhttp3/o;->f:Z

    .line 222
    const-wide/16 v0, -0x1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :cond_9
    move-wide v0, v4

    move-object v2, v6

    goto :goto_3
.end method
