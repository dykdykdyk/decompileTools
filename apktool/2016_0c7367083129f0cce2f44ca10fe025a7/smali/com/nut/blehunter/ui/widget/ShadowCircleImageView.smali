.class public Lcom/nut/blehunter/ui/widget/ShadowCircleImageView;
.super Lcom/nut/blehunter/ui/widget/CircleImageView;
.source "ShadowCircleImageView.java"


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private b:F

.field private c:F

.field private d:F

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/nut/blehunter/ui/widget/CircleImageView;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/ShadowCircleImageView;->a:Landroid/graphics/Paint;

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/nut/blehunter/ui/widget/ShadowCircleImageView;->b:F

    .line 27
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/nut/blehunter/ui/widget/ShadowCircleImageView;->e:I

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nut/blehunter/ui/widget/ShadowCircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/nut/blehunter/ui/widget/CircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/ShadowCircleImageView;->a:Landroid/graphics/Paint;

    .line 21
    iput v2, p0, Lcom/nut/blehunter/ui/widget/ShadowCircleImageView;->b:F

    .line 27
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/nut/blehunter/ui/widget/ShadowCircleImageView;->e:I

    .line 40
    sget-object v0, Lcom/nut/blehunter/R$styleable;->ShadowCircleImageView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 42
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/nut/blehunter/ui/widget/ShadowCircleImageView;->b:F

    .line 43
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 44
    invoke-direct {p0}, Lcom/nut/blehunter/ui/widget/ShadowCircleImageView;->a()V

    .line 45
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/ShadowCircleImageView;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 55
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/ShadowCircleImageView;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/nut/blehunter/ui/widget/ShadowCircleImageView;->e:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/ShadowCircleImageView;->a:Landroid/graphics/Paint;

    const/16 v1, 0xb3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 57
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/high16 v1, 0x43b40000    # 360.0f

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v0, 0x0

    .line 61
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/widget/CircleImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 62
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/ShadowCircleImageView;->getDrawableRadius()F

    move-result v2

    .line 63
    iget v3, p0, Lcom/nut/blehunter/ui/widget/ShadowCircleImageView;->b:F

    cmpl-float v3, v3, v0

    if-nez v3, :cond_0

    .line 64
    iput v0, p0, Lcom/nut/blehunter/ui/widget/ShadowCircleImageView;->c:F

    move-object v1, p0

    .line 81
    :goto_0
    iput v0, v1, Lcom/nut/blehunter/ui/widget/ShadowCircleImageView;->d:F

    .line 86
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/ShadowCircleImageView;->getDrawableRect()Landroid/graphics/RectF;

    move-result-object v1

    iget v2, p0, Lcom/nut/blehunter/ui/widget/ShadowCircleImageView;->c:F

    iget v3, p0, Lcom/nut/blehunter/ui/widget/ShadowCircleImageView;->d:F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/nut/blehunter/ui/widget/ShadowCircleImageView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 87
    return-void

    .line 66
    :cond_0
    iget v3, p0, Lcom/nut/blehunter/ui/widget/ShadowCircleImageView;->b:F

    mul-float v4, v6, v2

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 67
    iput v0, p0, Lcom/nut/blehunter/ui/widget/ShadowCircleImageView;->c:F

    move v0, v1

    move-object v1, p0

    .line 68
    goto :goto_0

    .line 70
    :cond_1
    iget v0, p0, Lcom/nut/blehunter/ui/widget/ShadowCircleImageView;->b:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_2

    iget v0, p0, Lcom/nut/blehunter/ui/widget/ShadowCircleImageView;->b:F

    sub-float v0, v2, v0

    div-float/2addr v0, v2

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v0, v4

    .line 74
    :goto_1
    iget v3, p0, Lcom/nut/blehunter/ui/widget/ShadowCircleImageView;->b:F

    cmpg-float v3, v3, v2

    if-gtz v3, :cond_3

    const/high16 v3, 0x43870000    # 270.0f

    add-float/2addr v0, v3

    :goto_2
    iput v0, p0, Lcom/nut/blehunter/ui/widget/ShadowCircleImageView;->c:F

    .line 77
    iget v0, p0, Lcom/nut/blehunter/ui/widget/ShadowCircleImageView;->b:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_4

    iget v0, p0, Lcom/nut/blehunter/ui/widget/ShadowCircleImageView;->b:F

    sub-float v0, v2, v0

    div-float/2addr v0, v2

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v0, v4

    .line 81
    :goto_3
    iget v3, p0, Lcom/nut/blehunter/ui/widget/ShadowCircleImageView;->b:F

    cmpg-float v2, v3, v2

    if-gtz v2, :cond_5

    mul-float/2addr v0, v6

    sub-float v0, v1, v0

    move-object v1, p0

    goto :goto_0

    .line 70
    :cond_2
    iget v0, p0, Lcom/nut/blehunter/ui/widget/ShadowCircleImageView;->b:F

    sub-float/2addr v0, v2

    div-float/2addr v0, v2

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v0, v4

    goto :goto_1

    .line 74
    :cond_3
    const/high16 v3, 0x42b40000    # 90.0f

    sub-float v0, v3, v0

    goto :goto_2

    .line 77
    :cond_4
    iget v0, p0, Lcom/nut/blehunter/ui/widget/ShadowCircleImageView;->b:F

    sub-float/2addr v0, v2

    div-float/2addr v0, v2

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v0, v4

    goto :goto_3

    .line 81
    :cond_5
    mul-float/2addr v0, v6

    move-object v1, p0

    goto/16 :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 49
    invoke-super {p0, p1, p2, p3, p4}, Lcom/nut/blehunter/ui/widget/CircleImageView;->onSizeChanged(IIII)V

    .line 50
    invoke-direct {p0}, Lcom/nut/blehunter/ui/widget/ShadowCircleImageView;->a()V

    .line 51
    return-void
.end method

.method public setShadowColor(I)V
    .locals 2

    .prologue
    .line 98
    iput p1, p0, Lcom/nut/blehunter/ui/widget/ShadowCircleImageView;->e:I

    .line 99
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/ShadowCircleImageView;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/nut/blehunter/ui/widget/ShadowCircleImageView;->e:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/ShadowCircleImageView;->a:Landroid/graphics/Paint;

    const/16 v1, 0xb3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 101
    return-void
.end method

.method public setShadowHeight(F)V
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/nut/blehunter/ui/widget/ShadowCircleImageView;->b:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    iput p1, p0, Lcom/nut/blehunter/ui/widget/ShadowCircleImageView;->b:F

    .line 94
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/ShadowCircleImageView;->postInvalidate()V

    goto :goto_0
.end method
