.class final Lrx/c/d/p;
.super Ljava/lang/Object;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements Lrx/b/a;


# instance fields
.field final synthetic a:Lrx/b/a;

.field final synthetic b:Lrx/n;

.field final synthetic c:Lrx/c/d/o;


# direct methods
.method constructor <init>(Lrx/c/d/o;Lrx/b/a;Lrx/n;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lrx/c/d/p;->c:Lrx/c/d/o;

    iput-object p2, p0, Lrx/c/d/p;->a:Lrx/b/a;

    iput-object p3, p0, Lrx/c/d/p;->b:Lrx/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()V
    .locals 2

    .prologue
    .line 122
    :try_start_0
    iget-object v0, p0, Lrx/c/d/p;->a:Lrx/b/a;

    invoke-interface {v0}, Lrx/b/a;->call()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    iget-object v0, p0, Lrx/c/d/p;->b:Lrx/n;

    invoke-virtual {v0}, Lrx/n;->unsubscribe()V

    .line 125
    return-void

    .line 124
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/c/d/p;->b:Lrx/n;

    invoke-virtual {v1}, Lrx/n;->unsubscribe()V

    throw v0
.end method
