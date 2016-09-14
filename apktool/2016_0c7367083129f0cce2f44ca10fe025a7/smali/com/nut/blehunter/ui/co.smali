.class final Lcom/nut/blehunter/ui/co;
.super Ljava/lang/Object;
.source "Main2Activity.java"

# interfaces
.implements Lcom/nut/blehunter/ui/widget/i;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/Main2Activity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/Main2Activity;)V
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Lcom/nut/blehunter/ui/co;->a:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/widget/ex;)V
    .locals 3

    .prologue
    .line 408
    iget-object v0, p0, Lcom/nut/blehunter/ui/co;->a:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/Main2Activity;->k(Lcom/nut/blehunter/ui/Main2Activity;)Landroid/support/v7/widget/a/a;

    move-result-object v0

    .line 2061
    iget-object v1, v0, Landroid/support/v7/widget/a/a;->l:Landroid/support/v7/widget/a/g;

    iget-object v2, v0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1, v2}, Landroid/support/v7/widget/a/g;->a(Landroid/support/v7/widget/a/g;Landroid/support/v7/widget/RecyclerView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2062
    const-string v0, "ItemTouchHelper"

    const-string v1, "Start drag has been called but swiping is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    :goto_0
    return-void

    .line 2065
    :cond_0
    iget-object v1, p1, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, v0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/RecyclerView;

    if-eq v1, v2, :cond_1

    .line 2066
    const-string v0, "ItemTouchHelper"

    const-string v1, "Start drag has been called with a view holder which is not a child of the RecyclerView which is controlled by this ItemTouchHelper."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2070
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/widget/a/a;->a()V

    .line 2071
    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/widget/a/a;->h:F

    iput v1, v0, Landroid/support/v7/widget/a/a;->g:F

    .line 2072
    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/a/a;->a(Landroid/support/v7/widget/ex;I)V

    goto :goto_0
.end method
