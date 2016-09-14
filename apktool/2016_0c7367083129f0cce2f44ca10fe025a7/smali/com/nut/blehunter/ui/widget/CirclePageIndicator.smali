.class public Lcom/nut/blehunter/ui/widget/CirclePageIndicator;
.super Landroid/view/View;
.source "CirclePageIndicator.java"

# interfaces
.implements Lcom/nut/blehunter/ui/widget/j;


# instance fields
.field private a:F

.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/graphics/Paint;

.field private final d:Landroid/graphics/Paint;

.field private e:Landroid/support/v4/view/ViewPager;

.field private f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private g:I

.field private h:I

.field private i:F

.field private j:I

.field private k:I

.field private l:Z

.field private m:Z

.field private n:I

.field private o:F

.field private p:I

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 89
    const v0, 0x7f010009

    invoke-direct {p0, p1, p2, v0}, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 94
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->b:Landroid/graphics/Paint;

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->c:Landroid/graphics/Paint;

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->d:Landroid/graphics/Paint;

    .line 78
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->o:F

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->p:I

    .line 95
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 101
    const v1, 0x7f0a0044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 103
    const v2, 0x7f0a0043

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 105
    const v3, 0x7f0b0004

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 107
    const v4, 0x7f0a0045

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 109
    const v5, 0x7f070075

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 111
    const v6, 0x7f070074

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 113
    const v7, 0x7f090005

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    .line 115
    const v8, 0x7f090006

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 119
    sget-object v8, Lcom/nut/blehunter/R$styleable;->CirclePageIndicator:[I

    invoke-virtual {p1, p2, v8, p3, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 122
    const/4 v9, 0x2

    invoke-virtual {v8, v9, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->l:Z

    .line 124
    invoke-virtual {v8, v11, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->k:I

    .line 127
    iget-object v3, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->b:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 128
    iget-object v3, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->b:Landroid/graphics/Paint;

    const/4 v7, 0x5

    invoke-virtual {v8, v7, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->c:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 131
    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->c:Landroid/graphics/Paint;

    const/16 v3, 0x8

    invoke-virtual {v8, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->c:Landroid/graphics/Paint;

    const/4 v3, 0x3

    invoke-virtual {v8, v3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 137
    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->d:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 138
    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->d:Landroid/graphics/Paint;

    const/4 v3, 0x4

    invoke-virtual {v8, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 140
    const/4 v1, 0x6

    invoke-virtual {v8, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->a:F

    .line 142
    const/4 v1, 0x7

    invoke-virtual {v8, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->m:Z

    .line 144
    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 146
    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 150
    :cond_1
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 152
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 153
    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->n:I

    goto/16 :goto_0
.end method

.method private a(I)I
    .locals 6

    .prologue
    .line 515
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 516
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 518
    const/high16 v0, 0x40000000    # 2.0f

    if-eq v2, v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_2

    :cond_0
    move v0, v1

    .line 532
    :cond_1
    :goto_0
    return v0

    .line 523
    :cond_2
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .line 524
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-int/lit8 v4, v0, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->a:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    iget v4, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->a:F

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v0, v3

    float-to-int v0, v0

    .line 528
    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_1

    .line 529
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private b(I)I
    .locals 4

    .prologue
    .line 543
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 544
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 546
    const/high16 v1, 0x40000000    # 2.0f

    if-ne v2, v1, :cond_0

    .line 558
    :goto_0
    return v0

    .line 551
    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    iget v3, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->a:F

    mul-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->getPaddingBottom()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v1, v3

    float-to-int v1, v1

    .line 554
    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_1

    .line 555
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getFillColor()I
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->d:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->k:I

    return v0
.end method

.method public getPageColor()I
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->a:F

    return v0
.end method

.method public getStrokeColor()I
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 240
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 242
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_1

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v6

    .line 246
    if-eqz v6, :cond_0

    .line 250
    iget v0, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->g:I

    if-lt v0, v6, :cond_2

    .line 251
    add-int/lit8 v0, v6, -0x1

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->setCurrentItem(I)V

    goto :goto_0

    .line 259
    :cond_2
    iget v0, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->k:I

    if-nez v0, :cond_7

    .line 260
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->getWidth()I

    move-result v3

    .line 261
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->getPaddingLeft()I

    move-result v2

    .line 262
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->getPaddingRight()I

    move-result v1

    .line 263
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->getPaddingTop()I

    move-result v0

    .line 271
    :goto_1
    iget v4, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->a:F

    const/high16 v5, 0x40800000    # 4.0f

    mul-float v7, v4, v5

    .line 272
    int-to-float v0, v0

    iget v4, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->a:F

    add-float/2addr v4, v0

    .line 273
    int-to-float v0, v2

    iget v5, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->a:F

    add-float/2addr v0, v5

    .line 274
    iget-boolean v5, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->l:Z

    if-eqz v5, :cond_3

    .line 275
    sub-int v2, v3, v2

    sub-int v1, v2, v1

    int-to-float v1, v1

    div-float/2addr v1, v8

    int-to-float v2, v6

    mul-float/2addr v2, v7

    div-float/2addr v2, v8

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 282
    :cond_3
    iget v1, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->a:F

    .line 283
    iget-object v2, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 284
    iget-object v2, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    div-float/2addr v2, v8

    sub-float/2addr v1, v2

    .line 288
    :cond_4
    const/4 v2, 0x0

    move v5, v2

    :goto_2
    if-ge v5, v6, :cond_9

    .line 289
    int-to-float v2, v5

    mul-float/2addr v2, v7

    add-float/2addr v2, v0

    .line 290
    iget v3, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->k:I

    if-nez v3, :cond_8

    move v3, v2

    move v2, v4

    .line 298
    :goto_3
    iget-object v8, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getAlpha()I

    move-result v8

    if-lez v8, :cond_5

    .line 299
    iget-object v8, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v1, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 303
    :cond_5
    iget v8, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->a:F

    cmpl-float v8, v1, v8

    if-eqz v8, :cond_6

    .line 304
    iget v8, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->a:F

    iget-object v9, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 288
    :cond_6
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_2

    .line 265
    :cond_7
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->getHeight()I

    move-result v3

    .line 266
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->getPaddingTop()I

    move-result v2

    .line 267
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->getPaddingBottom()I

    move-result v1

    .line 268
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->getPaddingLeft()I

    move-result v0

    goto :goto_1

    :cond_8
    move v3, v4

    .line 294
    goto :goto_3

    .line 309
    :cond_9
    iget-boolean v1, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->m:Z

    if-eqz v1, :cond_b

    iget v1, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->h:I

    :goto_4
    int-to-float v1, v1

    mul-float/2addr v1, v7

    .line 310
    iget-boolean v2, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->m:Z

    if-nez v2, :cond_a

    .line 311
    iget v2, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->i:F

    mul-float/2addr v2, v7

    add-float/2addr v1, v2

    .line 313
    :cond_a
    iget v2, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->k:I

    if-nez v2, :cond_c

    .line 314
    add-float/2addr v0, v1

    .line 320
    :goto_5
    iget v1, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->a:F

    iget-object v2, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 309
    :cond_b
    iget v1, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->g:I

    goto :goto_4

    .line 318
    :cond_c
    add-float/2addr v0, v1

    move v10, v0

    move v0, v4

    move v4, v10

    goto :goto_5
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 498
    iget v0, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->k:I

    if-nez v0, :cond_0

    .line 499
    invoke-direct {p0, p1}, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->a(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->b(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->setMeasuredDimension(II)V

    .line 505
    :goto_0
    return-void

    .line 502
    :cond_0
    invoke-direct {p0, p1}, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->b(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->a(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    .prologue
    .line 453
    iput p1, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->j:I

    .line 455
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 458
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .prologue
    .line 463
    iput p1, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->g:I

    .line 464
    iput p2, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->i:F

    .line 465
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->invalidate()V

    .line 467
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 471
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .prologue
    .line 475
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->m:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->j:I

    if-nez v0, :cond_1

    .line 476
    :cond_0
    iput p1, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->g:I

    .line 477
    iput p1, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->h:I

    .line 478
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->invalidate()V

    .line 481
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_2

    .line 482
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 484
    :cond_2
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 563
    check-cast p1, Lcom/nut/blehunter/ui/widget/CirclePageIndicator$SavedState;

    .line 564
    invoke-virtual {p1}, Lcom/nut/blehunter/ui/widget/CirclePageIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 565
    iget v0, p1, Lcom/nut/blehunter/ui/widget/CirclePageIndicator$SavedState;->a:I

    iput v0, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->g:I

    .line 566
    iget v0, p1, Lcom/nut/blehunter/ui/widget/CirclePageIndicator$SavedState;->a:I

    iput v0, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->h:I

    .line 567
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->requestLayout()V

    .line 568
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 572
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 573
    new-instance v1, Lcom/nut/blehunter/ui/widget/CirclePageIndicator$SavedState;

    invoke-direct {v1, v0}, Lcom/nut/blehunter/ui/widget/CirclePageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 574
    iget v0, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->g:I

    iput v0, v1, Lcom/nut/blehunter/ui/widget/CirclePageIndicator$SavedState;->a:I

    .line 575
    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 324
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 410
    :cond_0
    :goto_0
    return v1

    .line 327
    :cond_1
    iget-object v2, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v1, v0

    .line 328
    goto :goto_0

    .line 331
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 332
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 334
    :pswitch_1
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->p:I

    .line 335
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->o:F

    goto :goto_0

    .line 339
    :pswitch_2
    iget v0, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->p:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 341
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 342
    iget v2, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->o:F

    sub-float v2, v0, v2

    .line 344
    iget-boolean v3, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->q:Z

    if-nez v3, :cond_4

    .line 345
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->n:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 346
    iput-boolean v1, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->q:Z

    .line 350
    :cond_4
    iget-boolean v3, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->q:Z

    if-eqz v3, :cond_0

    .line 351
    iput v0, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->o:F

    .line 352
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->beginFakeDrag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    :cond_5
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->fakeDragBy(F)V

    goto :goto_0

    .line 362
    :pswitch_3
    iget-boolean v3, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->q:Z

    if-nez v3, :cond_7

    .line 363
    iget-object v3, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    .line 364
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->getWidth()I

    move-result v4

    .line 365
    int-to-float v5, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    .line 366
    int-to-float v4, v4

    const/high16 v6, 0x40c00000    # 6.0f

    div-float/2addr v4, v6

    .line 368
    iget v6, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->g:I

    if-lez v6, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float v7, v5, v4

    cmpg-float v6, v6, v7

    if-gez v6, :cond_6

    .line 369
    if-eq v2, v8, :cond_0

    .line 370
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->g:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_0

    .line 373
    :cond_6
    iget v6, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->g:I

    add-int/lit8 v3, v3, -0x1

    if-ge v6, v3, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    add-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_7

    .line 375
    if-eq v2, v8, :cond_0

    .line 376
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->g:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_0

    .line 382
    :cond_7
    iput-boolean v0, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->q:Z

    .line 383
    const/4 v0, -0x1

    iput v0, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->p:I

    .line 384
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->endFakeDrag()V

    goto/16 :goto_0

    .line 390
    :pswitch_4
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 391
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v2

    iput v2, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->o:F

    .line 392
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->p:I

    goto/16 :goto_0

    .line 397
    :pswitch_5
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    .line 398
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 400
    iget v4, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->p:I

    if-ne v3, v4, :cond_9

    .line 401
    if-nez v2, :cond_8

    move v0, v1

    .line 402
    :cond_8
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->p:I

    .line 405
    :cond_9
    iget v0, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->p:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    iput v0, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->o:F

    goto/16 :goto_0

    .line 332
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setCentered(Z)V
    .locals 0

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->l:Z

    .line 159
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->invalidate()V

    .line 160
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    .prologue
    .line 438
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    .line 439
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 442
    iput p1, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->g:I

    .line 443
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->invalidate()V

    .line 444
    return-void
.end method

.method public setFillColor(I)V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 177
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->invalidate()V

    .line 178
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0

    .prologue
    .line 488
    iput-object p1, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 489
    return-void
.end method

.method public setOrientation(I)V
    .locals 2

    .prologue
    .line 185
    packed-switch p1, :pswitch_data_0

    .line 193
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Orientation must be either HORIZONTAL or VERTICAL."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :pswitch_0
    iput p1, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->k:I

    .line 189
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->requestLayout()V

    .line 190
    return-void

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setPageColor(I)V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 168
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->invalidate()V

    .line 169
    return-void
.end method

.method public setRadius(F)V
    .locals 0

    .prologue
    .line 221
    iput p1, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->a:F

    .line 222
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->invalidate()V

    .line 223
    return-void
.end method

.method public setSnap(Z)V
    .locals 0

    .prologue
    .line 230
    iput-boolean p1, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->m:Z

    .line 231
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->invalidate()V

    .line 232
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 204
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->invalidate()V

    .line 205
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 213
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->invalidate()V

    .line 214
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    if-ne v0, p1, :cond_0

    .line 428
    :goto_0
    return-void

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 419
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 421
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 422
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :cond_2
    iput-object p1, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    .line 426
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 427
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->invalidate()V

    goto :goto_0
.end method
