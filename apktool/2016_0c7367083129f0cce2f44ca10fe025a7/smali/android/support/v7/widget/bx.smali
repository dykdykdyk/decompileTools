.class final Landroid/support/v7/widget/bx;
.super Ljava/lang/Object;
.source "DefaultItemAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Landroid/support/v7/widget/bw;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/bw;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Landroid/support/v7/widget/bx;->b:Landroid/support/v7/widget/bw;

    iput-object p2, p0, Landroid/support/v7/widget/bx;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 120
    iget-object v0, p0, Landroid/support/v7/widget/bx;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/cg;

    .line 121
    iget-object v1, p0, Landroid/support/v7/widget/bx;->b:Landroid/support/v7/widget/bw;

    iget-object v2, v0, Landroid/support/v7/widget/cg;->a:Landroid/support/v7/widget/ex;

    iget v3, v0, Landroid/support/v7/widget/cg;->b:I

    iget v4, v0, Landroid/support/v7/widget/cg;->c:I

    iget v5, v0, Landroid/support/v7/widget/cg;->d:I

    iget v0, v0, Landroid/support/v7/widget/cg;->e:I

    .line 11273
    iget-object v7, v2, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    .line 11274
    sub-int v3, v5, v3

    .line 11275
    sub-int v4, v0, v4

    .line 11276
    if-eqz v3, :cond_0

    .line 11277
    invoke-static {v7}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 11279
    :cond_0
    if-eqz v4, :cond_1

    .line 11280
    invoke-static {v7}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 11285
    :cond_1
    invoke-static {v7}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v5

    .line 11286
    iget-object v0, v1, Landroid/support/v7/widget/bw;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11928
    iget-wide v8, v1, Landroid/support/v7/widget/eb;->k:J

    .line 11287
    invoke-virtual {v5, v8, v9}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v7

    new-instance v0, Landroid/support/v7/widget/cc;

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/cc;-><init>(Landroid/support/v7/widget/bw;Landroid/support/v7/widget/ex;IILandroid/support/v4/view/ViewPropertyAnimatorCompat;)V

    invoke-virtual {v7, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 11308
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_0

    .line 124
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/bx;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 125
    iget-object v0, p0, Landroid/support/v7/widget/bx;->b:Landroid/support/v7/widget/bw;

    .line 12036
    iget-object v0, v0, Landroid/support/v7/widget/bw;->b:Ljava/util/ArrayList;

    .line 125
    iget-object v1, p0, Landroid/support/v7/widget/bx;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 126
    return-void
.end method
