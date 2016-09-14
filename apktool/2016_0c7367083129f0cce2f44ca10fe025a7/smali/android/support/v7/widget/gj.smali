.class final Landroid/support/v7/widget/gj;
.super Ljava/lang/Object;
.source "ToolbarWidgetWrapper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final a:Landroid/support/v7/view/menu/a;

.field final synthetic b:Landroid/support/v7/widget/gi;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/gi;)V
    .locals 3

    .prologue
    .line 177
    iput-object p1, p0, Landroid/support/v7/widget/gj;->b:Landroid/support/v7/widget/gi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    new-instance v0, Landroid/support/v7/view/menu/a;

    iget-object v1, p0, Landroid/support/v7/widget/gj;->b:Landroid/support/v7/widget/gi;

    .line 1057
    iget-object v1, v1, Landroid/support/v7/widget/gi;->a:Landroid/support/v7/widget/Toolbar;

    .line 178
    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/gj;->b:Landroid/support/v7/widget/gi;

    .line 2057
    iget-object v2, v2, Landroid/support/v7/widget/gi;->b:Ljava/lang/CharSequence;

    .line 179
    invoke-direct {v0, v1, v2}, Landroid/support/v7/view/menu/a;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    iput-object v0, p0, Landroid/support/v7/widget/gj;->a:Landroid/support/v7/view/menu/a;

    .line 178
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Landroid/support/v7/widget/gj;->b:Landroid/support/v7/widget/gi;

    .line 3057
    iget-object v0, v0, Landroid/support/v7/widget/gi;->c:Landroid/view/Window$Callback;

    .line 182
    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/gj;->b:Landroid/support/v7/widget/gi;

    .line 4057
    iget-boolean v0, v0, Landroid/support/v7/widget/gi;->d:Z

    .line 182
    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Landroid/support/v7/widget/gj;->b:Landroid/support/v7/widget/gi;

    .line 5057
    iget-object v0, v0, Landroid/support/v7/widget/gi;->c:Landroid/view/Window$Callback;

    .line 183
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/v7/widget/gj;->a:Landroid/support/v7/view/menu/a;

    invoke-interface {v0, v1, v2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 185
    :cond_0
    return-void
.end method
