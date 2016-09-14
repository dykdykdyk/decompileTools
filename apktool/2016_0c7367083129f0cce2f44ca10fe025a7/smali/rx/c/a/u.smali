.class public final Lrx/c/a/u;
.super Ljava/lang/Object;
.source "OperatorOnErrorResumeNextViaFunction.java"

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
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/f",
            "<",
            "Ljava/lang/Throwable;",
            "+",
            "Lrx/h",
            "<+TT;>;>;"
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
            "<",
            "Ljava/lang/Throwable;",
            "+",
            "Lrx/h",
            "<+TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lrx/c/a/u;->a:Lrx/b/f;

    .line 81
    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 45
    check-cast p1, Lrx/t;

    .line 1085
    new-instance v0, Lrx/c/b/a;

    invoke-direct {v0}, Lrx/c/b/a;-><init>()V

    .line 1087
    new-instance v1, Lrx/f/d;

    invoke-direct {v1}, Lrx/f/d;-><init>()V

    .line 1089
    new-instance v2, Lrx/c/a/w;

    invoke-direct {v2, p0, p1, v0, v1}, Lrx/c/a/w;-><init>(Lrx/c/a/u;Lrx/t;Lrx/c/b/a;Lrx/f/d;)V

    .line 1163
    invoke-virtual {v1, v2}, Lrx/f/d;->a(Lrx/u;)V

    .line 1165
    invoke-virtual {p1, v1}, Lrx/t;->add(Lrx/u;)V

    .line 1166
    invoke-virtual {p1, v0}, Lrx/t;->setProducer(Lrx/l;)V

    .line 45
    return-object v2
.end method
