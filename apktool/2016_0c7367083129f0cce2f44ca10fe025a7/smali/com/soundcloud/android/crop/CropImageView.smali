.class public Lcom/soundcloud/android/crop/CropImageView;
.super Lcom/soundcloud/android/crop/q;
.source "CropImageView.java"


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/soundcloud/android/crop/n;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/soundcloud/android/crop/n;

.field c:Landroid/content/Context;

.field private k:F

.field private l:F

.field private m:I

.field private n:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/soundcloud/android/crop/q;-><init>(Landroid/content/Context;)V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/CropImageView;->a:Ljava/util/ArrayList;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/soundcloud/android/crop/q;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/CropImageView;->a:Ljava/util/ArrayList;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/soundcloud/android/crop/q;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/CropImageView;->a:Ljava/util/ArrayList;

    .line 33
    return-void
.end method

.method private a(Lcom/soundcloud/android/crop/n;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const v4, 0x3f19999a    # 0.6f

    const/4 v6, 0x0

    .line 159
    iget-object v0, p1, Lcom/soundcloud/android/crop/n;->b:Landroid/graphics/Rect;

    .line 161
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    .line 162
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    .line 164
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 165
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 167
    div-float v1, v2, v1

    mul-float/2addr v1, v4

    .line 168
    div-float v0, v3, v0

    mul-float/2addr v0, v4

    .line 170
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 171
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageView;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    .line 172
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 174
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageView;->getScale()F

    move-result v1

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v1, v0

    float-to-double v2, v1

    const-wide v4, 0x3fb999999999999aL    # 0.1

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    .line 175
    const/4 v1, 0x2

    new-array v1, v1, [F

    iget-object v2, p1, Lcom/soundcloud/android/crop/n;->a:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    aput v2, v1, v6

    iget-object v2, p1, Lcom/soundcloud/android/crop/n;->a:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    aput v2, v1, v7

    .line 176
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageView;->getUnrotatedMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 177
    aget v2, v1, v6

    aget v1, v1, v7

    invoke-virtual {p0, v0, v2, v1}, Lcom/soundcloud/android/crop/CropImageView;->b(FFF)V

    .line 3140
    :cond_0
    iget-object v1, p1, Lcom/soundcloud/android/crop/n;->b:Landroid/graphics/Rect;

    .line 3142
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageView;->getLeft()I

    move-result v0

    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 3143
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageView;->getRight()I

    move-result v0

    iget v3, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v3

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 3145
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageView;->getTop()I

    move-result v0

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v4

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3146
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageView;->getBottom()I

    move-result v4

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v4, v1

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3148
    if-eqz v2, :cond_3

    .line 3149
    :goto_0
    if-eqz v0, :cond_4

    .line 3151
    :goto_1
    if-nez v2, :cond_1

    if-eqz v0, :cond_2

    .line 3152
    :cond_1
    int-to-float v1, v2

    int-to-float v0, v0

    invoke-virtual {p0, v1, v0}, Lcom/soundcloud/android/crop/CropImageView;->b(FF)V

    .line 181
    :cond_2
    return-void

    :cond_3
    move v2, v3

    .line 3148
    goto :goto_0

    :cond_4
    move v0, v1

    .line 3149
    goto :goto_1
.end method


# virtual methods
.method public final bridge synthetic a()V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0}, Lcom/soundcloud/android/crop/q;->a()V

    return-void
.end method

.method protected final a(FF)V
    .locals 3

    .prologue
    .line 79
    invoke-super {p0, p1, p2}, Lcom/soundcloud/android/crop/q;->a(FF)V

    .line 80
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/soundcloud/android/crop/n;

    .line 81
    iget-object v2, v0, Lcom/soundcloud/android/crop/n;->c:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 82
    invoke-virtual {v0}, Lcom/soundcloud/android/crop/n;->b()V

    goto :goto_0

    .line 84
    :cond_0
    return-void
.end method

.method protected final a(FFF)V
    .locals 4

    .prologue
    .line 52
    invoke-super {p0, p1, p2, p3}, Lcom/soundcloud/android/crop/q;->a(FFF)V

    .line 53
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/soundcloud/android/crop/n;

    .line 54
    iget-object v2, v0, Lcom/soundcloud/android/crop/n;->c:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageView;->getUnrotatedMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 55
    invoke-virtual {v0}, Lcom/soundcloud/android/crop/n;->b()V

    goto :goto_0

    .line 57
    :cond_0
    return-void
.end method

.method public final bridge synthetic a(Landroid/graphics/Bitmap;Z)V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0, p1, p2}, Lcom/soundcloud/android/crop/q;->a(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public final bridge synthetic a(Lcom/soundcloud/android/crop/z;Z)V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0, p1, p2}, Lcom/soundcloud/android/crop/q;->a(Lcom/soundcloud/android/crop/z;Z)V

    return-void
