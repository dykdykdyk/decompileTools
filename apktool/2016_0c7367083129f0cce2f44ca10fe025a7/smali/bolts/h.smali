.class public final Lbolts/h;
.super Ljava/lang/Object;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/ExecutorService;

.field public static final b:Ljava/util/concurrent/Executor;

.field public static final c:Ljava/util/concurrent/Executor;


# instance fields
.field private final d:Ljava/lang/Object;

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTResult;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/Exception;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbolts/g",
            "<TTResult;",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lbolts/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lbolts/h;->a:Ljava/util/concurrent/ExecutorService;

    .line 38
    invoke-static {}, Lbolts/e;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    sput-object v0, Lbolts/h;->b:Ljava/util/concurrent/Executor;

    .line 43
    invoke-static {}, Lbolts/a;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    sput-object v0, Lbolts/h;->c:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lbolts/h;->d:Ljava/lang/Object;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbolts/h;->i:Ljava/util/List;

    .line 54
    return-void
.end method

.method public static a(Ljava/lang/Exception;)Lbolts/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Exception;",
            ")",
            "Lbolts/h",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 137
    invoke-static {}, Lbolts/h;->a()Lbolts/o;

    move-result-object v0

    .line 138
    invoke-virtual {v0, p0}, Lbolts/o;->a(Ljava/lang/Exception;)V

    .line 2540
    iget-object v0, v0, Lbolts/o;->a:Lbolts/h;

    .line 139
    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lbolts/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(TTResult;)",
            "Lbolts/h",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 128
    invoke-static {}, Lbolts/h;->a()Lbolts/o;

    move-result-object v0

    .line 129
    invoke-virtual {v0, p0}, Lbolts/o;->a(Ljava/lang/Object;)V

    .line 1540
    iget-object v0, v0, Lbolts/o;->a:Lbolts/h;

    .line 130
    return-object v0
.end method

.method public static a()Lbolts/o;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">()",
            "Lbolts/h",
            "<TTResult;>.bolts/o;"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Lbolts/h;

    invoke-direct {v0}, Lbolts/h;-><init>()V

    .line 64
    new-instance v1, Lbolts/o;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lbolts/o;-><init>(Lbolts/h;B)V

    return-object v1
.end method

.method static synthetic a(Lbolts/h;Ljava/lang/Exception;)Ljava/lang/Exception;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lbolts/h;->h:Ljava/lang/Exception;

    return-object p1
.end method

