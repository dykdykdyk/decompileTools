.class public final Lcom/nut/blehunter/d/q;
.super Ljava/lang/Object;
.source "TypeConvertUtils.java"


# direct methods
.method public static a(Landroid/content/Context;F)I
    .locals 2

    .prologue
    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 137
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 141
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 142
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 143
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->destroyDrawingCache()V

    .line 145
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->measure(II)V

    .line 147
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 148
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->buildDrawingCache()V

    .line 149
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 150
    return-object v0
.end method

.method public static a(J)Ljava/lang/String;
    .locals 6

    .prologue
    .line 44
    invoke-static {p0, p1}, Lcom/nut/blehunter/d/q;->b(J)[B

    move-result-object v3

    .line 45
    const-string v1, ""

    .line 49
    const/4 v0, 0x0

    move-object v2, v1

    move v1, v0

    :goto_0
    const/4 v0, 0x6

    if-ge v1, v0, :cond_2

    .line 50
    aget-byte v0, v3, v1

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 52
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "0"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    :cond_0
    if-nez v1, :cond_1

    .line 49
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move-object v2, v0

    goto :goto_0

    .line 57
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 61
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 40
    :goto_0
    return-object v0

    .line 1125
    :cond_0
    const/4 v0, 0x6

    new-array v2, v0, [B

    .line 1126
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1128
    const/4 v0, 0x0

    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 1129
    aget-object v4, v3, v0

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 1130
    int-to-byte v4, v4

    aput-byte v4, v2, v0

    .line 1128
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 36
    :cond_1
    invoke-static {v2}, Lcom/nut/blehunter/d/q;->b([B)J

    move-result-wide v2

    .line 37
    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    move-object v0, v1

    .line 38
    goto :goto_0

    .line 40
    :cond_2
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a([B)Z
    .locals 1

    .prologue
    .line 26
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 27
    :cond_0
    const/4 v0, 0x1

    .line 29
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(I)[B
    .locals 3

    .prologue
    .line 180
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 182
    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 183
    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 184
    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 185
    const/4 v1, 0x3

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    .line 187
    return-object v0
.end method

.method public static a(Landroid/graphics/Bitmap;)[B
    .locals 3

    .prologue
    .line 191
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 192
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 194
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 197
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 199
    :try_start_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :goto_0
    return-object v1

    .line 201
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static b([B)J
    .locals 12

    .prologue
    const/16 v10, 0x8

    const/4 v3, 0x0

    const-wide/16 v8, 0xff

    .line 76
    array-length v0, p0

    if-le v0, v10, :cond_1

    .line 77
    const-string v0, "mutableBytesToLong failure, array length is error."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, La/a/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    const-wide/16 v0, -0x1

    .line 112
    :cond_0
    return-wide v0

    .line 80
    :cond_1
    const-wide/16 v4, 0x0

    .line 81
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    move v2, v3

    move v11, v0

    move-wide v0, v4

    move v4, v11

    :goto_0
    if-ltz v4, :cond_0

    .line 82
    packed-switch v2, :pswitch_data_0

    .line 108
    const-string v5, "mutableBytesToLong failure, key value abnormal."

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v5, v6}, La/a/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    :goto_1
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 84
    :pswitch_0
    aget-byte v5, p0, v4

    int-to-long v6, v5

    and-long/2addr v6, v8

    shl-long/2addr v6, v3

    or-long/2addr v0, v6

    .line 85
    goto :goto_1

    .line 87
    :pswitch_1
    aget-byte v5, p0, v4

    int-to-long v6, v5

    and-long/2addr v6, v8

    shl-long/2addr v6, v10

    or-long/2addr v0, v6

    .line 88
    goto :goto_1

    .line 90
    :pswitch_2
    aget-byte v5, p0, v4

    int-to-long v6, v5

    and-long/2addr v6, v8

    const/16 v5, 0x10

    shl-long/2addr v6, v5

    or-long/2addr v0, v6

    .line 91
    goto :goto_1

    .line 93
    :pswitch_3
    aget-byte v5, p0, v4

    int-to-long v6, v5

    and-long/2addr v6, v8

    const/16 v5, 0x18

    shl-long/2addr v6, v5

    or-long/2addr v0, v6

    .line 94
    goto :goto_1

    .line 96
    :pswitch_4
    aget-byte v5, p0, v4

    int-to-long v6, v5

    and-long/2addr v6, v8

    const/16 v5, 0x20

    shl-long/2addr v6, v5

    or-long/2addr v0, v6

    .line 97
    goto :goto_1

    .line 99
    :pswitch_5
    aget-byte v5, p0, v4

    int-to-long v6, v5

    and-long/2addr v6, v8

    const/16 v5, 0x28

    shl-long/2addr v6, v5

    or-long/2addr v0, v6

    .line 100
    goto :goto_1

    .line 102
    :pswitch_6
    aget-byte v5, p0, v4

    int-to-long v6, v5

    and-long/2addr v6, v8

    const/16 v5, 0x30

    shl-long/2addr v6, v5

    or-long/2addr v0, v6

    .line 103
    goto :goto_1

    .line 105
    :pswitch_7
    aget-byte v5, p0, v4

    int-to-long v6, v5

    and-long/2addr v6, v8

    const/16 v5, 0x38

    shl-long/2addr v6, v5

    or-long/2addr v0, v6

    .line 106
    goto :goto_1

    .line 82
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static b(J)[B
    .locals 6

    .prologue
    const-wide/16 v4, 0xff

    .line 65
    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 66
    const/4 v1, 0x5

    and-long v2, p0, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 67
    const/4 v1, 0x4

    const/16 v2, 0x8

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 68
    const/4 v1, 0x3

    const/16 v2, 0x10

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 69
    const/4 v1, 0x2

    const/16 v2, 0x18

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 70
    const/4 v1, 0x1

    const/16 v2, 0x20

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 71
    const/4 v1, 0x0

    const/16 v2, 0x28

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 72
    return-object v0
.end method

.method public static c([B)Ljava/lang/String;
    .locals 5

    .prologue
    .line 154
    const-string v1, ""

    .line 155
    if-nez p0, :cond_1

    .line 156
    const-string v1, ""

    .line 165
    :cond_0
    return-object v1

    .line 158
    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 159
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 160
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 161
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 163
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
