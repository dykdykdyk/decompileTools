.class final Lrx/c/c/i;
.super Lrx/n;
.source "EventLoopsScheduler.java"


# instance fields
.field private final a:Lrx/c/d/v;

.field private final b:Lrx/f/c;

.field private final c:Lrx/c/d/v;

.field private final d:Lrx/c/c/l;


# direct methods
.method constructor <init>(Lrx/c/c/l;)V
    .locals 4

    .prologue
    .line 143
    invoke-direct {p0}, Lrx/n;-><init>()V

    .line 138
    new-instance v0, Lrx/c/d/v;

    invoke-direct {v0}, Lrx/c/d/v;-><init>()V

    iput-object v0, p0, Lrx/c/c/i;->a:Lrx/c/d/v;

    .line 139
    new-instance v0, Lrx/f/c;

    invoke-direct {v0}, Lrx/f/c;-><init>()V

    iput-object v0, p0, Lrx/c/c/i;->b:Lrx/f/c;

    .line 140
    new-instance v0, Lrx/c/d/v;

    const/4 v1, 0x2

    new-array v1, v1, [Lrx/u;

    const/4 v2, 0x0

    iget-object v3, p0, Lrx/c/c/i;->a:Lrx/c/d/v;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lrx/c/c/i;->b:Lrx/f/c;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lrx/c/d/v;-><init>([Lrx/u;)V

    iput-object v0, p0, Lrx/c/c/i;->c:Lrx/c/d/v;

    .line 144
    iput-object p1, p0, Lrx/c/c/i;->d:Lrx/c/c/l;

    .line 146
    return-void
.end method


# virtual methods
.method public final a(Lrx/b/a;)Lrx/u;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 160
    invoke-virtual {p0}, Lrx/c/c/i;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-static {}, Lrx/f/f;->b()Lrx/u;

    move-result-object v0

    .line 164
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lrx/c/c/i;->d:Lrx/c/c/l;

    new-instance v1, Lrx/c/c/j;

    invoke-direct {v1, p0, p1}, Lrx/c/c/j;-><init>(Lrx/c/c/i;Lrx/b/a;)V

    iget-object v2, p0, Lrx/c/c/i;->a:Lrx/c/d/v;

    .line 1265
    invoke-static {v1}, Lrx/e/h;->a(Lrx/b/a;)Lrx/b/a;

    move-result-object v3

    .line 1266
    new-instance v1, Lrx/c/c/u;

    invoke-direct {v1, v3, v2}, Lrx/c/c/u;-><init>(Lrx/b/a;Lrx/c/d/v;)V

    .line 1267
    invoke-virtual {v2, v1}, Lrx/c/d/v;->a(Lrx/u;)V

    .line 1270
    cmp-long v2, v4, v4

    if-gtz v2, :cond_1

    .line 1271
    iget-object v0, v0, Lrx/c/c/s;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 1275
    :goto_1
    invoke-virtual {v1, v0}, Lrx/c/c/u;->a(Ljava/util/concurrent/Future;)V

    move-object v0, v1

    .line 164
    goto :goto_0

    .line 1273
    :cond_1
    iget-object v0, v0, Lrx/c/c/s;->b:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v4, v5, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    goto :goto_1
.end method

.method public final isUnsubscribed()Z
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lrx/c/c/i;->c:Lrx/c/d/v;

    invoke-virtual {v0}, Lrx/c/d/v;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public final unsubscribe()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lrx/c/c/i;->c:Lrx/c/d/v;

    invoke-virtual {v0}, Lrx/c/d/v;->unsubscribe()V

    .line 151
    return-void
.end method
