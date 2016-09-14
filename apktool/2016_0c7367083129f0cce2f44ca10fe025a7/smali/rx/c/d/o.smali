.class final Lrx/c/d/o;
.super Ljava/lang/Object;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements Lrx/b/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/b/f",
        "<",
        "Lrx/b/a;",
        "Lrx/u;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/m;

.field final synthetic b:Lrx/c/d/m;


# direct methods
.method constructor <init>(Lrx/c/d/m;Lrx/m;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lrx/c/d/o;->b:Lrx/c/d/m;

    iput-object p2, p0, Lrx/c/d/o;->a:Lrx/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 114
    check-cast p1, Lrx/b/a;

    .line 1117
    iget-object v0, p0, Lrx/c/d/o;->a:Lrx/m;

    invoke-virtual {v0}, Lrx/m;->createWorker()Lrx/n;

    move-result-object v0

    .line 1118
    new-instance v1, Lrx/c/d/p;

    invoke-direct {v1, p0, p1, v0}, Lrx/c/d/p;-><init>(Lrx/c/d/o;Lrx/b/a;Lrx/n;)V

    invoke-virtual {v0, v1}, Lrx/n;->a(Lrx/b/a;)Lrx/u;

    .line 114
    return-object v0
.end method
