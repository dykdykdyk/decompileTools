.class final Lrx/c/c/n;
.super Lrx/n;
.source "ExecutorScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Ljava/util/concurrent/Executor;

.field final b:Lrx/f/c;

.field final c:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lrx/c/c/u;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field final e:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lrx/n;-><init>()V

    .line 55
    iput-object p1, p0, Lrx/c/c/n;->a:Ljava/util/concurrent/Executor;

    .line 56
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lrx/c/c/n;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/c/c/n;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 58
    new-instance v0, Lrx/f/c;

    invoke-direct {v0}, Lrx/f/c;-><init>()V

    iput-object v0, p0, Lrx/c/c/n;->b:Lrx/f/c;

    .line 59
    invoke-static {}, Lrx/c/c/o;->b()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lrx/c/c/n;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 60
    return-void
.end method


# virtual methods
.method public final a(Lrx/b/a;)Lrx/u;
    .locals 3

    .prologue
    .line 64
    invoke-virtual {p0}, Lrx/c/c/n;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    invoke-static {}, Lrx/f/f;->b()Lrx/u;

    move-result-object v0

    .line 88
    :cond_0
    :goto_0
    return-object v0

    .line 67
    :cond_1
    new-instance v0, Lrx/c/c/u;

    iget-object v1, p0, Lrx/c/c/n;->b:Lrx/f/c;

    invoke-direct {v0, p1, v1}, Lrx/c/c/u;-><init>(Lrx/b/a;Lrx/f/c;)V

    .line 68
    iget-object v1, p0, Lrx/c/c/n;->b:Lrx/f/c;

    invoke-virtual {v1, v0}, Lrx/f/c;->a(Lrx/u;)V

    .line 69
    iget-object v1, p0, Lrx/c/c/n;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 70
    iget-object v1, p0, Lrx/c/c/n;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    if-nez v1, :cond_0

    .line 76
    :try_start_0
    iget-object v1, p0, Lrx/c/c/n;->a:Ljava/util/concurrent/Executor;

    invoke-interface {v1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    :catch_0
    move-exception v1

    .line 79
    iget-object v2, p0, Lrx/c/c/n;->b:Lrx/f/c;

    invoke-virtual {v2, v0}, Lrx/f/c;->b(Lrx/u;)V

    .line 80
    iget-object v0, p0, Lrx/c/c/n;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 82
    invoke-static {}, Lrx/e/e;->a()Lrx/e/e;

    move-result-object v0

    invoke-virtual {v0}, Lrx/e/e;->b()Lrx/e/b;

    .line 84
    throw v1
.end method

.method public final isUnsubscribed()Z
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lrx/c/c/n;->b:Lrx/f/c;

    invoke-virtual {v0}, Lrx/f/c;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public final run()V
    .locals 2

    .prologue
    .line 94
    :cond_0
    iget-object v0, p0, Lrx/c/c/n;->b:Lrx/f/c;

    invoke-virtual {v0}, Lrx/f/c;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    iget-object v0, p0, Lrx/c/c/n;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 111
    :cond_1
    :goto_0
    return-void

    .line 98
    :cond_2
    iget-object v0, p0, Lrx/c/c/n;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/c/c/u;

    .line 99
    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {v0}, Lrx/c/c/u;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 103
    iget-object v1, p0, Lrx/c/c/n;->b:Lrx/f/c;

    invoke-virtual {v1}, Lrx/f/c;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 104
    invoke-virtual {v0}, Lrx/c/c/u;->run()V

    .line 110
    :cond_3
    iget-object v0, p0, Lrx/c/c/n;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 106
    :cond_4
    iget-object v0, p0, Lrx/c/c/n;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    goto :goto_0
.end method

.method public final unsubscribe()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lrx/c/c/n;->b:Lrx/f/c;

    invoke-virtual {v0}, Lrx/f/c;->unsubscribe()V

    .line 180
    iget-object v0, p0, Lrx/c/c/n;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 181
    return-void
.end method
