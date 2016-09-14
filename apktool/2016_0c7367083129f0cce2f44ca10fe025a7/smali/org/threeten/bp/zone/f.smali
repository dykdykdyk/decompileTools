.class public final Lorg/threeten/bp/zone/f;
.super Ljava/lang/Object;
.source "ZoneOffsetTransitionRule.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field final a:Lorg/threeten/bp/s;

.field final b:B

.field final c:Lorg/threeten/bp/d;

.field final d:Lorg/threeten/bp/p;

.field final e:Z

.field final f:Lorg/threeten/bp/zone/h;

.field final g:Lorg/threeten/bp/af;

.field final h:Lorg/threeten/bp/af;

.field final i:Lorg/threeten/bp/af;


# direct methods
.method private constructor <init>(Lorg/threeten/bp/s;ILorg/threeten/bp/d;Lorg/threeten/bp/p;ZLorg/threeten/bp/zone/h;Lorg/threeten/bp/af;Lorg/threeten/bp/af;Lorg/threeten/bp/af;)V
    .locals 1

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p1, p0, Lorg/threeten/bp/zone/f;->a:Lorg/threeten/bp/s;

    .line 191
    int-to-byte v0, p2

    iput-byte v0, p0, Lorg/threeten/bp/zone/f;->b:B

    .line 192
    iput-object p3, p0, Lorg/threeten/bp/zone/f;->c:Lorg/threeten/bp/d;

    .line 193
    iput-object p4, p0, Lorg/threeten/bp/zone/f;->d:Lorg/threeten/bp/p;

    .line 194
    iput-boolean p5, p0, Lorg/threeten/bp/zone/f;->e:Z

    .line 195
    iput-object p6, p0, Lorg/threeten/bp/zone/f;->f:Lorg/threeten/bp/zone/h;

    .line 196
    iput-object p7, p0, Lorg/threeten/bp/zone/f;->g:Lorg/threeten/bp/af;

    .line 197
    iput-object p8, p0, Lorg/threeten/bp/zone/f;->h:Lorg/threeten/bp/af;

    .line 198
    iput-object p9, p0, Lorg/threeten/bp/zone/f;->i:Lorg/threeten/bp/af;

    .line 199
    return-void
.end method

