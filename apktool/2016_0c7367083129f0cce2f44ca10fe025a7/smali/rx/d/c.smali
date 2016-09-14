.class public final Lrx/d/c;
.super Lrx/t;
.source "Subscribers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/t",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/t;


# direct methods
.method public constructor <init>(Lrx/t;Lrx/t;)V
    .locals 0

    .prologue
    .line 221
    iput-object p2, p0, Lrx/d/c;->a:Lrx/t;

    invoke-direct {p0, p1}, Lrx/t;-><init>(Lrx/t;)V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lrx/d/c;->a:Lrx/t;

    invoke-virtual {v0}, Lrx/t;->onCompleted()V

    .line 226
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lrx/d/c;->a:Lrx/t;

    invoke-virtual {v0, p1}, Lrx/t;->onError(Ljava/lang/Throwable;)V

    .line 231
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
    .line 235
    iget-object v0, p0, Lrx/d/c;->a:Lrx/t;

    invoke-virtual {v0, p1}, Lrx/t;->onNext(Ljava/lang/Object;)V

    .line 236
    return-void
.end method
