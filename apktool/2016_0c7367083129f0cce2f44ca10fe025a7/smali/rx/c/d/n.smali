.class final Lrx/c/d/n;
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
.field final synthetic a:Lrx/c/c/h;

.field final synthetic b:Lrx/c/d/m;


# direct methods
.method constructor <init>(Lrx/c/d/m;Lrx/c/c/h;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lrx/c/d/n;->b:Lrx/c/d/m;

    iput-object p2, p0, Lrx/c/d/n;->a:Lrx/c/c/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 107
    check-cast p1, Lrx/b/a;

    .line 1110
    iget-object v0, p0, Lrx/c/d/n;->a:Lrx/c/c/h;

    .line 1133
    iget-object v0, v0, Lrx/c/c/h;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/c/c/k;

    invoke-virtual {v0}, Lrx/c/c/k;->a()Lrx/c/c/l;

    move-result-object v0

    .line 1134
    const-wide/16 v2, -0x1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, v2, v3, v1}, Lrx/c/c/l;->a(Lrx/b/a;JLjava/util/concurrent/TimeUnit;)Lrx/c/c/u;

    move-result-object v0

    .line 107
    return-object v0
.end method
