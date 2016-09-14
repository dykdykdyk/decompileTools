.class final Lcom/nut/blehunter/ui/fs;
.super Ljava/lang/Object;
.source "ScanDeviceActivity.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/nut/blehunter/ui/ScanDeviceActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/ScanDeviceActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 498
    iput-object p1, p0, Lcom/nut/blehunter/ui/fs;->b:Lcom/nut/blehunter/ui/ScanDeviceActivity;

    iput-object p2, p0, Lcom/nut/blehunter/ui/fs;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 10

    .prologue
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 501
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 502
    const/high16 v1, 0x41c80000    # 25.0f

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float/2addr v1, v2

    .line 503
    const-wide/high16 v2, -0x3fc7000000000000L    # -25.0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v6, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v2, v2

    .line 504
    iget-object v0, p0, Lcom/nut/blehunter/ui/fs;->b:Lcom/nut/blehunter/ui/ScanDeviceActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->e(Lcom/nut/blehunter/ui/ScanDeviceActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    neg-float v0, v1

    .line 506
    neg-float v1, v2

    .line 508
    :goto_0
    iget-object v2, p0, Lcom/nut/blehunter/ui/fs;->a:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 509
    iget-object v0, p0, Lcom/nut/blehunter/ui/fs;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 510
    return-void

    :cond_0
    move v0, v1

    move v1, v2

    goto :goto_0
.end method
