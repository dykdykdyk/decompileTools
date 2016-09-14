.class final Lrx/p;
.super Ljava/lang/Object;
.source "Single.java"

# interfaces
.implements Lrx/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/i",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/r;

.field final synthetic b:Lrx/o;


# direct methods
.method constructor <init>(Lrx/o;Lrx/r;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lrx/p;->b:Lrx/o;

    iput-object p2, p0, Lrx/p;->a:Lrx/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 74
    check-cast p1, Lrx/t;

    .line 1078
    new-instance v0, Lrx/c/b/c;

    invoke-direct {v0, p1}, Lrx/c/b/c;-><init>(Lrx/t;)V

    .line 1079
    invoke-virtual {p1, v0}, Lrx/t;->setProducer(Lrx/l;)V

    .line 1080
    new-instance v1, Lrx/q;

    invoke-direct {v1, p0, v0, p1}, Lrx/q;-><init>(Lrx/p;Lrx/c/b/c;Lrx/t;)V

    .line 1093
    invoke-virtual {p1, v1}, Lrx/t;->add(Lrx/u;)V

    .line 1094
    iget-object v0, p0, Lrx/p;->a:Lrx/r;

    invoke-interface {v0, v1}, Lrx/r;->call(Ljava/lang/Object;)V

    .line 74
    return-void
.end method
