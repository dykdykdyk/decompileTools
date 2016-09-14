.class final Lrx/a/b/c;
.super Lrx/n;
.source "LooperScheduler.java"


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lrx/a/a/b;

.field private volatile c:Z


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lrx/n;-><init>()V

    .line 51
    iput-object p1, p0, Lrx/a/b/c;->a:Landroid/os/Handler;

    .line 52
    invoke-static {}, Lrx/a/a/a;->a()Lrx/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lrx/a/a/a;->b()Lrx/a/a/b;

    move-result-object v0

    iput-object v0, p0, Lrx/a/b/c;->b:Lrx/a/a/b;

    .line 53
    return-void
.end method


# virtual methods
.method public final a(Lrx/b/a;)Lrx/u;
    .locals 6

    .prologue
    .line 91
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1068
    iget-boolean v0, p0, Lrx/a/b/c;->c:Z

    if-eqz v0, :cond_1

    .line 1069
    invoke-static {}, Lrx/f/f;->b()Lrx/u;

    move-result-object v0

    .line 1083
    :cond_0
    :goto_0
    return-object v0

    .line 1072
    :cond_1
    invoke-static {p1}, Lrx/a/a/b;->a(Lrx/b/a;)Lrx/b/a;

    move-result-object v2

    .line 1074
    new-instance v0, Lrx/a/b/d;

    iget-object v3, p0, Lrx/a/b/c;->a:Landroid/os/Handler;

    invoke-direct {v0, v2, v3}, Lrx/a/b/d;-><init>(Lrx/b/a;Landroid/os/Handler;)V

    .line 1076
    iget-object v2, p0, Lrx/a/b/c;->a:Landroid/os/Handler;

    invoke-static {v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    .line 1077
    iput-object p0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1079
    iget-object v3, p0, Lrx/a/b/c;->a:Landroid/os/Handler;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1081
    iget-boolean v1, p0, Lrx/a/b/c;->c:Z

    if-eqz v1, :cond_0

    .line 1082
    iget-object v1, p0, Lrx/a/b/c;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1083
    invoke-static {}, Lrx/f/f;->b()Lrx/u;

    move-result-object v0

    goto :goto_0
.end method

.method public final isUnsubscribed()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lrx/a/b/c;->c:Z

    return v0
.end method

.method public final unsubscribe()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/a/b/c;->c:Z

    .line 58
    iget-object v0, p0, Lrx/a/b/c;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 59
    return-void
.end method
