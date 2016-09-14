.class public final Lcom/google/zxing/k;
.super Lcom/google/zxing/g;
.source "PlanarYUVLuminanceSource.java"


# instance fields
.field public final c:[B

.field public final d:I

.field public final e:I

.field public final f:I

.field private final g:I


# direct methods
.method public constructor <init>([BIIIIII)V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0, p6, p7}, Lcom/google/zxing/g;-><init>(II)V

    .line 49
    add-int v0, p4, p6

    if-gt v0, p2, :cond_0

    add-int v0, p5, p7

    if-le v0, p3, :cond_1

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Crop rectangle does not fit within image data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_1
    iput-object p1, p0, Lcom/google/zxing/k;->c:[B

    .line 54
    iput p2, p0, Lcom/google/zxing/k;->d:I

    .line 55
    iput p3, p0, Lcom/google/zxing/k;->g:I

    .line 56
    iput p4, p0, Lcom/google/zxing/k;->e:I

    .line 57
    iput p5, p0, Lcom/google/zxing/k;->f:I

    .line 61
    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 79
    .line 3066
    iget v3, p0, Lcom/google/zxing/g;->a:I

    .line 3073
    iget v4, p0, Lcom/google/zxing/g;->b:I

    .line 84
    iget v0, p0, Lcom/google/zxing/k;->d:I

    if-ne v3, v0, :cond_1

    iget v0, p0, Lcom/google/zxing/k;->g:I

    if-ne v4, v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/google/zxing/k;->c:[B

    .line 105
    :cond_0
    :goto_0
    return-object v0

    .line 88
    :cond_1
    mul-int v5, v3, v4

    .line 89
    new-array v0, v5, [B

    .line 90
    iget v2, p0, Lcom/google/zxing/k;->f:I

    iget v6, p0, Lcom/google/zxing/k;->d:I

    mul-int/2addr v2, v6

    iget v6, p0, Lcom/google/zxing/k;->e:I

    add-int/2addr v2, v6

    .line 93
    iget v6, p0, Lcom/google/zxing/k;->d:I

    if-ne v3, v6, :cond_2

    .line 94
    iget-object v3, p0, Lcom/google/zxing/k;->c:[B

    invoke-static {v3, v2, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 99
    :cond_2
    iget-object v5, p0, Lcom/google/zxing/k;->c:[B

    .line 100
    :goto_1
    if-ge v1, v4, :cond_0

    .line 101
    mul-int v6, v1, v3

    .line 102
    invoke-static {v5, v2, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    iget v6, p0, Lcom/google/zxing/k;->d:I

    add-int/2addr v2, v6

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public final a(I[B)[B
    .locals 4

    .prologue
    .line 65
    if-ltz p1, :cond_0

    .line 1073
    iget v0, p0, Lcom/google/zxing/g;->b:I

    .line 65
    if-lt p1, v0, :cond_1

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Requested row is outside the image: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2066
    :cond_1
    iget v0, p0, Lcom/google/zxing/g;->a:I

    .line 69
    if-eqz p2, :cond_2

    array-length v1, p2

    if-ge v1, v0, :cond_3

    .line 70
    :cond_2
    new-array p2, v0, [B

    .line 72
    :cond_3
    iget v1, p0, Lcom/google/zxing/k;->f:I

    add-int/2addr v1, p1

    iget v2, p0, Lcom/google/zxing/k;->d:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/google/zxing/k;->e:I

    add-int/2addr v1, v2

    .line 73
    iget-object v2, p0, Lcom/google/zxing/k;->c:[B

    const/4 v3, 0x0

    invoke-static {v2, v1, p2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    return-object p2
.end method

.method public final b()[I
    .locals 13

    .prologue
    const/4 v1, 0x0

    .line 126
    .line 4066
    iget v0, p0, Lcom/google/zxing/g;->a:I

    .line 126
    div-int/lit8 v4, v0, 0x2

    .line 4073
    iget v0, p0, Lcom/google/zxing/g;->b:I

    .line 127
    div-int/lit8 v5, v0, 0x2

    .line 128
    mul-int v0, v4, v5

    new-array v6, v0, [I

    .line 129
    iget-object v7, p0, Lcom/google/zxing/k;->c:[B

    .line 130
    iget v0, p0, Lcom/google/zxing/k;->f:I

    iget v2, p0, Lcom/google/zxing/k;->d:I

    mul-int/2addr v0, v2

    iget v2, p0, Lcom/google/zxing/k;->e:I

    add-int/2addr v0, v2

    move v2, v1

    move v3, v0

    .line 132
    :goto_0
    if-ge v2, v5, :cond_1

    .line 133
    mul-int v8, v2, v4

    move v0, v1

    .line 134
    :goto_1
    if-ge v0, v4, :cond_0

    .line 135
    mul-int/lit8 v9, v0, 0x2

    add-int/2addr v9, v3

    aget-byte v9, v7, v9

    and-int/lit16 v9, v9, 0xff

    .line 136
    add-int v10, v8, v0

    const/high16 v11, -0x1000000

    const v12, 0x10101

    mul-int/2addr v9, v12

    or-int/2addr v9, v11

    aput v9, v6, v10

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 138
    :cond_0
    iget v0, p0, Lcom/google/zxing/k;->d:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v3, v0

    .line 132
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 140
    :cond_1
    return-object v6
.end method
