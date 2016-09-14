.class final Lcom/nut/blehunter/ui/n;
.super Ljava/lang/Object;
.source "BindAnimationPaperActivity.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/nut/blehunter/ui/BindAnimationPaperActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/BindAnimationPaperActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/nut/blehunter/ui/n;->b:Lcom/nut/blehunter/ui/BindAnimationPaperActivity;

    iput-object p2, p0, Lcom/nut/blehunter/ui/n;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 73
    iget-object v1, p0, Lcom/nut/blehunter/ui/n;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 74
    iget-object v1, p0, Lcom/nut/blehunter/ui/n;->b:Lcom/nut/blehunter/ui/BindAnimationPaperActivity;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v1, v2}, Lcom/nut/blehunter/d/q;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    .line 75
    iget-object v2, p0, Lcom/nut/blehunter/ui/n;->a:Landroid/view/View;

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v0, v3

    add-float/2addr v0, v1

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 76
    return-void
.end method
