.class final Lokhttp3/internal/framed/aa;
.super Ljava/lang/Object;
.source "Hpack.java"


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/x;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lokio/BufferedSource;

.field final c:I

.field d:I

.field e:[Lokhttp3/internal/framed/x;

.field f:I

.field g:I

.field h:I


# direct methods
.method constructor <init>(Lokio/Source;)V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lokhttp3/internal/framed/aa;-><init>(Lokio/Source;B)V

    .line 132
    return-void
.end method

.method private constructor <init>(Lokio/Source;B)V
    .locals 3

    .prologue
    const/16 v2, 0x1000

    const/4 v1, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/framed/aa;->a:Ljava/util/List;

    .line 124
    const/16 v0, 0x8

    new-array v0, v0, [Lokhttp3/internal/framed/x;

    iput-object v0, p0, Lokhttp3/internal/framed/aa;->e:[Lokhttp3/internal/framed/x;

    .line 126
    iget-object v0, p0, Lokhttp3/internal/framed/aa;->e:[Lokhttp3/internal/framed/x;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lokhttp3/internal/framed/aa;->f:I

    .line 127
    iput v1, p0, Lokhttp3/internal/framed/aa;->g:I

    .line 128
    iput v1, p0, Lokhttp3/internal/framed/aa;->h:I

    .line 135
    iput v2, p0, Lokhttp3/internal/framed/aa;->c:I

    .line 136
    iput v2, p0, Lokhttp3/internal/framed/aa;->d:I

    .line 137
    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/framed/aa;->b:Lokio/BufferedSource;

    .line 138
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 155
    iget-object v0, p0, Lokhttp3/internal/framed/aa;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 156
    iget-object v0, p0, Lokhttp3/internal/framed/aa;->e:[Lokhttp3/internal/framed/x;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 157
    iget-object v0, p0, Lokhttp3/internal/framed/aa;->e:[Lokhttp3/internal/framed/x;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lokhttp3/internal/framed/aa;->f:I

    .line 158
    iput v2, p0, Lokhttp3/internal/framed/aa;->g:I

    .line 159
    iput v2, p0, Lokhttp3/internal/framed/aa;->h:I

    .line 160
    return-void
.end method

.method static c(I)Z
    .locals 1

    .prologue
    .line 271
    if-ltz p0, :cond_0

    invoke-static {}, Lokhttp3/internal/framed/z;->a()[Lokhttp3/internal/framed/x;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 311
    iget-object v0, p0, Lokhttp3/internal/framed/aa;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private d(I)I
    .locals 6

    .prologue
    .line 164
    const/4 v1, 0x0

    .line 165
    if-lez p1, :cond_1

    .line 167
    iget-object v0, p0, Lokhttp3/internal/framed/aa;->e:[Lokhttp3/internal/framed/x;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iget v2, p0, Lokhttp3/internal/framed/aa;->f:I

    if-lt v0, v2, :cond_0

    if-lez p1, :cond_0

    .line 168
    iget-object v2, p0, Lokhttp3/internal/framed/aa;->e:[Lokhttp3/internal/framed/x;

    aget-object v2, v2, v0

    iget v2, v2, Lokhttp3/internal/framed/x;->j:I

    sub-int/2addr p1, v2

    .line 169
    iget v2, p0, Lokhttp3/internal/framed/aa;->h:I

    iget-object v3, p0, Lokhttp3/internal/framed/aa;->e:[Lokhttp3/internal/framed/x;

    aget-object v3, v3, v0

    iget v3, v3, Lokhttp3/internal/framed/x;->j:I

    sub-int/2addr v2, v3

    iput v2, p0, Lokhttp3/internal/framed/aa;->h:I

    .line 170
    iget v2, p0, Lokhttp3/internal/framed/aa;->g:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lokhttp3/internal/framed/aa;->g:I

    .line 171
    add-int/lit8 v1, v1, 0x1

    .line 167
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 173
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/framed/aa;->e:[Lokhttp3/internal/framed/x;

    iget v2, p0, Lokhttp3/internal/framed/aa;->f:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lokhttp3/internal/framed/aa;->e:[Lokhttp3/internal/framed/x;

    iget v4, p0, Lokhttp3/internal/framed/aa;->f:I

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v1

    iget v5, p0, Lokhttp3/internal/framed/aa;->g:I

    invoke-static {v0, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    iget v0, p0, Lokhttp3/internal/framed/aa;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lokhttp3/internal/framed/aa;->f:I

    .line 177
    :cond_1
    return v1
.end method


# virtual methods
.method final a(I)I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lokhttp3/internal/framed/aa;->f:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    return v0
.end method

.method final a(II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 315
    and-int v0, p1, p2

    .line 316
    if-ge v0, p2, :cond_0

    .line 333
    :goto_0
    return v0

    .line 322
    :cond_0
    const/4 v0, 0x0

    .line 324
    :goto_1
    invoke-direct {p0}, Lokhttp3/internal/framed/aa;->d()I

    move-result v1

    .line 325
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_1

    .line 326
    and-int/lit8 v1, v1, 0x7f

    shl-int/2addr v1, v0

    add-int/2addr p2, v1

    .line 327
    add-int/lit8 v0, v0, 0x7

    goto :goto_1

    .line 329
    :cond_1
    shl-int v0, v1, v0

    add-int/2addr v0, p2

    .line 333
    goto :goto_0
.end method

.method final a()V
    .locals 2

    .prologue
    .line 145
    iget v0, p0, Lokhttp3/internal/framed/aa;->d:I

    iget v1, p0, Lokhttp3/internal/framed/aa;->h:I

    if-ge v0, v1, :cond_0

    .line 146
    iget v0, p0, Lokhttp3/internal/framed/aa;->d:I

    if-nez v0, :cond_1

    .line 147
    invoke-direct {p0}, Lokhttp3/internal/framed/aa;->c()V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget v0, p0, Lokhttp3/internal/framed/aa;->h:I

    iget v1, p0, Lokhttp3/internal/framed/aa;->d:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lokhttp3/internal/framed/aa;->d(I)I

    goto :goto_0
.end method

.method final a(Lokhttp3/internal/framed/x;)V
    .locals 6

    .prologue
    .line 276
    iget-object v0, p0, Lokhttp3/internal/framed/aa;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    iget v0, p1, Lokhttp3/internal/framed/x;->j:I

    .line 284
    iget v1, p0, Lokhttp3/internal/framed/aa;->d:I

    if-le v0, v1, :cond_0

    .line 285
    invoke-direct {p0}, Lokhttp3/internal/framed/aa;->c()V

    .line 308
    :goto_0
    return-void

    .line 290
    :cond_0
    iget v1, p0, Lokhttp3/internal/framed/aa;->h:I

    add-int/2addr v1, v0

    iget v2, p0, Lokhttp3/internal/framed/aa;->d:I

    sub-int/2addr v1, v2

    .line 291
    invoke-direct {p0, v1}, Lokhttp3/internal/framed/aa;->d(I)I

    .line 294
    iget v1, p0, Lokhttp3/internal/framed/aa;->g:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lokhttp3/internal/framed/aa;->e:[Lokhttp3/internal/framed/x;

    array-length v2, v2

    if-le v1, v2, :cond_1

    .line 295
    iget-object v1, p0, Lokhttp3/internal/framed/aa;->e:[Lokhttp3/internal/framed/x;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lokhttp3/internal/framed/x;

    .line 296
    iget-object v2, p0, Lokhttp3/internal/framed/aa;->e:[Lokhttp3/internal/framed/x;

    const/4 v3, 0x0

    iget-object v4, p0, Lokhttp3/internal/framed/aa;->e:[Lokhttp3/internal/framed/x;

    array-length v4, v4

    iget-object v5, p0, Lokhttp3/internal/framed/aa;->e:[Lokhttp3/internal/framed/x;

    array-length v5, v5

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 297
    iget-object v2, p0, Lokhttp3/internal/framed/aa;->e:[Lokhttp3/internal/framed/x;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lokhttp3/internal/framed/aa;->f:I

    .line 298
    iput-object v1, p0, Lokhttp3/internal/framed/aa;->e:[Lokhttp3/internal/framed/x;

    .line 300
    :cond_1
    iget v1, p0, Lokhttp3/internal/framed/aa;->f:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lokhttp3/internal/framed/aa;->f:I

    .line 301
    iget-object v2, p0, Lokhttp3/internal/framed/aa;->e:[Lokhttp3/internal/framed/x;

    aput-object p1, v2, v1

    .line 302
    iget v1, p0, Lokhttp3/internal/framed/aa;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lokhttp3/internal/framed/aa;->g:I

    .line 307
    iget v1, p0, Lokhttp3/internal/framed/aa;->h:I

    add-int/2addr v0, v1

    iput v0, p0, Lokhttp3/internal/framed/aa;->h:I

    goto :goto_0
.end method

.method final b()Lokio/ByteString;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 338
    invoke-direct {p0}, Lokhttp3/internal/framed/aa;->d()I

    move-result v2

    .line 339
    and-int/lit16 v0, v2, 0x80

    const/16 v3, 0x80

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    .line 340
    :goto_0
    const/16 v3, 0x7f

    invoke-virtual {p0, v2, v3}, Lokhttp3/internal/framed/aa;->a(II)I

    move-result v2

    .line 342
    if-eqz v0, :cond_5

    .line 343
    invoke-static {}, Lokhttp3/internal/framed/ah;->a()Lokhttp3/internal/framed/ah;

    move-result-object v4

    iget-object v0, p0, Lokhttp3/internal/framed/aa;->b:Lokio/BufferedSource;

    int-to-long v2, v2

    invoke-interface {v0, v2, v3}, Lokio/BufferedSource;->readByteArray(J)[B

    move-result-object v5

    .line 1128
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1129
    iget-object v0, v4, Lokhttp3/internal/framed/ah;->a:Lokhttp3/internal/framed/ai;

    move v2, v1

    move-object v3, v0

    move v0, v1

    .line 1132
    :goto_1
    array-length v7, v5

    if-ge v1, v7, :cond_3

    .line 1133
    aget-byte v7, v5, v1

    and-int/lit16 v7, v7, 0xff

    .line 1134
    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v7

    .line 1135
    add-int/lit8 v0, v0, 0x8

    .line 1136
    :goto_2
    const/16 v7, 0x8

    if-lt v0, v7, :cond_2

    .line 1137
    add-int/lit8 v7, v0, -0x8

    ushr-int v7, v2, v7

    and-int/lit16 v7, v7, 0xff

    .line 1195
    iget-object v3, v3, Lokhttp3/internal/framed/ai;->a:[Lokhttp3/internal/framed/ai;

    .line 1138
    aget-object v3, v3, v7

    .line 2195
    iget-object v7, v3, Lokhttp3/internal/framed/ai;->a:[Lokhttp3/internal/framed/ai;

    .line 1139
    if-nez v7, :cond_1

    .line 3195
    iget v7, v3, Lokhttp3/internal/framed/ai;->b:I

    .line 1141
    invoke-virtual {v6, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 4195
    iget v3, v3, Lokhttp3/internal/framed/ai;->c:I

    .line 1142
    sub-int/2addr v0, v3

    .line 1143
    iget-object v3, v4, Lokhttp3/internal/framed/ah;->a:Lokhttp3/internal/framed/ai;

    goto :goto_2

    :cond_0
    move v0, v1

    .line 339
    goto :goto_0

    .line 1146
    :cond_1
    add-int/lit8 v0, v0, -0x8

    .line 1148
    goto :goto_2

    .line 1132
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1151
    :cond_3
    :goto_3
    if-lez v0, :cond_4

    .line 1152
    rsub-int/lit8 v1, v0, 0x8

    shl-int v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    .line 5195
    iget-object v3, v3, Lokhttp3/internal/framed/ai;->a:[Lokhttp3/internal/framed/ai;

    .line 1153
    aget-object v1, v3, v1

    .line 6195
    iget-object v3, v1, Lokhttp3/internal/framed/ai;->a:[Lokhttp3/internal/framed/ai;

    .line 1154
    if-nez v3, :cond_4

    .line 7195
    iget v3, v1, Lokhttp3/internal/framed/ai;->c:I

    .line 1154
    if-gt v3, v0, :cond_4

    .line 8195
    iget v3, v1, Lokhttp3/internal/framed/ai;->b:I

    .line 1157
    invoke-virtual {v6, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 9195
    iget v1, v1, Lokhttp3/internal/framed/ai;->c:I

    .line 1158
    sub-int/2addr v0, v1

    .line 1159
    iget-object v3, v4, Lokhttp3/internal/framed/ah;->a:Lokhttp3/internal/framed/ai;

    goto :goto_3

    .line 1162
    :cond_4
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 343
    invoke-static {v0}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v0

    .line 345
    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, Lokhttp3/internal/framed/aa;->b:Lokio/BufferedSource;

    int-to-long v2, v2

    invoke-interface {v0, v2, v3}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v0

    goto :goto_4
.end method

.method final b(I)Lokio/ByteString;
    .locals 2

    .prologue
    .line 263
    invoke-static {p1}, Lokhttp3/internal/framed/aa;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    invoke-static {}, Lokhttp3/internal/framed/z;->a()[Lokhttp3/internal/framed/x;

    move-result-object v0

    aget-object v0, v0, p1

    iget-object v0, v0, Lokhttp3/internal/framed/x;->h:Lokio/ByteString;

    .line 266
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lokhttp3/internal/framed/aa;->e:[Lokhttp3/internal/framed/x;

    invoke-static {}, Lokhttp3/internal/framed/z;->a()[Lokhttp3/internal/framed/x;

    move-result-object v1

    array-length v1, v1

    sub-int v1, p1, v1

    invoke-virtual {p0, v1}, Lokhttp3/internal/framed/aa;->a(I)I

    move-result v1

    aget-object v0, v0, v1

    iget-object v0, v0, Lokhttp3/internal/framed/x;->h:Lokio/ByteString;

    goto :goto_0
.end method
