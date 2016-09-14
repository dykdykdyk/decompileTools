.class final Lrx/c/a/l;
.super Lrx/t;
.source "OperatorMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/t",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/t",
            "<-TR;>;"
        }
    .end annotation
.end field

.field final b:Lrx/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/f",
            "<-TT;+TR;>;"
        }
    .end annotation
.end field

.field c:Z


# direct methods
.method public constructor <init>(Lrx/t;Lrx/b/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/t",
            "<-TR;>;",
            "Lrx/b/f",
            "<-TT;+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Lrx/t;-><init>()V

    .line 57
    iput-object p1, p0, Lrx/c/a/l;->a:Lrx/t;

    .line 58
    iput-object p2, p0, Lrx/c/a/l;->b:Lrx/b/f;

    .line 59
    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lrx/c/a/l;->c:Z

    if-eqz v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lrx/c/a/l;->a:Lrx/t;

    invoke-virtual {v0}, Lrx/t;->onCompleted()V

    goto :goto_0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lrx/c/a/l;->c:Z

    if-eqz v0, :cond_0

    .line 80
    invoke-static {}, Lrx/c/d/g;->a()V

    .line 86
    :goto_0
    return-void

    .line 83
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/c/a/l;->c:Z

    .line 85
    iget-object v0, p0, Lrx/c/a/l;->a:Lrx/t;

    invoke-virtual {v0, p1}, Lrx/t;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 66
    :try_start_0
    iget-object v0, p0, Lrx/c/a/l;->b:Lrx/b/f;

    invoke-interface {v0, p1}, Lrx/b/f;->call(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 74
    iget-object v1, p0, Lrx/c/a/l;->a:Lrx/t;

    invoke-virtual {v1, v0}, Lrx/t;->onNext(Ljava/lang/Object;)V

    .line 75
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    invoke-static {v0}, Lrx/exceptions/e;->a(Ljava/lang/Throwable;)V

    .line 69
    invoke-virtual {p0}, Lrx/c/a/l;->unsubscribe()V

    .line 70
    invoke-static {v0, p1}, Lrx/exceptions/OnErrorThrowable;->a(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/c/a/l;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final setProducer(Lrx/l;)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lrx/c/a/l;->a:Lrx/t;

    invoke-virtual {v0, p1}, Lrx/t;->setProducer(Lrx/l;)V

    .line 100
    return-void
.end method
