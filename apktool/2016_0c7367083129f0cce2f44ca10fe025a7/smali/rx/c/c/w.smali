.class final Lrx/c/c/w;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "ScheduledAction.java"

# interfaces
.implements Lrx/u;


# instance fields
.field final a:Lrx/c/c/u;

.field final b:Lrx/f/c;


# direct methods
.method public constructor <init>(Lrx/c/c/u;Lrx/f/c;)V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 160
    iput-object p1, p0, Lrx/c/c/w;->a:Lrx/c/c/u;

    .line 161
    iput-object p2, p0, Lrx/c/c/w;->b:Lrx/f/c;

    .line 162
    return-void
.end method


# virtual methods
.method public final isUnsubscribed()Z
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lrx/c/c/w;->a:Lrx/c/c/u;

    invoke-virtual {v0}, Lrx/c/c/u;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public final unsubscribe()V
    .locals 2

    .prologue
    .line 171
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lrx/c/c/w;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lrx/c/c/w;->b:Lrx/f/c;

    iget-object v1, p0, Lrx/c/c/w;->a:Lrx/c/c/u;

    invoke-virtual {v0, v1}, Lrx/f/c;->b(Lrx/u;)V

    .line 174
    :cond_0
    return-void
.end method
