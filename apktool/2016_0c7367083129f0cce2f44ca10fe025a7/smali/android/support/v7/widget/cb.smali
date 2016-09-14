.class final Landroid/support/v7/widget/cb;
.super Landroid/support/v7/widget/ch;
.source "DefaultItemAnimator.java"


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ex;

.field final synthetic b:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field final synthetic c:Landroid/support/v7/widget/bw;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/bw;Landroid/support/v7/widget/ex;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V
    .locals 1

    .prologue
    .line 229
    iput-object p1, p0, Landroid/support/v7/widget/cb;->c:Landroid/support/v7/widget/bw;

    iput-object p2, p0, Landroid/support/v7/widget/cb;->a:Landroid/support/v7/widget/ex;

    iput-object p3, p0, Landroid/support/v7/widget/cb;->b:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/ch;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 236
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 237
    return-void
.end method

.method public final onAnimationEnd(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Landroid/support/v7/widget/cb;->b:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 242
    iget-object v0, p0, Landroid/support/v7/widget/cb;->c:Landroid/support/v7/widget/bw;

    iget-object v1, p0, Landroid/support/v7/widget/cb;->a:Landroid/support/v7/widget/ex;

    .line 1289
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/fn;->e(Landroid/support/v7/widget/ex;)V

    .line 243
    iget-object v0, p0, Landroid/support/v7/widget/cb;->c:Landroid/support/v7/widget/bw;

    .line 2036
    iget-object v0, v0, Landroid/support/v7/widget/bw;->d:Ljava/util/ArrayList;

    .line 243
    iget-object v1, p0, Landroid/support/v7/widget/cb;->a:Landroid/support/v7/widget/ex;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 244
    iget-object v0, p0, Landroid/support/v7/widget/cb;->c:Landroid/support/v7/widget/bw;

    .line 3036
    invoke-virtual {v0}, Landroid/support/v7/widget/bw;->c()V

    .line 245
    return-void
.end method

.method public final onAnimationStart(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 233
    return-void
.end method
