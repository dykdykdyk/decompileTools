.class public final Lrx/c/c/o;
.super Ljava/lang/Object;
.source "GenericScheduledExecutorService.java"

# interfaces
.implements Lrx/c/c/y;


# static fields
.field public static final a:Lrx/c/c/o;

.field private static final b:Lrx/c/d/k;

.field private static final c:[Ljava/util/concurrent/ScheduledExecutorService;

.field private static final d:Ljava/util/concurrent/ScheduledExecutorService;

.field private static f:I


# instance fields
.field private final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 36
    new-instance v0, Lrx/c/d/k;

    const-string v1, "RxScheduledExecutorPool-"

    invoke-direct {v0, v1}, Lrx/c/d/k;-><init>(Ljava/lang/String;)V

    sput-object v0, Lrx/c/c/o;->b:Lrx/c/d/k;

    .line 38
    new-array v0, v2, [Ljava/util/concurrent/ScheduledExecutorService;

    sput-object v0, Lrx/c/c/o;->c:[Ljava/util/concurrent/ScheduledExecutorService;

    .line 42
    invoke-static {v2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 43
    sput-object v0, Lrx/c/c/o;->d:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 47
    new-instance v0, Lrx/c/c/o;

    invoke-direct {v0}, Lrx/c/c/o;-><init>()V

    sput-object v0, Lrx/c/c/o;->a:Lrx/c/c/o;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lrx/c/c/o;->c:[Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lrx/c/c/o;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 56
    invoke-direct {p0}, Lrx/c/c/o;->c()V

    .line 57
    return-void
.end method

.method public static b()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 3

    .prologue
    .line 115
    sget-object v0, Lrx/c/c/o;->a:Lrx/c/c/o;

    iget-object v0, v0, Lrx/c/c/o;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/concurrent/ScheduledExecutorService;

    .line 116
    sget-object v1, Lrx/c/c/o;->c:[Ljava/util/concurrent/ScheduledExecutorService;

    if-ne v0, v1, :cond_0

    .line 117
    sget-object v0, Lrx/c/c/o;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 124
    :goto_0
    return-object v0

    .line 119
    :cond_0
    sget v1, Lrx/c/c/o;->f:I

    add-int/lit8 v1, v1, 0x1

    .line 120
    array-length v2, v0

    if-lt v1, v2, :cond_1

    .line 121
    const/4 v1, 0x0

    .line 123
    :cond_1
    sput v1, Lrx/c/c/o;->f:I

    .line 124
    aget-object v0, v0, v1

    goto :goto_0
.end method

.method private c()V
    .locals 6

    .prologue
    const/16 v0, 0x8

    const/4 v2, 0x0

    .line 61
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    .line 62
    const/4 v3, 0x4

    if-le v1, v3, :cond_0

    .line 63
    div-int/lit8 v1, v1, 0x2

    .line 66
    :cond_0
    if-le v1, v0, :cond_5

    .line 73
    :goto_0
    new-array v3, v0, [Ljava/util/concurrent/ScheduledExecutorService;

    move v1, v2

    .line 74
    :goto_1
    if-ge v1, v0, :cond_1

    .line 75
    const/4 v4, 0x1

    sget-object v5, Lrx/c/c/o;->b:Lrx/c/d/k;

    invoke-static {v4, v5}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v4

    aput-object v4, v3, v1

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 77
    :cond_1
    iget-object v0, p0, Lrx/c/c/o;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lrx/c/c/o;->c:[Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 78
    array-length v1, v3

    :goto_2
    if-ge v2, v1, :cond_4

    aget-object v0, v3, v2

    .line 79
    invoke-static {v0}, Lrx/c/c/s;->b(Ljava/util/concurrent/ScheduledExecutorService;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 80
    instance-of v4, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v4, :cond_2

    .line 81
    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-static {v0}, Lrx/c/c/s;->a(Ljava/util/concurrent/ScheduledThreadPoolExecutor;)V

    .line 78
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 86
    :cond_3
    array-length v1, v3

    move v0, v2

    :goto_3
    if-ge v0, v1, :cond_4

    aget-object v2, v3, v0

    .line 87
    invoke-interface {v2}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 90
    :cond_4
    return-void

    :cond_5
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 95
    :cond_0
    iget-object v0, p0, Lrx/c/c/o;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/concurrent/ScheduledExecutorService;

    .line 96
    sget-object v1, Lrx/c/c/o;->c:[Ljava/util/concurrent/ScheduledExecutorService;

    if-ne v0, v1, :cond_2

    .line 104
    :cond_1
    return-void

    .line 99
    :cond_2
    iget-object v1, p0, Lrx/c/c/o;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lrx/c/c/o;->c:[Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 101
    invoke-static {v3}, Lrx/c/c/s;->a(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 102
    invoke-interface {v3}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
