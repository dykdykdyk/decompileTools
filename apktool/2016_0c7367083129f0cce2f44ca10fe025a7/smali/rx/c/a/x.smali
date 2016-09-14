.class final Lrx/c/a/x;
.super Lrx/t;
.source "OperatorOnErrorResumeNextViaFunction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/t",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/c/a/w;


# direct methods
.method constructor <init>(Lrx/c/a/w;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lrx/c/a/x;->a:Lrx/c/a/w;

    invoke-direct {p0}, Lrx/t;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lrx/c/a/x;->a:Lrx/c/a/w;

    iget-object v0, v0, Lrx/c/a/w;->b:Lrx/t;

    invoke-virtual {v0}, Lrx/t;->onCompleted()V

    .line 127
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lrx/c/a/x;->a:Lrx/c/a/w;

    iget-object v0, v0, Lrx/c/a/w;->b:Lrx/t;

    invoke-virtual {v0, p1}, Lrx/t;->onError(Ljava/lang/Throwable;)V

    .line 123
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lrx/c/a/x;->a:Lrx/c/a/w;

    iget-object v0, v0, Lrx/c/a/w;->b:Lrx/t;

    invoke-virtual {v0, p1}, Lrx/t;->onNext(Ljava/lang/Object;)V

    .line 119
    return-void
.end method

.method public final setProducer(Lrx/l;)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lrx/c/a/x;->a:Lrx/c/a/w;

    iget-object v0, v0, Lrx/c/a/w;->c:Lrx/c/b/a;

    invoke-virtual {v0, p1}, Lrx/c/b/a;->a(Lrx/l;)V

    .line 131
    return-void
.end method
