.class public final Lrx/c/c/h;
.super Lrx/m;
.source "EventLoopsScheduler.java"

# interfaces
.implements Lrx/c/c/y;


# static fields
.field static final b:I

.field static final c:Lrx/c/c/l;

.field static final d:Lrx/c/c/k;


# instance fields
.field final e:Ljava/util/concurrent/ThreadFactory;

.field public final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/c/c/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 35
    const-string v0, "rx.scheduler.max-computation-threads"

    invoke-static {v0, v2}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 36
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    .line 38
    if-lez v0, :cond_0

    if-le v0, v1, :cond_1

    :cond_0
    move v0, v1

    .line 43
    :cond_1
    sput v0, Lrx/c/c/h;->b:I

    .line 48
    new-instance v0, Lrx/c/c/l;

    sget-object v1, Lrx/c/d/k;->a:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1}, Lrx/c/c/l;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 49
    sput-object v0, Lrx/c/c/h;->c:Lrx/c/c/l;

    invoke-virtual {v0}, Lrx/c/c/l;->unsubscribe()V

    .line 83
    new-instance v0, Lrx/c/c/k;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Lrx/c/c/k;-><init>(Ljava/util/concurrent/ThreadFactory;I)V

    sput-object v0, Lrx/c/c/h;->d:Lrx/c/c/k;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 3

    .prologue
    .line 93
    invoke-direct {p0}, Lrx/m;-><init>()V

    .line 94
    iput-object p1, p0, Lrx/c/c/h;->e:Ljava/util/concurrent/ThreadFactory;

    .line 95
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lrx/c/c/h;->d:Lrx/c/c/k;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lrx/c/c/h;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1106
    new-instance v0, Lrx/c/c/k;

    iget-object v1, p0, Lrx/c/c/h;->e:Ljava/util/concurrent/ThreadFactory;

    sget v2, Lrx/c/c/h;->b:I

    invoke-direct {v0, v1, v2}, Lrx/c/c/k;-><init>(Ljava/util/concurrent/ThreadFactory;I)V

    .line 1107
    iget-object v1, p0, Lrx/c/c/h;->f:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lrx/c/c/h;->d:Lrx/c/c/k;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1108
    invoke-virtual {v0}, Lrx/c/c/k;->b()V

    .line 97
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 115
    :cond_0
    iget-object v0, p0, Lrx/c/c/h;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/c/c/k;

    .line 116
    sget-object v1, Lrx/c/c/h;->d:Lrx/c/c/k;

    if-ne v0, v1, :cond_1

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-object v1, p0, Lrx/c/c/h;->f:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lrx/c/c/h;->d:Lrx/c/c/k;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    invoke-virtual {v0}, Lrx/c/c/k;->b()V

    goto :goto_0
.end method

.method public final createWorker()Lrx/n;
    .locals 2

    .prologue
    .line 101
    new-instance v1, Lrx/c/c/i;

    iget-object v0, p0, Lrx/c/c/h;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/c/c/k;

    invoke-virtual {v0}, Lrx/c/c/k;->a()Lrx/c/c/l;

    move-result-object v0

    invoke-direct {v1, v0}, Lrx/c/c/i;-><init>(Lrx/c/c/l;)V

    return-object v1
.end method
