.class final Lrx/c/c/g;
.super Lrx/c/c/s;
.source "CachedThreadScheduler.java"


# instance fields
.field a:J


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 2

    .prologue
    .line 233
    invoke-direct {p0, p1}, Lrx/c/c/s;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 234
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lrx/c/c/g;->a:J

    .line 235
    return-void
.end method