.end method

.method public bridge synthetic getUnrotatedMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/soundcloud/android/crop/q;->getUnrotatedMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .prologue
    const/4 v9, 0x1

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v12, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 185
    invoke-super {p0, p1}, Lcom/soundcloud/android/crop/q;->onDraw(Landroid/graphics/Canvas;)V

    .line 186
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/soundcloud/android/crop/n;

    .line 4128
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4129
    new-instance v11, Landroid/graphics/Path;

    invoke-direct {v11}, Landroid/graphics/Path;-><init>()V

    .line 4130
    iget-object v0, v8, Lcom/soundcloud/android/crop/n;->f:Landroid/graphics/Paint;

    iget v2, v8, Lcom/soundcloud/android/crop/n;->q:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 4388
    iget-boolean v0, v8, Lcom/soundcloud/android/crop/n;->r:Z

    .line 4131
    if-nez v0, :cond_1

    .line 4132
    iget-object v0, v8, Lcom/soundcloud/android/crop/n;->f:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 4133
    iget-object v0, v8, Lcom/soundcloud/android/crop/n;->b:Landroid/graphics/Rect;

    iget-object v2, v8, Lcom/soundcloud/android/crop/n;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 4135
    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 4136
    iget-object v0, v8, Lcom/soundcloud/android/crop/n;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 4138
    new-instance v0, Landroid/graphics/RectF;

    iget-object v3, v8, Lcom/soundcloud/android/crop/n;->b:Landroid/graphics/Rect;

    invoke-direct {v0, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v11, v0, v3}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 4139
    iget-object v0, v8, Lcom/soundcloud/android/crop/n;->f:Landroid/graphics/Paint;

    iget v3, v8, Lcom/soundcloud/android/crop/n;->k:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 5183
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-eq v0, v3, :cond_7

    .line 5185
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-le v0, v3, :cond_6

    :cond_2
    move v0, v9

    .line 4141
    :goto_1
    if-eqz v0, :cond_8

    .line 4142
    sget-object v0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v11, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 4143
    iget-object v0, v8, Lcom/soundcloud/android/crop/n;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 4148
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 4149
    iget-object v0, v8, Lcom/soundcloud/android/crop/n;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v11, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 4151
    iget-boolean v0, v8, Lcom/soundcloud/android/crop/n;->i:Z

    if-eqz v0, :cond_3

    .line 6204
    iget-object v0, v8, Lcom/soundcloud/android/crop/n;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 6205
    iget-object v0, v8, Lcom/soundcloud/android/crop/n;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, v8, Lcom/soundcloud/android/crop/n;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    .line 6206
    iget-object v2, v8, Lcom/soundcloud/android/crop/n;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, v8, Lcom/soundcloud/android/crop/n;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x3

    int-to-float v11, v2

    .line 6208
    iget-object v2, v8, Lcom/soundcloud/android/crop/n;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float v3, v2, v0

    iget-object v2, v8, Lcom/soundcloud/android/crop/n;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v2

    iget-object v2, v8, Lcom/soundcloud/android/crop/n;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float v5, v2, v0

    iget-object v2, v8, Lcom/soundcloud/android/crop/n;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v2

    iget-object v7, v8, Lcom/soundcloud/android/crop/n;->f:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 6210
    iget-object v2, v8, Lcom/soundcloud/android/crop/n;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    mul-float v3, v0, v12

    add-float/2addr v3, v2

    iget-object v2, v8, Lcom/soundcloud/android/crop/n;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v2

    iget-object v2, v8, Lcom/soundcloud/android/crop/n;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    mul-float/2addr v0, v12

    add-float v5, v2, v0

    iget-object v0, v8, Lcom/soundcloud/android/crop/n;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v0

    iget-object v7, v8, Lcom/soundcloud/android/crop/n;->f:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 6212
    iget-object v0, v8, Lcom/soundcloud/android/crop/n;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget-object v0, v8, Lcom/soundcloud/android/crop/n;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float v4, v0, v11

    iget-object v0, v8, Lcom/soundcloud/android/crop/n;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v0

    iget-object v0, v8, Lcom/soundcloud/android/crop/n;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float v6, v0, v11

    iget-object v7, v8, Lcom/soundcloud/android/crop/n;->f:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 6214
    iget-object v0, v8, Lcom/soundcloud/android/crop/n;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget-object v0, v8, Lcom/soundcloud/android/crop/n;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    mul-float v2, v11, v12

    add-float v4, v0, v2

    iget-object v0, v8, Lcom/soundcloud/android/crop/n;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v0

    iget-object v0, v8, Lcom/soundcloud/android/crop/n;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    mul-float v2, v11, v12

    add-float v6, v0, v2

    iget-object v7, v8, Lcom/soundcloud/android/crop/n;->f:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 4155
    :cond_3
    iget-boolean v0, v8, Lcom/soundcloud/android/crop/n;->j:Z

    if-eqz v0, :cond_4

    .line 6219
    iget-object v0, v8, Lcom/soundcloud/android/crop/n;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 6220
    new-instance v0, Landroid/graphics/RectF;

    iget-object v2, v8, Lcom/soundcloud/android/crop/n;->b:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object v2, v8, Lcom/soundcloud/android/crop/n;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 4159
    :cond_4
    iget v0, v8, Lcom/soundcloud/android/crop/n;->m:I

    sget v2, Lcom/soundcloud/android/crop/o;->b:I

    if-eq v0, v2, :cond_5

    iget v0, v8, Lcom/soundcloud/android/crop/n;->m:I

    sget v2, Lcom/soundcloud/android/crop/o;->a:I

    if-ne v0, v2, :cond_0

    iget v0, v8, Lcom/soundcloud/android/crop/n;->l:I

    sget v2, Lcom/soundcloud/android/crop/p;->c:I

    if-ne v0, v2, :cond_0

    .line 7194
    :cond_5
    iget-object v0, v8, Lcom/soundcloud/android/crop/n;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, v8, Lcom/soundcloud/android/crop/n;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, v8, Lcom/soundcloud/android/crop/n;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 7195
    iget-object v2, v8, Lcom/soundcloud/android/crop/n;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, v8, Lcom/soundcloud/android/crop/n;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, v8, Lcom/soundcloud/android/crop/n;->b:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 7197
    iget-object v3, v8, Lcom/soundcloud/android/crop/n;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    int-to-float v4, v2

    iget v5, v8, Lcom/soundcloud/android/crop/n;->p:F

    iget-object v6, v8, Lcom/soundcloud/android/crop/n;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 7198
    int-to-float v3, v0

    iget-object v4, v8, Lcom/soundcloud/android/crop/n;->b:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v5, v8, Lcom/soundcloud/android/crop/n;->p:F

    iget-object v6, v8, Lcom/soundcloud/android/crop/n;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 7199
    iget-object v3, v8, Lcom/soundcloud/android/crop/n;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    int-to-float v2, v2

    iget v4, v8, Lcom/soundcloud/android/crop/n;->p:F

    iget-object v5, v8, Lcom/soundcloud/android/crop/n;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 7200
    int-to-float v0, v0

    iget-object v2, v8, Lcom/soundcloud/android/crop/n;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget v3, v8, Lcom/soundcloud/android/crop/n;->p:F

    iget-object v4, v8, Lcom/soundcloud/android/crop/n;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 5189
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v9

    goto/16 :goto_1

    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 6170
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, v8, Lcom/soundcloud/android/crop/n;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    iget-object v5, v8, Lcom/soundcloud/android/crop/n;->e:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 6171
    iget-object v0, v8, Lcom/soundcloud/android/crop/n;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, v8, Lcom/soundcloud/android/crop/n;->e:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 6172
    iget-object v0, v8, Lcom/soundcloud/android/crop/n;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget-object v0, v8, Lcom/soundcloud/android/crop/n;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget-object v0, v8, Lcom/soundcloud/android/crop/n;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, v8, Lcom/soundcloud/android/crop/n;->e:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 6173
    iget-object v0, v8, Lcom/soundcloud/android/crop/n;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget-object v0, v8, Lcom/soundcloud/android/crop/n;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v5, v0

    iget-object v0, v8, Lcom/soundcloud/android/crop/n;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v0

    iget-object v7, v8, Lcom/soundcloud/android/crop/n;->e:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 189
    :cond_9
    return-void
