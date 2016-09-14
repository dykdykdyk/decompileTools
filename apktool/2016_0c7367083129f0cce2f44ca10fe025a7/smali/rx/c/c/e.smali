.class final Lrx/c/c/e;
.super Lrx/n;
.source "CachedThreadScheduler.java"


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final b:Lrx/f/c;

.field private final c:Lrx/c/c/b;

.field private final d:Lrx/c/c/g;


# direct methods
.method constructor <init>(Lrx/c/c/b;)V
    .locals 1

    .prologue
    .line 182
    invoke-direct {p0}, Lrx/n;-><init>()V

    .line 177
    new-instance v0, Lrx/f/c;

    invoke-direct {v0}, Lrx/f/c;-><init>()V

    iput-object v0, p0, Lrx/c/c/e;->b:Lrx/f/c;

    .line 183
    iput-object p1, p0, Lrx/c/c/e;->c:Lrx/c/c/b;

    .line 184
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lrx/c/c/e;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 185
    invoke-virtual {p1}, Lrx/c/c/b;->a()Lrx/c/c/g;

    move-result-object v0

    iput-object v0, p0, Lrx/c/c/e;->d:Lrx/c/c/g;

    .line 186
    return-void
.end method


# virtual methods
.method public final a(Lrx/b/a;)Lrx/u;
    .locals 5

    .prologue
    .line 204
    .line 2209
    iget-object v0, p0, Lrx/c/c/e;->b:Lrx/f/c;

    invoke-virtual {v0}, Lrx/f/c;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2211
    invoke-static {}, Lrx/f/f;->b()Lrx/u;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2214
    :cond_0
    iget-object v0, p0, Lrx/c/c/e;->d:Lrx/c/c/g;

    new-instance v1, Lrx/c/c/f;

    invoke-direct {v1, p0, p1}, Lrx/c/c/f;-><init>(Lrx/c/c/e;Lrx/b/a;)V

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lrx/c/c/g;->a(Lrx/b/a;JLjava/util/concurrent/TimeUnit;)Lrx/c/c/u;

    move-result-object v0

    .line 2223
    iget-object v1, p0, Lrx/c/c/e;->b:Lrx/f/c;

    invoke-virtual {v1, v0}, Lrx/f/c;->a(Lrx/u;)V

    .line 2224
    iget-object v1, p0, Lrx/c/c/e;->b:Lrx/f/c;

    .line 3111
    iget-object v2, v0, Lrx/c/c/u;->a:Lrx/c/d/v;

    new-instance v3, Lrx/c/c/w;

    invoke-direct {v3, v0, v1}, Lrx/c/c/w;-><init>(Lrx/c/c/u;Lrx/f/c;)V

    invoke-virtual {v2, v3}, Lrx/c/d/v;->a(Lrx/u;)V

    goto :goto_0
.end method

.method public final isUnsubscribed()Z
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lrx/c/c/e;->b:Lrx/f/c;

    invoke-virtual {v0}, Lrx/f/c;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public final unsubscribe()V
    .locals 6

    .prologue
    .line 190
    iget-object v0, p0, Lrx/c/c/e;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lrx/c/c/e;->c:Lrx/c/c/b;

    iget-object v1, p0, Lrx/c/c/e;->d:Lrx/c/c/g;

    .line 1117
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 1093
    iget-wide v4, v0, Lrx/c/c/b;->a:J

    add-long/2addr v2, v4

    .line 1242
    iput-wide v2, v1, Lrx/c/c/g;->a:J

    .line 1095
    iget-object v0, v0, Lrx/c/c/b;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 194
    :cond_0
    iget-object v0, p0, Lrx/c/c/e;->b:Lrx/f/c;

    invoke-virtual {v0}, Lrx/f/c;->unsubscribe()V

    .line 195
    return-void
.end method
