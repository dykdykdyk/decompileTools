.class abstract Lcom/soundcloud/android/crop/q;
.super Landroid/widget/ImageView;
.source "ImageViewTouchBase.java"


# instance fields
.field private final a:Landroid/graphics/Matrix;

.field private final b:[F

.field private c:Ljava/lang/Runnable;

.field protected d:Landroid/graphics/Matrix;

.field protected e:Landroid/graphics/Matrix;

.field protected final f:Lcom/soundcloud/android/crop/z;

.field g:I

.field h:I

.field i:F

.field protected j:Landroid/os/Handler;

.field private k:Lcom/soundcloud/android/crop/u;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 80
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/q;->d:Landroid/graphics/Matrix;

    .line 50
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/q;->e:Landroid/graphics/Matrix;

    .line 54
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/q;->a:Landroid/graphics/Matrix;

    .line 57
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/soundcloud/android/crop/q;->b:[F

    .line 60
    new-instance v0, Lcom/soundcloud/android/crop/z;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/soundcloud/android/crop/z;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v0, p0, Lcom/soundcloud/android/crop/q;->f:Lcom/soundcloud/android/crop/z;

    .line 62
    iput v3, p0, Lcom/soundcloud/android/crop/q;->g:I

    .line 63
    iput v3, p0, Lcom/soundcloud/android/crop/q;->h:I

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/q;->j:Landroid/os/Handler;

    .line 1245
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/soundcloud/android/crop/q;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 85
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/q;->d:Landroid/graphics/Matrix;

    .line 50
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/q;->e:Landroid/graphics/Matrix;

    .line 54
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/q;->a:Landroid/graphics/Matrix;

    .line 57
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/soundcloud/android/crop/q;->b:[F

    .line 60
    new-instance v0, Lcom/soundcloud/android/crop/z;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/soundcloud/android/crop/z;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v0, p0, Lcom/soundcloud/android/crop/q;->f:Lcom/soundcloud/android/crop/z;

    .line 62
    iput v3, p0, Lcom/soundcloud/android/crop/q;->g:I

    .line 63
    iput v3, p0, Lcom/soundcloud/android/crop/q;->h:I

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/q;->j:Landroid/os/Handler;

    .line 2245
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/soundcloud/android/crop/q;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/q;->d:Landroid/graphics/Matrix;

    .line 50
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/q;->e:Landroid/graphics/Matrix;

    .line 54
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/q;->a:Landroid/graphics/Matrix;

    .line 57
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/soundcloud/android/crop/q;->b:[F

    .line 60
    new-instance v0, Lcom/soundcloud/android/crop/z;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/soundcloud/android/crop/z;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v0, p0, Lcom/soundcloud/android/crop/q;->f:Lcom/soundcloud/android/crop/z;

    .line 62
    iput v3, p0, Lcom/soundcloud/android/crop/q;->g:I

    .line 63
    iput v3, p0, Lcom/soundcloud/android/crop/q;->h:I

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/q;->j:Landroid/os/Handler;

    .line 3245
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/soundcloud/android/crop/q;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 92
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;I)V
    .locals 2

    .prologue
    .line 142
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 143
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/q;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_0

    .line 145
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/soundcloud/android/crop/q;->f:Lcom/soundcloud/android/crop/z;

    .line 5044
    iget-object v0, v0, Lcom/soundcloud/android/crop/z;->a:Landroid/graphics/Bitmap;

    .line 149
    iget-object v1, p0, Lcom/soundcloud/android/crop/q;->f:Lcom/soundcloud/android/crop/z;

    .line 5048
    iput-object p1, v1, Lcom/soundcloud/android/crop/z;->a:Landroid/graphics/Bitmap;

    .line 150
    iget-object v1, p0, Lcom/soundcloud/android/crop/q;->f:Lcom/soundcloud/android/crop/z;

    .line 6036
    iput p2, v1, Lcom/soundcloud/android/crop/z;->b:I

    .line 152
    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_1

    iget-object v1, p0, Lcom/soundcloud/android/crop/q;->k:Lcom/soundcloud/android/crop/u;

    if-eqz v1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/soundcloud/android/crop/q;->k:Lcom/soundcloud/android/crop/u;

    invoke-interface {v1, v0}, Lcom/soundcloud/android/crop/u;->a(Landroid/graphics/Bitmap;)V

    .line 155
    :cond_1
    return-void
.end method

.method private a(Lcom/soundcloud/android/crop/z;Landroid/graphics/Matrix;Z)V
    .locals 9

    .prologue
    const/high16 v6, 0x40400000    # 3.0f

    const/high16 v8, 0x40000000    # 2.0f

    .line 264
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/q;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 265
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/q;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 267
    invoke-virtual {p1}, Lcom/soundcloud/android/crop/z;->b()I

    move-result v2

    int-to-float v2, v2

    .line 268
    invoke-virtual {p1}, Lcom/soundcloud/android/crop/z;->a()I

    move-result v3

    int-to-float v3, v3

    .line 269
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 272
    div-float v4, v0, v2

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 273
    div-float v5, v1, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 274
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 276
    if-eqz p3, :cond_1

    .line 12053
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 12054
    iget-object v6, p1, Lcom/soundcloud/android/crop/z;->a:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_0

    iget v6, p1, Lcom/soundcloud/android/crop/z;->b:I

    if-eqz v6, :cond_0

    .line 12058
    iget-object v6, p1, Lcom/soundcloud/android/crop/z;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    .line 12059
    iget-object v7, p1, Lcom/soundcloud/android/crop/z;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    .line 12060
    neg-int v6, v6

    int-to-float v6, v6

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 12061
    iget v6, p1, Lcom/soundcloud/android/crop/z;->b:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 12062
    invoke-virtual {p1}, Lcom/soundcloud/android/crop/z;->b()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {p1}, Lcom/soundcloud/android/crop/z;->a()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 277
    :cond_0
    invoke-virtual {p2, v5}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 279
    :cond_1
    invoke-virtual {p2, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 280
    mul-float/2addr v2, v4

    sub-float/2addr v0, v2

    div-float/2addr v0, v8

    mul-float v2, v3, v4

    sub-float/2addr v1, v2

    div-float/2addr v1, v8

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 281
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 158
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/soundcloud/android/crop/q;->a(Landroid/graphics/Bitmap;Z)V

    .line 159
    return-void
.end method

.method protected a(FF)V
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/soundcloud/android/crop/q;->e:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 394
    return-void
.end method

.method protected a(FFF)V
    .locals 2

    .prologue
    .line 310
    iget v0, p0, Lcom/soundcloud/android/crop/q;->i:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 311
    iget p1, p0, Lcom/soundcloud/android/crop/q;->i:F

    .line 314
    :cond_0
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/q;->getScale()F

    move-result v0

    .line 315
    div-float v0, p1, v0

    .line 317
    iget-object v1, p0, Lcom/soundcloud/android/crop/q;->e:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 318
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/q;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/soundcloud/android/crop/q;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 319
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/q;->b()V

    .line 320
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;Z)V
    .locals 2

    .prologue
    .line 165
    new-instance v0, Lcom/soundcloud/android/crop/z;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/soundcloud/android/crop/z;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {p0, v0, p2}, Lcom/soundcloud/android/crop/q;->a(Lcom/soundcloud/android/crop/z;Z)V

    .line 166
    return-void
.end method

.method public a(Lcom/soundcloud/android/crop/z;Z)V
    .locals 3

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/q;->getWidth()I

    move-result v0

    .line 171
    if-gtz v0, :cond_0

    .line 172
    new-instance v0, Lcom/soundcloud/android/crop/s;

    invoke-direct {v0, p0, p1, p2}, Lcom/soundcloud/android/crop/s;-><init>(Lcom/soundcloud/android/crop/q;Lcom/soundcloud/android/crop/z;Z)V

    iput-object v0, p0, Lcom/soundcloud/android/crop/q;->c:Ljava/lang/Runnable;

    .line 193
    :goto_0
    return-void

    .line 6044
    :cond_0
    iget-object v0, p1, Lcom/soundcloud/android/crop/z;->a:Landroid/graphics/Bitmap;

    .line 180
    if-eqz v0, :cond_2

    .line 181
    iget-object v0, p0, Lcom/soundcloud/android/crop/q;->d:Landroid/graphics/Matrix;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/soundcloud/android/crop/q;->a(Lcom/soundcloud/android/crop/z;Landroid/graphics/Matrix;Z)V

    .line 7044
    iget-object v0, p1, Lcom/soundcloud/android/crop/z;->a:Landroid/graphics/Bitmap;

    .line 8040
    iget v1, p1, Lcom/soundcloud/android/crop/z;->b:I

    .line 182
    invoke-direct {p0, v0, v1}, Lcom/soundcloud/android/crop/q;->a(Landroid/graphics/Bitmap;I)V

    .line 188
    :goto_1
    if-eqz p2, :cond_1

    .line 189
    iget-object v0, p0, Lcom/soundcloud/android/crop/q;->e:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 191
    :cond_1
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/q;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/soundcloud/android/crop/q;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 8300
    iget-object v0, p0, Lcom/soundcloud/android/crop/q;->f:Lcom/soundcloud/android/crop/z;

    .line 9044
    iget-object v0, v0, Lcom/soundcloud/android/crop/z;->a:Landroid/graphics/Bitmap;

    .line 8300
    if-nez v0, :cond_3

    .line 8301
    const/high16 v0, 0x3f800000    # 1.0f

    .line 192
    :goto_2
    iput v0, p0, Lcom/soundcloud/android/crop/q;->i:F

    goto :goto_0

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/soundcloud/android/crop/q;->d:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 185
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/soundcloud/android/crop/q;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 8304
    :cond_3
    iget-object v0, p0, Lcom/soundcloud/android/crop/q;->f:Lcom/soundcloud/android/crop/z;

    invoke-virtual {v0}, Lcom/soundcloud/android/crop/z;->b()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/soundcloud/android/crop/q;->g:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 8305
    iget-object v1, p0, Lcom/soundcloud/android/crop/q;->f:Lcom/soundcloud/android/crop/z;

    invoke-virtual {v1}, Lcom/soundcloud/android/crop/z;->a()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/soundcloud/android/crop/q;->h:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 8306
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    goto :goto_2
.end method

.method protected final b()V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 199
    iget-object v0, p0, Lcom/soundcloud/android/crop/q;->f:Lcom/soundcloud/android/crop/z;

    .line 10044
    iget-object v0, v0, Lcom/soundcloud/android/crop/z;->a:Landroid/graphics/Bitmap;

    .line 200
    if-nez v0, :cond_0

    .line 218
    :goto_0
    return-void

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/q;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 205
    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {v3, v1, v1, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 206
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 208
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 209
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v2

    .line 10221
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/q;->getHeight()I

    move-result v4

    .line 10222
    int-to-float v5, v4

    cmpg-float v5, v0, v5

    if-gez v5, :cond_2

    .line 10223
    int-to-float v4, v4

    sub-float v0, v4, v0

    div-float/2addr v0, v6

    iget v4, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v4

    .line 10233
    :goto_1
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/q;->getWidth()I

    move-result v4

    .line 10234
    int-to-float v5, v4

    cmpg-float v5, v2, v5

    if-gez v5, :cond_4

    .line 10235
    int-to-float v1, v4

    sub-float/2addr v1, v2

    div-float/2addr v1, v6

    iget v2, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    .line 216
    :cond_1
    :goto_2
    invoke-virtual {p0, v1, v0}, Lcom/soundcloud/android/crop/q;->a(FF)V

    .line 217
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/q;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/soundcloud/android/crop/q;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 10224
    :cond_2
    iget v0, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 10225
    iget v0, v3, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    goto :goto_1

    .line 10226
    :cond_3
    iget v0, v3, Landroid/graphics/RectF;->bottom:F

    int-to-float v4, v4

    cmpg-float v0, v0, v4

    if-gez v0, :cond_6

    .line 10227
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/q;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v4, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v4

    goto :goto_1

    .line 10236
    :cond_4
    iget v2, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_5

    .line 10237
    iget v1, v3, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    goto :goto_2

    .line 10238
    :cond_5
    iget v2, v3, Landroid/graphics/RectF;->right:F

    int-to-float v5, v4

    cmpg-float v2, v2, v5

    if-gez v2, :cond_1

    .line 10239
    int-to-float v1, v4

    iget v2, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method protected final b(FF)V
    .locals 1

    .prologue
    .line 397
    invoke-virtual {p0, p1, p2}, Lcom/soundcloud/android/crop/q;->a(FF)V

    .line 398
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/q;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/soundcloud/android/crop/q;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 399
    return-void
.end method

.method protected final b(FFF)V
    .locals 9

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/q;->getScale()F

    move-result v0

    sub-float v0, p1, v0

    const/high16 v1, 0x43960000    # 300.0f

    div-float v5, v0, v1

    .line 325
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/q;->getScale()F

    move-result v4

    .line 326
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 328
    iget-object v8, p0, Lcom/soundcloud/android/crop/q;->j:Landroid/os/Handler;

    new-instance v0, Lcom/soundcloud/android/crop/t;

    move-object v1, p0

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/soundcloud/android/crop/t;-><init>(Lcom/soundcloud/android/crop/q;JFFFF)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 340
    return-void
.end method

.method protected getImageViewMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/soundcloud/android/crop/q;->a:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/soundcloud/android/crop/q;->d:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 288
    iget-object v0, p0, Lcom/soundcloud/android/crop/q;->a:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/soundcloud/android/crop/q;->e:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 289
    iget-object v0, p0, Lcom/soundcloud/android/crop/q;->a:Landroid/graphics/Matrix;

    return-object v0
.end method

.method protected getScale()F
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/soundcloud/android/crop/q;->e:Landroid/graphics/Matrix;

    .line 11249
    iget-object v1, p0, Lcom/soundcloud/android/crop/q;->b:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 11250
    iget-object v0, p0, Lcom/soundcloud/android/crop/q;->b:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 259
    return v0
.end method

.method public getUnrotatedMatrix()Landroid/graphics/Matrix;
    .locals 3

    .prologue
    .line 293
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 294
    iget-object v1, p0, Lcom/soundcloud/android/crop/q;->f:Lcom/soundcloud/android/crop/z;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/soundcloud/android/crop/q;->a(Lcom/soundcloud/android/crop/z;Landroid/graphics/Matrix;Z)V

    .line 295
    iget-object v1, p0, Lcom/soundcloud/android/crop/q;->e:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 296
    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 117
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 118
    const/4 v0, 0x1

    .line 120
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 125
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/q;->getScale()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 4343
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/q;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    .line 4344
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/q;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    .line 4345
    invoke-virtual {p0, v2, v0, v1}, Lcom/soundcloud/android/crop/q;->a(FFF)V

    .line 130
    const/4 v0, 0x1

    .line 133
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .prologue
    .line 100
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 101
    sub-int v0, p4, p2

    iput v0, p0, Lcom/soundcloud/android/crop/q;->g:I

    .line 102
    sub-int v0, p5, p3

    iput v0, p0, Lcom/soundcloud/android/crop/q;->h:I

    .line 103
    iget-object v0, p0, Lcom/soundcloud/android/crop/q;->c:Ljava/lang/Runnable;

    .line 104
    if-eqz v0, :cond_0

    .line 105
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/soundcloud/android/crop/q;->c:Ljava/lang/Runnable;

    .line 106
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/soundcloud/android/crop/q;->f:Lcom/soundcloud/android/crop/z;

    .line 4044
    iget-object v0, v0, Lcom/soundcloud/android/crop/z;->a:Landroid/graphics/Bitmap;

    .line 108
    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/soundcloud/android/crop/q;->f:Lcom/soundcloud/android/crop/z;

    iget-object v1, p0, Lcom/soundcloud/android/crop/q;->d:Landroid/graphics/Matrix;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/soundcloud/android/crop/q;->a(Lcom/soundcloud/android/crop/z;Landroid/graphics/Matrix;Z)V

    .line 110
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/q;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/soundcloud/android/crop/q;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 112
    :cond_1
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/soundcloud/android/crop/q;->a(Landroid/graphics/Bitmap;I)V

    .line 139
    return-void
.end method

.method public setRecycler(Lcom/soundcloud/android/crop/u;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/soundcloud/android/crop/q;->k:Lcom/soundcloud/android/crop/u;

    .line 96
    return-void
.end method
