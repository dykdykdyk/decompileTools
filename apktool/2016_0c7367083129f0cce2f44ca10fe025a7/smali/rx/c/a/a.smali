.class public final Lrx/c/a/a;
.super Ljava/lang/Object;
.source "BackpressureUtils.java"


# direct methods
.method public static a(Ljava/util/concurrent/atomic/AtomicLong;J)J
    .locals 7

    .prologue
    .line 76
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 1107
    add-long v0, v2, p1

    .line 1108
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gez v4, :cond_1

    .line 1109
    const-wide v0, 0x7fffffffffffffffL

    .line 78
    :cond_1
    invoke-virtual {p0, v2, v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    return-wide v2
.end method
