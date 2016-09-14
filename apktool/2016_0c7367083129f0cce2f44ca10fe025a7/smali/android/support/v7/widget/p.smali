.class final Landroid/support/v7/widget/p;
.super Landroid/support/v7/widget/cm;
.source "ActionMenuPresenter.java"


# instance fields
.field final synthetic a:Landroid/support/v7/widget/k;

.field final synthetic b:Landroid/support/v7/widget/o;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/o;Landroid/view/View;Landroid/support/v7/widget/k;)V
    .locals 0

    .prologue
    .line 650
    iput-object p1, p0, Landroid/support/v7/widget/p;->b:Landroid/support/v7/widget/o;

    iput-object p3, p0, Landroid/support/v7/widget/p;->a:Landroid/support/v7/widget/k;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/cm;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/support/v7/view/menu/ak;
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Landroid/support/v7/widget/p;->b:Landroid/support/v7/widget/o;

    iget-object v0, v0, Landroid/support/v7/widget/o;->a:Landroid/support/v7/widget/k;

    invoke-static {v0}, Landroid/support/v7/widget/k;->a(Landroid/support/v7/widget/k;)Landroid/support/v7/widget/q;

    move-result-object v0

    if-nez v0, :cond_0

    .line 654
    const/4 v0, 0x0

    .line 657
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/p;->b:Landroid/support/v7/widget/o;

    iget-object v0, v0, Landroid/support/v7/widget/o;->a:Landroid/support/v7/widget/k;

    invoke-static {v0}, Landroid/support/v7/widget/k;->a(Landroid/support/v7/widget/k;)Landroid/support/v7/widget/q;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/q;->a()Landroid/support/v7/view/menu/ab;

    move-result-object v0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Landroid/support/v7/widget/p;->b:Landroid/support/v7/widget/o;

    iget-object v0, v0, Landroid/support/v7/widget/o;->a:Landroid/support/v7/widget/k;

    invoke-virtual {v0}, Landroid/support/v7/widget/k;->c()Z

    .line 663
    const/4 v0, 0x1

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Landroid/support/v7/widget/p;->b:Landroid/support/v7/widget/o;

    iget-object v0, v0, Landroid/support/v7/widget/o;->a:Landroid/support/v7/widget/k;

    invoke-static {v0}, Landroid/support/v7/widget/k;->b(Landroid/support/v7/widget/k;)Landroid/support/v7/widget/n;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 672
    const/4 v0, 0x0

    .line 676
    :goto_0
    return v0

    .line 675
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/p;->b:Landroid/support/v7/widget/o;

    iget-object v0, v0, Landroid/support/v7/widget/o;->a:Landroid/support/v7/widget/k;

    invoke-virtual {v0}, Landroid/support/v7/widget/k;->d()Z

    .line 676
    const/4 v0, 0x1

    goto :goto_0
.end method
