.class final Landroid/support/v7/widget/ce;
.super Landroid/support/v7/widget/ch;
.source "DefaultItemAnimator.java"


# instance fields
.field final synthetic a:Landroid/support/v7/widget/cf;

.field final synthetic b:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Landroid/support/v7/widget/bw;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/bw;Landroid/support/v7/widget/cf;Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 373
    iput-object p1, p0, Landroid/support/v7/widget/ce;->d:Landroid/support/v7/widget/bw;

    iput-object p2, p0, Landroid/support/v7/widget/ce;->a:Landroid/support/v7/widget/cf;

    iput-object p3, p0, Landroid/support/v7/widget/ce;->b:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iput-object p4, p0, Landroid/support/v7/widget/ce;->c:Landroid/view/View;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/ch;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 380
    iget-object v0, p0, Landroid/support/v7/widget/ce;->b:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 381
    iget-object v0, p0, Landroid/support/v7/widget/ce;->c:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 382
    iget-object v0, p0, Landroid/support/v7/widget/ce;->c:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 383
    iget-object v0, p0, Landroid/support/v7/widget/ce;->c:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 384
    iget-object v0, p0, Landroid/support/v7/widget/ce;->d:Landroid/support/v7/widget/bw;

    iget-object v1, p0, Landroid/support/v7/widget/ce;->a:Landroid/support/v7/widget/cf;

    iget-object v1, v1, Landroid/support/v7/widget/cf;->b:Landroid/support/v7/widget/ex;

    .line 1304
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/fn;->e(Landroid/support/v7/widget/ex;)V

    .line 385
    iget-object v0, p0, Landroid/support/v7/widget/ce;->d:Landroid/support/v7/widget/bw;

    .line 2036
    iget-object v0, v0, Landroid/support/v7/widget/bw;->g:Ljava/util/ArrayList;

    .line 385
    iget-object v1, p0, Landroid/support/v7/widget/ce;->a:Landroid/support/v7/widget/cf;

    iget-object v1, v1, Landroid/support/v7/widget/cf;->b:Landroid/support/v7/widget/ex;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 386
    iget-object v0, p0, Landroid/support/v7/widget/ce;->d:Landroid/support/v7/widget/bw;

    .line 3036
    invoke-virtual {v0}, Landroid/support/v7/widget/bw;->c()V

    .line 387
    return-void
.end method

.method public final onAnimationStart(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 377
    return-void
.end method