.end method

.method public bridge synthetic onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 12
    invoke-super {p0, p1, p2}, Lcom/soundcloud/android/crop/q;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 12
    invoke-super {p0, p1, p2}, Lcom/soundcloud/android/crop/q;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .prologue
    .line 37
    invoke-super/range {p0 .. p5}, Lcom/soundcloud/android/crop/q;->onLayout(ZIIII)V

    .line 38
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageView;->f:Lcom/soundcloud/android/crop/z;

    .line 1044
    iget-object v0, v0, Lcom/soundcloud/android/crop/z;->a:Landroid/graphics/Bitmap;

    .line 38
    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/soundcloud/android/crop/n;

    .line 41
    iget-object v2, v0, Lcom/soundcloud/android/crop/n;->c:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageView;->getUnrotatedMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 42
    invoke-virtual {v0}, Lcom/soundcloud/android/crop/n;->b()V

    .line 1388
    iget-boolean v2, v0, Lcom/soundcloud/android/crop/n;->r:Z

    .line 43
    if-eqz v2, :cond_0

    .line 44
    invoke-direct {p0, v0}, Lcom/soundcloud/android/crop/CropImageView;->a(Lcom/soundcloud/android/crop/n;)V

    goto :goto_0

    .line 48
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .prologue
    const/high16 v4, 0x41c80000    # 25.0f

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v2, 0x1

    const/high16 v10, 0x41a00000    # 20.0f

    const/4 v1, 0x0

    .line 88
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageView;->c:Landroid/content/Context;

    check-cast v0, Lcom/soundcloud/android/crop/CropImageActivity;

    .line 1450
    iget-boolean v0, v0, Lcom/soundcloud/android/crop/CropImageActivity;->a:Z

    .line 89
    if-eqz v0, :cond_1

    .line 90
    const/4 v2, 0x0

    .line 135
    :cond_0
    :goto_0
    return v2

    .line 93
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 95
    :pswitch_0
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/soundcloud/android/crop/n;

    .line 96
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 2232
    invoke-virtual {v0}, Lcom/soundcloud/android/crop/n;->a()Landroid/graphics/Rect;

    move-result-object v8

    .line 2238
    iget v1, v8, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr v1, v10

    cmpl-float v1, v7, v1

    if-ltz v1, :cond_6

    iget v1, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float/2addr v1, v10

    cmpg-float v1, v7, v1

    if-gez v1, :cond_6

    move v1, v2

    .line 2240
    :goto_1
    iget v3, v8, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v3, v10

    cmpl-float v3, v6, v3

    if-ltz v3, :cond_7

    iget v3, v8, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    add-float/2addr v3, v10

    cmpg-float v3, v6, v3

    if-gez v3, :cond_7

    move v3, v2

    .line 2244
    :goto_2
    iget v4, v8, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v10

    if-gez v4, :cond_1c

    if-eqz v1, :cond_1c

    .line 2245
    const/4 v4, 0x3

    .line 2247
    :goto_3
    iget v9, v8, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    sub-float/2addr v9, v6

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpg-float v9, v9, v10

    if-gez v9, :cond_3

    if-eqz v1, :cond_3

    .line 2248
    or-int/lit8 v4, v4, 0x4

    .line 2250
    :cond_3
    iget v1, v8, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr v1, v7

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v10

    if-gez v1, :cond_4

    if-eqz v3, :cond_4

    .line 2251
    or-int/lit8 v4, v4, 0x8

    .line 2253
    :cond_4
    iget v1, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v1, v7

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v10

    if-gez v1, :cond_1b

    if-eqz v3, :cond_1b

    .line 2254
    or-int/lit8 v4, v4, 0x10

    move v1, v4

    .line 2258
    :goto_4
    if-ne v1, v2, :cond_5

    float-to-int v3, v6

    float-to-int v4, v7

    invoke-virtual {v8, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2259
    const/16 v1, 0x20

    .line 97
    :cond_5
    if-eq v1, v2, :cond_2

    .line 98
    iput v1, p0, Lcom/soundcloud/android/crop/CropImageView;->m:I

    .line 99
    iput-object v0, p0, Lcom/soundcloud/android/crop/CropImageView;->b:Lcom/soundcloud/android/crop/n;

    .line 100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/soundcloud/android/crop/CropImageView;->k:F

    .line 101
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/soundcloud/android/crop/CropImageView;->l:F

    .line 103
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/soundcloud/android/crop/CropImageView;->n:I

    .line 104
    iget-object v3, p0, Lcom/soundcloud/android/crop/CropImageView;->b:Lcom/soundcloud/android/crop/n;

    const/16 v0, 0x20

    if-ne v1, v0, :cond_8

    sget v0, Lcom/soundcloud/android/crop/p;->b:I

    :goto_5
    invoke-virtual {v3, v0}, Lcom/soundcloud/android/crop/n;->a(I)V

    goto/16 :goto_0

    .line 2238
    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 2240
    :cond_7
    const/4 v3, 0x0

    goto :goto_2

    .line 104
    :cond_8
    sget v0, Lcom/soundcloud/android/crop/p;->c:I

    goto :goto_5

    .line 112
    :pswitch_1
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageView;->b:Lcom/soundcloud/android/crop/n;

    if-eqz v0, :cond_9

    .line 113
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageView;->b:Lcom/soundcloud/android/crop/n;

    invoke-direct {p0, v0}, Lcom/soundcloud/android/crop/CropImageView;->a(Lcom/soundcloud/android/crop/n;)V

    .line 114
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageView;->b:Lcom/soundcloud/android/crop/n;

    sget v1, Lcom/soundcloud/android/crop/p;->a:I

    invoke-virtual {v0, v1}, Lcom/soundcloud/android/crop/n;->a(I)V

    .line 116
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/soundcloud/android/crop/CropImageView;->b:Lcom/soundcloud/android/crop/n;

    .line 117
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageView;->b()V

    goto/16 :goto_0

    .line 120
    :pswitch_2
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageView;->b:Lcom/soundcloud/android/crop/n;

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iget v3, p0, Lcom/soundcloud/android/crop/CropImageView;->n:I

    if-ne v0, v3, :cond_a

    .line 121
    iget-object v5, p0, Lcom/soundcloud/android/crop/CropImageView;->b:Lcom/soundcloud/android/crop/n;

    iget v6, p0, Lcom/soundcloud/android/crop/CropImageView;->m:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/soundcloud/android/crop/CropImageView;->k:F

    sub-float v3, v0, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v7, p0, Lcom/soundcloud/android/crop/CropImageView;->l:F

    sub-float/2addr v0, v7

    .line 2267
    invoke-virtual {v5}, Lcom/soundcloud/android/crop/n;->a()Landroid/graphics/Rect;

    move-result-object v7

    .line 2268
    const/16 v8, 0x20

    if-ne v6, v8, :cond_b

    .line 2270
    iget-object v4, v5, Lcom/soundcloud/android/crop/n;->a:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    mul-float/2addr v3, v4

    iget-object v4, v5, Lcom/soundcloud/android/crop/n;->a:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    mul-float/2addr v0, v4

    .line 2291
    new-instance v4, Landroid/graphics/Rect;

    iget-object v6, v5, Lcom/soundcloud/android/crop/n;->b:Landroid/graphics/Rect;

    invoke-direct {v4, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2293
    iget-object v6, v5, Lcom/soundcloud/android/crop/n;->a:Landroid/graphics/RectF;

    invoke-virtual {v6, v3, v0}, Landroid/graphics/RectF;->offset(FF)V

    .line 2296
    iget-object v0, v5, Lcom/soundcloud/android/crop/n;->a:Landroid/graphics/RectF;

    iget-object v3, v5, Lcom/soundcloud/android/crop/n;->d:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v6, v5, Lcom/soundcloud/android/crop/n;->a:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v6

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget-object v6, v5, Lcom/soundcloud/android/crop/n;->d:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget-object v7, v5, Lcom/soundcloud/android/crop/n;->a:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    sub-float/2addr v6, v7

    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-virtual {v0, v3, v6}, Landroid/graphics/RectF;->offset(FF)V

    .line 2300
    iget-object v0, v5, Lcom/soundcloud/android/crop/n;->a:Landroid/graphics/RectF;

    iget-object v3, v5, Lcom/soundcloud/android/crop/n;->d:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v6, v5, Lcom/soundcloud/android/crop/n;->a:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v6

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget-object v6, v5, Lcom/soundcloud/android/crop/n;->d:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    iget-object v7, v5, Lcom/soundcloud/android/crop/n;->a:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v6, v7

    invoke-static {v1, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 2304
    invoke-virtual {v5}, Lcom/soundcloud/android/crop/n;->a()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, v5, Lcom/soundcloud/android/crop/n;->b:Landroid/graphics/Rect;

    .line 2305
    iget-object v0, v5, Lcom/soundcloud/android/crop/n;->b:Landroid/graphics/Rect;

    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 2306
    iget v0, v5, Lcom/soundcloud/android/crop/n;->p:F

    float-to-int v0, v0

    neg-int v0, v0

    iget v1, v5, Lcom/soundcloud/android/crop/n;->p:F

    float-to-int v1, v1

    neg-int v1, v1

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 2307
    iget-object v0, v5, Lcom/soundcloud/android/crop/n;->h:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 123
    :goto_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/soundcloud/android/crop/CropImageView;->k:F

    .line 124
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/soundcloud/android/crop/CropImageView;->l:F

    .line 129
    :cond_a
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageView;->getScale()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageView;->b()V

    goto/16 :goto_0

    .line 2273
    :cond_b
    and-int/lit8 v8, v6, 0x6

    if-nez v8, :cond_c

    move v3, v1

    .line 2277
    :cond_c
    and-int/lit8 v8, v6, 0x18

    if-nez v8, :cond_d

    move v0, v1

    .line 2282
    :cond_d
    iget-object v8, v5, Lcom/soundcloud/android/crop/n;->a:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    mul-float/2addr v3, v8

    .line 2283
    iget-object v8, v5, Lcom/soundcloud/android/crop/n;->a:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float v7, v8, v7

    mul-float/2addr v7, v0

    .line 2284
    and-int/lit8 v0, v6, 0x2

    if-eqz v0, :cond_15

    const/4 v0, -0x1

    :goto_7
    int-to-float v0, v0

    mul-float/2addr v3, v0

    and-int/lit8 v0, v6, 0x8

    if-eqz v0, :cond_16

    const/4 v0, -0x1

    :goto_8
    int-to-float v0, v0

    mul-float/2addr v0, v7

    .line 2312
    iget-boolean v6, v5, Lcom/soundcloud/android/crop/n;->n:Z

    if-eqz v6, :cond_e

    .line 2313
    cmpl-float v6, v3, v1

    if-eqz v6, :cond_17

    .line 2314
    iget v0, v5, Lcom/soundcloud/android/crop/n;->o:F

    div-float v0, v3, v0

    .line 2323
    :cond_e
    :goto_9
    new-instance v6, Landroid/graphics/RectF;

    iget-object v7, v5, Lcom/soundcloud/android/crop/n;->a:Landroid/graphics/RectF;

    invoke-direct {v6, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 2324
    cmpl-float v7, v3, v1

    if-lez v7, :cond_f

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v7

    mul-float v8, v11, v3

    add-float/2addr v7, v8

    iget-object v8, v5, Lcom/soundcloud/android/crop/n;->d:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_f

    .line 2325
    iget-object v3, v5, Lcom/soundcloud/android/crop/n;->d:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v7

    sub-float/2addr v3, v7

    div-float/2addr v3, v11

    .line 2326
    iget-boolean v7, v5, Lcom/soundcloud/android/crop/n;->n:Z

    if-eqz v7, :cond_f

    .line 2327
    iget v0, v5, Lcom/soundcloud/android/crop/n;->o:F

    div-float v0, v3, v0

    .line 2330
    :cond_f
    cmpl-float v7, v0, v1

    if-lez v7, :cond_10

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v7

    mul-float v8, v11, v0

    add-float/2addr v7, v8

    iget-object v8, v5, Lcom/soundcloud/android/crop/n;->d:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_10

    .line 2331
    iget-object v0, v5, Lcom/soundcloud/android/crop/n;->d:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v7

    sub-float/2addr v0, v7

    div-float/2addr v0, v11

    .line 2332
    iget-boolean v7, v5, Lcom/soundcloud/android/crop/n;->n:Z

    if-eqz v7, :cond_10

    .line 2333
    iget v3, v5, Lcom/soundcloud/android/crop/n;->o:F

    mul-float/2addr v3, v0

    .line 2337
    :cond_10
    neg-float v3, v3

    neg-float v0, v0

    invoke-virtual {v6, v3, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 2341
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_11

    .line 2342
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v0

    sub-float v0, v4, v0

    neg-float v0, v0

    div-float/2addr v0, v11

    invoke-virtual {v6, v0, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 2344
    :cond_11
    iget-boolean v0, v5, Lcom/soundcloud/android/crop/n;->n:Z

    if-eqz v0, :cond_18

    iget v0, v5, Lcom/soundcloud/android/crop/n;->o:F

    div-float v0, v4, v0

    .line 2347
    :goto_a
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpg-float v3, v3, v0

    if-gez v3, :cond_12

    .line 2348
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float/2addr v0, v3

    neg-float v0, v0

    div-float/2addr v0, v11

    invoke-virtual {v6, v1, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 2352
    :cond_12
    iget v0, v6, Landroid/graphics/RectF;->left:F

    iget-object v3, v5, Lcom/soundcloud/android/crop/n;->d:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_19

    .line 2353
    iget-object v0, v5, Lcom/soundcloud/android/crop/n;->d:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v3, v6, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v3

    invoke-virtual {v6, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 2357
    :cond_13
    :goto_b
    iget v0, v6, Landroid/graphics/RectF;->top:F

    iget-object v3, v5, Lcom/soundcloud/android/crop/n;->d:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1a

    .line 2358
    iget-object v0, v5, Lcom/soundcloud/android/crop/n;->d:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v3, v6, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v3

    invoke-virtual {v6, v1, v0}, Landroid/graphics/RectF;->offset(FF)V

    .line 2363
    :cond_14
    :goto_c
    iget-object v0, v5, Lcom/soundcloud/android/crop/n;->a:Landroid/graphics/RectF;

    invoke-virtual {v0, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 2364
    invoke-virtual {v5}, Lcom/soundcloud/android/crop/n;->a()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, v5, Lcom/soundcloud/android/crop/n;->b:Landroid/graphics/Rect;

    .line 2365
    iget-object v0, v5, Lcom/soundcloud/android/crop/n;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_6

    :cond_15
    move v0, v2

    .line 2284
    goto/16 :goto_7

    :cond_16
    move v0, v2

    goto/16 :goto_8

    .line 2315
    :cond_17
    cmpl-float v6, v0, v1

    if-eqz v6, :cond_e

    .line 2316
    iget v3, v5, Lcom/soundcloud/android/crop/n;->o:F

    mul-float/2addr v3, v0

    goto/16 :goto_9

    :cond_18
    move v0, v4

    .line 2344
    goto :goto_a

    .line 2354
    :cond_19
    iget v0, v6, Landroid/graphics/RectF;->right:F

    iget-object v3, v5, Lcom/soundcloud/android/crop/n;->d:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_13

    .line 2355
    iget v0, v6, Landroid/graphics/RectF;->right:F

    iget-object v3, v5, Lcom/soundcloud/android/crop/n;->d:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v3

    neg-float v0, v0

    invoke-virtual {v6, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_b

    .line 2359
    :cond_1a
    iget v0, v6, Landroid/graphics/RectF;->bottom:F

    iget-object v3, v5, Lcom/soundcloud/android/crop/n;->d:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_14

    .line 2360
    iget v0, v6, Landroid/graphics/RectF;->bottom:F

    iget-object v3, v5, Lcom/soundcloud/android/crop/n;->d:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v3

    neg-float v0, v0

    invoke-virtual {v6, v1, v0}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_c

    :cond_1b
    move v1, v4

    goto/16 :goto_4

    :cond_1c
    move v4, v2

    goto/16 :goto_3

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/soundcloud/android/crop/q;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public bridge synthetic setRecycler(Lcom/soundcloud/android/crop/u;)V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/soundcloud/android/crop/q;->setRecycler(Lcom/soundcloud/android/crop/u;)V

    return-void
.end method
