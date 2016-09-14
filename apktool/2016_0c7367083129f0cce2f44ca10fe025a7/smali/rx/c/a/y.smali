.class public final Lrx/c/a/y;
.super Ljava/lang/Object;
.source "OperatorSubscribeOn.java"

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
.field final a:Lrx/m;

.field final b:Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/h",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/h;Lrx/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/h",
            "<TT;>;",
            "Lrx/m;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lrx/c/a/y;->a:Lrx/m;

    .line 37
    iput-object p1, p0, Lrx/c/a/y;->b:Lrx/h;

    .line 38
    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 30
    check-cast p1, Lrx/t;

    .line 1042
    iget-object v0, p0, Lrx/c/a/y;->a:Lrx/m;

    invoke-virtual {v0}, Lrx/m;->createWorker()Lrx/n;

    move-result-object v0

    .line 1043
    invoke-virtual {p1, v0}, Lrx/t;->add(Lrx/u;)V

    .line 1045
    new-instance v1, Lrx/c/a/z;

    invoke-direct {v1, p0, p1, v0}, Lrx/c/a/z;-><init>(Lrx/c/a/y;Lrx/t;Lrx/n;)V

    invoke-virtual {v0, v1}, Lrx/n;->a(Lrx/b/a;)Lrx/u;

    .line 30
    return-void
.end method
