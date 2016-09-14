.class final Lrx/c/d/s;
.super Ljava/lang/Object;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements Lrx/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/i",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final b:Lrx/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/f",
            "<",
            "Lrx/b/a;",
            "Lrx/u;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Lrx/b/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lrx/b/f",
            "<",
            "Lrx/b/a;",
            "Lrx/u;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p1, p0, Lrx/c/d/s;->a:Ljava/lang/Object;

    .line 162
    iput-object p2, p0, Lrx/c/d/s;->b:Lrx/b/f;

    .line 163
    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 156
    check-cast p1, Lrx/t;

    .line 1167
    new-instance v0, Lrx/c/d/t;

    iget-object v1, p0, Lrx/c/d/s;->a:Ljava/lang/Object;

    iget-object v2, p0, Lrx/c/d/s;->b:Lrx/b/f;

    invoke-direct {v0, p1, v1, v2}, Lrx/c/d/t;-><init>(Lrx/t;Ljava/lang/Object;Lrx/b/f;)V

    invoke-virtual {p1, v0}, Lrx/t;->setProducer(Lrx/l;)V

    .line 156
    return-void
.end method
