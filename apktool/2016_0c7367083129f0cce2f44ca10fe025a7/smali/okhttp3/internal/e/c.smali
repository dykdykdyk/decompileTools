.class final Lokhttp3/internal/e/c;
.super Ljava/lang/Object;
.source "DistinguishedNameParser.java"


# instance fields
.field final a:Ljava/lang/String;

.field final b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:[C


# direct methods
.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "RFC2253"

    invoke-virtual {p1, v0}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/e/c;->a:Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lokhttp3/internal/e/c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lokhttp3/internal/e/c;->b:I

    .line 44
    return-void
.end method

.method private a(I)I
    .locals 8

    .prologue
    const/16 v7, 0x61

    const/16 v6, 0x46

    const/16 v5, 0x41

    const/16 v4, 0x39

    const/16 v3, 0x30

    .line 311
    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lokhttp3/internal/e/c;->b:I

    if-lt v0, v1, :cond_0

    .line 312
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Malformed DN: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lokhttp3/internal/e/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/e/c;->g:[C

    aget-char v0, v0, p1

    .line 318
    if-lt v0, v3, :cond_1

    if-gt v0, v4, :cond_1

    .line 319
    add-int/lit8 v0, v0, -0x30

    .line 328
    :goto_0
    iget-object v1, p0, Lokhttp3/internal/e/c;->g:[C

    add-int/lit8 v2, p1, 0x1

    aget-char v1, v1, v2

    .line 329
    if-lt v1, v3, :cond_4

    if-gt v1, v4, :cond_4

    .line 330
    add-int/lit8 v1, v1, -0x30

    .line 339
    :goto_1
    shl-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v1

    return v0

    .line 320
    :cond_1
    if-lt v0, v7, :cond_2

    const/16 v1, 0x66

    if-gt v0, v1, :cond_2

    .line 321
    add-int/lit8 v0, v0, -0x57

    goto :goto_0

    .line 322
    :cond_2
    if-lt v0, v5, :cond_3

    if-gt v0, v6, :cond_3

    .line 323
    add-int/lit8 v0, v0, -0x37

    goto :goto_0

    .line 325
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Malformed DN: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lokhttp3/internal/e/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :cond_4
    if-lt v1, v7, :cond_5

    const/16 v2, 0x66

    if-gt v1, v2, :cond_5

    .line 332
    add-int/lit8 v1, v1, -0x57

    goto :goto_1

    .line 333
    :cond_5
    if-lt v1, v5, :cond_6

    if-gt v1, v6, :cond_6

    .line 334
    add-int/lit8 v1, v1, -0x37

    goto :goto_1

    .line 336
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Malformed DN: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lokhttp3/internal/e/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private e()C
    .locals 8

    .prologue
    const/16 v6, 0x80

    const/16 v2, 0x3f

    .line 263
    iget v0, p0, Lokhttp3/internal/e/c;->c:I

    invoke-direct {p0, v0}, Lokhttp3/internal/e/c;->a(I)I

    move-result v1

    .line 264
    iget v0, p0, Lokhttp3/internal/e/c;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/e/c;->c:I

    .line 266
    if-ge v1, v6, :cond_0

    .line 267
    int-to-char v0, v1

    .line 300
    :goto_0
    return v0

    .line 268
    :cond_0
    const/16 v0, 0xc0

    if-lt v1, v0, :cond_7

    const/16 v0, 0xf7

    if-gt v1, v0, :cond_7

    .line 271
    const/16 v0, 0xdf

    if-gt v1, v0, :cond_2

    .line 272
    const/4 v0, 0x1

    .line 273
    and-int/lit8 v1, v1, 0x1f

    .line 283
    :goto_1
    const/4 v3, 0x0

    move v7, v3

    move v3, v1

    move v1, v7

    :goto_2
    if-ge v1, v0, :cond_6

    .line 284
    iget v4, p0, Lokhttp3/internal/e/c;->c:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lokhttp3/internal/e/c;->c:I

    .line 285
    iget v4, p0, Lokhttp3/internal/e/c;->c:I

    iget v5, p0, Lokhttp3/internal/e/c;->b:I

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lokhttp3/internal/e/c;->g:[C

    iget v5, p0, Lokhttp3/internal/e/c;->c:I

    aget-char v4, v4, v5

    const/16 v5, 0x5c

    if-eq v4, v5, :cond_4

    :cond_1
    move v0, v2

    .line 286
    goto :goto_0

    .line 274
    :cond_2
    const/16 v0, 0xef

    if-gt v1, v0, :cond_3

    .line 275
    const/4 v0, 0x2

    .line 276
    and-int/lit8 v1, v1, 0xf

    goto :goto_1

    .line 278
    :cond_3
    const/4 v0, 0x3

    .line 279
    and-int/lit8 v1, v1, 0x7

    goto :goto_1

    .line 288
    :cond_4
    iget v4, p0, Lokhttp3/internal/e/c;->c:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lokhttp3/internal/e/c;->c:I

    .line 290
    iget v4, p0, Lokhttp3/internal/e/c;->c:I

    invoke-direct {p0, v4}, Lokhttp3/internal/e/c;->a(I)I

    move-result v4

    .line 291
    iget v5, p0, Lokhttp3/internal/e/c;->c:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lokhttp3/internal/e/c;->c:I

    .line 292
    and-int/lit16 v5, v4, 0xc0

    if-eq v5, v6, :cond_5

    move v0, v2

    .line 293
    goto :goto_0

    .line 296
    :cond_5
    shl-int/lit8 v3, v3, 0x6

    and-int/lit8 v4, v4, 0x3f

    add-int/2addr v3, v4

    .line 283
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 298
    :cond_6
    int-to-char v0, v3

    goto :goto_0

    :cond_7
    move v0, v2

    .line 300
    goto :goto_0
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v3, 0x3d

    const/16 v2, 0x20

    .line 50
    :goto_0
    iget v0, p0, Lokhttp3/internal/e/c;->c:I

    iget v1, p0, Lokhttp3/internal/e/c;->b:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lokhttp3/internal/e/c;->g:[C

    iget v1, p0, Lokhttp3/internal/e/c;->c:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_0

    iget v0, p0, Lokhttp3/internal/e/c;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/e/c;->c:I

    goto :goto_0

    .line 52
    :cond_0
    iget v0, p0, Lokhttp3/internal/e/c;->c:I

    iget v1, p0, Lokhttp3/internal/e/c;->b:I

    if-ne v0, v1, :cond_1

    .line 53
    const/4 v0, 0x0

    .line 99
    :goto_1
    return-object v0

    .line 57
    :cond_1
    iget v0, p0, Lokhttp3/internal/e/c;->c:I

    iput v0, p0, Lokhttp3/internal/e/c;->d:I

    .line 60
    iget v0, p0, Lokhttp3/internal/e/c;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/e/c;->c:I

    .line 61
    :goto_2
    iget v0, p0, Lokhttp3/internal/e/c;->c:I

    iget v1, p0, Lokhttp3/internal/e/c;->b:I

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lokhttp3/internal/e/c;->g:[C

    iget v1, p0, Lokhttp3/internal/e/c;->c:I

    aget-char v0, v0, v1

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lokhttp3/internal/e/c;->g:[C

    iget v1, p0, Lokhttp3/internal/e/c;->c:I

    aget-char v0, v0, v1

    if-eq v0, v2, :cond_2

    iget v0, p0, Lokhttp3/internal/e/c;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/e/c;->c:I

    goto :goto_2

    .line 65
    :cond_2
    iget v0, p0, Lokhttp3/internal/e/c;->c:I

    iget v1, p0, Lokhttp3/internal/e/c;->b:I

    if-lt v0, v1, :cond_3

    .line 66
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected end of DN: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lokhttp3/internal/e/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_3
    iget v0, p0, Lokhttp3/internal/e/c;->c:I

    iput v0, p0, Lokhttp3/internal/e/c;->e:I

    .line 74
    iget-object v0, p0, Lokhttp3/internal/e/c;->g:[C

    iget v1, p0, Lokhttp3/internal/e/c;->c:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_6

    .line 75
    :goto_3
    iget v0, p0, Lokhttp3/internal/e/c;->c:I

    iget v1, p0, Lokhttp3/internal/e/c;->b:I

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lokhttp3/internal/e/c;->g:[C

    iget v1, p0, Lokhttp3/internal/e/c;->c:I

    aget-char v0, v0, v1

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lokhttp3/internal/e/c;->g:[C

    iget v1, p0, Lokhttp3/internal/e/c;->c:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_4

    iget v0, p0, Lokhttp3/internal/e/c;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/e/c;->c:I

    goto :goto_3

    .line 78
    :cond_4
    iget-object v0, p0, Lokhttp3/internal/e/c;->g:[C

    iget v1, p0, Lokhttp3/internal/e/c;->c:I

    aget-char v0, v0, v1

    if-ne v0, v3, :cond_5

    iget v0, p0, Lokhttp3/internal/e/c;->c:I

    iget v1, p0, Lokhttp3/internal/e/c;->b:I

    if-ne v0, v1, :cond_6

    .line 79
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected end of DN: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lokhttp3/internal/e/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_6
    iget v0, p0, Lokhttp3/internal/e/c;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/e/c;->c:I

    .line 87
    iget v0, p0, Lokhttp3/internal/e/c;->c:I

    iget v1, p0, Lokhttp3/internal/e/c;->b:I

    if-ge v0, v1, :cond_7

    iget-object v0, p0, Lokhttp3/internal/e/c;->g:[C

    iget v1, p0, Lokhttp3/internal/e/c;->c:I

    aget-char v0, v0, v1

    if-eq v0, v2, :cond_6

    .line 92
    :cond_7
    iget v0, p0, Lokhttp3/internal/e/c;->e:I

    iget v1, p0, Lokhttp3/internal/e/c;->d:I

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    if-le v0, v1, :cond_b

    iget-object v0, p0, Lokhttp3/internal/e/c;->g:[C

    iget v1, p0, Lokhttp3/internal/e/c;->d:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lokhttp3/internal/e/c;->g:[C

    iget v1, p0, Lokhttp3/internal/e/c;->d:I

    aget-char v0, v0, v1

    const/16 v1, 0x4f

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lokhttp3/internal/e/c;->g:[C

    iget v1, p0, Lokhttp3/internal/e/c;->d:I

    aget-char v0, v0, v1

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_b

    :cond_8
    iget-object v0, p0, Lokhttp3/internal/e/c;->g:[C

    iget v1, p0, Lokhttp3/internal/e/c;->d:I

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    const/16 v1, 0x49

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lokhttp3/internal/e/c;->g:[C

    iget v1, p0, Lokhttp3/internal/e/c;->d:I

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    const/16 v1, 0x69

    if-ne v0, v1, :cond_b

    :cond_9
    iget-object v0, p0, Lokhttp3/internal/e/c;->g:[C

    iget v1, p0, Lokhttp3/internal/e/c;->d:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    const/16 v1, 0x44

    if-eq v0, v1, :cond_a

    iget-object v0, p0, Lokhttp3/internal/e/c;->g:[C

    iget v1, p0, Lokhttp3/internal/e/c;->d:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    const/16 v1, 0x64

    if-ne v0, v1, :cond_b

    .line 96
    :cond_a
    iget v0, p0, Lokhttp3/internal/e/c;->d:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lokhttp3/internal/e/c;->d:I

    .line 99
    :cond_b
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lokhttp3/internal/e/c;->g:[C

    iget v2, p0, Lokhttp3/internal/e/c;->d:I

    iget v3, p0, Lokhttp3/internal/e/c;->e:I

    iget v4, p0, Lokhttp3/internal/e/c;->d:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_1
.end method

.method final b()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v3, 0x20

    .line 137
    iget v0, p0, Lokhttp3/internal/e/c;->c:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lokhttp3/internal/e/c;->b:I

    if-lt v0, v1, :cond_0

    .line 139
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected end of DN: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lokhttp3/internal/e/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    iget v0, p0, Lokhttp3/internal/e/c;->c:I

    iput v0, p0, Lokhttp3/internal/e/c;->d:I

    .line 143
    iget v0, p0, Lokhttp3/internal/e/c;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/e/c;->c:I

    .line 148
    :goto_0
    iget v0, p0, Lokhttp3/internal/e/c;->c:I

    iget v1, p0, Lokhttp3/internal/e/c;->b:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lokhttp3/internal/e/c;->g:[C

    iget v1, p0, Lokhttp3/internal/e/c;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lokhttp3/internal/e/c;->g:[C

    iget v1, p0, Lokhttp3/internal/e/c;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lokhttp3/internal/e/c;->g:[C

    iget v1, p0, Lokhttp3/internal/e/c;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_4

    .line 150
    :cond_1
    iget v0, p0, Lokhttp3/internal/e/c;->c:I

    iput v0, p0, Lokhttp3/internal/e/c;->e:I

    .line 171
    :cond_2
    iget v0, p0, Lokhttp3/internal/e/c;->e:I

    iget v1, p0, Lokhttp3/internal/e/c;->d:I

    sub-int v2, v0, v1

    .line 172
    const/4 v0, 0x5

    if-lt v2, v0, :cond_3

    and-int/lit8 v0, v2, 0x1

    if-nez v0, :cond_7

    .line 173
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected end of DN: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lokhttp3/internal/e/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_4
    iget-object v0, p0, Lokhttp3/internal/e/c;->g:[C

    iget v1, p0, Lokhttp3/internal/e/c;->c:I

    aget-char v0, v0, v1

    if-ne v0, v3, :cond_5

    .line 155
    iget v0, p0, Lokhttp3/internal/e/c;->c:I

    iput v0, p0, Lokhttp3/internal/e/c;->e:I

    .line 156
    iget v0, p0, Lokhttp3/internal/e/c;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/e/c;->c:I

    .line 159
    :goto_1
    iget v0, p0, Lokhttp3/internal/e/c;->c:I

    iget v1, p0, Lokhttp3/internal/e/c;->b:I

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lokhttp3/internal/e/c;->g:[C

    iget v1, p0, Lokhttp3/internal/e/c;->c:I

    aget-char v0, v0, v1

    if-ne v0, v3, :cond_2

    iget v0, p0, Lokhttp3/internal/e/c;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/e/c;->c:I

    goto :goto_1

    .line 162
    :cond_5
    iget-object v0, p0, Lokhttp3/internal/e/c;->g:[C

    iget v1, p0, Lokhttp3/internal/e/c;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x41

    if-lt v0, v1, :cond_6

    iget-object v0, p0, Lokhttp3/internal/e/c;->g:[C

    iget v1, p0, Lokhttp3/internal/e/c;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x46

    if-gt v0, v1, :cond_6

    .line 163
    iget-object v0, p0, Lokhttp3/internal/e/c;->g:[C

    iget v1, p0, Lokhttp3/internal/e/c;->c:I

    aget-char v2, v0, v1

    add-int/lit8 v2, v2, 0x20

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 166
    :cond_6
    iget v0, p0, Lokhttp3/internal/e/c;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/e/c;->c:I

    goto/16 :goto_0

    .line 177
    :cond_7
    div-int/lit8 v0, v2, 0x2

    new-array v3, v0, [B

    .line 178
    const/4 v1, 0x0

    iget v0, p0, Lokhttp3/internal/e/c;->d:I

    add-int/lit8 v0, v0, 0x1

    :goto_2
    array-length v4, v3

    if-ge v1, v4, :cond_8

    .line 179
    invoke-direct {p0, v0}, Lokhttp3/internal/e/c;->a(I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 178
    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 182
    :cond_8
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lokhttp3/internal/e/c;->g:[C

    iget v3, p0, Lokhttp3/internal/e/c;->d:I

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method final c()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x20

    .line 187
    iget v0, p0, Lokhttp3/internal/e/c;->c:I

    iput v0, p0, Lokhttp3/internal/e/c;->d:I

    .line 188
    iget v0, p0, Lokhttp3/internal/e/c;->c:I

    iput v0, p0, Lokhttp3/internal/e/c;->e:I

    .line 190
    :cond_0
    :goto_0
    iget v0, p0, Lokhttp3/internal/e/c;->c:I

    iget v1, p0, Lokhttp3/internal/e/c;->b:I

    if-lt v0, v1, :cond_1

    .line 192
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lokhttp3/internal/e/c;->g:[C

    iget v2, p0, Lokhttp3/internal/e/c;->d:I

    iget v3, p0, Lokhttp3/internal/e/c;->e:I

    iget v4, p0, Lokhttp3/internal/e/c;->d:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 220
    :goto_1
    return-object v0

    .line 195
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/e/c;->g:[C

    iget v1, p0, Lokhttp3/internal/e/c;->c:I

    aget-char v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 224
    iget-object v0, p0, Lokhttp3/internal/e/c;->g:[C

    iget v1, p0, Lokhttp3/internal/e/c;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lokhttp3/internal/e/c;->e:I

    iget-object v2, p0, Lokhttp3/internal/e/c;->g:[C

    iget v3, p0, Lokhttp3/internal/e/c;->c:I

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 225
    iget v0, p0, Lokhttp3/internal/e/c;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/e/c;->c:I

    goto :goto_0

    .line 200
    :sswitch_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lokhttp3/internal/e/c;->g:[C

    iget v2, p0, Lokhttp3/internal/e/c;->d:I

    iget v3, p0, Lokhttp3/internal/e/c;->e:I

    iget v4, p0, Lokhttp3/internal/e/c;->d:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_1

    .line 203
    :sswitch_1
    iget-object v0, p0, Lokhttp3/internal/e/c;->g:[C

    iget v1, p0, Lokhttp3/internal/e/c;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lokhttp3/internal/e/c;->e:I

    invoke-virtual {p0}, Lokhttp3/internal/e/c;->d()C

    move-result v2

    aput-char v2, v0, v1

    .line 204
    iget v0, p0, Lokhttp3/internal/e/c;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/e/c;->c:I

    goto :goto_0

    .line 209
    :sswitch_2
    iget v0, p0, Lokhttp3/internal/e/c;->e:I

    iput v0, p0, Lokhttp3/internal/e/c;->f:I

    .line 211
    iget v0, p0, Lokhttp3/internal/e/c;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/e/c;->c:I

    .line 212
    iget-object v0, p0, Lokhttp3/internal/e/c;->g:[C

    iget v1, p0, Lokhttp3/internal/e/c;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lokhttp3/internal/e/c;->e:I

    aput-char v4, v0, v1

    .line 214
    :goto_2
    iget v0, p0, Lokhttp3/internal/e/c;->c:I

    iget v1, p0, Lokhttp3/internal/e/c;->b:I

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lokhttp3/internal/e/c;->g:[C

    iget v1, p0, Lokhttp3/internal/e/c;->c:I

    aget-char v0, v0, v1

    if-ne v0, v4, :cond_2

    .line 215
    iget-object v0, p0, Lokhttp3/internal/e/c;->g:[C

    iget v1, p0, Lokhttp3/internal/e/c;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lokhttp3/internal/e/c;->e:I

    aput-char v4, v0, v1

    .line 214
    iget v0, p0, Lokhttp3/internal/e/c;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/e/c;->c:I

    goto :goto_2

    .line 217
    :cond_2
    iget v0, p0, Lokhttp3/internal/e/c;->c:I

    iget v1, p0, Lokhttp3/internal/e/c;->b:I

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lokhttp3/internal/e/c;->g:[C

    iget v1, p0, Lokhttp3/internal/e/c;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lokhttp3/internal/e/c;->g:[C

    iget v1, p0, Lokhttp3/internal/e/c;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lokhttp3/internal/e/c;->g:[C

    iget v1, p0, Lokhttp3/internal/e/c;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_0

    .line 220
    :cond_3
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lokhttp3/internal/e/c;->g:[C

    iget v2, p0, Lokhttp3/internal/e/c;->d:I

    iget v3, p0, Lokhttp3/internal/e/c;->f:I

    iget v4, p0, Lokhttp3/internal/e/c;->d:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_1

    .line 195
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_2
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch
.end method

.method final d()C
    .locals 3

    .prologue
    .line 232
    iget v0, p0, Lokhttp3/internal/e/c;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/e/c;->c:I

    .line 233
    iget v0, p0, Lokhttp3/internal/e/c;->c:I

    iget v1, p0, Lokhttp3/internal/e/c;->b:I

    if-ne v0, v1, :cond_0

    .line 234
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected end of DN: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lokhttp3/internal/e/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/e/c;->g:[C

    iget v1, p0, Lokhttp3/internal/e/c;->c:I

    aget-char v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 256
    invoke-direct {p0}, Lokhttp3/internal/e/c;->e()C

    move-result v0

    :goto_0
    return v0

    .line 252
    :sswitch_0
    iget-object v0, p0, Lokhttp3/internal/e/c;->g:[C

    iget v1, p0, Lokhttp3/internal/e/c;->c:I

    aget-char v0, v0, v1

    goto :goto_0

    .line 237
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x22 -> :sswitch_0
        0x23 -> :sswitch_0
        0x25 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x5c -> :sswitch_0
        0x5f -> :sswitch_0
    .end sparse-switch
.end method
