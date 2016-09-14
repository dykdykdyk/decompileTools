.class final Landroid/support/v7/widget/v;
.super Ljava/lang/Object;
.source "ActionMenuView.java"

# interfaces
.implements Landroid/support/v7/view/menu/p;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ActionMenuView;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/ActionMenuView;)V
    .locals 0

    .prologue
    .line 755
    iput-object p1, p0, Landroid/support/v7/widget/v;->a:Landroid/support/v7/widget/ActionMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/ActionMenuView;B)V
    .locals 0

    .prologue
    .line 755
    invoke-direct {p0, p1}, Landroid/support/v7/widget/v;-><init>(Landroid/support/v7/widget/ActionMenuView;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/view/menu/o;)V
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Landroid/support/v7/widget/v;->a:Landroid/support/v7/widget/ActionMenuView;

    invoke-static {v0}, Landroid/support/v7/widget/ActionMenuView;->b(Landroid/support/v7/widget/ActionMenuView;)Landroid/support/v7/view/menu/p;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Landroid/support/v7/widget/v;->a:Landroid/support/v7/widget/ActionMenuView;

    invoke-static {v0}, Landroid/support/v7/widget/ActionMenuView;->b(Landroid/support/v7/widget/ActionMenuView;)Landroid/support/v7/view/menu/p;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v7/view/menu/p;->a(Landroid/support/v7/view/menu/o;)V

    .line 767
    :cond_0
    return-void
.end method

.method public final a(Landroid/support/v7/view/menu/o;Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Landroid/support/v7/widget/v;->a:Landroid/support/v7/widget/ActionMenuView;

    invoke-static {v0}, Landroid/support/v7/widget/ActionMenuView;->a(Landroid/support/v7/widget/ActionMenuView;)Landroid/support/v7/widget/w;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/v;->a:Landroid/support/v7/widget/ActionMenuView;

    .line 759
    invoke-static {v0}, Landroid/support/v7/widget/ActionMenuView;->a(Landroid/support/v7/widget/ActionMenuView;)Landroid/support/v7/widget/w;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/support/v7/widget/w;->a(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
