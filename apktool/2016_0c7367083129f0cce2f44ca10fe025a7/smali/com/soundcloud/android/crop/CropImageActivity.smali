.class public Lcom/soundcloud/android/crop/CropImageActivity;
.super Lcom/soundcloud/android/crop/w;
.source "CropImageActivity.java"


# instance fields
.field a:Z

.field private final b:Landroid/os/Handler;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Landroid/net/Uri;

.field private i:Landroid/net/Uri;

.field private j:I

.field private k:Lcom/soundcloud/android/crop/z;

.field private l:Lcom/soundcloud/android/crop/CropImageView;

.field private m:Lcom/soundcloud/android/crop/n;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/soundcloud/android/crop/w;-><init>()V

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->b:Landroid/os/Handler;

    .line 227
    return-void
.end method

.method private a(Landroid/net/Uri;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 164
    .line 165
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 166
    iput-boolean v1, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 168
    :try_start_0
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 169
    const/4 v0, 0x0

    :try_start_1
    invoke-static {v2, v0, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 171
    invoke-static {v2}, Lcom/soundcloud/android/crop/k;->a(Ljava/io/Closeable;)V

    .line 2194
    new-array v0, v1, [I

    .line 2195
    const/16 v2, 0xd33

    invoke-static {v2, v0, v4}, Landroid/opengl/GLES10;->glGetIntegerv(I[II)V

    .line 2196
    aget v0, v0, v4

    .line 2185
    if-nez v0, :cond_1

    .line 2186
    const/16 v0, 0x800

    .line 177
    :goto_0
    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v2, v1

    if-gt v2, v0, :cond_0

    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v2, v1

    if-le v2, v0, :cond_2

    .line 178
    :cond_0
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    invoke-static {v1}, Lcom/soundcloud/android/crop/k;->a(Ljava/io/Closeable;)V

    throw v0

    .line 2188
    :cond_1
    const/16 v2, 0x1000

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 180
    :cond_2
    return v1

    .line 171
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method private a(Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 338
    .line 2392
    iget-object v2, p0, Lcom/soundcloud/android/crop/CropImageActivity;->l:Lcom/soundcloud/android/crop/CropImageView;

    invoke-virtual {v2}, Lcom/soundcloud/android/crop/CropImageView;->a()V

    .line 2393
    iget-object v2, p0, Lcom/soundcloud/android/crop/CropImageActivity;->k:Lcom/soundcloud/android/crop/z;

    if-eqz v2, :cond_0

    .line 2394
    iget-object v2, p0, Lcom/soundcloud/android/crop/CropImageActivity;->k:Lcom/soundcloud/android/crop/z;

    invoke-virtual {v2}, Lcom/soundcloud/android/crop/z;->c()V

    .line 2396
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 343
    :try_start_0
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/soundcloud/android/crop/CropImageActivity;->h:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 344
    const/4 v2, 0x0

    :try_start_1
    invoke-static {v7, v2}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v3

    .line 345
    invoke-virtual {v3}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v8

    .line 346
    invoke-virtual {v3}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v9

    .line 348
    iget v2, p0, Lcom/soundcloud/android/crop/CropImageActivity;->g:I

    if-eqz v2, :cond_2

    .line 350
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 351
    iget v4, p0, Lcom/soundcloud/android/crop/CropImageActivity;->g:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 353
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 354
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 357
    iget v2, v4, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v2, v0

    if-gez v2, :cond_5

    int-to-float v2, v8

    :goto_0
    iget v5, v4, Landroid/graphics/RectF;->top:F

    cmpg-float v5, v5, v0

    if-gez v5, :cond_1

    int-to-float v0, v9

    :cond_1
    invoke-virtual {v4, v2, v0}, Landroid/graphics/RectF;->offset(FF)V

    .line 358
    new-instance p1, Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iget v2, v4, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v5, v4, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-direct {p1, v0, v2, v5, v4}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 363
    :cond_2
    :try_start_2
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-virtual {v3, p1, v0}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 364
    if-eqz v0, :cond_4

    :try_start_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-gt v1, p2, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-le v1, p3, :cond_4

    .line 366
    :cond_3
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 367
    int-to-float v1, p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v2, p3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 369
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 386
    :cond_4
    invoke-static {v7}, Lcom/soundcloud/android/crop/k;->a(Ljava/io/Closeable;)V

    .line 388
    :goto_1
    return-object v0

    :cond_5
    move v2, v0

    .line 357
    goto :goto_0

    .line 372
    :catch_0
    move-exception v0

    .line 374
    :goto_2
    :try_start_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Rectangle "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is outside of the image ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/soundcloud/android/crop/CropImageActivity;->g:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 379
    :catch_1
    move-exception v0

    move-object v2, v7

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    .line 380
    :goto_3
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error cropping image: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/soundcloud/android/crop/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 381
    invoke-direct {p0, v1}, Lcom/soundcloud/android/crop/CropImageActivity;->a(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 386
    invoke-static {v2}, Lcom/soundcloud/android/crop/k;->a(Ljava/io/Closeable;)V

    goto :goto_1

    .line 382
    :catch_2
    move-exception v0

    move-object v7, v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    .line 383
    :goto_4
    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OOM cropping image: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/soundcloud/android/crop/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 384
    invoke-direct {p0, v1}, Lcom/soundcloud/android/crop/CropImageActivity;->a(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 386
    invoke-static {v7}, Lcom/soundcloud/android/crop/k;->a(Ljava/io/Closeable;)V

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    move-object v7, v1

    :goto_5
    invoke-static {v7}, Lcom/soundcloud/android/crop/k;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v7, v2

    goto :goto_5

    .line 382
    :catch_3
    move-exception v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    goto :goto_4

    .line 379
    :catch_6
    move-exception v0

    move-object v2, v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_3

    :catch_7
    move-exception v0

    move-object v2, v7

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_3

    :catch_8
    move-exception v1

    move-object v2, v7

    goto :goto_3

    .line 372
    :catch_9
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto/16 :goto_2
.end method

.method static synthetic a(Lcom/soundcloud/android/crop/CropImageActivity;Lcom/soundcloud/android/crop/n;)Lcom/soundcloud/android/crop/n;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/soundcloud/android/crop/CropImageActivity;->m:Lcom/soundcloud/android/crop/n;

    return-object p1
.end method

.method static synthetic a(Lcom/soundcloud/android/crop/CropImageActivity;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v6, 0x1

    .line 45
    .line 3277
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->m:Lcom/soundcloud/android/crop/n;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->a:Z

    if-eqz v0, :cond_1

    .line 4331
    :cond_0
    :goto_0
    return-void

    .line 3280
    :cond_1
    iput-boolean v6, p0, Lcom/soundcloud/android/crop/CropImageActivity;->a:Z

    .line 3283
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->m:Lcom/soundcloud/android/crop/n;

    iget v2, p0, Lcom/soundcloud/android/crop/CropImageActivity;->j:I

    int-to-float v2, v2

    .line 3370
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/soundcloud/android/crop/n;->a:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    mul-float/2addr v4, v2

    float-to-int v4, v4

    iget-object v5, v0, Lcom/soundcloud/android/crop/n;->a:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    mul-float/2addr v5, v2

    float-to-int v5, v5

    iget-object v7, v0, Lcom/soundcloud/android/crop/n;->a:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    mul-float/2addr v7, v2

    float-to-int v7, v7

    iget-object v0, v0, Lcom/soundcloud/android/crop/n;->a:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-direct {v3, v4, v5, v7, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 3284
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 3285
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 3289
    iget v4, p0, Lcom/soundcloud/android/crop/CropImageActivity;->e:I

    if-lez v4, :cond_3

    iget v4, p0, Lcom/soundcloud/android/crop/CropImageActivity;->f:I

    if-lez v4, :cond_3

    iget v4, p0, Lcom/soundcloud/android/crop/CropImageActivity;->e:I

    if-gt v2, v4, :cond_2

    iget v4, p0, Lcom/soundcloud/android/crop/CropImageActivity;->f:I

    if-le v0, v4, :cond_3

    .line 3290
    :cond_2
    int-to-float v2, v2

    int-to-float v0, v0

    div-float v4, v2, v0

    .line 3291
    iget v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->e:I

    int-to-float v0, v0

    iget v2, p0, Lcom/soundcloud/android/crop/CropImageActivity;->f:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    cmpl-float v0, v0, v4

    if-lez v0, :cond_5

    .line 3292
    iget v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->f:I

    .line 3293
    iget v2, p0, Lcom/soundcloud/android/crop/CropImageActivity;->f:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    add-float/2addr v2, v8

    float-to-int v2, v2

    .line 3301
    :cond_3
    :goto_1
    :try_start_0
    invoke-direct {p0, v3, v2, v0}, Lcom/soundcloud/android/crop/CropImageActivity;->a(Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3308
    if-eqz v0, :cond_4

    .line 3309
    iget-object v2, p0, Lcom/soundcloud/android/crop/CropImageActivity;->l:Lcom/soundcloud/android/crop/CropImageView;

    new-instance v3, Lcom/soundcloud/android/crop/z;

    iget v4, p0, Lcom/soundcloud/android/crop/CropImageActivity;->g:I

    invoke-direct {v3, v0, v4}, Lcom/soundcloud/android/crop/z;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {v2, v3, v6}, Lcom/soundcloud/android/crop/CropImageView;->a(Lcom/soundcloud/android/crop/z;Z)V

    .line 3311
    iget-object v2, p0, Lcom/soundcloud/android/crop/CropImageActivity;->l:Lcom/soundcloud/android/crop/CropImageView;

    invoke-virtual {v2}, Lcom/soundcloud/android/crop/CropImageView;->b()V

    .line 3312
    iget-object v2, p0, Lcom/soundcloud/android/crop/CropImageActivity;->l:Lcom/soundcloud/android/crop/CropImageView;

    iget-object v2, v2, Lcom/soundcloud/android/crop/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3318
    :cond_4
    iget v2, p0, Lcom/soundcloud/android/crop/CropImageActivity;->g:I

    int-to-float v2, v2

    .line 4245
    if-nez v0, :cond_6

    .line 4246
    const/4 v0, 0x0

    .line 4322
    :goto_2
    if-eqz v0, :cond_7

    .line 4324
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/soundcloud/android/crop/R$string;->crop__saving:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/soundcloud/android/crop/g;

    invoke-direct {v2, p0, v0}, Lcom/soundcloud/android/crop/g;-><init>(Lcom/soundcloud/android/crop/CropImageActivity;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->b:Landroid/os/Handler;

    invoke-static {p0, v1, v2, v0}, Lcom/soundcloud/android/crop/k;->a(Lcom/soundcloud/android/crop/w;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 3295
    :cond_5
    iget v2, p0, Lcom/soundcloud/android/crop/CropImageActivity;->e:I

    .line 3296
    iget v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->e:I

    int-to-float v0, v0

    div-float/2addr v0, v4

    add-float/2addr v0, v8

    float-to-int v0, v0

    goto :goto_1

    .line 3302
    :catch_0
    move-exception v0

    .line 3303
    invoke-direct {p0, v0}, Lcom/soundcloud/android/crop/CropImageActivity;->a(Ljava/lang/Throwable;)V

    .line 3304
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->finish()V

    goto/16 :goto_0

    .line 4248
    :cond_6
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 4249
    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 4250
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    .line 4332
    :cond_7
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->finish()V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/soundcloud/android/crop/CropImageActivity;Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 45
    .line 4400
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->i:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 4401
    const/4 v1, 0x0

    .line 4403
    :try_start_0
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/soundcloud/android/crop/CropImageActivity;->i:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    .line 4404
    if-eqz v1, :cond_0

    .line 4405
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4411
    :cond_0
    invoke-static {v1}, Lcom/soundcloud/android/crop/k;->a(Ljava/io/Closeable;)V

    .line 4422
    :goto_0
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->i:Landroid/net/Uri;

    .line 4454
    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "output"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/soundcloud/android/crop/CropImageActivity;->setResult(ILandroid/content/Intent;)V

    .line 4426
    :cond_1
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->b:Landroid/os/Handler;

    new-instance v1, Lcom/soundcloud/android/crop/h;

    invoke-direct {v1, p0, p1}, Lcom/soundcloud/android/crop/h;-><init>(Lcom/soundcloud/android/crop/CropImageActivity;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4433
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->finish()V

    .line 45
    return-void

    .line 4407
    :catch_0
    move-exception v0

    .line 4408
    :try_start_1
    invoke-direct {p0, v0}, Lcom/soundcloud/android/crop/CropImageActivity;->a(Ljava/lang/Throwable;)V

    .line 4409
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot open file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/soundcloud/android/crop/CropImageActivity;->i:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/soundcloud/android/crop/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4411
    invoke-static {v1}, Lcom/soundcloud/android/crop/k;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/soundcloud/android/crop/k;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 458
    const/16 v0, 0x194

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "error"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/soundcloud/android/crop/CropImageActivity;->setResult(ILandroid/content/Intent;)V

    .line 459
    return-void
.end method

.method static synthetic b(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/CropImageView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->l:Lcom/soundcloud/android/crop/CropImageView;

    return-object v0
.end method

.method static synthetic c(Lcom/soundcloud/android/crop/CropImageActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->b:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/z;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->k:Lcom/soundcloud/android/crop/z;

    return-object v0
.end method

.method static synthetic e(Lcom/soundcloud/android/crop/CropImageActivity;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->c:I

    return v0
.end method

.method static synthetic f(Lcom/soundcloud/android/crop/CropImageActivity;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->d:I

    return v0
.end method

.method static synthetic g(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/n;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->m:Lcom/soundcloud/android/crop/n;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/soundcloud/android/crop/y;)V
    .locals 0

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/soundcloud/android/crop/w;->a(Lcom/soundcloud/android/crop/y;)V

    return-void
.end method

.method public final bridge synthetic b(Lcom/soundcloud/android/crop/y;)V
    .locals 0

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/soundcloud/android/crop/w;->b(Lcom/soundcloud/android/crop/y;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 80
    invoke-super {p0, p1}, Lcom/soundcloud/android/crop/w;->onCreate(Landroid/os/Bundle;)V

    .line 1094
    invoke-virtual {p0, v4}, Lcom/soundcloud/android/crop/CropImageActivity;->requestWindowFeature(I)Z

    .line 1095
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_0

    .line 1096
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 1101
    :cond_0
    sget v0, Lcom/soundcloud/android/crop/R$layout;->crop__activity_crop:I

    invoke-virtual {p0, v0}, Lcom/soundcloud/android/crop/CropImageActivity;->setContentView(I)V

    .line 1103
    sget v0, Lcom/soundcloud/android/crop/R$id;->crop_image:I

    invoke-virtual {p0, v0}, Lcom/soundcloud/android/crop/CropImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/soundcloud/android/crop/CropImageView;

    iput-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->l:Lcom/soundcloud/android/crop/CropImageView;

    .line 1104
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->l:Lcom/soundcloud/android/crop/CropImageView;

    iput-object p0, v0, Lcom/soundcloud/android/crop/CropImageView;->c:Landroid/content/Context;

    .line 1105
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->l:Lcom/soundcloud/android/crop/CropImageView;

    new-instance v2, Lcom/soundcloud/android/crop/b;

    invoke-direct {v2, p0}, Lcom/soundcloud/android/crop/b;-><init>(Lcom/soundcloud/android/crop/CropImageActivity;)V

    invoke-virtual {v0, v2}, Lcom/soundcloud/android/crop/CropImageView;->setRecycler(Lcom/soundcloud/android/crop/u;)V

    .line 1113
    sget v0, Lcom/soundcloud/android/crop/R$id;->btn_cancel:I

    invoke-virtual {p0, v0}, Lcom/soundcloud/android/crop/CropImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/soundcloud/android/crop/c;

    invoke-direct {v2, p0}, Lcom/soundcloud/android/crop/c;-><init>(Lcom/soundcloud/android/crop/CropImageActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1120
    sget v0, Lcom/soundcloud/android/crop/R$id;->btn_done:I

    invoke-virtual {p0, v0}, Lcom/soundcloud/android/crop/CropImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/soundcloud/android/crop/d;

    invoke-direct {v2, p0}, Lcom/soundcloud/android/crop/d;-><init>(Lcom/soundcloud/android/crop/CropImageActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1128
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1129
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1131
    if-eqz v0, :cond_1

    .line 1132
    const-string v3, "aspect_x"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/soundcloud/android/crop/CropImageActivity;->c:I

    .line 1133
    const-string v3, "aspect_y"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/soundcloud/android/crop/CropImageActivity;->d:I

    .line 1134
    const-string v3, "max_x"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/soundcloud/android/crop/CropImageActivity;->e:I

    .line 1135
    const-string v3, "max_y"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/soundcloud/android/crop/CropImageActivity;->f:I

    .line 1136
    const-string v3, "output"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->i:Landroid/net/Uri;

    .line 1139
    :cond_1
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->h:Landroid/net/Uri;

    .line 1140
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->h:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 1141
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/soundcloud/android/crop/CropImageActivity;->h:Landroid/net/Uri;

    invoke-static {p0, v0, v2}, Lcom/soundcloud/android/crop/k;->a(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/soundcloud/android/crop/k;->a(Ljava/io/File;)I

    move-result v0

    iput v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->g:I

    .line 1145
    :try_start_0
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->h:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/soundcloud/android/crop/CropImageActivity;->a(Landroid/net/Uri;)I

    move-result v0

    iput v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->j:I

    .line 1146
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/soundcloud/android/crop/CropImageActivity;->h:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 1147
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1148
    iget v2, p0, Lcom/soundcloud/android/crop/CropImageActivity;->j:I

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1149
    new-instance v2, Lcom/soundcloud/android/crop/z;

    const/4 v3, 0x0

    invoke-static {v1, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v3, p0, Lcom/soundcloud/android/crop/CropImageActivity;->g:I

    invoke-direct {v2, v0, v3}, Lcom/soundcloud/android/crop/z;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v2, p0, Lcom/soundcloud/android/crop/CropImageActivity;->k:Lcom/soundcloud/android/crop/z;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1158
    invoke-static {v1}, Lcom/soundcloud/android/crop/k;->a(Ljava/io/Closeable;)V

    .line 85
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->k:Lcom/soundcloud/android/crop/z;

    if-nez v0, :cond_4

    .line 86
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->finish()V

    .line 90
    :cond_3
    :goto_1
    return-void

    .line 1151
    :catch_0
    move-exception v0

    .line 1152
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error reading image: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/soundcloud/android/crop/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1153
    invoke-direct {p0, v0}, Lcom/soundcloud/android/crop/CropImageActivity;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1158
    invoke-static {v1}, Lcom/soundcloud/android/crop/k;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 1154
    :catch_1
    move-exception v0

    .line 1155
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OOM reading image: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/soundcloud/android/crop/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1156
    invoke-direct {p0, v0}, Lcom/soundcloud/android/crop/CropImageActivity;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1158
    invoke-static {v1}, Lcom/soundcloud/android/crop/k;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/soundcloud/android/crop/k;->a(Ljava/io/Closeable;)V

    throw v0

    .line 1200
    :cond_4
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1203
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->l:Lcom/soundcloud/android/crop/CropImageView;

    iget-object v1, p0, Lcom/soundcloud/android/crop/CropImageActivity;->k:Lcom/soundcloud/android/crop/z;

    invoke-virtual {v0, v1, v4}, Lcom/soundcloud/android/crop/CropImageView;->a(Lcom/soundcloud/android/crop/z;Z)V

    .line 1204
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/soundcloud/android/crop/R$string;->crop__wait:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/soundcloud/android/crop/e;

    invoke-direct {v1, p0}, Lcom/soundcloud/android/crop/e;-><init>(Lcom/soundcloud/android/crop/CropImageActivity;)V

    iget-object v2, p0, Lcom/soundcloud/android/crop/CropImageActivity;->b:Landroid/os/Handler;

    invoke-static {p0, v0, v1, v2}, Lcom/soundcloud/android/crop/k;->a(Lcom/soundcloud/android/crop/w;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 438
    invoke-super {p0}, Lcom/soundcloud/android/crop/w;->onDestroy()V

    .line 439
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->k:Lcom/soundcloud/android/crop/z;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->k:Lcom/soundcloud/android/crop/z;

    invoke-virtual {v0}, Lcom/soundcloud/android/crop/z;->c()V

    .line 442
    :cond_0
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 446
    const/4 v0, 0x0

    return v0
.end method
