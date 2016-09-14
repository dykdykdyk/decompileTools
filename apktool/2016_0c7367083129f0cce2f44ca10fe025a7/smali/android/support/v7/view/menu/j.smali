.class final Landroid/support/v7/view/menu/j;
.super Ljava/lang/Object;
.source "CascadingMenuPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/view/menu/k;

.field final synthetic b:Landroid/view/MenuItem;

.field final synthetic c:Landroid/support/v7/view/menu/o;

.field final synthetic d:Landroid/support/v7/view/menu/i;


# direct methods
.method constructor <init>(Landroid/support/v7/view/menu/i;Landroid/support/v7/view/menu/k;Landroid/view/MenuItem;Landroid/support/v7/view/menu/o;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Landroid/support/v7/view/menu/j;->d:Landroid/support/v7/view/menu/i;

    iput-object p2, p0, Landroid/support/v7/view/menu/j;->a:Landroid/support/v7/view/menu/k;

    iput-object p3, p0, Landroid/support/v7/view/menu/j;->b:Landroid/view/MenuItem;

    iput-object p4, p0, Landroid/support/v7/view/menu/j;->c:Landroid/support/v7/view/menu/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 156
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->a:Landroid/support/v7/view/menu/k;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->d:Landroid/support/v7/view/menu/i;

    iget-object v0, v0, Landroid/support/v7/view/menu/i;->a:Landroid/support/v7/view/menu/g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v7/view/menu/g;->a(Landroid/support/v7/view/menu/g;Z)Z

    .line 160
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->a:Landroid/support/v7/view/menu/k;

    iget-object v0, v0, Landroid/support/v7/view/menu/k;->b:Landroid/support/v7/view/menu/o;

    invoke-virtual {v0, v3}, Landroid/support/v7/view/menu/o;->a(Z)V

    .line 161
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->d:Landroid/support/v7/view/menu/i;

    iget-object v0, v0, Landroid/support/v7/view/menu/i;->a:Landroid/support/v7/view/menu/g;

    invoke-static {v0, v3}, Landroid/support/v7/view/menu/g;->a(Landroid/support/v7/view/menu/g;Z)Z

    .line 165
    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->b:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/view/menu/j;->b:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->c:Landroid/support/v7/view/menu/o;

    iget-object v1, p0, Landroid/support/v7/view/menu/j;->b:Landroid/view/MenuItem;

    .line 1947
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/view/menu/o;->a(Landroid/view/MenuItem;Landroid/support/v7/view/menu/ae;I)Z

    .line 168
    :cond_1
    return-void
.end method
