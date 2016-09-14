.class final Landroid/support/v7/widget/a/e;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/a/k;

.field final synthetic b:I

.field final synthetic c:Landroid/support/v7/widget/a/a;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/a/a;Landroid/support/v7/widget/a/k;I)V
    .locals 0

    .prologue
    .line 674
    iput-object p1, p0, Landroid/support/v7/widget/a/e;->c:Landroid/support/v7/widget/a/a;

    iput-object p2, p0, Landroid/support/v7/widget/a/e;->a:Landroid/support/v7/widget/a/k;

    iput p3, p0, Landroid/support/v7/widget/a/e;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 677
    iget-object v0, p0, Landroid/support/v7/widget/a/e;->c:Landroid/support/v7/widget/a/a;

    .line 12076
    iget-object v0, v0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/RecyclerView;

    .line 677
    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/a/e;->c:Landroid/support/v7/widget/a/a;

    .line 13076
    iget-object v0, v0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/RecyclerView;

    .line 677
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/a/e;->a:Landroid/support/v7/widget/a/k;

    iget-boolean v0, v0, Landroid/support/v7/widget/a/k;->n:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/a/e;->a:Landroid/support/v7/widget/a/k;

    iget-object v0, v0, Landroid/support/v7/widget/a/k;->h:Landroid/support/v7/widget/ex;

    .line 679
    invoke-virtual {v0}, Landroid/support/v7/widget/ex;->d()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 680
    iget-object v0, p0, Landroid/support/v7/widget/a/e;->c:Landroid/support/v7/widget/a/a;

    .line 14076
    iget-object v0, v0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/RecyclerView;

    .line 680
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/eb;

    move-result-object v0

    .line 684
    if-eqz v0, :cond_0

    .line 14398
    invoke-virtual {v0}, Landroid/support/v7/widget/eb;->b()Z

    move-result v0

    .line 684
    if-nez v0, :cond_4

    :cond_0
    iget-object v3, p0, Landroid/support/v7/widget/a/e;->c:Landroid/support/v7/widget/a/a;

    .line 15696
    iget-object v0, v3, Landroid/support/v7/widget/a/a;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v2, v1

    .line 15697
    :goto_0
    if-ge v2, v4, :cond_3

    .line 15698
    iget-object v0, v3, Landroid/support/v7/widget/a/a;->o:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/a/k;

    invoke-static {v0}, Landroid/support/v7/widget/a/k;->a(Landroid/support/v7/widget/a/k;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 15699
    const/4 v0, 0x1

    .line 685
    :goto_1
    if-nez v0, :cond_4

    .line 686
    iget-object v0, p0, Landroid/support/v7/widget/a/e;->c:Landroid/support/v7/widget/a/a;

    iget-object v0, v0, Landroid/support/v7/widget/a/a;->l:Landroid/support/v7/widget/a/g;

    iget-object v1, p0, Landroid/support/v7/widget/a/e;->a:Landroid/support/v7/widget/a/k;

    iget-object v1, v1, Landroid/support/v7/widget/a/k;->h:Landroid/support/v7/widget/ex;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/a/g;->a(Landroid/support/v7/widget/ex;)V

    .line 691
    :cond_1
    :goto_2
    return-void

    .line 15697
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 15702
    goto :goto_1

    .line 688
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/a/e;->c:Landroid/support/v7/widget/a/a;

    .line 16076
    iget-object v0, v0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/RecyclerView;

    .line 688
    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method
