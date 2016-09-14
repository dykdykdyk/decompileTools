.class public final Lrx/schedulers/Schedulers;
.super Ljava/lang/Object;
.source "Schedulers.java"


# static fields
.field private static final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/schedulers/Schedulers;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lrx/m;

.field private final b:Lrx/m;

.field private final c:Lrx/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lrx/schedulers/Schedulers;->d:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {}, Lrx/e/e;->a()Lrx/e/e;

    move-result-object v0

    invoke-virtual {v0}, Lrx/e/e;->d()Lrx/e/h;

    .line 59
    invoke-static {}, Lrx/e/h;->d()Lrx/m;

    .line 63
    invoke-static {}, Lrx/e/h;->a()Lrx/m;

    move-result-object v0

    iput-object v0, p0, Lrx/schedulers/Schedulers;->a:Lrx/m;

    .line 66
    invoke-static {}, Lrx/e/h;->e()Lrx/m;

    .line 70
    invoke-static {}, Lrx/e/h;->b()Lrx/m;

    move-result-object v0

    iput-object v0, p0, Lrx/schedulers/Schedulers;->b:Lrx/m;

    .line 73
    invoke-static {}, Lrx/e/h;->f()Lrx/m;

    .line 77
    invoke-static {}, Lrx/e/h;->c()Lrx/m;

    move-result-object v0

    iput-object v0, p0, Lrx/schedulers/Schedulers;->c:Lrx/m;

    .line 79
    return-void
.end method

.method private static a()Lrx/schedulers/Schedulers;
    .locals 3

    .prologue
    .line 43
    :goto_0
    sget-object v0, Lrx/schedulers/Schedulers;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/schedulers/Schedulers;

    .line 44
    if-eqz v0, :cond_1

    .line 49
    :cond_0
    return-object v0

    .line 47
    :cond_1
    new-instance v0, Lrx/schedulers/Schedulers;

    invoke-direct {v0}, Lrx/schedulers/Schedulers;-><init>()V

    .line 48
    sget-object v1, Lrx/schedulers/Schedulers;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    invoke-direct {v0}, Lrx/schedulers/Schedulers;->b()V

    goto :goto_0
.end method

.method private declared-synchronized b()V
    .locals 1

    .prologue
    .line 230
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lrx/schedulers/Schedulers;->a:Lrx/m;

    instance-of v0, v0, Lrx/c/c/y;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lrx/schedulers/Schedulers;->a:Lrx/m;

    check-cast v0, Lrx/c/c/y;

    invoke-interface {v0}, Lrx/c/c/y;->a()V

    .line 233
    :cond_0
    iget-object v0, p0, Lrx/schedulers/Schedulers;->b:Lrx/m;

    instance-of v0, v0, Lrx/c/c/y;

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lrx/schedulers/Schedulers;->b:Lrx/m;

    check-cast v0, Lrx/c/c/y;

    invoke-interface {v0}, Lrx/c/c/y;->a()V

    .line 236
    :cond_1
    iget-object v0, p0, Lrx/schedulers/Schedulers;->c:Lrx/m;

    instance-of v0, v0, Lrx/c/c/y;

    if-eqz v0, :cond_2

    .line 237
    iget-object v0, p0, Lrx/schedulers/Schedulers;->c:Lrx/m;

    check-cast v0, Lrx/c/c/y;

    invoke-interface {v0}, Lrx/c/c/y;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    :cond_2
    monitor-exit p0

    return-void

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static computation()Lrx/m;
    .locals 1

    .prologue
    .line 123
    invoke-static {}, Lrx/schedulers/Schedulers;->a()Lrx/schedulers/Schedulers;

    move-result-object v0

    iget-object v0, v0, Lrx/schedulers/Schedulers;->a:Lrx/m;

    return-object v0
.end method

.method public static from(Ljava/util/concurrent/Executor;)Lrx/m;
    .locals 1

    .prologue
    .line 161
    new-instance v0, Lrx/c/c/m;

    invoke-direct {v0, p0}, Lrx/c/c/m;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static immediate()Lrx/m;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lrx/c/c/p;->b:Lrx/c/c/p;

    return-object v0
.end method

.method public static io()Lrx/m;
    .locals 1

    .prologue
    .line 140
    invoke-static {}, Lrx/schedulers/Schedulers;->a()Lrx/schedulers/Schedulers;

    move-result-object v0

    iget-object v0, v0, Lrx/schedulers/Schedulers;->b:Lrx/m;

    return-object v0
.end method

.method public static newThread()Lrx/m;
    .locals 1

    .prologue
    .line 108
    invoke-static {}, Lrx/schedulers/Schedulers;->a()Lrx/schedulers/Schedulers;

    move-result-object v0

    iget-object v0, v0, Lrx/schedulers/Schedulers;->c:Lrx/m;

    return-object v0
.end method

.method public static reset()V
    .locals 2

    .prologue
    .line 171
    sget-object v0, Lrx/schedulers/Schedulers;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/schedulers/Schedulers;

    .line 172
    if-eqz v0, :cond_0

    .line 173
    invoke-direct {v0}, Lrx/schedulers/Schedulers;->b()V

    .line 175
    :cond_0
    return-void
.end method

.method public static shutdown()V
    .locals 2

    .prologue
    .line 199
    invoke-static {}, Lrx/schedulers/Schedulers;->a()Lrx/schedulers/Schedulers;

    move-result-object v1

    .line 200
    invoke-direct {v1}, Lrx/schedulers/Schedulers;->b()V

    .line 202
    monitor-enter v1

    .line 203
    :try_start_0
    sget-object v0, Lrx/c/c/o;->a:Lrx/c/c/o;

    invoke-virtual {v0}, Lrx/c/c/o;->a()V

    .line 205
    sget-object v0, Lrx/c/d/h;->e:Lrx/c/d/b;

    invoke-virtual {v0}, Lrx/c/d/b;->a()V

    .line 207
    sget-object v0, Lrx/c/d/h;->f:Lrx/c/d/b;

    invoke-virtual {v0}, Lrx/c/d/b;->a()V

    .line 208
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static test()Lrx/schedulers/TestScheduler;
    .locals 1

    .prologue
    .line 150
    new-instance v0, Lrx/schedulers/TestScheduler;

    invoke-direct {v0}, Lrx/schedulers/TestScheduler;-><init>()V

    return-object v0
.end method

.method public static trampoline()Lrx/m;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lrx/c/c/z;->b:Lrx/c/c/z;

    return-object v0
.end method
