.class public Lcom/nut/blehunter/ui/widget/CircleImageView;
.super Landroid/widget/ImageView;
.source "CircleImageView.java"


# static fields
.field private static final a:Landroid/widget/ImageView$ScaleType;

.field private static final b:Landroid/graphics/Bitmap$Config;

.field private static final c:I


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private final d:Landroid/graphics/RectF;

.field private final e:Landroid/graphics/RectF;

.field private final f:Landroid/graphics/Matrix;

.field private final g:Landroid/graphics/Paint;

.field private final h:Landroid/graphics/Paint;

.field private final i:Landroid/graphics/Paint;

.field private final j:Landroid/graphics/Paint;

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Landroid/graphics/Bitmap;

.field private p:Landroid/graphics/BitmapShader;

.field private q:I

.field private r:I

.field private s:F

.field private t:F

.field private u:F

.field private v:Landroid/graphics/ColorFilter;

.field private w:I

.field private x:Landroid/graphics/drawable/Drawable;

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    sput-object v0, Lcom/nut/blehunter/ui/widget/CircleImageView;->a:Landroid/widget/ImageView$ScaleType;

    .line 47
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/nut/blehunter/ui/widget/CircleImageView;->b:Landroid/graphics/Bitmap$Config;

    .line 55
    const-string v0, "#8000ffc6"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/nut/blehunter/ui/widget/CircleImageView;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 57
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->d:Landroid/graphics/RectF;

    .line 58
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->e:Landroid/graphics/RectF;

    .line 60
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->f:Landroid/graphics/Matrix;

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->g:Landroid/graphics/Paint;

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->h:Landroid/graphics/Paint;

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->i:Landroid/graphics/Paint;

    .line 64
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->j:Landroid/graphics/Paint;

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->k:I

    .line 67
    iput v1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->l:I

    .line 68
    iput v1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->m:I

    .line 69
    iput v1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->n:I

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->u:F

    .line 95
    invoke-direct {p0}, Lcom/nut/blehunter/ui/widget/CircleImageView;->a()V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nut/blehunter/ui/widget/CircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 103
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->d:Landroid/graphics/RectF;

    .line 58
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->e:Landroid/graphics/RectF;

    .line 60
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->f:Landroid/graphics/Matrix;

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->g:Landroid/graphics/Paint;

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->h:Landroid/graphics/Paint;

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->i:Landroid/graphics/Paint;

    .line 64
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->j:Landroid/graphics/Paint;

    .line 66
    iput v2, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->k:I

    .line 67
    iput v3, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->l:I

    .line 68
    iput v3, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->m:I

    .line 69
    iput v3, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->n:I

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->u:F

    .line 105
    sget-object v0, Lcom/nut/blehunter/R$styleable;->CircleImageView:[I

    invoke-virtual {p1, p2, v0, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 107
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->l:I

    .line 108
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->k:I

    .line 109
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->A:Z

    .line 110
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->n:I

    .line 111
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->m:I

    .line 113
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->w:I

    .line 114
    iget v1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->w:I

    if-eqz v1, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/CircleImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->w:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->x:Landroid/graphics/drawable/Drawable;

    .line 118
    :cond_0
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->C:Z

    .line 120
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 122
    invoke-direct {p0}, Lcom/nut/blehunter/ui/widget/CircleImageView;->a()V

    .line 123
    return-void
.end method

.method private static a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 355
    if-nez p0, :cond_0

    .line 378
    :goto_0
    return-object v0

    .line 359
    :cond_0
    instance-of v1, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 360
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 366
    :cond_1
    :try_start_0
    instance-of v1, p0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_2

    .line 367
    const/4 v1, 0x2

    const/4 v2, 0x2

    sget-object v3, Lcom/nut/blehunter/ui/widget/CircleImageView;->b:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 372
    :goto_1
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 373
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 374
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object v0, v1

    .line 375
    goto :goto_0

    .line 369
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v3, Lcom/nut/blehunter/ui/widget/CircleImageView;->b:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_1

    .line 377
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/nut/blehunter/ui/widget/CircleImageView;->a:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->y:Z

    .line 129
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->z:Z

    if-eqz v0, :cond_0

    .line 130
    invoke-direct {p0}, Lcom/nut/blehunter/ui/widget/CircleImageView;->d()V

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->z:Z

    .line 133
    :cond_0
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->g:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->g:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->v:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 352
    :cond_0
    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 383
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->B:Z

    if-eqz v0, :cond_0

    .line 384
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->o:Landroid/graphics/Bitmap;

    .line 388
    :goto_0
    invoke-direct {p0}, Lcom/nut/blehunter/ui/widget/CircleImageView;->d()V

    .line 389
    return-void

    .line 386
    :cond_0
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/CircleImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/nut/blehunter/ui/widget/CircleImageView;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->o:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private d()V
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v7, 0x40000000    # 2.0f

    .line 392
    iget-boolean v1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->y:Z

    if-nez v1, :cond_1

    .line 393
    iput-boolean v5, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->z:Z

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/CircleImageView;->getWidth()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/CircleImageView;->getHeight()I

    move-result v1

    if-eqz v1, :cond_0

    .line 401
    :cond_2
    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->o:Landroid/graphics/Bitmap;

    if-nez v1, :cond_3

    .line 402
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/CircleImageView;->invalidate()V

    goto :goto_0

    .line 406
    :cond_3
    new-instance v1, Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->o:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->p:Landroid/graphics/BitmapShader;

    .line 408
    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->g:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 409
    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->g:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->p:Landroid/graphics/BitmapShader;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 411
    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->h:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 412
    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->h:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 413
    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->h:Landroid/graphics/Paint;

    iget v2, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->k:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 414
    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->h:Landroid/graphics/Paint;

    iget v2, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->l:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 416
    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->i:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 417
    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->i:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 418
    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->i:Landroid/graphics/Paint;

    iget v2, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->n:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 420
    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->j:Landroid/graphics/Paint;

    sget v2, Lcom/nut/blehunter/ui/widget/CircleImageView;->c:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 421
    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->j:Landroid/graphics/Paint;

    iget v2, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->l:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 422
    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->j:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 423
    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->h:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 426
    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->o:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->r:I

    .line 427
    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->o:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->q:I

    .line 429
    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->e:Landroid/graphics/RectF;

    .line 1447
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/CircleImageView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/CircleImageView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/CircleImageView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1448
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/CircleImageView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/CircleImageView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/CircleImageView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1450
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1452
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/CircleImageView;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    sub-int/2addr v2, v4

    int-to-float v2, v2

    div-float/2addr v2, v7

    add-float/2addr v2, v5

    .line 1453
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/CircleImageView;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v7

    add-float/2addr v3, v5

    .line 1455
    new-instance v5, Landroid/graphics/RectF;

    int-to-float v6, v4

    add-float/2addr v6, v2

    int-to-float v4, v4

    add-float/2addr v4, v3

    invoke-direct {v5, v2, v3, v6, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 429
    invoke-virtual {v1, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 430
    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->e:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v2, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->l:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v7

    iget-object v2, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->e:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v3, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->l:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v7

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v2, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->m:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->t:F

    .line 435
    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->d:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->e:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 436
    iget-boolean v1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->A:Z

    if-nez v1, :cond_4

    .line 437
    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->d:Landroid/graphics/RectF;

    iget v2, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->l:I

    int-to-float v2, v2

    iget v3, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->l:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 439
    :cond_4
    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->d:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v7

    iget-object v2, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->d:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v7

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->s:F

    .line 441
    invoke-direct {p0}, Lcom/nut/blehunter/ui/widget/CircleImageView;->b()V

    .line 1463
    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->f:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1465
    iget v1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->q:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->d:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->d:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v3, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->r:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    .line 1466
    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->d:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v2, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->r:I

    int-to-float v2, v2

    div-float v2, v1, v2

    .line 1467
    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->d:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v3, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->q:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    sub-float/2addr v1, v3

    mul-float/2addr v1, v8

    .line 1473
    :goto_1
    iget-object v3, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->f:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1474
    iget-object v2, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->f:Landroid/graphics/Matrix;

    add-float/2addr v1, v8

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->d:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v3

    add-float/2addr v0, v8

    float-to-int v0, v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->d:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v3

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1476
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->p:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->f:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 443
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/CircleImageView;->invalidate()V

    goto/16 :goto_0

    .line 1469
    :cond_5
    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->d:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->q:I

    int-to-float v2, v2

    div-float v2, v1, v2

    .line 1470
    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->d:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v3, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->r:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    sub-float/2addr v1, v3

    mul-float/2addr v1, v8

    move v9, v1

    move v1, v0

    move v0, v9

    goto :goto_1
.end method


# virtual methods
.method public getBorderColor()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->k:I

    return v0
.end method

.method public getBorderWidth()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->l:I

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->v:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method protected getDrawableRadius()F
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->s:F

    return v0
.end method

.method protected getDrawableRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->d:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getFillColor()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->n:I

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/nut/blehunter/ui/widget/CircleImageView;->a:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->B:Z

    if-eqz v0, :cond_1

    .line 157
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->o:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 165
    iget v0, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->n:I

    if-eqz v0, :cond_2

    .line 166
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->d:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->d:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->s:F

    iget-object v3, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->d:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->d:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->s:F

    iget-object v3, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 170
    iget v0, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->l:I

    if-eqz v0, :cond_3

    .line 171
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->e:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->e:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->t:F

    iget-object v3, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 174
    :cond_3
    iget v0, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->u:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    .line 175
    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->e:Landroid/graphics/RectF;

    const/high16 v2, 0x43870000    # 270.0f

    iget v0, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->u:F

    neg-float v3, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->j:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 178
    :cond_4
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->C:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->x:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->x:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->d:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->d:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->d:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->d:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 180
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 186
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 187
    invoke-direct {p0}, Lcom/nut/blehunter/ui/widget/CircleImageView;->d()V

    .line 188
    return-void
.end method

.method public setAdjustViewBounds(Z)V
    .locals 2

    .prologue
    .line 149
    if-eqz p1, :cond_0

    .line 150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "adjustViewBounds not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_0
    return-void
.end method

.method public setBorderColor(I)V
    .locals 2

    .prologue
    .line 195
    iget v0, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->k:I

    if-ne p1, v0, :cond_0

    .line 202
    :goto_0
    return-void

    .line 199
    :cond_0
    iput p1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->k:I

    .line 200
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->h:Landroid/graphics/Paint;

    iget v1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->k:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 201
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/CircleImageView;->invalidate()V

    goto :goto_0
.end method

.method public setBorderColorResource(I)V
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/CircleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/widget/CircleImageView;->setBorderColor(I)V

    .line 206
    return-void
.end method

.method public setBorderOverlay(Z)V
    .locals 1

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->A:Z

    if-ne p1, v0, :cond_0

    .line 250
    :goto_0
    return-void

    .line 248
    :cond_0
    iput-boolean p1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->A:Z

    .line 249
    invoke-direct {p0}, Lcom/nut/blehunter/ui/widget/CircleImageView;->d()V

    goto :goto_0
.end method

.method public setBorderWidth(I)V
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->l:I

    if-ne p1, v0, :cond_0

    .line 237
    :goto_0
    return-void

    .line 235
    :cond_0
    iput p1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->l:I

    .line 236
    invoke-direct {p0}, Lcom/nut/blehunter/ui/widget/CircleImageView;->d()V

    goto :goto_0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->v:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_0

    .line 341
    :goto_0
    return-void

    .line 338
    :cond_0
    iput-object p1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->v:Landroid/graphics/ColorFilter;

    .line 339
    invoke-direct {p0}, Lcom/nut/blehunter/ui/widget/CircleImageView;->b()V

    .line 340
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/CircleImageView;->invalidate()V

    goto :goto_0
.end method

.method public setDisableCircularTransformation(Z)V
    .locals 1

    .prologue
    .line 257
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->B:Z

    if-ne v0, p1, :cond_0

    .line 263
    :goto_0
    return-void

    .line 261
    :cond_0
    iput-boolean p1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->B:Z

    .line 262
    invoke-direct {p0}, Lcom/nut/blehunter/ui/widget/CircleImageView;->c()V

    goto :goto_0
.end method

.method public setFillColor(I)V
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->n:I

    if-ne p1, v0, :cond_0

    .line 220
    :goto_0
    return-void

    .line 217
    :cond_0
    iput p1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->n:I

    .line 218
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 219
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/CircleImageView;->invalidate()V

    goto :goto_0
.end method

.method public setFillColorResource(I)V
    .locals 1

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/CircleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/widget/CircleImageView;->setFillColor(I)V

    .line 224
    return-void
.end method

.method public setHighlightBorderSweepAngle(F)V
    .locals 0

    .prologue
    .line 304
    iput p1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->u:F

    .line 305
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/CircleImageView;->invalidate()V

    .line 306
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 310
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 311
    invoke-direct {p0}, Lcom/nut/blehunter/ui/widget/CircleImageView;->c()V

    .line 312
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 316
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 317
    invoke-direct {p0}, Lcom/nut/blehunter/ui/widget/CircleImageView;->c()V

    .line 318
    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .prologue
    .line 322
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 323
    invoke-direct {p0}, Lcom/nut/blehunter/ui/widget/CircleImageView;->c()V

    .line 324
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 328
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 329
    invoke-direct {p0}, Lcom/nut/blehunter/ui/widget/CircleImageView;->c()V

    .line 330
    return-void
.end method

.method public setIsOverlay(Z)V
    .locals 1

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->C:Z

    if-ne v0, p1, :cond_0

    .line 280
    :goto_0
    return-void

    .line 278
    :cond_0
    iput-boolean p1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->C:Z

    .line 279
    invoke-direct {p0}, Lcom/nut/blehunter/ui/widget/CircleImageView;->d()V

    goto :goto_0
.end method

.method public setOverlayRes(I)V
    .locals 2

    .prologue
    .line 266
    iget v0, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->w:I

    if-eq p1, v0, :cond_0

    if-gtz p1, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    iput p1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->w:I

    .line 270
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/CircleImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->w:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/CircleImageView;->x:Landroid/graphics/drawable/Drawable;

    .line 271
    invoke-direct {p0}, Lcom/nut/blehunter/ui/widget/CircleImageView;->d()V

    goto :goto_0
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 4

    .prologue
    .line 142
    sget-object v0, Lcom/nut/blehunter/ui/widget/CircleImageView;->a:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_0

    .line 143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ScaleType %s not supported."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    return-void
.end method
