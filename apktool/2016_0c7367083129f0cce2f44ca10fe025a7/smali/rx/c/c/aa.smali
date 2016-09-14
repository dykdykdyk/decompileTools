.class final Lrx/c/c/aa;
.super Lrx/n;
.source "TrampolineScheduler.java"

# interfaces
.implements Lrx/u;


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field final b:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lrx/c/c/ac;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lrx/f/a;

.field private final d:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lrx/n;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/c/c/aa;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 46
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lrx/c/c/aa;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 47
    new-instance v0, Lrx/f/a;

    invoke-direct {v0}, Lrx/f/a;-><init>()V

    iput-object v0, p0, Lrx/c/c/aa;->c:Lrx/f/a;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/c/c/aa;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 51
    return-void
.end method


# virtual methods
.method public final a(Lrx/b/a;)Lrx/u;
    .locals 3

    .prologue
    .line 55
    invoke-virtual {p0}, Lrx/c/c/aa;->a()J

    move-result-wide v0

    .line 1066
    iget-object v2, p0, Lrx/c/c/aa;->c:Lrx/f/a;

    invoke-virtual {v2}, Lrx/f/a;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1067
    invoke-static {}, Lrx/f/f;->b()Lrx/u;

    move-result-object v0

    .line 1079
    :goto_0
    return-object v0

    .line 1069
    :cond_0
    new-instance v2, Lrx/c/c/ac;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lrx/c/c/aa;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-direct {v2, p1, v0, v1}, Lrx/c/c/ac;-><init>(Lrx/b/a;Ljava/lang/Long;I)V

    .line 1070
    iget-object v0, p0, Lrx/c/c/aa;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 1072
    iget-object v0, p0, Lrx/c/c/aa;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_3

    .line 1074
    :cond_1
    iget-object v0, p0, Lrx/c/c/aa;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/c/c/ac;

    .line 1075
    if-eqz v0, :cond_2

    .line 1076
    iget-object v0, v0, Lrx/c/c/ac;->a:Lrx/b/a;

    invoke-interface {v0}, Lrx/b/a;->call()V

    .line 1078
    :cond_2
    iget-object v0, p0, Lrx/c/c/aa;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1079
    invoke-static {}, Lrx/f/f;->b()Lrx/u;

    move-result-object v0

    goto :goto_0

    .line 1082
    :cond_3
    new-instance v0, Lrx/c/c/ab;

    invoke-direct {v0, p0, v2}, Lrx/c/c/ab;-><init>(Lrx/c/c/aa;Lrx/c/c/ac;)V

    invoke-static {v0}, Lrx/f/f;->a(Lrx/b/a;)Lrx/u;

    move-result-object v0

    goto :goto_0
.end method

.method public final isUnsubscribed()Z
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lrx/c/c/aa;->c:Lrx/f/a;

    invoke-virtual {v0}, Lrx/f/a;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public final unsubscribe()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lrx/c/c/aa;->c:Lrx/f/a;

    invoke-virtual {v0}, Lrx/f/a;->unsubscribe()V

    .line 96
    return-void
.end method
