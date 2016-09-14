.class final Landroid/support/v7/widget/n;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/k;

.field private b:Landroid/support/v7/widget/q;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/k;Landroid/support/v7/widget/q;)V
    .locals 0

    .prologue
    .line 791
    iput-object p1, p0, Landroid/support/v7/widget/n;->a:Landroid/support/v7/widget/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 792
    iput-object p2, p0, Landroid/support/v7/widget/n;->b:Landroid/support/v7/widget/q;

    .line 793
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 796
    iget-object v0, p0, Landroid/support/v7/widget/n;->a:Landroid/support/v7/widget/k;

    invoke-static {v0}, Landroid/support/v7/widget/k;->h(Landroid/support/v7/widget/k;)Landroid/support/v7/view/menu/o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Landroid/support/v7/widget/n;->a:Landroid/support/v7/widget/k;

    invoke-static {v0}, Landroid/support/v7/widget/k;->i(Landroid/support/v7/widget/k;)Landroid/support/v7/view/menu/o;

    move-result-object v0

    .line 1817
    iget-object v1, v0, Landroid/support/v7/view/menu/o;->b:Landroid/support/v7/view/menu/p;

    if-eqz v1, :cond_0

    .line 1818
    iget-object v1, v0, Landroid/support/v7/view/menu/o;->b:Landroid/support/v7/view/menu/p;

    invoke-interface {v1, v0}, Landroid/support/v7/view/menu/p;->a(Landroid/support/v7/view/menu/o;)V

    .line 799
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/n;->a:Landroid/support/v7/widget/k;

    invoke-static {v0}, Landroid/support/v7/widget/k;->j(Landroid/support/v7/widget/k;)Landroid/support/v7/view/menu/ag;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 800
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/n;->b:Landroid/support/v7/widget/q;

    invoke-virtual {v0}, Landroid/support/v7/widget/q;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 801
    iget-object v0, p0, Landroid/support/v7/widget/n;->a:Landroid/support/v7/widget/k;

    iget-object v1, p0, Landroid/support/v7/widget/n;->b:Landroid/support/v7/widget/q;

    invoke-static {v0, v1}, Landroid/support/v7/widget/k;->a(Landroid/support/v7/widget/k;Landroid/support/v7/widget/q;)Landroid/support/v7/widget/q;

    .line 803
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/n;->a:Landroid/support/v7/widget/k;

    invoke-static {v0}, Landroid/support/v7/widget/k;->k(Landroid/support/v7/widget/k;)Landroid/support/v7/widget/n;

    .line 804
    return-void
.end method
