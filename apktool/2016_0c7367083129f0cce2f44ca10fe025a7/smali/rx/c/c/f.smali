.class final Lrx/c/c/f;
.super Ljava/lang/Object;
.source "CachedThreadScheduler.java"

# interfaces
.implements Lrx/b/a;


# instance fields
.field final synthetic a:Lrx/b/a;

.field final synthetic b:Lrx/c/c/e;


# direct methods
.method constructor <init>(Lrx/c/c/e;Lrx/b/a;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lrx/c/c/f;->b:Lrx/c/c/e;

    iput-object p2, p0, Lrx/c/c/f;->a:Lrx/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lrx/c/c/f;->b:Lrx/c/c/e;

    invoke-virtual {v0}, Lrx/c/c/e;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lrx/c/c/f;->a:Lrx/b/a;

    invoke-interface {v0}, Lrx/b/a;->call()V

    goto :goto_0
.end method
