.class final Lrx/c/a/t;
.super Ljava/lang/Object;
.source "OperatorObserveOn.java"

# interfaces
.implements Lrx/l;


# instance fields
.field final synthetic a:Lrx/c/a/s;


# direct methods
.method constructor <init>(Lrx/c/a/s;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lrx/c/a/t;->a:Lrx/c/a/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final request(J)V
    .locals 3

    .prologue
    .line 145
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 146
    iget-object v0, p0, Lrx/c/a/t;->a:Lrx/c/a/s;

    iget-object v0, v0, Lrx/c/a/s;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lrx/c/a/a;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 147
    iget-object v0, p0, Lrx/c/a/t;->a:Lrx/c/a/s;

    invoke-virtual {v0}, Lrx/c/a/s;->a()V

    .line 149
    :cond_0
    return-void
.end method
