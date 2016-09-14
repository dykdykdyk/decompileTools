.class final Landroid/support/v7/widget/cc;
.super Landroid/support/v7/widget/ch;
.source "DefaultItemAnimator.java"


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ex;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field final synthetic e:Landroid/support/v7/widget/bw;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/bw;Landroid/support/v7/widget/ex;IILandroid/support/v4/view/ViewPropertyAnimatorCompat;)V
    .locals 1

    .prologue
    .line 287
    iput-object p1, p0, Landroid/support/v7/widget/cc;->e:Landroid/support/v7/widget/bw;

    iput-object p2, p0, Landroid/support/v7/widget/cc;->a:Landroid/support/v7/widget/ex;

    iput p3, p0, Landroid/support/v7/widget/cc;->b:I

    iput p4, p0, Landroid/support/v7/widget/cc;->c:I

    iput-object p5, p0, Landroid/support/v7/widget/cc;->d:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/ch;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 294
    iget v0, p0, Landroid/support/v7/widget/cc;->b:I

    if-eqz v0, :cond_0

    .line 295
    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 297
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/cc;->c:I

    if-eqz v0, :cond_1

    .line 298
    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 300
    :cond_1
    return-void
.end method

.method public final onAnimationEnd(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Landroid/support/v7/widget/cc;->d:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 304
    iget-object v0, p0, Landroid/support/v7/widget/cc;->e:Landroid/support/v7/widget/bw;

    iget-object v1, p0, Landroid/support/v7/widget/cc;->a:Landroid/support/v7/widget/ex;

    .line 1279
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/fn;->e(Landroid/support/v7/widget/ex;)V

    .line 305
    iget-object v0, p0, Landroid/support/v7/widget/cc;->e:Landroid/support/v7/widget/bw;

    .line 2036
    iget-object v0, v0, Landroid/support/v7/widget/bw;->e:Ljava/util/ArrayList;

    .line 305
    iget-object v1, p0, Landroid/support/v7/widget/cc;->a:Landroid/support/v7/widget/ex;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 306
    iget-object v0, p0, Landroid/support/v7/widget/cc;->e:Landroid/support/v7/widget/bw;

    .line 3036
    invoke-virtual {v0}, Landroid/support/v7/widget/bw;->c()V

    .line 307
    return-void
.end method

.method public final onAnimationStart(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 291
    return-void
.end method
