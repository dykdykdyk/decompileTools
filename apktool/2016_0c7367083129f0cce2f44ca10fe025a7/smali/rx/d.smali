.class public final Lrx/d;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/f;


# instance fields
.field final synthetic a:Lrx/m;

.field final synthetic b:Lrx/a;


# direct methods
.method public constructor <init>(Lrx/a;Lrx/m;)V
    .locals 0

    .prologue
    .line 2106
    iput-object p1, p0, Lrx/d;->b:Lrx/a;

    iput-object p2, p0, Lrx/d;->a:Lrx/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 2106
    check-cast p1, Lrx/g;

    .line 3111
    iget-object v0, p0, Lrx/d;->a:Lrx/m;

    invoke-virtual {v0}, Lrx/m;->createWorker()Lrx/n;

    move-result-object v0

    .line 3113
    new-instance v1, Lrx/e;

    invoke-direct {v1, p0, p1, v0}, Lrx/e;-><init>(Lrx/d;Lrx/g;Lrx/n;)V

    invoke-virtual {v0, v1}, Lrx/n;->a(Lrx/b/a;)Lrx/u;

    .line 2106
    return-void
.end method