.method static a(Ljava/io/DataInput;)Lorg/threeten/bp/zone/f;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v14, 0x1f

    const/4 v11, 0x3

    const/4 v5, 0x0

    .line 258
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 259
    ushr-int/lit8 v1, v0, 0x1c

    invoke-static {v1}, Lorg/threeten/bp/s;->a(I)Lorg/threeten/bp/s;

    move-result-object v1

    .line 260
    const/high16 v2, 0xfc00000

    and-int/2addr v2, v0

    ushr-int/lit8 v2, v2, 0x16

    add-int/lit8 v2, v2, -0x20

    .line 261
    const/high16 v3, 0x380000

    and-int/2addr v3, v0

    ushr-int/lit8 v3, v3, 0x13

    .line 262
    if-nez v3, :cond_2

    const/4 v3, 0x0

    .line 263
    :goto_0
    const v4, 0x7c000

    and-int/2addr v4, v0

    ushr-int/lit8 v10, v4, 0xe

    .line 264
    invoke-static {}, Lorg/threeten/bp/zone/h;->values()[Lorg/threeten/bp/zone/h;

    move-result-object v4

    and-int/lit16 v6, v0, 0x3000

    ushr-int/lit8 v6, v6, 0xc

    aget-object v6, v4, v6

    .line 265
    and-int/lit16 v4, v0, 0xff0

    ushr-int/lit8 v7, v4, 0x4

    .line 266
    and-int/lit8 v4, v0, 0xc

    ushr-int/lit8 v8, v4, 0x2

    .line 267
    and-int/lit8 v0, v0, 0x3

    .line 268
    if-ne v10, v14, :cond_3

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v4

    int-to-long v12, v4

    invoke-static {v12, v13}, Lorg/threeten/bp/p;->a(J)Lorg/threeten/bp/p;

    move-result-object v4

    .line 269
    :goto_1
    const/16 v9, 0xff

    if-ne v7, v9, :cond_4

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v7

    invoke-static {v7}, Lorg/threeten/bp/af;->a(I)Lorg/threeten/bp/af;

    move-result-object v7

    .line 270
    :goto_2
    if-ne v8, v11, :cond_5

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v8

    invoke-static {v8}, Lorg/threeten/bp/af;->a(I)Lorg/threeten/bp/af;

    move-result-object v8

    .line 271
    :goto_3
    if-ne v0, v11, :cond_6

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-static {v0}, Lorg/threeten/bp/af;->a(I)Lorg/threeten/bp/af;

    move-result-object v9

    .line 272
    :goto_4
    const/16 v0, 0x18

    if-ne v10, v0, :cond_0

    const/4 v5, 0x1

    .line 8148
    :cond_0
    const-string v0, "month"

    invoke-static {v1, v0}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8149
    const-string v0, "time"

    invoke-static {v4, v0}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8150
    const-string v0, "timeDefnition"

    invoke-static {v6, v0}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8151
    const-string v0, "standardOffset"

    invoke-static {v7, v0}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8152
    const-string v0, "offsetBefore"

    invoke-static {v8, v0}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8153
    const-string v0, "offsetAfter"

    invoke-static {v9, v0}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8154
    const/16 v0, -0x1c

    if-lt v2, v0, :cond_1

    if-gt v2, v14, :cond_1

    if-nez v2, :cond_7

    .line 8155
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Day of month indicator must be between -28 and 31 inclusive excluding zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_2
    invoke-static {v3}, Lorg/threeten/bp/d;->a(I)Lorg/threeten/bp/d;

    move-result-object v3

    goto :goto_0

    .line 268
    :cond_3
    rem-int/lit8 v4, v10, 0x18

    invoke-static {v4, v5}, Lorg/threeten/bp/p;->a(II)Lorg/threeten/bp/p;

    move-result-object v4

    goto :goto_1

    .line 269
    :cond_4
    add-int/lit8 v7, v7, -0x80

    mul-int/lit16 v7, v7, 0x384

    invoke-static {v7}, Lorg/threeten/bp/af;->a(I)Lorg/threeten/bp/af;

    move-result-object v7

    goto :goto_2

    .line 6449
    :cond_5
    iget v9, v7, Lorg/threeten/bp/af;->g:I

    .line 270
    mul-int/lit16 v8, v8, 0x708

    add-int/2addr v8, v9

    invoke-static {v8}, Lorg/threeten/bp/af;->a(I)Lorg/threeten/bp/af;

    move-result-object v8

    goto :goto_3

    .line 7449
    :cond_6
    iget v9, v7, Lorg/threeten/bp/af;->g:I

    .line 271
    mul-int/lit16 v0, v0, 0x708

    add-int/2addr v0, v9

    invoke-static {v0}, Lorg/threeten/bp/af;->a(I)Lorg/threeten/bp/af;

    move-result-object v9

    goto :goto_4

    .line 8157
    :cond_7
    if-eqz v5, :cond_8

    sget-object v0, Lorg/threeten/bp/p;->c:Lorg/threeten/bp/p;

    invoke-virtual {v4, v0}, Lorg/threeten/bp/p;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 8158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Time must be midnight when end of day flag is true"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8160
    :cond_8
    new-instance v0, Lorg/threeten/bp/zone/f;

    invoke-direct/range {v0 .. v9}, Lorg/threeten/bp/zone/f;-><init>(Lorg/threeten/bp/s;ILorg/threeten/bp/d;Lorg/threeten/bp/p;ZLorg/threeten/bp/zone/h;Lorg/threeten/bp/af;Lorg/threeten/bp/af;Lorg/threeten/bp/af;)V

    .line 272
    return-object v0
.end method


# virtual methods
.method final a(Ljava/io/DataOutput;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v12, 0xe10

    const/16 v11, 0x708

    const/16 v8, 0xff

    const/16 v2, 0x1f

    const/4 v4, 0x3

    .line 218
    iget-boolean v0, p0, Lorg/threeten/bp/zone/f;->e:Z

    if-eqz v0, :cond_6

    const v0, 0x15180

    .line 219
    :goto_0
    iget-object v1, p0, Lorg/threeten/bp/zone/f;->g:Lorg/threeten/bp/af;

    .line 1449
    iget v9, v1, Lorg/threeten/bp/af;->g:I

    .line 220
    iget-object v1, p0, Lorg/threeten/bp/zone/f;->h:Lorg/threeten/bp/af;

    .line 2449
    iget v1, v1, Lorg/threeten/bp/af;->g:I

    .line 220
    sub-int v5, v1, v9

    .line 221
    iget-object v1, p0, Lorg/threeten/bp/zone/f;->i:Lorg/threeten/bp/af;

    .line 3449
    iget v1, v1, Lorg/threeten/bp/af;->g:I

    .line 221
    sub-int v10, v1, v9

    .line 222
    rem-int/lit16 v1, v0, 0xe10

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lorg/threeten/bp/zone/f;->e:Z

    if-eqz v1, :cond_7

    const/16 v1, 0x18

    .line 223
    :goto_1
    rem-int/lit16 v3, v9, 0x384

    if-nez v3, :cond_9

    div-int/lit16 v3, v9, 0x384

    add-int/lit16 v3, v3, 0x80

    move v7, v3

    .line 224
    :goto_2
    if-eqz v5, :cond_0

    if-eq v5, v11, :cond_0

    if-ne v5, v12, :cond_a

    :cond_0
    div-int/lit16 v3, v5, 0x708

    move v6, v3

    .line 225
    :goto_3
    if-eqz v10, :cond_1

    if-eq v10, v11, :cond_1

    if-ne v10, v12, :cond_b

    :cond_1
    div-int/lit16 v3, v10, 0x708

    .line 226
    :goto_4
    iget-object v5, p0, Lorg/threeten/bp/zone/f;->c:Lorg/threeten/bp/d;

    if-nez v5, :cond_c

    const/4 v5, 0x0

    .line 227
    :goto_5
    iget-object v10, p0, Lorg/threeten/bp/zone/f;->a:Lorg/threeten/bp/s;

    .line 4213
    invoke-virtual {v10}, Lorg/threeten/bp/s;->ordinal()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    .line 227
    shl-int/lit8 v10, v10, 0x1c

    iget-byte v11, p0, Lorg/threeten/bp/zone/f;->b:B

    add-int/lit8 v11, v11, 0x20

    shl-int/lit8 v11, v11, 0x16

    add-int/2addr v10, v11

    shl-int/lit8 v5, v5, 0x13

    add-int/2addr v5, v10

    shl-int/lit8 v10, v1, 0xe

    add-int/2addr v5, v10

    iget-object v10, p0, Lorg/threeten/bp/zone/f;->f:Lorg/threeten/bp/zone/h;

    invoke-virtual {v10}, Lorg/threeten/bp/zone/h;->ordinal()I

    move-result v10

    shl-int/lit8 v10, v10, 0xc

    add-int/2addr v5, v10

    shl-int/lit8 v10, v7, 0x4

    add-int/2addr v5, v10

    shl-int/lit8 v10, v6, 0x2

    add-int/2addr v5, v10

    add-int/2addr v5, v3

    .line 235
    invoke-interface {p1, v5}, Ljava/io/DataOutput;->writeInt(I)V

    .line 236
    if-ne v1, v2, :cond_2

    .line 237
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 239
    :cond_2
    if-ne v7, v8, :cond_3

    .line 240
    invoke-interface {p1, v9}, Ljava/io/DataOutput;->writeInt(I)V

    .line 242
    :cond_3
    if-ne v6, v4, :cond_4

    .line 243
    iget-object v0, p0, Lorg/threeten/bp/zone/f;->h:Lorg/threeten/bp/af;

    .line 4449
    iget v0, v0, Lorg/threeten/bp/af;->g:I

    .line 243
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 245
    :cond_4
    if-ne v3, v4, :cond_5

    .line 246
    iget-object v0, p0, Lorg/threeten/bp/zone/f;->i:Lorg/threeten/bp/af;

    .line 5449
    iget v0, v0, Lorg/threeten/bp/af;->g:I

    .line 246
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 248
    :cond_5
    return-void

    .line 218
    :cond_6
    iget-object v0, p0, Lorg/threeten/bp/zone/f;->d:Lorg/threeten/bp/p;

    invoke-virtual {v0}, Lorg/threeten/bp/p;->a()I

    move-result v0

    goto/16 :goto_0

    .line 222
    :cond_7
    iget-object v1, p0, Lorg/threeten/bp/zone/f;->d:Lorg/threeten/bp/p;

    .line 3650
    iget-byte v1, v1, Lorg/threeten/bp/p;->f:B

    goto :goto_1

    :cond_8
    move v1, v2

    .line 222
    goto :goto_1

    :cond_9
    move v7, v8

    .line 223
    goto :goto_2

    :cond_a
    move v6, v4

    .line 224
    goto :goto_3

    :cond_b
    move v3, v4

    .line 225
    goto :goto_4

    .line 226
    :cond_c
    iget-object v5, p0, Lorg/threeten/bp/zone/f;->c:Lorg/threeten/bp/d;

    .line 4187
    invoke-virtual {v5}, Lorg/threeten/bp/d;->ordinal()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_5
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 431
    if-ne p1, p0, :cond_1

    .line 444
    :cond_0
    :goto_0
    return v0

    .line 434
    :cond_1
    instance-of v2, p1, Lorg/threeten/bp/zone/f;

    if-eqz v2, :cond_3

    .line 435
    check-cast p1, Lorg/threeten/bp/zone/f;

    .line 436
    iget-object v2, p0, Lorg/threeten/bp/zone/f;->a:Lorg/threeten/bp/s;

    iget-object v3, p1, Lorg/threeten/bp/zone/f;->a:Lorg/threeten/bp/s;

    if-ne v2, v3, :cond_2

    iget-byte v2, p0, Lorg/threeten/bp/zone/f;->b:B

    iget-byte v3, p1, Lorg/threeten/bp/zone/f;->b:B

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/threeten/bp/zone/f;->c:Lorg/threeten/bp/d;

    iget-object v3, p1, Lorg/threeten/bp/zone/f;->c:Lorg/threeten/bp/d;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/threeten/bp/zone/f;->f:Lorg/threeten/bp/zone/h;

    iget-object v3, p1, Lorg/threeten/bp/zone/f;->f:Lorg/threeten/bp/zone/h;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/threeten/bp/zone/f;->d:Lorg/threeten/bp/p;

    iget-object v3, p1, Lorg/threeten/bp/zone/f;->d:Lorg/threeten/bp/p;

    invoke-virtual {v2, v3}, Lorg/threeten/bp/p;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lorg/threeten/bp/zone/f;->e:Z

    iget-boolean v3, p1, Lorg/threeten/bp/zone/f;->e:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/threeten/bp/zone/f;->g:Lorg/threeten/bp/af;

    iget-object v3, p1, Lorg/threeten/bp/zone/f;->g:Lorg/threeten/bp/af;

    invoke-virtual {v2, v3}, Lorg/threeten/bp/af;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/threeten/bp/zone/f;->h:Lorg/threeten/bp/af;

    iget-object v3, p1, Lorg/threeten/bp/zone/f;->h:Lorg/threeten/bp/af;

    invoke-virtual {v2, v3}, Lorg/threeten/bp/af;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/threeten/bp/zone/f;->i:Lorg/threeten/bp/af;

    iget-object v3, p1, Lorg/threeten/bp/zone/f;->i:Lorg/threeten/bp/af;

    invoke-virtual {v2, v3}, Lorg/threeten/bp/af;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 444
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 454
    iget-object v0, p0, Lorg/threeten/bp/zone/f;->d:Lorg/threeten/bp/p;

    invoke-virtual {v0}, Lorg/threeten/bp/p;->a()I

    move-result v1

    iget-boolean v0, p0, Lorg/threeten/bp/zone/f;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0xf

    iget-object v1, p0, Lorg/threeten/bp/zone/f;->a:Lorg/threeten/bp/s;

    invoke-virtual {v1}, Lorg/threeten/bp/s;->ordinal()I

    move-result v1

    shl-int/lit8 v1, v1, 0xb

    add-int/2addr v0, v1

    iget-byte v1, p0, Lorg/threeten/bp/zone/f;->b:B

    add-int/lit8 v1, v1, 0x20

    shl-int/lit8 v1, v1, 0x5

    add-int/2addr v1, v0

    iget-object v0, p0, Lorg/threeten/bp/zone/f;->c:Lorg/threeten/bp/d;

    if-nez v0, :cond_1

    const/4 v0, 0x7

    :goto_1
    shl-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/threeten/bp/zone/f;->f:Lorg/threeten/bp/zone/h;

    invoke-virtual {v1}, Lorg/threeten/bp/zone/h;->ordinal()I

    move-result v1

    add-int/2addr v0, v1

    .line 457
    iget-object v1, p0, Lorg/threeten/bp/zone/f;->g:Lorg/threeten/bp/af;

    invoke-virtual {v1}, Lorg/threeten/bp/af;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/threeten/bp/zone/f;->h:Lorg/threeten/bp/af;

    invoke-virtual {v1}, Lorg/threeten/bp/af;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/threeten/bp/zone/f;->i:Lorg/threeten/bp/af;

    invoke-virtual {v1}, Lorg/threeten/bp/af;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0

    .line 454
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/threeten/bp/zone/f;->c:Lorg/threeten/bp/d;

    invoke-virtual {v0}, Lorg/threeten/bp/d;->ordinal()I

    move-result v0

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x20

    .line 469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 470
    const-string v0, "TransitionRule["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lorg/threeten/bp/zone/f;->h:Lorg/threeten/bp/af;

    iget-object v3, p0, Lorg/threeten/bp/zone/f;->i:Lorg/threeten/bp/af;

    invoke-virtual {v0, v3}, Lorg/threeten/bp/af;->a(Lorg/threeten/bp/af;)I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "Gap "

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/threeten/bp/zone/f;->h:Lorg/threeten/bp/af;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/threeten/bp/zone/f;->i:Lorg/threeten/bp/af;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    iget-object v0, p0, Lorg/threeten/bp/zone/f;->c:Lorg/threeten/bp/d;

    if-eqz v0, :cond_3

    .line 474
    iget-byte v0, p0, Lorg/threeten/bp/zone/f;->b:B

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 475
    iget-object v0, p0, Lorg/threeten/bp/zone/f;->c:Lorg/threeten/bp/d;

    invoke-virtual {v0}, Lorg/threeten/bp/d;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " on or before last day of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/threeten/bp/zone/f;->a:Lorg/threeten/bp/s;

    invoke-virtual {v2}, Lorg/threeten/bp/s;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    :goto_1
    const-string v0, " at "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lorg/threeten/bp/zone/f;->e:Z

    if-eqz v0, :cond_4

    const-string v0, "24:00"

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/threeten/bp/zone/f;->f:Lorg/threeten/bp/zone/h;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", standard offset "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/threeten/bp/zone/f;->g:Lorg/threeten/bp/af;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 488
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 470
    :cond_0
    const-string v0, "Overlap "

    goto :goto_0

    .line 476
    :cond_1
    iget-byte v0, p0, Lorg/threeten/bp/zone/f;->b:B

    if-gez v0, :cond_2

    .line 477
    iget-object v0, p0, Lorg/threeten/bp/zone/f;->c:Lorg/threeten/bp/d;

    invoke-virtual {v0}, Lorg/threeten/bp/d;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " on or before last day minus "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v2, p0, Lorg/threeten/bp/zone/f;->b:B

    neg-int v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/threeten/bp/zone/f;->a:Lorg/threeten/bp/s;

    invoke-virtual {v2}, Lorg/threeten/bp/s;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 479
    :cond_2
    iget-object v0, p0, Lorg/threeten/bp/zone/f;->c:Lorg/threeten/bp/d;

    invoke-virtual {v0}, Lorg/threeten/bp/d;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " on or after "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/threeten/bp/zone/f;->a:Lorg/threeten/bp/s;

    invoke-virtual {v2}, Lorg/threeten/bp/s;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v2, p0, Lorg/threeten/bp/zone/f;->b:B

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 482
    :cond_3
    iget-object v0, p0, Lorg/threeten/bp/zone/f;->a:Lorg/threeten/bp/s;

    invoke-virtual {v0}, Lorg/threeten/bp/s;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v2, p0, Lorg/threeten/bp/zone/f;->b:B

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 484
    :cond_4
    iget-object v0, p0, Lorg/threeten/bp/zone/f;->d:Lorg/threeten/bp/p;

    invoke-virtual {v0}, Lorg/threeten/bp/p;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2
.end method
