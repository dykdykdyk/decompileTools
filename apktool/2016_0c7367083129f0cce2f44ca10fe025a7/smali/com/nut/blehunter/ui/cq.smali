.class final Lcom/nut/blehunter/ui/cq;
.super Ljava/lang/Object;
.source "Main2Activity.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/Main2Activity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/Main2Activity;)V
    .locals 0

    .prologue
    .line 461
    iput-object p1, p0, Lcom/nut/blehunter/ui/cq;->a:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .prologue
    .line 464
    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v2, p0, Lcom/nut/blehunter/ui/cq;->a:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-static {v2}, Lcom/nut/blehunter/ui/Main2Activity;->p(Lcom/nut/blehunter/ui/Main2Activity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/nut/blehunter/ui/cq;->a:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-static {v2}, Lcom/nut/blehunter/ui/Main2Activity;->q(Lcom/nut/blehunter/ui/Main2Activity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 465
    iget-object v1, p0, Lcom/nut/blehunter/ui/cq;->a:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-static {v1}, Lcom/nut/blehunter/ui/Main2Activity;->r(Lcom/nut/blehunter/ui/Main2Activity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setTranslationY(F)V

    .line 466
    return-void
.end method
