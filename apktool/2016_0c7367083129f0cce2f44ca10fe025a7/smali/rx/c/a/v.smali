.class public final Lrx/c/a/v;
.super Ljava/lang/Object;
.source "OperatorOnErrorResumeNextViaFunction.java"

# interfaces
.implements Lrx/b/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/b/f",
        "<",
        "Ljava/lang/Throwable;",
        "Lrx/h",
        "<+TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/b/f;


# direct methods
.method public constructor <init>(Lrx/b/f;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lrx/c/a/v;->a:Lrx/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    check-cast p1, Ljava/lang/Throwable;

    .line 1053
    iget-object v0, p0, Lrx/c/a/v;->a:Lrx/b/f;

    invoke-interface {v0, p1}, Lrx/b/f;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lrx/h;->a(Ljava/lang/Object;)Lrx/h;

    move-result-object v0

    .line 50
    return-object v0
.end method
