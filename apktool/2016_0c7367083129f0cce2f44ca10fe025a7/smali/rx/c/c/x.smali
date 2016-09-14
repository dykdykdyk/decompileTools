.class final Lrx/c/c/x;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "ScheduledAction.java"

# interfaces
.implements Lrx/u;


# instance fields
.field final a:Lrx/c/c/u;

.field final b:Lrx/c/d/v;


# direct methods
.method public constructor <init>(Lrx/c/c/u;Lrx/c/d/v;)V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 185
    iput-object p1, p0, Lrx/c/c/x;->a:Lrx/c/c/u;

    .line 186
    iput-object p2, p0, Lrx/c/c/x;->b:Lrx/c/d/v;

    .line 187
    return-void
.end method


# virtual methods
.method public final isUnsubscribed()Z
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lrx/c/c/x;->a:Lrx/c/c/u;

    invoke-virtual {v0}, Lrx/c/c/u;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public final unsubscribe()V
    .locals 4

    .prologue
    .line 196
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lrx/c/c/x;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    iget-object v1, p0, Lrx/c/c/x;->b:Lrx/c/d/v;

    iget-object v0, p0, Lrx/c/c/x;->a:Lrx/c/c/u;

    .line 1080
    iget-boolean v2, v1, Lrx/c/d/v;->b:Z

    if-nez v2, :cond_1

    .line 1082
    monitor-enter v1

    .line 1083
    :try_start_0
    iget-object v2, v1, Lrx/c/d/v;->a:Ljava/util/LinkedList;

    .line 1084
    iget-boolean v3, v1, Lrx/c/d/v;->b:Z

    if-nez v3, :cond_0

    if-nez v2, :cond_2

    .line 1085
    :cond_0
    monitor-exit v1

    :cond_1
    :goto_0
    return-void

    .line 1087
    :cond_2
    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 1088
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1089
    if-eqz v2, :cond_1

    .line 1091
    invoke-interface {v0}, Lrx/u;->unsubscribe()V

    goto :goto_0

    .line 1088
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
