.class final Lrx/c/a/ab;
.super Ljava/lang/Object;
.source "OperatorSubscribeOn.java"

# interfaces
.implements Lrx/l;


# instance fields
.field final synthetic a:Lrx/l;

.field final synthetic b:Lrx/c/a/aa;


# direct methods
.method constructor <init>(Lrx/c/a/aa;Lrx/l;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lrx/c/a/ab;->b:Lrx/c/a/aa;

    iput-object p2, p0, Lrx/c/a/ab;->a:Lrx/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final request(J)V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lrx/c/a/ab;->b:Lrx/c/a/aa;

    iget-object v0, v0, Lrx/c/a/aa;->a:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 80
    iget-object v0, p0, Lrx/c/a/ab;->a:Lrx/l;

    invoke-interface {v0, p1, p2}, Lrx/l;->request(J)V

    .line 89
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lrx/c/a/ab;->b:Lrx/c/a/aa;

    iget-object v0, v0, Lrx/c/a/aa;->b:Lrx/c/a/z;

    iget-object v0, v0, Lrx/c/a/z;->b:Lrx/n;

    new-instance v1, Lrx/c/a/ac;

    invoke-direct {v1, p0, p1, p2}, Lrx/c/a/ac;-><init>(Lrx/c/a/ab;J)V

    invoke-virtual {v0, v1}, Lrx/n;->a(Lrx/b/a;)Lrx/u;

    goto :goto_0
.end method
