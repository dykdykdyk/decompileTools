.class public Lno/nordicsemi/android/dfu/internal/HexInputStream;
.super Ljava/io/FilterInputStream;
.source "HexInputStream.java"


# instance fields
.field private final LINE_LENGTH:I

.field private final MBRSize:I

.field private available:I

.field private bytesRead:I

.field private lastAddress:I

.field private final localBuf:[B

.field private localPos:I

.field private pos:I

.field private size:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lno/nordicsemi/android/dfu/internal/exception/HexFileValidationException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x80

    .line 65
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 42
    iput v1, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->LINE_LENGTH:I

    .line 66
    new-array v0, v1, [B

    iput-object v0, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->localBuf:[B

    .line 67
    iput v1, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->localPos:I

    .line 68
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->localBuf:[B

    array-length v0, v0

    iput v0, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->size:I

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->lastAddress:I

    .line 70
    iput p2, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->MBRSize:I

    .line 72
    invoke-direct {p0, p2}, Lno/nordicsemi/android/dfu/internal/HexInputStream;->calculateBinSize(I)I

    move-result v0

    iput v0, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->available:I

    .line 73
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lno/nordicsemi/android/dfu/internal/exception/HexFileValidationException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x80

    .line 76
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 42
    iput v1, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->LINE_LENGTH:I

    .line 77
    new-array v0, v1, [B

    iput-object v0, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->localBuf:[B

    .line 78
    iput v1, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->localPos:I

    .line 79
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->localBuf:[B

    array-length v0, v0

    iput v0, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->size:I

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->lastAddress:I

    .line 81
    iput p2, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->MBRSize:I

    .line 83
    invoke-direct {p0, p2}, Lno/nordicsemi/android/dfu/internal/HexInputStream;->calculateBinSize(I)I

    move-result v0

    iput v0, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->available:I

    .line 84
    return-void
.end method

.method private asciiToInt(I)I
    .locals 1

    .prologue
    .line 338
    const/16 v0, 0x41

    if-lt p1, v0, :cond_0

    .line 339
    add-int/lit8 v0, p1, -0x37

    .line 343
    :goto_0
    return v0

    .line 341
    :cond_0
    const/16 v0, 0x30

    if-lt p1, v0, :cond_1

    .line 342
    add-int/lit8 v0, p1, -0x30

    goto :goto_0

    .line 343
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private calculateBinSize(I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 87
    .line 88
    iget-object v3, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->in:Ljava/io/InputStream;

    .line 89
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/io/InputStream;->mark(I)V

    .line 95
    :try_start_0
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    move v1, v0

    move v0, v2

    .line 97
    :goto_0
    invoke-direct {p0, v1}, Lno/nordicsemi/android/dfu/internal/HexInputStream;->checkComma(I)V

    .line 99
    invoke-direct {p0, v3}, Lno/nordicsemi/android/dfu/internal/HexInputStream;->readByte(Ljava/io/InputStream;)I

    move-result v1

    .line 100
    invoke-direct {p0, v3}, Lno/nordicsemi/android/dfu/internal/HexInputStream;->readAddress(Ljava/io/InputStream;)I

    move-result v4

    .line 101
    invoke-direct {p0, v3}, Lno/nordicsemi/android/dfu/internal/HexInputStream;->readByte(Ljava/io/InputStream;)I

    move-result v5

    .line 102
    packed-switch v5, :pswitch_data_0

    .line 135
    :cond_0
    :goto_1
    :pswitch_0
    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move v1, v0

    move v0, v2

    .line 140
    :cond_1
    :goto_2
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 142
    const/16 v4, 0xa

    if-eq v2, v4, :cond_1

    const/16 v4, 0xd

    if-eq v2, v4, :cond_1

    move v6, v0

    move v0, v1

    move v1, v2

    move v2, v6

    .line 143
    goto :goto_0

    .line 148
    :pswitch_1
    invoke-virtual {v3}, Ljava/io/InputStream;->reset()V

    :goto_3
    return v0

    .line 112
    :pswitch_2
    :try_start_1
    invoke-direct {p0, v3}, Lno/nordicsemi/android/dfu/internal/HexInputStream;->readAddress(Ljava/io/InputStream;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 113
    if-lez v0, :cond_2

    shr-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, 0x1

    if-eq v1, v2, :cond_2

    .line 148
    invoke-virtual {v3}, Ljava/io/InputStream;->reset()V

    goto :goto_3

    .line 115
    :cond_2
    shl-int/lit8 v1, v1, 0x10

    .line 116
    const-wide/16 v4, 0x2

    :try_start_2
    invoke-virtual {v3, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move v6, v1

    move v1, v0

    move v0, v6

    .line 117
    goto :goto_2

    .line 121
    :pswitch_3
    invoke-direct {p0, v3}, Lno/nordicsemi/android/dfu/internal/HexInputStream;->readAddress(Ljava/io/InputStream;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    shl-int/lit8 v1, v1, 0x4

    .line 122
    if-lez v0, :cond_3

    shr-int/lit8 v4, v1, 0x10

    shr-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, 0x1

    if-eq v4, v2, :cond_3

    .line 148
    invoke-virtual {v3}, Ljava/io/InputStream;->reset()V

    goto :goto_3

    .line 125
    :cond_3
    const-wide/16 v4, 0x2

    :try_start_3
    invoke-virtual {v3, v4, v5}, Ljava/io/InputStream;->skip(J)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v6, v1

    move v1, v0

    move v0, v6

    .line 126
    goto :goto_2

    .line 130
    :pswitch_4
    add-int/2addr v4, v2

    .line 131
    if-lt v4, p1, :cond_0

    .line 132
    add-int/2addr v0, v1

    goto :goto_1

    .line 148
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Ljava/io/InputStream;->reset()V

    throw v0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private checkComma(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lno/nordicsemi/android/dfu/internal/exception/HexFileValidationException;
        }
    .end annotation

    .prologue
    .line 322
    const/16 v0, 0x3a

    if-eq p1, v0, :cond_0

    .line 323
    new-instance v0, Lno/nordicsemi/android/dfu/internal/exception/HexFileValidationException;

    const-string v1, "Not a HEX file"

    invoke-direct {v0, v1}, Lno/nordicsemi/android/dfu/internal/exception/HexFileValidationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_0
    return-void
.end method

.method private readAddress(Ljava/io/InputStream;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 334
    invoke-direct {p0, p1}, Lno/nordicsemi/android/dfu/internal/HexInputStream;->readByte(Ljava/io/InputStream;)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-direct {p0, p1}, Lno/nordicsemi/android/dfu/internal/HexInputStream;->readByte(Ljava/io/InputStream;)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method private readByte(Ljava/io/InputStream;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 327
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-direct {p0, v0}, Lno/nordicsemi/android/dfu/internal/HexInputStream;->asciiToInt(I)I

    move-result v0

    .line 328
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    invoke-direct {p0, v1}, Lno/nordicsemi/android/dfu/internal/HexInputStream;->asciiToInt(I)I

    move-result v1

    .line 330
    shl-int/lit8 v0, v0, 0x4

    or-int/2addr v0, v1

    return v0
.end method

.method private readLine()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x2

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 225
    iget v0, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->pos:I

    if-ne v0, v1, :cond_1

    .line 309
    :cond_0
    :goto_0
    return v2

    .line 227
    :cond_1
    iget-object v4, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->in:Ljava/io/InputStream;

    .line 236
    :cond_2
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 237
    iget v3, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->pos:I

    .line 239
    const/16 v3, 0xa

    if-eq v0, v3, :cond_2

    const/16 v3, 0xd

    if-eq v0, v3, :cond_2

    .line 253
    invoke-direct {p0, v0}, Lno/nordicsemi/android/dfu/internal/HexInputStream;->checkComma(I)V

    .line 254
    invoke-direct {p0, v4}, Lno/nordicsemi/android/dfu/internal/HexInputStream;->readByte(Ljava/io/InputStream;)I

    move-result v3

    .line 255
    iget v0, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->pos:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->pos:I

    .line 256
    invoke-direct {p0, v4}, Lno/nordicsemi/android/dfu/internal/HexInputStream;->readAddress(Ljava/io/InputStream;)I

    move-result v5

    .line 257
    iget v0, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->pos:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->pos:I

    .line 258
    invoke-direct {p0, v4}, Lno/nordicsemi/android/dfu/internal/HexInputStream;->readByte(Ljava/io/InputStream;)I

    move-result v0

    .line 259
    iget v6, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->pos:I

    add-int/lit8 v6, v6, 0x2

    iput v6, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->pos:I

    .line 262
    packed-switch v0, :pswitch_data_0

    .line 295
    :goto_1
    :pswitch_0
    iget v5, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->pos:I

    int-to-long v6, v5

    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x2

    int-to-long v8, v5

    invoke-virtual {v4, v8, v9}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v8

    add-long/2addr v6, v8

    long-to-int v5, v6

    iput v5, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->pos:I

    .line 298
    :cond_3
    :goto_2
    if-nez v0, :cond_2

    move v0, v2

    .line 301
    :goto_3
    iget-object v1, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->localBuf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_6

    if-ge v0, v3, :cond_6

    .line 302
    invoke-direct {p0, v4}, Lno/nordicsemi/android/dfu/internal/HexInputStream;->readByte(Ljava/io/InputStream;)I

    move-result v1

    .line 303
    iget v5, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->pos:I

    add-int/lit8 v5, v5, 0x2

    iput v5, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->pos:I

    .line 304
    iget-object v5, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->localBuf:[B

    int-to-byte v1, v1

    aput-byte v1, v5, v0

    .line 301
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 265
    :pswitch_1
    iget v6, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->lastAddress:I

    add-int/2addr v5, v6

    iget v6, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->MBRSize:I

    if-ge v5, v6, :cond_3

    move v0, v1

    .line 267
    goto :goto_1

    .line 272
    :pswitch_2
    iput v1, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->pos:I

    goto :goto_0

    .line 276
    :pswitch_3
    invoke-direct {p0, v4}, Lno/nordicsemi/android/dfu/internal/HexInputStream;->readAddress(Ljava/io/InputStream;)I

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    .line 277
    iget v6, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->pos:I

    add-int/lit8 v6, v6, 0x4

    iput v6, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->pos:I

    .line 278
    iget v6, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->bytesRead:I

    if-lez v6, :cond_4

    shr-int/lit8 v6, v5, 0x10

    iget v7, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->lastAddress:I

    shr-int/lit8 v7, v7, 0x10

    add-int/lit8 v7, v7, 0x1

    if-ne v6, v7, :cond_0

    .line 280
    :cond_4
    iput v5, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->lastAddress:I

    .line 281
    iget v5, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->pos:I

    int-to-long v6, v5

    invoke-virtual {v4, v10, v11}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v8

    add-long/2addr v6, v8

    long-to-int v5, v6

    iput v5, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->pos:I

    goto :goto_2

    .line 286
    :pswitch_4
    invoke-direct {p0, v4}, Lno/nordicsemi/android/dfu/internal/HexInputStream;->readAddress(Ljava/io/InputStream;)I

    move-result v5

    .line 287
    iget v6, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->pos:I

    add-int/lit8 v6, v6, 0x4

    iput v6, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->pos:I

    .line 288
    iget v6, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->bytesRead:I

    if-lez v6, :cond_5

    iget v6, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->lastAddress:I

    shr-int/lit8 v6, v6, 0x10

    add-int/lit8 v6, v6, 0x1

    if-ne v5, v6, :cond_0

    .line 290
    :cond_5
    shl-int/lit8 v5, v5, 0x10

    iput v5, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->lastAddress:I

    .line 291
    iget v5, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->pos:I

    int-to-long v6, v5

    invoke-virtual {v4, v10, v11}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v8

    add-long/2addr v6, v8

    long-to-int v5, v6

    iput v5, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->pos:I

    goto :goto_2

    .line 306
    :cond_6
    iget v0, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->pos:I

    int-to-long v0, v0

    invoke-virtual {v4, v10, v11}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    add-long/2addr v0, v4

    long-to-int v0, v0

    iput v0, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->pos:I

    .line 307
    iput v2, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->localPos:I

    move v2, v3

    .line 309
    goto/16 :goto_0

    .line 262
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public available()I
    .locals 2

    .prologue
    .line 154
    iget v0, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->available:I

    iget v1, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->bytesRead:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Please, use readPacket() method instead"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    invoke-virtual {p0, p1}, Lno/nordicsemi/android/dfu/internal/HexInputStream;->readPacket([B)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Please, use readPacket() method instead"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readPacket([B)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lno/nordicsemi/android/dfu/internal/exception/HexFileValidationException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    const/4 v0, 0x0

    .line 165
    :cond_0
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 166
    iget v1, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->localPos:I

    iget v2, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->size:I

    if-ge v1, v2, :cond_1

    .line 167
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->localBuf:[B

    iget v3, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->localPos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->localPos:I

    aget-byte v2, v2, v3

    aput-byte v2, p1, v0

    move v0, v1

    .line 168
    goto :goto_0

    .line 171
    :cond_1
    iget v1, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->bytesRead:I

    invoke-direct {p0}, Lno/nordicsemi/android/dfu/internal/HexInputStream;->readLine()I

    move-result v2

    iput v2, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->size:I

    add-int/2addr v1, v2

    iput v1, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->bytesRead:I

    .line 172
    iget v1, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->size:I

    if-nez v1, :cond_0

    .line 175
    :cond_2
    return v0
.end method

.method public declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->reset()V

    .line 316
    const/4 v0, 0x0

    iput v0, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->pos:I

    .line 317
    const/4 v0, 0x0

    iput v0, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->bytesRead:I

    .line 318
    const/4 v0, 0x0

    iput v0, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->localPos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    monitor-exit p0

    return-void

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sizeInBytes()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lno/nordicsemi/android/dfu/internal/HexInputStream;->available:I

    return v0
.end method

.method public sizeInPackets(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    invoke-virtual {p0}, Lno/nordicsemi/android/dfu/internal/HexInputStream;->sizeInBytes()I

    move-result v0

    .line 213
    div-int v1, v0, p1

    rem-int/2addr v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
