.class final Lrx/c/a/z;
.super Ljava/lang/Object;
.source "OperatorSubscribeOn.java"

# interfaces
.implements Lrx/b/a;


# instance fields
.field final synthetic a:Lrx/t;

.field final synthetic b:Lrx/n;

.field final synthetic c:Lrx/c/a/y;


# direct methods
.method constructor <init>(Lrx/c/a/y;Lrx/t;Lrx/n;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lrx/c/a/z;->c:Lrx/c/a/y;

    iput-object p2, p0, Lrx/c/a/z;->a:Lrx/t;

    iput-object p3, p0, Lrx/c/a/z;->b:Lrx/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()V
    .locals 3

    .prologue
    .line 48
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 50
    new-instance v1, Lrx/c/a/aa;

    iget-object v2, p0, Lrx/c/a/z;->a:Lrx/t;

    invoke-direct {v1, p0, v2, v0}, Lrx/c/a/aa;-><init>(Lrx/c/a/z;Lrx/t;Ljava/lang/Thread;)V

    .line 94
    iget-object v0, p0, Lrx/c/a/z;->c:Lrx/c/a/y;

    iget-object v0, v0, Lrx/c/a/y;->b:Lrx/h;

    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/t;)Lrx/u;

    .line 95
    return-void
.end method
