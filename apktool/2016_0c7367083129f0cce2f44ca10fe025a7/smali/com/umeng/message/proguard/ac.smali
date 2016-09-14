.class public abstract Lcom/umeng/message/proguard/ac;
.super Ljava/lang/Object;
.source "BaseNCodec.java"


# instance fields
.field private final a:I

.field protected final b:B

.field protected final c:I

.field protected d:[B

.field protected e:I

.field protected f:Z

.field protected g:I

.field protected h:I

.field private final i:I

.field private final j:I

.field private k:I


# direct methods
.method protected constructor <init>(I)V
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/16 v0, 0x3d

    iput-byte v0, p0, Lcom/umeng/message/proguard/ac;->b:B

    .line 132
    const/4 v0, 0x3

    iput v0, p0, Lcom/umeng/message/proguard/ac;->a:I

    .line 133
    const/4 v0, 0x4

    iput v0, p0, Lcom/umeng/message/proguard/ac;->i:I

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/message/proguard/ac;->c:I

    .line 135
    iput p1, p0, Lcom/umeng/message/proguard/ac;->j:I

    .line 136
    return-void
.end method

.method private a([BI)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 202
    iget-object v0, p0, Lcom/umeng/message/proguard/ac;->d:[B

    if-eqz v0, :cond_3

    .line 2153
    iget-object v0, p0, Lcom/umeng/message/proguard/ac;->d:[B

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/umeng/message/proguard/ac;->e:I

    iget v2, p0, Lcom/umeng/message/proguard/ac;->k:I

    sub-int/2addr v0, v2

    .line 203
    :goto_0
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 204
    iget-object v2, p0, Lcom/umeng/message/proguard/ac;->d:[B

    iget v3, p0, Lcom/umeng/message/proguard/ac;->k:I

    invoke-static {v2, v3, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    iget v1, p0, Lcom/umeng/message/proguard/ac;->k:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/umeng/message/proguard/ac;->k:I

    .line 206
    iget v1, p0, Lcom/umeng/message/proguard/ac;->k:I

    iget v2, p0, Lcom/umeng/message/proguard/ac;->e:I

    if-lt v1, v2, :cond_0

    .line 207
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/umeng/message/proguard/ac;->d:[B

    :cond_0
    move v1, v0

    .line 211
    :cond_1
    :goto_1
    return v1

    :cond_2
    move v0, v1

    .line 2153
    goto :goto_0

    .line 211
    :cond_3
    iget-boolean v0, p0, Lcom/umeng/message/proguard/ac;->f:Z

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    goto :goto_1
.end method

.method private a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/message/proguard/ac;->d:[B

    .line 238
    iput v1, p0, Lcom/umeng/message/proguard/ac;->e:I

    .line 239
    iput v1, p0, Lcom/umeng/message/proguard/ac;->k:I

    .line 240
    iput v1, p0, Lcom/umeng/message/proguard/ac;->g:I

    .line 241
    iput v1, p0, Lcom/umeng/message/proguard/ac;->h:I

    .line 242
    iput-boolean v1, p0, Lcom/umeng/message/proguard/ac;->f:Z

    .line 243
    return-void
.end method


# virtual methods
.method protected final a(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 184
    iget-object v0, p0, Lcom/umeng/message/proguard/ac;->d:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/message/proguard/ac;->d:[B

    array-length v0, v0

    iget v1, p0, Lcom/umeng/message/proguard/ac;->e:I

    add-int/2addr v1, p1

    if-ge v0, v1, :cond_1

    .line 1167
    :cond_0
    iget-object v0, p0, Lcom/umeng/message/proguard/ac;->d:[B

    if-nez v0, :cond_2

    .line 1168
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/umeng/message/proguard/ac;->d:[B

    .line 1169
    iput v3, p0, Lcom/umeng/message/proguard/ac;->e:I

    .line 1170
    iput v3, p0, Lcom/umeng/message/proguard/ac;->k:I

    :cond_1
    :goto_0
    return-void

    .line 1172
    :cond_2
    iget-object v0, p0, Lcom/umeng/message/proguard/ac;->d:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 1173
    iget-object v1, p0, Lcom/umeng/message/proguard/ac;->d:[B

    iget-object v2, p0, Lcom/umeng/message/proguard/ac;->d:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1174
    iput-object v0, p0, Lcom/umeng/message/proguard/ac;->d:[B

    goto :goto_0
.end method

.method abstract a([BII)V
.end method

.method protected abstract a(B)Z
.end method

.method abstract b([BII)V
.end method

.method public final d([B)[B
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 312
    invoke-direct {p0}, Lcom/umeng/message/proguard/ac;->a()V

    .line 313
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 320
    :cond_0
    :goto_0
    return-object p1

    .line 316
    :cond_1
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Lcom/umeng/message/proguard/ac;->b([BII)V

    .line 317
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/umeng/message/proguard/ac;->b([BII)V

    .line 318
    iget v0, p0, Lcom/umeng/message/proguard/ac;->e:I

    new-array p1, v0, [B

    .line 319
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lcom/umeng/message/proguard/ac;->a([BI)I

    goto :goto_0
.end method

.method public final e([B)[B
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 331
    invoke-direct {p0}, Lcom/umeng/message/proguard/ac;->a()V

    .line 332
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-object p1

    .line 335
    :cond_1
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Lcom/umeng/message/proguard/ac;->a([BII)V

    .line 336
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/umeng/message/proguard/ac;->a([BII)V

    .line 337
    iget v0, p0, Lcom/umeng/message/proguard/ac;->e:I

    iget v1, p0, Lcom/umeng/message/proguard/ac;->k:I

    sub-int/2addr v0, v1

    new-array p1, v0, [B

    .line 338
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lcom/umeng/message/proguard/ac;->a([BI)I

    goto :goto_0
.end method

.method protected final f([B)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 410
    if-nez p1, :cond_1

    .line 418
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 413
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 414
    const/16 v2, 0x3d

    aget-byte v3, p1, v0

    if-eq v2, v3, :cond_2

    aget-byte v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/umeng/message/proguard/ac;->a(B)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 415
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 413
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public final g([B)J
    .locals 6

    .prologue
    .line 432
    array-length v0, p1

    iget v1, p0, Lcom/umeng/message/proguard/ac;->a:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/umeng/message/proguard/ac;->a:I

    div-int/2addr v0, v1

    int-to-long v0, v0

    iget v2, p0, Lcom/umeng/message/proguard/ac;->i:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    .line 433
    iget v2, p0, Lcom/umeng/message/proguard/ac;->c:I

    if-lez v2, :cond_0

    .line 435
    iget v2, p0, Lcom/umeng/message/proguard/ac;->c:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iget v4, p0, Lcom/umeng/message/proguard/ac;->c:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    iget v4, p0, Lcom/umeng/message/proguard/ac;->j:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 437
    :cond_0
    return-wide v0
.end method
