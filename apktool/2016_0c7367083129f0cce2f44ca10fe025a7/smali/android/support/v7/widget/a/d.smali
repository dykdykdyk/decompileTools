.class final Landroid/support/v7/widget/a/d;
.super Landroid/support/v7/widget/a/k;
.source "ItemTouchHelper.java"


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/support/v7/widget/ex;

.field final synthetic c:Landroid/support/v7/widget/a/a;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/a/a;Landroid/support/v7/widget/ex;IIFFFFILandroid/support/v7/widget/ex;)V
    .locals 0

    .prologue
    .line 610
    iput-object p1, p0, Landroid/support/v7/widget/a/d;->c:Landroid/support/v7/widget/a/a;

    iput p9, p0, Landroid/support/v7/widget/a/d;->a:I

    iput-object p10, p0, Landroid/support/v7/widget/a/d;->b:Landroid/support/v7/widget/ex;

    invoke-direct/range {p0 .. p8}, Landroid/support/v7/widget/a/k;-><init>(Landroid/support/v7/widget/a/a;Landroid/support/v7/widget/ex;IIFFFF)V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/support/v4/animation/ValueAnimatorCompat;)V
    .locals 4

    .prologue
    .line 613
    invoke-super {p0, p1}, Landroid/support/v7/widget/a/k;->onAnimationEnd(Landroid/support/v4/animation/ValueAnimatorCompat;)V

    .line 614
    iget-boolean v0, p0, Landroid/support/v7/widget/a/d;->n:Z

    if-eqz v0, :cond_1

    .line 635
    :cond_0
    :goto_0
    return-void

    .line 617
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/a/d;->a:I

    if-gtz v0, :cond_3

    .line 619
    iget-object v0, p0, Landroid/support/v7/widget/a/d;->c:Landroid/support/v7/widget/a/a;

    iget-object v0, v0, Landroid/support/v7/widget/a/a;->l:Landroid/support/v7/widget/a/g;

    iget-object v1, p0, Landroid/support/v7/widget/a/d;->c:Landroid/support/v7/widget/a/a;

    .line 1076
    iget-object v1, v1, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/RecyclerView;

    .line 619
    iget-object v2, p0, Landroid/support/v7/widget/a/d;->b:Landroid/support/v7/widget/ex;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/a/g;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/ex;)V

    .line 632
    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/a/d;->c:Landroid/support/v7/widget/a/a;

    .line 3076
    iget-object v0, v0, Landroid/support/v7/widget/a/a;->s:Landroid/view/View;

    .line 632
    iget-object v1, p0, Landroid/support/v7/widget/a/d;->b:Landroid/support/v7/widget/ex;

    iget-object v1, v1, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    if-ne v0, v1, :cond_0

    .line 633
    iget-object v0, p0, Landroid/support/v7/widget/a/d;->c:Landroid/support/v7/widget/a/a;

    iget-object v1, p0, Landroid/support/v7/widget/a/d;->b:Landroid/support/v7/widget/ex;

    iget-object v1, v1, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    .line 4076
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/a/a;->b(Landroid/view/View;)V

    goto :goto_0

    .line 623
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/a/d;->c:Landroid/support/v7/widget/a/a;

    iget-object v0, v0, Landroid/support/v7/widget/a/a;->a:Ljava/util/List;

    iget-object v1, p0, Landroid/support/v7/widget/a/d;->b:Landroid/support/v7/widget/ex;

    iget-object v1, v1, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 624
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/a/d;->k:Z

    .line 625
    iget v0, p0, Landroid/support/v7/widget/a/d;->a:I

    if-lez v0, :cond_2

    .line 628
    iget-object v0, p0, Landroid/support/v7/widget/a/d;->c:Landroid/support/v7/widget/a/a;

    iget v1, p0, Landroid/support/v7/widget/a/d;->a:I

    .line 2674
    iget-object v2, v0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Landroid/support/v7/widget/a/e;

    invoke-direct {v3, v0, p0, v1}, Landroid/support/v7/widget/a/e;-><init>(Landroid/support/v7/widget/a/a;Landroid/support/v7/widget/a/k;I)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method
