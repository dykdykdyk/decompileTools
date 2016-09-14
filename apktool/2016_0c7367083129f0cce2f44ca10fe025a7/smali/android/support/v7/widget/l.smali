.class final Landroid/support/v7/widget/l;
.super Landroid/support/v7/view/menu/ac;
.source "ActionMenuPresenter.java"


# instance fields
.field final synthetic d:Landroid/support/v7/widget/k;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/k;Landroid/content/Context;Landroid/support/v7/view/menu/an;Landroid/view/View;)V
    .locals 6

    .prologue
    .line 745
    iput-object p1, p0, Landroid/support/v7/widget/l;->d:Landroid/support/v7/widget/k;

    .line 746
    const/4 v4, 0x0

    sget v5, Landroid/support/v7/appcompat/R$attr;->actionOverflowMenuStyle:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/view/menu/ac;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/o;Landroid/view/View;ZI)V

    .line 748
    invoke-virtual {p3}, Landroid/support/v7/view/menu/an;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/s;

    .line 749
    invoke-virtual {v0}, Landroid/support/v7/view/menu/s;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 751
    invoke-static {p1}, Landroid/support/v7/widget/k;->e(Landroid/support/v7/widget/k;)Landroid/support/v7/widget/o;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/support/v7/widget/k;->f(Landroid/support/v7/widget/k;)Landroid/support/v7/view/menu/ag;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1099
    :goto_0
    iput-object v0, p0, Landroid/support/v7/view/menu/ac;->a:Landroid/view/View;

    .line 754
    :cond_0
    iget-object v0, p1, Landroid/support/v7/widget/k;->p:Landroid/support/v7/widget/r;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/l;->a(Landroid/support/v7/view/menu/af;)V

    .line 755
    return-void

    .line 751
    :cond_1
    invoke-static {p1}, Landroid/support/v7/widget/k;->e(Landroid/support/v7/widget/k;)Landroid/support/v7/widget/o;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected final d()V
    .locals 2

    .prologue
    .line 759
    iget-object v0, p0, Landroid/support/v7/widget/l;->d:Landroid/support/v7/widget/k;

    invoke-static {v0}, Landroid/support/v7/widget/k;->g(Landroid/support/v7/widget/k;)Landroid/support/v7/widget/l;

    .line 760
    iget-object v0, p0, Landroid/support/v7/widget/l;->d:Landroid/support/v7/widget/k;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/widget/k;->q:I

    .line 762
    invoke-super {p0}, Landroid/support/v7/view/menu/ac;->d()V

    .line 763
    return-void
.end method