.method static synthetic a(Lbolts/h;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lbolts/h;->d:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lbolts/h;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lbolts/h;->g:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic a(Lbolts/o;Lbolts/g;Lbolts/h;Ljava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 27
    invoke-static {p0, p1, p2, p3}, Lbolts/h;->c(Lbolts/o;Lbolts/g;Lbolts/h;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private b(Lbolts/g;Ljava/util/concurrent/Executor;)Lbolts/h;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/g",
            "<TTResult;TTContinuationResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lbolts/h",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 309
    invoke-static {}, Lbolts/h;->a()Lbolts/o;

    move-result-object v0

    .line 310
    iget-object v1, p0, Lbolts/h;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 311
    :try_start_0
    invoke-direct {p0}, Lbolts/h;->g()Z

    move-result v2

    .line 312
    if-nez v2, :cond_0

    .line 313
    iget-object v3, p0, Lbolts/h;->i:Ljava/util/List;

    new-instance v4, Lbolts/k;

    invoke-direct {v4, p0, v0, p1, p2}, Lbolts/k;-><init>(Lbolts/h;Lbolts/o;Lbolts/g;Ljava/util/concurrent/Executor;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    if-eqz v2, :cond_1

    .line 323
    invoke-static {v0, p1, p0, p2}, Lbolts/h;->c(Lbolts/o;Lbolts/g;Lbolts/h;Ljava/util/concurrent/Executor;)V

    .line 4540
    :cond_1
    iget-object v0, v0, Lbolts/o;->a:Lbolts/h;

    .line 325
    return-object v0

    .line 321
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic b(Lbolts/o;Lbolts/g;Lbolts/h;Ljava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 27
    invoke-static {p0, p1, p2, p3}, Lbolts/h;->d(Lbolts/o;Lbolts/g;Lbolts/h;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static synthetic b(Lbolts/h;)Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lbolts/h;->e:Z

    return v0
.end method

.method private static c(Lbolts/o;Lbolts/g;Lbolts/h;Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/h",
            "<TTContinuationResult;>.bolts/o;",
            "Lbolts/g",
            "<TTResult;TTContinuationResult;>;",
            "Lbolts/h",
            "<TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 449
    new-instance v0, Lbolts/n;

    invoke-direct {v0, p1, p2, p0}, Lbolts/n;-><init>(Lbolts/g;Lbolts/h;Lbolts/o;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 460
    return-void
.end method

.method static synthetic c(Lbolts/h;)Z
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbolts/h;->e:Z

    return v0
.end method

.method private static d(Lbolts/o;Lbolts/g;Lbolts/h;Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/h",
            "<TTContinuationResult;>.bolts/o;",
            "Lbolts/g",
            "<TTResult;",
            "Lbolts/h",
            "<TTContinuationResult;>;>;",
            "Lbolts/h",
            "<TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 482
    new-instance v0, Lbolts/i;

    invoke-direct {v0, p1, p2, p0}, Lbolts/i;-><init>(Lbolts/g;Lbolts/h;Lbolts/o;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 509
    return-void
.end method

.method static synthetic d(Lbolts/h;)Z
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbolts/h;->f:Z

    return v0
.end method

.method static synthetic e(Lbolts/h;)V
    .locals 3

    .prologue
    .line 27
    .line 6512
    iget-object v1, p0, Lbolts/h;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 6513
    :try_start_0
    iget-object v0, p0, Lbolts/h;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbolts/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6515
    :try_start_1
    invoke-interface {v0, p0}, Lbolts/g;->then(Lbolts/h;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6517
    :catch_0
    move-exception v0

    :try_start_2
    throw v0

    .line 6523
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 6518
    :catch_1
    move-exception v0

    .line 6519
    :try_start_3
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 6522
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lbolts/h;->i:Ljava/util/List;

    .line 6523
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public static f()Lbolts/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">()",
            "Lbolts/h",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 146
    invoke-static {}, Lbolts/h;->a()Lbolts/o;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Lbolts/o;->a()V

    .line 3540
    iget-object v0, v0, Lbolts/o;->a:Lbolts/h;

    .line 148
    return-object v0
.end method

.method private g()Z
    .locals 2

    .prologue
    .line 72
    iget-object v1, p0, Lbolts/h;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 73
    :try_start_0
    iget-boolean v0, p0, Lbolts/h;->e:Z

    monitor-exit v1

    return v0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Lbolts/g;)Lbolts/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/g",
            "<TTResult;TTContinuationResult;>;)",
            "Lbolts/h",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 334
    sget-object v0, Lbolts/h;->b:Ljava/util/concurrent/Executor;

    invoke-direct {p0, p1, v0}, Lbolts/h;->b(Lbolts/g;Ljava/util/concurrent/Executor;)Lbolts/h;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lbolts/g;Ljava/util/concurrent/Executor;)Lbolts/h;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/g",
            "<TTResult;",
            "Lbolts/h",
            "<TTContinuationResult;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lbolts/h",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 344
    invoke-static {}, Lbolts/h;->a()Lbolts/o;

    move-result-object v0

    .line 345
    iget-object v1, p0, Lbolts/h;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 346
    :try_start_0
    invoke-direct {p0}, Lbolts/h;->g()Z

    move-result v2

    .line 347
    if-nez v2, :cond_0

    .line 348
    iget-object v3, p0, Lbolts/h;->i:Ljava/util/List;

    new-instance v4, Lbolts/l;

    invoke-direct {v4, p0, v0, p1, p2}, Lbolts/l;-><init>(Lbolts/h;Lbolts/o;Lbolts/g;Ljava/util/concurrent/Executor;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    if-eqz v2, :cond_1

    .line 358
    invoke-static {v0, p1, p0, p2}, Lbolts/h;->d(Lbolts/o;Lbolts/g;Lbolts/h;Ljava/util/concurrent/Executor;)V

    .line 5540
    :cond_1
    iget-object v0, v0, Lbolts/o;->a:Lbolts/h;

    .line 360
    return-object v0

    .line 356
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 81
    iget-object v1, p0, Lbolts/h;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 82
    :try_start_0
    iget-boolean v0, p0, Lbolts/h;->f:Z

    monitor-exit v1

    return v0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 90
    iget-object v1, p0, Lbolts/h;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 91
    :try_start_0
    iget-object v0, p0, Lbolts/h;->h:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final d()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v1, p0, Lbolts/h;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 100
    :try_start_0
    iget-object v0, p0, Lbolts/h;->g:Ljava/lang/Object;

    monitor-exit v1

    return-object v0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final e()Ljava/lang/Exception;
    .locals 2

    .prologue
    .line 108
    iget-object v1, p0, Lbolts/h;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 109
    :try_start_0
    iget-object v0, p0, Lbolts/h;->h:Ljava/lang/Exception;

    monitor-exit v1

    return-object v0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
