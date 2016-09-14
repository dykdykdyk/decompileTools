.class public final Lcom/amap/api/maps2d/model/BitmapDescriptorFactory;
.super Ljava/lang/Object;
.source "BitmapDescriptorFactory.java"


# static fields
.field public static final HUE_AZURE:F = 210.0f

.field public static final HUE_BLUE:F = 240.0f

.field public static final HUE_CYAN:F = 180.0f

.field public static final HUE_GREEN:F = 120.0f

.field public static final HUE_MAGENTA:F = 300.0f

.field public static final HUE_ORANGE:F = 30.0f

.field public static final HUE_RED:F = 0.0f

.field public static final HUE_ROSE:F = 330.0f

.field public static final HUE_VIOLET:F = 270.0f

.field public static final HUE_YELLOW:F = 60.0f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 118
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 119
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 118
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->measure(II)V

    .line 120
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v2, v2, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 121
    invoke-virtual {p0}, Landroid/view/View;->buildDrawingCache()V

    .line 122
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 123
    return-object v0
.end method

.method public static defaultMarker()Lcom/amap/api/maps2d/model/BitmapDescriptor;
    .locals 3

    .prologue
    .line 215
    const-string v1, "defaultMarker"

    .line 217
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/amap/api/mapcore2d/ah$a;->b:Lcom/amap/api/mapcore2d/ah$a;

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/ah$a;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".png"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/maps2d/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/amap/api/maps2d/model/BitmapDescriptor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 221
    :goto_0
    return-object v0

    .line 220
    :catch_0
    move-exception v0

    const-string v2, "BitmapDescriptorFactory"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static defaultMarker(F)Lcom/amap/api/maps2d/model/BitmapDescriptor;
    .locals 5

    .prologue
    const/high16 v2, 0x43a50000    # 330.0f

    const/4 v3, 0x0

    .line 234
    const-string v4, "defaultMarker"

    .line 236
    const/high16 v0, 0x41700000    # 15.0f

    add-float/2addr v0, p0

    float-to-int v0, v0

    :try_start_0
    div-int/lit8 v0, v0, 0x1e

    mul-int/lit8 v0, v0, 0x1e

    int-to-float v0, v0

    .line 237
    cmpl-float v1, v0, v2

    if-lez v1, :cond_1

    move v1, v2

    .line 242
    :goto_0
    const-string v0, ""

    .line 243
    cmpl-float v3, v1, v3

    if-nez v3, :cond_2

    .line 244
    const-string v0, "RED"

    .line 264
    :cond_0
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "2d.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/maps2d/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v0

    .line 267
    :goto_2
    return-object v0

    .line 239
    :cond_1
    cmpg-float v1, v0, v3

    if-gez v1, :cond_b

    move v1, v3

    .line 240
    goto :goto_0

    .line 245
    :cond_2
    const/high16 v3, 0x41f00000    # 30.0f

    cmpl-float v3, v1, v3

    if-nez v3, :cond_3

    .line 246
    const-string v0, "ORANGE"

    goto :goto_1

    .line 247
    :cond_3
    const/high16 v3, 0x42700000    # 60.0f

    cmpl-float v3, v1, v3

    if-nez v3, :cond_4

    .line 248
    const-string v0, "YELLOW"

    goto :goto_1

    .line 249
    :cond_4
    const/high16 v3, 0x42f00000    # 120.0f

    cmpl-float v3, v1, v3

    if-nez v3, :cond_5

    .line 250
    const-string v0, "GREEN"

    goto :goto_1

    .line 251
    :cond_5
    const/high16 v3, 0x43340000    # 180.0f

    cmpl-float v3, v1, v3

    if-nez v3, :cond_6

    .line 252
    const-string v0, "CYAN"

    goto :goto_1

    .line 253
    :cond_6
    const/high16 v3, 0x43520000    # 210.0f

    cmpl-float v3, v1, v3

    if-nez v3, :cond_7

    .line 254
    const-string v0, "AZURE"

    goto :goto_1

    .line 255
    :cond_7
    const/high16 v3, 0x43700000    # 240.0f

    cmpl-float v3, v1, v3

    if-nez v3, :cond_8

    .line 256
    const-string v0, "BLUE"

    goto :goto_1

    .line 257
    :cond_8
    const/high16 v3, 0x43870000    # 270.0f

    cmpl-float v3, v1, v3

    if-nez v3, :cond_9

    .line 258
    const-string v0, "VIOLET"

    goto :goto_1

    .line 259
    :cond_9
    const/high16 v3, 0x43960000    # 300.0f

    cmpl-float v3, v1, v3

    if-nez v3, :cond_a

    .line 260
    const-string v0, "MAGENTAV"

    goto :goto_1

    .line 261
    :cond_a
    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 262
    const-string v0, "ROSE"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 266
    :catch_0
    move-exception v0

    const-string v1, "BitmapDescriptorFactory"

    invoke-static {v0, v1, v4}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const/4 v0, 0x0

    goto :goto_2

    :cond_b
    move v1, v0

    goto :goto_0
