.class final Landroid/support/v7/widget/bz;
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
    .line 164
    iput-object p1, p0, Landroid/support/v7/widget/bz;->b:Landroid/support/v7/widget/bw;

    iput-object p2, p0, Landroid/support/v7/widget/bz;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 167
    iget-object v0, p0, Landroid/support/v7/widget/bz;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ex;

    .line 168
    iget-object v2, p0, Landroid/support/v7/widget/bz;->b:Landroid/support/v7/widget/bw;

    .line 11225
    iget-object v3, v0, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    .line 11226
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    .line 11227
    iget-object v4, v2, Landroid/support/v7/widget/bw;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11228
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    .line 11946
    iget-wide v6, v2, Landroid/support/v7/widget/eb;->i:J

    .line 11228
    invoke-virtual {v4, v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    new-instance v5, Landroid/support/v7/widget/cb;

    invoke-direct {v5, v2, v0, v3}, Landroid/support/v7/widget/cb;-><init>(Landroid/support/v7/widget/bw;Landroid/support/v7/widget/ex;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V

    .line 11229
    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 11246
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_0

    .line 170
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/bz;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 171
    iget-object v0, p0, Landroid/support/v7/widget/bz;->b:Landroid/support/v7/widget/bw;

    .line 12036
    iget-object v0, v0, Landroid/support/v7/widget/bw;->a:Ljava/util/ArrayList;

    .line 171
    iget-object v1, p0, Landroid/support/v7/widget/bz;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 172
    return-void
.end method
