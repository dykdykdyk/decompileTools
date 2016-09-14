.class final Lrx/c/d/q;
.super Ljava/lang/Object;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements Lrx/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/i",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/b/f;

.field final synthetic b:Lrx/c/d/m;


# direct methods
.method constructor <init>(Lrx/c/d/m;Lrx/b/f;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lrx/c/d/q;->b:Lrx/c/d/m;

    iput-object p2, p0, Lrx/c/d/q;->a:Lrx/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 236
    check-cast p1, Lrx/t;

    .line 1239
    iget-object v0, p0, Lrx/c/d/q;->a:Lrx/b/f;

    iget-object v1, p0, Lrx/c/d/q;->b:Lrx/c/d/m;

    iget-object v1, v1, Lrx/c/d/m;->e:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lrx/b/f;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/h;

    .line 1240
    instance-of v1, v0, Lrx/c/d/m;

    if-eqz v1, :cond_0

    .line 1241
    check-cast v0, Lrx/c/d/m;

    iget-object v0, v0, Lrx/c/d/m;->e:Ljava/lang/Object;

    invoke-static {p1, v0}, Lrx/c/d/m;->a(Lrx/t;Ljava/lang/Object;)Lrx/l;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/t;->setProducer(Lrx/l;)V

    :goto_0
    return-void

    .line 2221
    :cond_0
    new-instance v1, Lrx/d/c;

    invoke-direct {v1, p1, p1}, Lrx/d/c;-><init>(Lrx/t;Lrx/t;)V

    .line 1243
    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/t;)Lrx/u;

    goto :goto_0
.end method
