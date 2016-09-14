.class public final Lrx/c/a/m;
.super Ljava/lang/Object;
.source "OperatorMerge.java"

# interfaces
.implements Lrx/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/j",
        "<TT;",
        "Lrx/h",
        "<+TT;>;>;"
    }
.end annotation


# instance fields
.field final a:Z

.field final b:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/c/a/m;->a:Z

    .line 100
    const v0, 0x7fffffff

    iput v0, p0, Lrx/c/a/m;->b:I

    .line 101
    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 55
    check-cast p1, Lrx/t;

    .line 1105
    new-instance v0, Lrx/c/a/q;

    iget-boolean v1, p0, Lrx/c/a/m;->a:Z

    iget v2, p0, Lrx/c/a/m;->b:I

    invoke-direct {v0, p1, v1, v2}, Lrx/c/a/q;-><init>(Lrx/t;ZI)V

    .line 1106
    new-instance v1, Lrx/c/a/p;

    invoke-direct {v1, v0}, Lrx/c/a/p;-><init>(Lrx/c/a/q;)V

    .line 1107
    iput-object v1, v0, Lrx/c/a/q;->d:Lrx/c/a/p;

    .line 1109
    invoke-virtual {p1, v0}, Lrx/t;->add(Lrx/u;)V

    .line 1110
    invoke-virtual {p1, v1}, Lrx/t;->setProducer(Lrx/l;)V

    .line 55
    return-object v0
.end method
