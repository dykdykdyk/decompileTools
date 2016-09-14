.class final Lrx/q;
.super Lrx/s;
.source "Single.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/s",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/c/b/c;

.field final synthetic b:Lrx/t;

.field final synthetic c:Lrx/p;


# direct methods
.method constructor <init>(Lrx/p;Lrx/c/b/c;Lrx/t;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lrx/q;->c:Lrx/p;

    iput-object p2, p0, Lrx/q;->a:Lrx/c/b/c;

    iput-object p3, p0, Lrx/q;->b:Lrx/t;

    invoke-direct {p0}, Lrx/s;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 84
    iget-object v0, p0, Lrx/q;->a:Lrx/c/b/c;

    .line 1076
    :cond_0
    invoke-virtual {v0}, Lrx/c/b/c;->get()I

    move-result v1

    .line 1077
    if-nez v1, :cond_2

    .line 1078
    iput-object p1, v0, Lrx/c/b/c;->b:Ljava/lang/Object;

    .line 1079
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lrx/c/b/c;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    :cond_1
    :goto_0
    return-void

    .line 1083
    :cond_2
    if-ne v1, v3, :cond_1

    .line 1084
    const/4 v1, 0x3

    invoke-virtual {v0, v3, v1}, Lrx/c/b/c;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1085
    iget-object v0, v0, Lrx/c/b/c;->a:Lrx/t;

    invoke-static {v0, p1}, Lrx/c/b/c;->a(Lrx/t;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lrx/q;->b:Lrx/t;

    invoke-virtual {v0, p1}, Lrx/t;->onError(Ljava/lang/Throwable;)V

    .line 90
    return-void
.end method
