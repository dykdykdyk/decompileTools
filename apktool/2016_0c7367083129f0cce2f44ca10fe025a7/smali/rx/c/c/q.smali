.class final Lrx/c/c/q;
.super Lrx/n;
.source "ImmediateScheduler.java"

# interfaces
.implements Lrx/u;


# instance fields
.field final a:Lrx/f/a;

.field final synthetic b:Lrx/c/c/p;


# direct methods
.method constructor <init>(Lrx/c/c/p;)V
    .locals 1

    .prologue
    .line 44
    iput-object p1, p0, Lrx/c/c/q;->b:Lrx/c/c/p;

    invoke-direct {p0}, Lrx/n;-><init>()V

    .line 42
    new-instance v0, Lrx/f/a;

    invoke-direct {v0}, Lrx/f/a;-><init>()V

    iput-object v0, p0, Lrx/c/c/q;->a:Lrx/f/a;

    .line 45
    return-void
.end method


# virtual methods
.method public final a(Lrx/b/a;)Lrx/u;
    .locals 1

    .prologue
    .line 57
    invoke-interface {p1}, Lrx/b/a;->call()V

    .line 58
    invoke-static {}, Lrx/f/f;->b()Lrx/u;

    move-result-object v0

    return-object v0
.end method

.method public final isUnsubscribed()Z
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lrx/c/c/q;->a:Lrx/f/a;

    invoke-virtual {v0}, Lrx/f/a;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public final unsubscribe()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lrx/c/c/q;->a:Lrx/f/a;

    invoke-virtual {v0}, Lrx/f/a;->unsubscribe()V

    .line 64
    return-void
.end method
