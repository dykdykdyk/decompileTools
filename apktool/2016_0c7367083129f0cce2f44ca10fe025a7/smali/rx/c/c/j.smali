.class final Lrx/c/c/j;
.super Ljava/lang/Object;
.source "EventLoopsScheduler.java"

# interfaces
.implements Lrx/b/a;


# instance fields
.field final synthetic a:Lrx/b/a;

.field final synthetic b:Lrx/c/c/i;


# direct methods
.method constructor <init>(Lrx/c/c/i;Lrx/b/a;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lrx/c/c/j;->b:Lrx/c/c/i;

    iput-object p2, p0, Lrx/c/c/j;->a:Lrx/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lrx/c/c/j;->b:Lrx/c/c/i;

    invoke-virtual {v0}, Lrx/c/c/i;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lrx/c/c/j;->a:Lrx/b/a;

    invoke-interface {v0}, Lrx/b/a;->call()V

    goto :goto_0
.end method
