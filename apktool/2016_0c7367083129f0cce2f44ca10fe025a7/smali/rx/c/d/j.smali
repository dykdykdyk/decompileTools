.class final Lrx/c/d/j;
.super Lrx/c/d/b;
.source "RxRingBuffer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/c/d/b",
        "<",
        "Ljava/util/Queue",
        "<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 290
    invoke-direct {p0}, Lrx/c/d/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic c()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1294
    new-instance v0, Lrx/c/d/b/j;

    sget v1, Lrx/c/d/h;->d:I

    invoke-direct {v0, v1}, Lrx/c/d/b/j;-><init>(I)V

    .line 290
    return-object v0
.end method
