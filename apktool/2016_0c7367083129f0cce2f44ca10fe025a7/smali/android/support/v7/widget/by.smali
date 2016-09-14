.class final Landroid/support/v7/widget/by;
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
    .line 141
    iput-object p1, p0, Landroid/support/v7/widget/by;->b:Landroid/support/v7/widget/bw;

    iput-object p2, p0, Landroid/support/v7/widget/by;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x0

    .line 144
    iget-object v0, p0, Landroid/support/v7/widget/by;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/cf;

    .line 145
    iget-object v5, p0, Landroid/support/v7/widget/by;->b:Landroid/support/v7/widget/bw;

    .line 11341
    iget-object v1, v0, Landroid/support/v7/widget/cf;->a:Landroid/support/v7/widget/ex;

    .line 11342
    if-nez v1, :cond_2

    move-object v1, v2

    .line 11343
    :goto_1
    iget-object v3, v0, Landroid/support/v7/widget/cf;->b:Landroid/support/v7/widget/ex;

    .line 11344
    if-eqz v3, :cond_3

    iget-object v3, v3, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    .line 11345
    :goto_2
    if-eqz v1, :cond_1

    .line 11346
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    .line 11982
    iget-wide v6, v5, Landroid/support/v7/widget/eb;->l:J

    .line 11346
    invoke-virtual {v1, v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    .line 11348
    iget-object v6, v5, Landroid/support/v7/widget/bw;->g:Ljava/util/ArrayList;

    iget-object v7, v0, Landroid/support/v7/widget/cf;->a:Landroid/support/v7/widget/ex;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11349
    iget v6, v0, Landroid/support/v7/widget/cf;->e:I

    iget v7, v0, Landroid/support/v7/widget/cf;->c:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v1, v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 11350
    iget v6, v0, Landroid/support/v7/widget/cf;->f:I

    iget v7, v0, Landroid/support/v7/widget/cf;->d:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v1, v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 11351
    invoke-virtual {v1, v10}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    new-instance v7, Landroid/support/v7/widget/cd;

    invoke-direct {v7, v5, v0, v1}, Landroid/support/v7/widget/cd;-><init>(Landroid/support/v7/widget/bw;Landroid/support/v7/widget/cf;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    .line 11367
    invoke-virtual {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 11369
    :cond_1
    if-eqz v3, :cond_0

    .line 11370
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    .line 11371
    iget-object v6, v5, Landroid/support/v7/widget/bw;->g:Ljava/util/ArrayList;

    iget-object v7, v0, Landroid/support/v7/widget/cf;->b:Landroid/support/v7/widget/ex;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11372
    invoke-virtual {v1, v10}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    .line 12982
    iget-wide v8, v5, Landroid/support/v7/widget/eb;->l:J

    .line 11372
    invoke-virtual {v6, v8, v9}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    .line 11373
    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    new-instance v7, Landroid/support/v7/widget/ce;

    invoke-direct {v7, v5, v0, v1, v3}, Landroid/support/v7/widget/ce;-><init>(Landroid/support/v7/widget/bw;Landroid/support/v7/widget/cf;Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 11388
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_0

    .line 11342
    :cond_2
    iget-object v1, v1, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    goto :goto_1

    :cond_3
    move-object v3, v2

    .line 11344
    goto :goto_2

    .line 147
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/by;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 148
    iget-object v0, p0, Landroid/support/v7/widget/by;->b:Landroid/support/v7/widget/bw;

    .line 13036
    iget-object v0, v0, Landroid/support/v7/widget/bw;->c:Ljava/util/ArrayList;

    .line 148
    iget-object v1, p0, Landroid/support/v7/widget/by;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 149
    return-void
.end method
