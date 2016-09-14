.class public abstract Lrx/s;
.super Ljava/lang/Object;
.source "SingleSubscriber.java"

# interfaces
.implements Lrx/u;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/u;"
    }
.end annotation


# instance fields
.field public final d:Lrx/c/d/v;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lrx/c/d/v;

    invoke-direct {v0}, Lrx/c/d/v;-><init>()V

    iput-object v0, p0, Lrx/s;->d:Lrx/c/d/v;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Throwable;)V
.end method

.method public final isUnsubscribed()Z
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lrx/s;->d:Lrx/c/d/v;

    invoke-virtual {v0}, Lrx/c/d/v;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public final unsubscribe()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lrx/s;->d:Lrx/c/d/v;

    invoke-virtual {v0}, Lrx/c/d/v;->unsubscribe()V

    .line 75
    return-void
.end method
