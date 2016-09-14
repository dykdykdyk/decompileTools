.class final Landroid/support/v7/widget/q;
.super Landroid/support/v7/view/menu/ac;
.source "ActionMenuPresenter.java"


# instance fields
.field final synthetic d:Landroid/support/v7/widget/k;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/k;Landroid/content/Context;Landroid/support/v7/view/menu/o;Landroid/view/View;)V
    .locals 6

    .prologue
    .line 727
    iput-object p1, p0, Landroid/support/v7/widget/q;->d:Landroid/support/v7/widget/k;

    .line 728
    const/4 v4, 0x1

    sget v5, Landroid/support/v7/appcompat/R$attr;->actionOverflowMenuStyle:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/view/menu/ac;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/o;Landroid/view/View;ZI)V

    .line 1126
    const v0, 0x800005

    iput v0, p0, Landroid/support/v7/view/menu/ac;->b:I

    .line 730
    iget-object v0, p1, Landroid/support/v7/widget/k;->p:Landroid/support/v7/widget/r;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/q;->a(Landroid/support/v7/view/menu/af;)V

    .line 731
    return-void
.end method


# virtual methods
.method protected final d()V
    .locals 2

    .prologue
    .line 735
    iget-object v0, p0, Landroid/support/v7/widget/q;->d:Landroid/support/v7/widget/k;

    invoke-static {v0}, Landroid/support/v7/widget/k;->c(Landroid/support/v7/widget/k;)Landroid/support/v7/view/menu/o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Landroid/support/v7/widget/q;->d:Landroid/support/v7/widget/k;

    invoke-static {v0}, Landroid/support/v7/widget/k;->d(Landroid/support/v7/widget/k;)Landroid/support/v7/view/menu/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/view/menu/o;->close()V

    .line 738
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/q;->d:Landroid/support/v7/widget/k;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/k;->a(Landroid/support/v7/widget/k;Landroid/support/v7/widget/q;)Landroid/support/v7/widget/q;

    .line 740
    invoke-super {p0}, Landroid/support/v7/view/menu/ac;->d()V

    .line 741
    return-void
.end method
