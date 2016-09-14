.class final Lrx/c/a/j;
.super Lrx/t;
.source "OperatorDoOnEach.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/t",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/t;

.field final synthetic b:Lrx/c/a/i;

.field private c:Z


# direct methods
.method constructor <init>(Lrx/c/a/i;Lrx/t;Lrx/t;)V
    .locals 1

    .prologue
    .line 37
    iput-object p1, p0, Lrx/c/a/j;->b:Lrx/c/a/i;

    iput-object p3, p0, Lrx/c/a/j;->a:Lrx/t;

    invoke-direct {p0, p2}, Lrx/t;-><init>(Lrx/t;)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/c/a/j;->c:Z

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lrx/c/a/j;->c:Z

    if-eqz v0, :cond_0

    .line 55
    :goto_0
    return-void

    .line 47
    :cond_0
    :try_start_0
    iget-object v0, p0, Lrx/c/a/j;->b:Lrx/c/a/i;

    iget-object v0, v0, Lrx/c/a/i;->a:Lrx/k;

    invoke-interface {v0}, Lrx/k;->onCompleted()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/c/a/j;->c:Z

    .line 54
    iget-object v0, p0, Lrx/c/a/j;->a:Lrx/t;

    invoke-virtual {v0}, Lrx/t;->onCompleted()V

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    invoke-static {v0, p0}, Lrx/exceptions/e;->a(Ljava/lang/Throwable;Lrx/k;)V

    goto :goto_0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 60
    invoke-static {p1}, Lrx/exceptions/e;->a(Ljava/lang/Throwable;)V

    .line 61
    iget-boolean v0, p0, Lrx/c/a/j;->c:Z

    if-eqz v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 64
    :cond_0
    iput-boolean v5, p0, Lrx/c/a/j;->c:Z

    .line 66
    :try_start_0
    iget-object v0, p0, Lrx/c/a/j;->b:Lrx/c/a/i;

    iget-object v0, v0, Lrx/c/a/i;->a:Lrx/k;

    invoke-interface {v0, p1}, Lrx/k;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    iget-object v0, p0, Lrx/c/a/j;->a:Lrx/t;

    invoke-virtual {v0, p1}, Lrx/t;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    invoke-static {v0}, Lrx/exceptions/e;->a(Ljava/lang/Throwable;)V

    .line 69
    iget-object v1, p0, Lrx/c/a/j;->a:Lrx/t;

    new-instance v2, Lrx/exceptions/CompositeException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    aput-object p1, v3, v4

    aput-object v0, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0, v4}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;B)V

    invoke-virtual {v1, v2}, Lrx/t;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 77
    iget-boolean v0, p0, Lrx/c/a/j;->c:Z

    if-eqz v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 81
    :cond_0
    :try_start_0
    iget-object v0, p0, Lrx/c/a/j;->b:Lrx/c/a/i;

    iget-object v0, v0, Lrx/c/a/i;->a:Lrx/k;

    invoke-interface {v0, p1}, Lrx/k;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    iget-object v0, p0, Lrx/c/a/j;->a:Lrx/t;

    invoke-virtual {v0, p1}, Lrx/t;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    invoke-static {v0, p0, p1}, Lrx/exceptions/e;->a(Ljava/lang/Throwable;Lrx/k;Ljava/lang/Object;)V

    goto :goto_0
.end method
