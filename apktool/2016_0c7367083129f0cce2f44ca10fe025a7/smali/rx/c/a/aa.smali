.class final Lrx/c/a/aa;
.super Lrx/t;
.source "OperatorSubscribeOn.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/t",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Thread;

.field final synthetic b:Lrx/c/a/z;


# direct methods
.method constructor <init>(Lrx/c/a/z;Lrx/t;Ljava/lang/Thread;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lrx/c/a/aa;->b:Lrx/c/a/z;

    iput-object p3, p0, Lrx/c/a/aa;->a:Ljava/lang/Thread;

    invoke-direct {p0, p2}, Lrx/t;-><init>(Lrx/t;)V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 2

    .prologue
    .line 68
    :try_start_0
    iget-object v0, p0, Lrx/c/a/aa;->b:Lrx/c/a/z;

    iget-object v0, v0, Lrx/c/a/z;->a:Lrx/t;

    invoke-virtual {v0}, Lrx/t;->onCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    iget-object v0, p0, Lrx/c/a/aa;->b:Lrx/c/a/z;

    iget-object v0, v0, Lrx/c/a/z;->b:Lrx/n;

    invoke-virtual {v0}, Lrx/n;->unsubscribe()V

    .line 71
    return-void

    .line 70
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/c/a/aa;->b:Lrx/c/a/z;

    iget-object v1, v1, Lrx/c/a/z;->b:Lrx/n;

    invoke-virtual {v1}, Lrx/n;->unsubscribe()V

    throw v0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 59
    :try_start_0
    iget-object v0, p0, Lrx/c/a/aa;->b:Lrx/c/a/z;

    iget-object v0, v0, Lrx/c/a/z;->a:Lrx/t;

    invoke-virtual {v0, p1}, Lrx/t;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    iget-object v0, p0, Lrx/c/a/aa;->b:Lrx/c/a/z;

    iget-object v0, v0, Lrx/c/a/z;->b:Lrx/n;

    invoke-virtual {v0}, Lrx/n;->unsubscribe()V

    .line 62
    return-void

    .line 61
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/c/a/aa;->b:Lrx/c/a/z;

    iget-object v1, v1, Lrx/c/a/z;->b:Lrx/n;

    invoke-virtual {v1}, Lrx/n;->unsubscribe()V

    throw v0
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lrx/c/a/aa;->b:Lrx/c/a/z;

    iget-object v0, v0, Lrx/c/a/z;->a:Lrx/t;

    invoke-virtual {v0, p1}, Lrx/t;->onNext(Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method public final setProducer(Lrx/l;)V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lrx/c/a/aa;->b:Lrx/c/a/z;

    iget-object v0, v0, Lrx/c/a/z;->a:Lrx/t;

    new-instance v1, Lrx/c/a/ab;

    invoke-direct {v1, p0, p1}, Lrx/c/a/ab;-><init>(Lrx/c/a/aa;Lrx/l;)V

    invoke-virtual {v0, v1}, Lrx/t;->setProducer(Lrx/l;)V

    .line 91
    return-void
.end method
