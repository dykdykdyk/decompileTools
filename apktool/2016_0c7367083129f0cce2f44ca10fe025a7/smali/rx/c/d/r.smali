.class final Lrx/c/d/r;
.super Ljava/lang/Object;
.source "ScalarSynchronousObservable.java"

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
.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p1, p0, Lrx/c/d/r;->a:Ljava/lang/Object;

    .line 142
    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 137
    check-cast p1, Lrx/t;

    .line 1146
    iget-object v0, p0, Lrx/c/d/r;->a:Ljava/lang/Object;

    invoke-static {p1, v0}, Lrx/c/d/m;->a(Lrx/t;Ljava/lang/Object;)Lrx/l;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/t;->setProducer(Lrx/l;)V

    .line 137
    return-void
.end method
