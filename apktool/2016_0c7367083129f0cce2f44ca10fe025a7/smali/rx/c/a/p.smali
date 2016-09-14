.class final Lrx/c/a/p;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "OperatorMerge.java"

# interfaces
.implements Lrx/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lrx/l;"
    }
.end annotation


# instance fields
.field final a:Lrx/c/a/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/a/q",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/c/a/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/a/q",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 122
    iput-object p1, p0, Lrx/c/a/p;->a:Lrx/c/a/q;

    .line 123
    return-void
.end method


# virtual methods
.method public final request(J)V
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 127
    cmp-long v0, p1, v2

    if-lez v0, :cond_2

    .line 128
    invoke-virtual {p0}, Lrx/c/a/p;->get()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    invoke-static {p0, p1, p2}, Lrx/c/a/a;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 132
    iget-object v0, p0, Lrx/c/a/p;->a:Lrx/c/a/q;

    invoke-virtual {v0}, Lrx/c/a/q;->b()V

    goto :goto_0

    .line 134
    :cond_2
    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n >= 0 required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
