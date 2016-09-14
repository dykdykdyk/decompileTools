.class final Landroid/support/v7/view/menu/b;
.super Landroid/support/v7/widget/cm;
.source "ActionMenuItemView.java"


# instance fields
.field final synthetic a:Landroid/support/v7/view/menu/ActionMenuItemView;


# direct methods
.method public constructor <init>(Landroid/support/v7/view/menu/ActionMenuItemView;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Landroid/support/v7/view/menu/b;->a:Landroid/support/v7/view/menu/ActionMenuItemView;

    .line 310
    invoke-direct {p0, p1}, Landroid/support/v7/widget/cm;-><init>(Landroid/view/View;)V

    .line 311
    return-void
.end method


# virtual methods
.method public final a()Landroid/support/v7/view/menu/ak;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Landroid/support/v7/view/menu/b;->a:Landroid/support/v7/view/menu/ActionMenuItemView;

    invoke-static {v0}, Landroid/support/v7/view/menu/ActionMenuItemView;->a(Landroid/support/v7/view/menu/ActionMenuItemView;)Landroid/support/v7/view/menu/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Landroid/support/v7/view/menu/b;->a:Landroid/support/v7/view/menu/ActionMenuItemView;

    invoke-static {v0}, Landroid/support/v7/view/menu/ActionMenuItemView;->a(Landroid/support/v7/view/menu/ActionMenuItemView;)Landroid/support/v7/view/menu/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/view/menu/c;->a()Landroid/support/v7/view/menu/ak;

    move-result-object v0

    .line 318
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final b()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 324
    iget-object v1, p0, Landroid/support/v7/view/menu/b;->a:Landroid/support/v7/view/menu/ActionMenuItemView;

    invoke-static {v1}, Landroid/support/v7/view/menu/ActionMenuItemView;->b(Landroid/support/v7/view/menu/ActionMenuItemView;)Landroid/support/v7/view/menu/q;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/view/menu/b;->a:Landroid/support/v7/view/menu/ActionMenuItemView;

    invoke-static {v1}, Landroid/support/v7/view/menu/ActionMenuItemView;->b(Landroid/support/v7/view/menu/ActionMenuItemView;)Landroid/support/v7/view/menu/q;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/view/menu/b;->a:Landroid/support/v7/view/menu/ActionMenuItemView;

    invoke-static {v2}, Landroid/support/v7/view/menu/ActionMenuItemView;->c(Landroid/support/v7/view/menu/ActionMenuItemView;)Landroid/support/v7/view/menu/s;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/support/v7/view/menu/q;->a(Landroid/support/v7/view/menu/s;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    invoke-virtual {p0}, Landroid/support/v7/view/menu/b;->a()Landroid/support/v7/view/menu/ak;

    move-result-object v1

    .line 326
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/support/v7/view/menu/ak;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 328
    :cond_0
    return v0
.end method
