.class public final Lrx/c/d/h;
.super Ljava/lang/Object;
.source "RxRingBuffer.java"

# interfaces
.implements Lrx/u;


# static fields
.field static c:I

.field public static final d:I

.field public static e:Lrx/c/d/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/d/b",
            "<",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static f:Lrx/c/d/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/d/b",
            "<",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final g:Lrx/c/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/a/c",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public volatile b:Ljava/lang/Object;

.field private final h:I

.field private final i:Lrx/c/d/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/d/b",
            "<",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 144
    invoke-static {}, Lrx/c/a/c;->a()Lrx/c/a/c;

    move-result-object v0

    sput-object v0, Lrx/c/d/h;->g:Lrx/c/a/c;

    .line 260
    const/16 v0, 0x80

    sput v0, Lrx/c/d/h;->c:I

    .line 263
    invoke-static {}, Lrx/c/d/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    const/16 v0, 0x10

    sput v0, Lrx/c/d/h;->c:I

    .line 268
    :cond_0
    const-string v0, "rx.ring-buffer.size"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 269
    if-eqz v1, :cond_1

    .line 271
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lrx/c/d/h;->c:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :cond_1
    :goto_0
    sget v0, Lrx/c/d/h;->c:I

    sput v0, Lrx/c/d/h;->d:I

    .line 280
    new-instance v0, Lrx/c/d/i;

    invoke-direct {v0}, Lrx/c/d/i;-><init>()V

    sput-object v0, Lrx/c/d/h;->e:Lrx/c/d/b;

    .line 290
    new-instance v0, Lrx/c/d/j;

    invoke-direct {v0}, Lrx/c/d/j;-><init>()V

    sput-object v0, Lrx/c/d/h;->f:Lrx/c/d/b;

    return-void

    .line 272
    :catch_0
    move-exception v0

    .line 273
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to set \'rx.buffer.size\' with value "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " => "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 327
    new-instance v0, Lrx/c/d/w;

    sget v1, Lrx/c/d/h;->d:I

    invoke-direct {v0, v1}, Lrx/c/d/w;-><init>(I)V

    sget v1, Lrx/c/d/h;->d:I

    invoke-direct {p0, v0, v1}, Lrx/c/d/h;-><init>(Ljava/util/Queue;I)V

    .line 328
    return-void
.end method

.method private constructor <init>(Ljava/util/Queue;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    iput-object p1, p0, Lrx/c/d/h;->a:Ljava/util/Queue;

    .line 301
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/c/d/h;->i:Lrx/c/d/b;

    .line 302
    iput p2, p0, Lrx/c/d/h;->h:I

    .line 303
    return-void
.end method

.method private constructor <init>(Lrx/c/d/b;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/d/b",
            "<",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;>;I)V"
        }
    .end annotation

    .prologue
    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iput-object p1, p0, Lrx/c/d/h;->i:Lrx/c/d/b;

    .line 307
    invoke-virtual {p1}, Lrx/c/d/b;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    iput-object v0, p0, Lrx/c/d/h;->a:Ljava/util/Queue;

    .line 308
    iput p2, p0, Lrx/c/d/h;->h:I

    .line 309
    return-void
.end method

.method public static a()Lrx/c/d/h;
    .locals 3

    .prologue
    .line 36
    invoke-static {}, Lrx/c/d/b/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    new-instance v0, Lrx/c/d/h;

    sget-object v1, Lrx/c/d/h;->e:Lrx/c/d/b;

    sget v2, Lrx/c/d/h;->d:I

    invoke-direct {v0, v1, v2}, Lrx/c/d/h;-><init>(Lrx/c/d/b;I)V

    .line 39
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lrx/c/d/h;

    invoke-direct {v0}, Lrx/c/d/h;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized b()V
    .locals 3

    .prologue
    .line 312
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lrx/c/d/h;->a:Ljava/util/Queue;

    .line 313
    iget-object v1, p0, Lrx/c/d/h;->i:Lrx/c/d/b;

    .line 314
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 315
    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 316
    const/4 v2, 0x0

    iput-object v2, p0, Lrx/c/d/h;->a:Ljava/util/Queue;

    .line 1084
    if-eqz v0, :cond_0

    .line 1088
    iget-object v1, v1, Lrx/c/d/b;->a:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    :cond_0
    monitor-exit p0

    return-void

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 396
    monitor-enter p0

    .line 397
    :try_start_0
    iget-object v2, p0, Lrx/c/d/h;->a:Ljava/util/Queue;

    .line 398
    if-nez v2, :cond_0

    .line 400
    monitor-exit p0

    .line 411
    :goto_0
    return-object v0

    .line 402
    :cond_0
    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    .line 404
    iget-object v0, p0, Lrx/c/d/h;->b:Ljava/lang/Object;

    .line 405
    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 408
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/c/d/h;->b:Ljava/lang/Object;

    .line 410
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public final isUnsubscribed()Z
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lrx/c/d/h;->a:Ljava/util/Queue;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final unsubscribe()V
    .locals 0

    .prologue
    .line 323
    invoke-virtual {p0}, Lrx/c/d/h;->b()V

    .line 324
    return-void
.end method