.end method

.method public static fromAsset(Ljava/lang/String;)Lcom/amap/api/maps2d/model/BitmapDescriptor;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 152
    const-string v3, "fromAsset"

    .line 155
    :try_start_0
    const-class v1, Lcom/amap/api/maps2d/model/BitmapDescriptorFactory;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "/assets/"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 156
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 157
    :try_start_1
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 168
    invoke-static {v1}, Lcom/amap/api/maps2d/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps2d/model/BitmapDescriptor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 173
    if-eqz v2, :cond_0

    .line 175
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v0, v1

    .line 178
    :cond_1
    :goto_0
    return-object v0

    .line 177
    :catch_0
    move-exception v1

    const-string v2, "BitmapDescriptorFactory"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :catch_1
    move-exception v1

    move-object v2, v0

    :goto_1
    :try_start_3
    const-string v4, "BitmapDescriptorFactory"

    invoke-static {v1, v4, v3}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 173
    if-eqz v2, :cond_1

    .line 175
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 177
    :catch_2
    move-exception v1

    const-string v2, "BitmapDescriptorFactory"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :catchall_0
    move-exception v1

    move-object v2, v0

    :goto_2
    if-eqz v2, :cond_2

    .line 175
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 178
    :cond_2
    throw v1

    .line 177
    :catch_3
    move-exception v1

    const-string v2, "BitmapDescriptorFactory"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :catchall_1
    move-exception v1

    goto :goto_2

    .line 170
    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public static fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps2d/model/BitmapDescriptor;
    .locals 1

    .prologue
    .line 279
    if-nez p0, :cond_0

    .line 280
    const/4 v0, 0x0

    .line 283
    :goto_0
    return-object v0

    .line 282
    :cond_0
    new-instance v0, Lcom/amap/api/maps2d/model/BitmapDescriptor;

    invoke-direct {v0, p0}, Lcom/amap/api/maps2d/model/BitmapDescriptor;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public static fromFile(Ljava/lang/String;)Lcom/amap/api/maps2d/model/BitmapDescriptor;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 192
    const-string v2, "fromFile"

    .line 194
    :try_start_0
    sget-object v1, Lcom/amap/api/mapcore2d/aq;->a:Landroid/content/Context;

    .line 195
    if-eqz v1, :cond_0

    .line 196
    invoke-virtual {v1, p0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 197
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 198
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 199
    invoke-static {v3}, Lcom/amap/api/maps2d/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps2d/model/BitmapDescriptor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 204
    :cond_0
    :goto_0
    return-object v0

    .line 203
    :catch_0
    move-exception v1

    const-string v3, "BitmapDescriptorFactory"

    invoke-static {v1, v3, v2}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static fromPath(Ljava/lang/String;)Lcom/amap/api/maps2d/model/BitmapDescriptor;
    .locals 3

    .prologue
    .line 134
    const-string v1, "fromPath"

    .line 136
    :try_start_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 137
    invoke-static {v0}, Lcom/amap/api/maps2d/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps2d/model/BitmapDescriptor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 140
    :goto_0
    return-object v0

    .line 139
    :catch_0
    move-exception v0

    const-string v2, "BitmapDescriptorFactory"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static fromResource(I)Lcom/amap/api/maps2d/model/BitmapDescriptor;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 75
    const-string v2, "fromResource"

    .line 77
    :try_start_0
    sget-object v1, Lcom/amap/api/mapcore2d/aq;->a:Landroid/content/Context;

    .line 78
    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 81
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/maps2d/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps2d/model/BitmapDescriptor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 86
    :cond_0
    :goto_0
    return-object v0

    .line 85
    :catch_0
    move-exception v1

    const-string v3, "BitmapDescriptorFactory"

    invoke-static {v1, v3, v2}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static fromView(Landroid/view/View;)Lcom/amap/api/maps2d/model/BitmapDescriptor;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 98
    const-string v2, "fromView"

    .line 100
    :try_start_0
    sget-object v1, Lcom/amap/api/mapcore2d/aq;->a:Landroid/content/Context;

    .line 101
    if-eqz v1, :cond_0

    .line 102
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 103
    invoke-virtual {v3, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 104
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->destroyDrawingCache()V

    .line 105
    invoke-static {v3}, Lcom/amap/api/maps2d/model/BitmapDescriptorFactory;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/maps2d/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps2d/model/BitmapDescriptor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 110
    :cond_0
    :goto_0
    return-object v0

    .line 109
    :catch_0
    move-exception v1

    const-string v3, "BitmapDescriptorFactory"

    invoke-static {v1, v3, v2}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
