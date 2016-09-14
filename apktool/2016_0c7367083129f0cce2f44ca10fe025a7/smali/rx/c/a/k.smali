.class public final Lrx/c/a/k;
.super Ljava/lang/Object;
.source "OperatorMap.java"

# interfaces
.implements Lrx/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/j",
        "<TR;TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/f",
            "<-TT;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/b/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/f",
            "<-TT;+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lrx/c/a/k;->a:Lrx/b/f;

    .line 39
    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 33
    check-cast p1, Lrx/t;

    .line 1043
    new-instance v0, Lrx/c/a/l;

    iget-object v1, p0, Lrx/c/a/k;->a:Lrx/b/f;

    invoke-direct {v0, p1, v1}, Lrx/c/a/l;-><init>(Lrx/t;Lrx/b/f;)V

    .line 1044
    invoke-virtual {p1, v0}, Lrx/t;->add(Lrx/u;)V

    .line 33
    return-object v0
.end method
