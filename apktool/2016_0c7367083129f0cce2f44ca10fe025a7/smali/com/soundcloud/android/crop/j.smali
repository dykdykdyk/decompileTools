.class final Lcom/soundcloud/android/crop/j;
.super Ljava/lang/Object;
.source "CropImageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/soundcloud/android/crop/i;


# direct methods
.method constructor <init>(Lcom/soundcloud/android/crop/i;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/soundcloud/android/crop/j;->a:Lcom/soundcloud/android/crop/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .prologue
    const/16 v12, 0x32

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 265
    iget-object v4, p0, Lcom/soundcloud/android/crop/j;->a:Lcom/soundcloud/android/crop/i;

    .line 1230
    iget-object v0, v4, Lcom/soundcloud/android/crop/i;->a:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v0}, Lcom/soundcloud/android/crop/CropImageActivity;->d(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/z;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1234
    new-instance v5, Lcom/soundcloud/android/crop/n;

    iget-object v0, v4, Lcom/soundcloud/android/crop/i;->a:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v0}, Lcom/soundcloud/android/crop/CropImageActivity;->b(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/CropImageView;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/soundcloud/android/crop/n;-><init>(Landroid/view/View;)V

    .line 1235
    iget-object v0, v4, Lcom/soundcloud/android/crop/i;->a:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v0}, Lcom/soundcloud/android/crop/CropImageActivity;->d(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/soundcloud/android/crop/z;->b()I

    move-result v6

    .line 1236
    iget-object v0, v4, Lcom/soundcloud/android/crop/i;->a:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v0}, Lcom/soundcloud/android/crop/CropImageActivity;->d(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/soundcloud/android/crop/z;->a()I

    move-result v7

    .line 1238
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v3, v3, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1241
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v1, v0, 0x5

    .line 1245
    iget-object v0, v4, Lcom/soundcloud/android/crop/i;->a:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v0}, Lcom/soundcloud/android/crop/CropImageActivity;->e(Lcom/soundcloud/android/crop/CropImageActivity;)I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v4, Lcom/soundcloud/android/crop/i;->a:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v0}, Lcom/soundcloud/android/crop/CropImageActivity;->f(Lcom/soundcloud/android/crop/CropImageActivity;)I

    move-result v0

    if-eqz v0, :cond_4

    .line 1246
    iget-object v0, v4, Lcom/soundcloud/android/crop/i;->a:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v0}, Lcom/soundcloud/android/crop/CropImageActivity;->e(Lcom/soundcloud/android/crop/CropImageActivity;)I

    move-result v0

    iget-object v9, v4, Lcom/soundcloud/android/crop/i;->a:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v9}, Lcom/soundcloud/android/crop/CropImageActivity;->f(Lcom/soundcloud/android/crop/CropImageActivity;)I

    move-result v9

    if-le v0, v9, :cond_2

    .line 1247
    iget-object v0, v4, Lcom/soundcloud/android/crop/i;->a:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v0}, Lcom/soundcloud/android/crop/CropImageActivity;->f(Lcom/soundcloud/android/crop/CropImageActivity;)I

    move-result v0

    mul-int/2addr v0, v1

    iget-object v9, v4, Lcom/soundcloud/android/crop/i;->a:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v9}, Lcom/soundcloud/android/crop/CropImageActivity;->e(Lcom/soundcloud/android/crop/CropImageActivity;)I

    move-result v9

    div-int/2addr v0, v9

    .line 1253
    :goto_0
    sub-int/2addr v6, v1

    div-int/lit8 v6, v6, 0x2

    .line 1254
    sub-int/2addr v7, v0

    div-int/lit8 v7, v7, 0x2

    .line 1256
    new-instance v9, Landroid/graphics/RectF;

    int-to-float v10, v6

    int-to-float v11, v7

    add-int/2addr v1, v6

    int-to-float v1, v1

    add-int/2addr v0, v7

    int-to-float v0, v0

    invoke-direct {v9, v10, v11, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1257
    iget-object v0, v4, Lcom/soundcloud/android/crop/i;->a:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v0}, Lcom/soundcloud/android/crop/CropImageActivity;->b(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/soundcloud/android/crop/CropImageView;->getUnrotatedMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v0, v4, Lcom/soundcloud/android/crop/i;->a:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v0}, Lcom/soundcloud/android/crop/CropImageActivity;->e(Lcom/soundcloud/android/crop/CropImageActivity;)I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v4, Lcom/soundcloud/android/crop/i;->a:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v0}, Lcom/soundcloud/android/crop/CropImageActivity;->f(Lcom/soundcloud/android/crop/CropImageActivity;)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    .line 2101
    :goto_1
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v6, v5, Lcom/soundcloud/android/crop/n;->c:Landroid/graphics/Matrix;

    .line 2103
    iput-object v9, v5, Lcom/soundcloud/android/crop/n;->a:Landroid/graphics/RectF;

    .line 2104
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v8}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, v5, Lcom/soundcloud/android/crop/n;->d:Landroid/graphics/RectF;

    .line 2105
    iput-boolean v0, v5, Lcom/soundcloud/android/crop/n;->n:Z

    .line 2107
    iget-object v0, v5, Lcom/soundcloud/android/crop/n;->a:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, v5, Lcom/soundcloud/android/crop/n;->a:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, v5, Lcom/soundcloud/android/crop/n;->o:F

    .line 2108
    invoke-virtual {v5}, Lcom/soundcloud/android/crop/n;->a()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, v5, Lcom/soundcloud/android/crop/n;->b:Landroid/graphics/Rect;

    .line 2110
    iget-object v0, v5, Lcom/soundcloud/android/crop/n;->e:Landroid/graphics/Paint;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1, v12, v12, v12}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 2111
    iget-object v0, v5, Lcom/soundcloud/android/crop/n;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2112
    iget-object v0, v5, Lcom/soundcloud/android/crop/n;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2113
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v5, v0}, Lcom/soundcloud/android/crop/n;->a(F)F

    move-result v0

    iput v0, v5, Lcom/soundcloud/android/crop/n;->q:F

    .line 2115
    iget-object v0, v5, Lcom/soundcloud/android/crop/n;->g:Landroid/graphics/Paint;

    iget v1, v5, Lcom/soundcloud/android/crop/n;->k:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2116
    iget-object v0, v5, Lcom/soundcloud/android/crop/n;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2117
    iget-object v0, v5, Lcom/soundcloud/android/crop/n;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2118
    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {v5, v0}, Lcom/soundcloud/android/crop/n;->a(F)F

    move-result v0

    iput v0, v5, Lcom/soundcloud/android/crop/n;->p:F

    .line 2120
    sget v0, Lcom/soundcloud/android/crop/p;->a:I

    iput v0, v5, Lcom/soundcloud/android/crop/n;->l:I

    .line 1259
    iget-object v0, v4, Lcom/soundcloud/android/crop/i;->a:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v0}, Lcom/soundcloud/android/crop/CropImageActivity;->b(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/CropImageView;

    move-result-object v0

    .line 2192
    iget-object v1, v0, Lcom/soundcloud/android/crop/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2193
    invoke-virtual {v0}, Lcom/soundcloud/android/crop/CropImageView;->invalidate()V

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/soundcloud/android/crop/j;->a:Lcom/soundcloud/android/crop/i;

    iget-object v0, v0, Lcom/soundcloud/android/crop/i;->a:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v0}, Lcom/soundcloud/android/crop/CropImageActivity;->b(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/soundcloud/android/crop/CropImageView;->invalidate()V

    .line 267
    iget-object v0, p0, Lcom/soundcloud/android/crop/j;->a:Lcom/soundcloud/android/crop/i;

    iget-object v0, v0, Lcom/soundcloud/android/crop/i;->a:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v0}, Lcom/soundcloud/android/crop/CropImageActivity;->b(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/CropImageView;

    move-result-object v0

    iget-object v0, v0, Lcom/soundcloud/android/crop/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 268
    iget-object v0, p0, Lcom/soundcloud/android/crop/j;->a:Lcom/soundcloud/android/crop/i;

    iget-object v1, v0, Lcom/soundcloud/android/crop/i;->a:Lcom/soundcloud/android/crop/CropImageActivity;

    iget-object v0, p0, Lcom/soundcloud/android/crop/j;->a:Lcom/soundcloud/android/crop/i;

    iget-object v0, v0, Lcom/soundcloud/android/crop/i;->a:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v0}, Lcom/soundcloud/android/crop/CropImageActivity;->b(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/CropImageView;

    move-result-object v0

    iget-object v0, v0, Lcom/soundcloud/android/crop/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/soundcloud/android/crop/n;

    invoke-static {v1, v0}, Lcom/soundcloud/android/crop/CropImageActivity;->a(Lcom/soundcloud/android/crop/CropImageActivity;Lcom/soundcloud/android/crop/n;)Lcom/soundcloud/android/crop/n;

    .line 269
    iget-object v0, p0, Lcom/soundcloud/android/crop/j;->a:Lcom/soundcloud/android/crop/i;

    iget-object v0, v0, Lcom/soundcloud/android/crop/i;->a:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v0}, Lcom/soundcloud/android/crop/CropImageActivity;->g(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/n;

    move-result-object v0

    .line 2392
    iput-boolean v2, v0, Lcom/soundcloud/android/crop/n;->r:Z

    .line 271
    :cond_1
    return-void

    .line 1249
    :cond_2
    iget-object v0, v4, Lcom/soundcloud/android/crop/i;->a:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v0}, Lcom/soundcloud/android/crop/CropImageActivity;->e(Lcom/soundcloud/android/crop/CropImageActivity;)I

    move-result v0

    mul-int/2addr v0, v1

    iget-object v9, v4, Lcom/soundcloud/android/crop/i;->a:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v9}, Lcom/soundcloud/android/crop/CropImageActivity;->f(Lcom/soundcloud/android/crop/CropImageActivity;)I

    move-result v9

    div-int/2addr v0, v9

    move v13, v1

    move v1, v0

    move v0, v13

    goto/16 :goto_0

    :cond_3
    move v0, v3

    .line 1257
    goto/16 :goto_1

    :cond_4
    move v0, v1

    goto/16 :goto_0
.end method
