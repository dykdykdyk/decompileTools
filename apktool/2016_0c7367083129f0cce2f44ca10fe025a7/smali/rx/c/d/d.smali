.class public final Lrx/c/d/d;
.super Lrx/t;
.source "ObserverSubscriber.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/t",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/k",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/k",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Lrx/t;-><init>()V

    .line 29
    iput-object p1, p0, Lrx/c/d/d;->a:Lrx/k;

    .line 30
    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lrx/c/d/d;->a:Lrx/k;

    invoke-interface {v0}, Lrx/k;->onCompleted()V

    .line 45
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lrx/c/d/d;->a:Lrx/k;

    invoke-interface {v0, p1}, Lrx/k;->onError(Ljava/lang/Throwable;)V

    .line 40
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
    .line 34
    iget-object v0, p0, Lrx/c/d/d;->a:Lrx/k;

    invoke-interface {v0, p1}, Lrx/k;->onNext(Ljava/lang/Object;)V

    .line 35
    return-void
.end method
