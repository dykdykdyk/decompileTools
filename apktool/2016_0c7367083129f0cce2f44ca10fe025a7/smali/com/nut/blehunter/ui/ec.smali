.class final Lcom/nut/blehunter/ui/ec;
.super Ljava/lang/Object;
.source "NutDetailActivity.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/nut/blehunter/ui/NutDetailActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/NutDetailActivity;I)V
    .locals 0

    .prologue
    .line 395
    iput-object p1, p0, Lcom/nut/blehunter/ui/ec;->b:Lcom/nut/blehunter/ui/NutDetailActivity;

    iput p2, p0, Lcom/nut/blehunter/ui/ec;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 12

    .prologue
    const-wide v10, 0x4066800000000000L    # 180.0

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    .line 398
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 401
    iget-object v1, p0, Lcom/nut/blehunter/ui/ec;->b:Lcom/nut/blehunter/ui/NutDetailActivity;

    invoke-static {v1}, Lcom/nut/blehunter/ui/NutDetailActivity;->g(Lcom/nut/blehunter/ui/NutDetailActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget v2, p0, Lcom/nut/blehunter/ui/ec;->a:I

    int-to-double v2, v2

    float-to-double v4, v0

    mul-double/2addr v4, v8

    iget v6, p0, Lcom/nut/blehunter/ui/ec;->a:I

    int-to-double v6, v6

    mul-double/2addr v4, v6

    div-double/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 402
    iget-object v1, p0, Lcom/nut/blehunter/ui/ec;->b:Lcom/nut/blehunter/ui/NutDetailActivity;

    invoke-static {v1}, Lcom/nut/blehunter/ui/NutDetailActivity;->g(Lcom/nut/blehunter/ui/NutDetailActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget v2, p0, Lcom/nut/blehunter/ui/ec;->a:I

    int-to-double v2, v2

    float-to-double v4, v0

    mul-double/2addr v4, v8

    iget v0, p0, Lcom/nut/blehunter/ui/ec;->a:I

    int-to-double v6, v0

    mul-double/2addr v4, v6

    div-double/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 403
    return-void
.end method
