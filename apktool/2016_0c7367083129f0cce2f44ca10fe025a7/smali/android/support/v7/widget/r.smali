.class final Landroid/support/v7/widget/r;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/support/v7/view/menu/af;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/k;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/k;)V
    .locals 0

    .prologue
    .line 766
    iput-object p1, p0, Landroid/support/v7/widget/r;->a:Landroid/support/v7/widget/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/k;B)V
    .locals 0

    .prologue
    .line 766
    invoke-direct {p0, p1}, Landroid/support/v7/widget/r;-><init>(Landroid/support/v7/widget/k;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/view/menu/o;Z)V
    .locals 2

    .prologue
    .line 778
    instance-of v0, p1, Landroid/support/v7/view/menu/an;

    if-eqz v0, :cond_0

    .line 779
    invoke-virtual {p1}, Landroid/support/v7/view/menu/o;->k()Landroid/support/v7/view/menu/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/o;->a(Z)V

    .line 781
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/r;->a:Landroid/support/v7/widget/k;

    .line 2152
    iget-object v0, v0, Landroid/support/v7/view/menu/d;->f:Landroid/support/v7/view/menu/af;

    .line 782
    if-eqz v0, :cond_1

    .line 783
    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/menu/af;->a(Landroid/support/v7/view/menu/o;Z)V

    .line 785
    :cond_1
    return-void
.end method

.method public final a(Landroid/support/v7/view/menu/o;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 769
    if-nez p1, :cond_0

    move v0, v1

    .line 773
    :goto_0
    return v0

    .line 771
    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/r;->a:Landroid/support/v7/widget/k;

    move-object v0, p1

    check-cast v0, Landroid/support/v7/view/menu/an;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/an;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iput v0, v2, Landroid/support/v7/widget/k;->q:I

    .line 772
    iget-object v0, p0, Landroid/support/v7/widget/r;->a:Landroid/support/v7/widget/k;

    .line 1152
    iget-object v0, v0, Landroid/support/v7/view/menu/d;->f:Landroid/support/v7/view/menu/af;

    .line 773
    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroid/support/v7/view/menu/af;->a(Landroid/support/v7/view/menu/o;)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
