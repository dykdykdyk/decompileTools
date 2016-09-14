.class final Lcom/soundcloud/android/crop/n;
.super Ljava/lang/Object;
.source "HighlightView.java"


# instance fields
.field a:Landroid/graphics/RectF;

.field b:Landroid/graphics/Rect;

.field c:Landroid/graphics/Matrix;

.field d:Landroid/graphics/RectF;

.field final e:Landroid/graphics/Paint;

.field final f:Landroid/graphics/Paint;

.field final g:Landroid/graphics/Paint;

.field h:Landroid/view/View;

.field i:Z

.field j:Z

.field k:I

.field l:I

.field m:I

.field n:Z

.field o:F

.field p:F

.field q:F

.field r:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/n;->e:Landroid/graphics/Paint;

    .line 64
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/n;->f:Landroid/graphics/Paint;

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/n;->g:Landroid/graphics/Paint;

    .line 72
    sget v0, Lcom/soundcloud/android/crop/p;->a:I

    iput v0, p0, Lcom/soundcloud/android/crop/n;->l:I

    .line 73
    sget v0, Lcom/soundcloud/android/crop/o;->a:I

    iput v0, p0, Lcom/soundcloud/android/crop/n;->m:I

    .line 81
    iput-object p1, p0, Lcom/soundcloud/android/crop/n;->h:Landroid/view/View;

    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1086
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 1087
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget v3, Lcom/soundcloud/android/crop/R$attr;->cropImageStyle:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1088
    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    sget-object v2, Lcom/soundcloud/android/crop/R$styleable;->CropImageView:[I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1090
    :try_start_0
    sget v0, Lcom/soundcloud/android/crop/R$styleable;->CropImageView_showThirds:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/soundcloud/android/crop/n;->i:Z

    .line 1091
    sget v0, Lcom/soundcloud/android/crop/R$styleable;->CropImageView_showCircle:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/soundcloud/android/crop/n;->j:Z

    .line 1092
    sget v0, Lcom/soundcloud/android/crop/R$styleable;->CropImageView_highlightColor:I

    const v2, -0xcc4a1b

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/soundcloud/android/crop/n;->k:I

    .line 1094
    invoke-static {}, Lcom/soundcloud/android/crop/o;->a()[I

    move-result-object v0

    sget v2, Lcom/soundcloud/android/crop/R$styleable;->CropImageView_showHandles:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    aget v0, v0, v2

    iput v0, p0, Lcom/soundcloud/android/crop/n;->m:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1096
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1097
    return-void

    .line 1096
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method


# virtual methods
.method final a(F)F
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/soundcloud/android/crop/n;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    return v0
.end method

.method final a()Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 376
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/soundcloud/android/crop/n;->a:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/soundcloud/android/crop/n;->a:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/soundcloud/android/crop/n;->a:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/soundcloud/android/crop/n;->a:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 378
    iget-object v1, p0, Lcom/soundcloud/android/crop/n;->c:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 379
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lcom/soundcloud/android/crop/n;->l:I

    if-eq p1, v0, :cond_0

    .line 225
    iput p1, p0, Lcom/soundcloud/android/crop/n;->l:I

    .line 226
    iget-object v0, p0, Lcom/soundcloud/android/crop/n;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 228
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/n;->a()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/soundcloud/android/crop/n;->b:Landroid/graphics/Rect;

    .line 385
    return-void
.end method
