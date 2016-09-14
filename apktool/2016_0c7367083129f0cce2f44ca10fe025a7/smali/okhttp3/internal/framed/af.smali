.class final Lokhttp3/internal/framed/af;
.super Ljava/lang/Object;
.source "Http2.java"

# interfaces
.implements Lokhttp3/internal/framed/b;


# instance fields
.field final a:Lokhttp3/internal/framed/aa;

.field private final b:Lokio/BufferedSource;

.field private final c:Lokhttp3/internal/framed/ad;

.field private final d:Z


# direct methods
.method constructor <init>(Lokio/BufferedSource;Z)V
    .locals 2

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lokhttp3/internal/framed/af;->b:Lokio/BufferedSource;

    .line 95
    iput-boolean p2, p0, Lokhttp3/internal/framed/af;->d:Z

    .line 96
    new-instance v0, Lokhttp3/internal/framed/ad;

    iget-object v1, p0, Lokhttp3/internal/framed/af;->b:Lokio/BufferedSource;

    invoke-direct {v0, v1}, Lokhttp3/internal/framed/ad;-><init>(Lokio/BufferedSource;)V

    iput-object v0, p0, Lokhttp3/internal/framed/af;->c:Lokhttp3/internal/framed/ad;

    .line 97
    new-instance v0, Lokhttp3/internal/framed/aa;

    iget-object v1, p0, Lokhttp3/internal/framed/af;->c:Lokhttp3/internal/framed/ad;

    invoke-direct {v0, v1}, Lokhttp3/internal/framed/aa;-><init>(Lokio/Source;)V

    iput-object v0, p0, Lokhttp3/internal/framed/af;->a:Lokhttp3/internal/framed/aa;

    .line 98
    return-void
.end method

.method private a(ISBI)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ISBI)",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/x;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x80

    const/16 v5, 0x40

    .line 203
    iget-object v0, p0, Lokhttp3/internal/framed/af;->c:Lokhttp3/internal/framed/ad;

    iget-object v1, p0, Lokhttp3/internal/framed/af;->c:Lokhttp3/internal/framed/ad;

    iput p1, v1, Lokhttp3/internal/framed/ad;->d:I

    iput p1, v0, Lokhttp3/internal/framed/ad;->a:I

    .line 204
    iget-object v0, p0, Lokhttp3/internal/framed/af;->c:Lokhttp3/internal/framed/ad;

    iput-short p2, v0, Lokhttp3/internal/framed/ad;->e:S

    .line 205
    iget-object v0, p0, Lokhttp3/internal/framed/af;->c:Lokhttp3/internal/framed/ad;

    iput-byte p3, v0, Lokhttp3/internal/framed/ad;->b:B

    .line 206
    iget-object v0, p0, Lokhttp3/internal/framed/af;->c:Lokhttp3/internal/framed/ad;

    iput p4, v0, Lokhttp3/internal/framed/ad;->c:I

    .line 210
    iget-object v0, p0, Lokhttp3/internal/framed/af;->a:Lokhttp3/internal/framed/aa;

    .line 3185
    :goto_0
    iget-object v1, v0, Lokhttp3/internal/framed/aa;->b:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->exhausted()Z

    move-result v1

    if-nez v1, :cond_c

    .line 3186
    iget-object v1, v0, Lokhttp3/internal/framed/aa;->b:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 3187
    if-ne v1, v6, :cond_0

    .line 3188
    new-instance v0, Ljava/io/IOException;

    const-string v1, "index == 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3189
    :cond_0
    and-int/lit16 v2, v1, 0x80

    if-ne v2, v6, :cond_4

    .line 3190
    const/16 v2, 0x7f

    invoke-virtual {v0, v1, v2}, Lokhttp3/internal/framed/aa;->a(II)I

    move-result v1

    .line 3191
    add-int/lit8 v1, v1, -0x1

    .line 3220
    invoke-static {v1}, Lokhttp3/internal/framed/aa;->c(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3221
    invoke-static {}, Lokhttp3/internal/framed/z;->a()[Lokhttp3/internal/framed/x;

    move-result-object v2

    aget-object v1, v2, v1

    .line 3222
    iget-object v2, v0, Lokhttp3/internal/framed/aa;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3224
    :cond_1
    invoke-static {}, Lokhttp3/internal/framed/z;->a()[Lokhttp3/internal/framed/x;

    move-result-object v2

    array-length v2, v2

    sub-int v2, v1, v2

    invoke-virtual {v0, v2}, Lokhttp3/internal/framed/aa;->a(I)I

    move-result v2

    .line 3225
    if-ltz v2, :cond_2

    iget-object v3, v0, Lokhttp3/internal/framed/aa;->e:[Lokhttp3/internal/framed/x;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_3

    .line 3226
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Header index too large "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3228
    :cond_3
    iget-object v1, v0, Lokhttp3/internal/framed/aa;->a:Ljava/util/List;

    iget-object v3, v0, Lokhttp3/internal/framed/aa;->e:[Lokhttp3/internal/framed/x;

    aget-object v2, v3, v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3192
    :cond_4
    if-ne v1, v5, :cond_5

    .line 3257
    invoke-virtual {v0}, Lokhttp3/internal/framed/aa;->b()Lokio/ByteString;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/internal/framed/z;->a(Lokio/ByteString;)Lokio/ByteString;

    move-result-object v1

    .line 3258
    invoke-virtual {v0}, Lokhttp3/internal/framed/aa;->b()Lokio/ByteString;

    move-result-object v2

    .line 3259
    new-instance v3, Lokhttp3/internal/framed/x;

    invoke-direct {v3, v1, v2}, Lokhttp3/internal/framed/x;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-virtual {v0, v3}, Lokhttp3/internal/framed/aa;->a(Lokhttp3/internal/framed/x;)V

    goto/16 :goto_0

    .line 3194
    :cond_5
    and-int/lit8 v2, v1, 0x40

    if-ne v2, v5, :cond_6

    .line 3195
    const/16 v2, 0x3f

    invoke-virtual {v0, v1, v2}, Lokhttp3/internal/framed/aa;->a(II)I

    move-result v1

    .line 3196
    add-int/lit8 v1, v1, -0x1

    .line 4251
    invoke-virtual {v0, v1}, Lokhttp3/internal/framed/aa;->b(I)Lokio/ByteString;

    move-result-object v1

    .line 4252
    invoke-virtual {v0}, Lokhttp3/internal/framed/aa;->b()Lokio/ByteString;

    move-result-object v2

    .line 4253
    new-instance v3, Lokhttp3/internal/framed/x;

    invoke-direct {v3, v1, v2}, Lokhttp3/internal/framed/x;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-virtual {v0, v3}, Lokhttp3/internal/framed/aa;->a(Lokhttp3/internal/framed/x;)V

    goto/16 :goto_0

    .line 3197
    :cond_6
    and-int/lit8 v2, v1, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_9

    .line 3198
    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Lokhttp3/internal/framed/aa;->a(II)I

    move-result v1

    iput v1, v0, Lokhttp3/internal/framed/aa;->d:I

    .line 3199
    iget v1, v0, Lokhttp3/internal/framed/aa;->d:I

    if-ltz v1, :cond_7

    iget v1, v0, Lokhttp3/internal/framed/aa;->d:I

    iget v2, v0, Lokhttp3/internal/framed/aa;->c:I

    if-le v1, v2, :cond_8

    .line 3201
    :cond_7
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid dynamic table size update "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lokhttp3/internal/framed/aa;->d:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3203
    :cond_8
    invoke-virtual {v0}, Lokhttp3/internal/framed/aa;->a()V

    goto/16 :goto_0

    .line 3204
    :cond_9
    const/16 v2, 0x10

    if-eq v1, v2, :cond_a

    if-nez v1, :cond_b

    .line 5244
    :cond_a
    invoke-virtual {v0}, Lokhttp3/internal/framed/aa;->b()Lokio/ByteString;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/internal/framed/z;->a(Lokio/ByteString;)Lokio/ByteString;

    move-result-object v1

    .line 5245
    invoke-virtual {v0}, Lokhttp3/internal/framed/aa;->b()Lokio/ByteString;

    move-result-object v2

    .line 5246
    iget-object v3, v0, Lokhttp3/internal/framed/aa;->a:Ljava/util/List;

    new-instance v4, Lokhttp3/internal/framed/x;

    invoke-direct {v4, v1, v2}, Lokhttp3/internal/framed/x;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3207
    :cond_b
    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Lokhttp3/internal/framed/aa;->a(II)I

    move-result v1

    .line 3208
    add-int/lit8 v1, v1, -0x1

    .line 6238
    invoke-virtual {v0, v1}, Lokhttp3/internal/framed/aa;->b(I)Lokio/ByteString;

    move-result-object v1

    .line 6239
    invoke-virtual {v0}, Lokhttp3/internal/framed/aa;->b()Lokio/ByteString;

    move-result-object v2

    .line 6240
    iget-object v3, v0, Lokhttp3/internal/framed/aa;->a:Ljava/util/List;

    new-instance v4, Lokhttp3/internal/framed/x;

    invoke-direct {v4, v1, v2}, Lokhttp3/internal/framed/x;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 211
    :cond_c
    iget-object v0, p0, Lokhttp3/internal/framed/af;->a:Lokhttp3/internal/framed/aa;

    .line 7214
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lokhttp3/internal/framed/aa;->a:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7215
    iget-object v0, v0, Lokhttp3/internal/framed/aa;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 211
    return-object v1
.end method

.method private b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lokhttp3/internal/framed/af;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    .line 241
    iget-object v0, p0, Lokhttp3/internal/framed/af;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    .line 243
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 101
    iget-boolean v0, p0, Lokhttp3/internal/framed/af;->d:Z

    if-eqz v0, :cond_1

    .line 107
    :cond_0
    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/framed/af;->b:Lokio/BufferedSource;

    invoke-static {}, Lokhttp3/internal/framed/ac;->a()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->size()I

    move-result v1

    int-to-long v2, v1

    invoke-interface {v0, v2, v3}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v0

    .line 103
    invoke-static {}, Lokhttp3/internal/framed/ac;->b()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lokhttp3/internal/framed/ac;->b()Ljava/util/logging/Logger;

    move-result-object v1

    const-string v2, "<< CONNECTION %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lokhttp3/internal/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 104
    :cond_2
    invoke-static {}, Lokhttp3/internal/framed/ac;->a()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    const-string v1, "Expected a connection header but was %s"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Lokhttp3/internal/framed/ac;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final a(Lokhttp3/internal/framed/c;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x4000

    const/16 v9, 0x8

    const/4 v4, 0x4

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 111
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/af;->b:Lokio/BufferedSource;

    const-wide/16 v2, 0x9

    invoke-interface {v0, v2, v3}, Lokio/BufferedSource;->require(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    iget-object v0, p0, Lokhttp3/internal/framed/af;->b:Lokio/BufferedSource;

    invoke-static {v0}, Lokhttp3/internal/framed/ac;->a(Lokio/BufferedSource;)I

    move-result v0

    .line 129
    if-ltz v0, :cond_0

    if-le v0, v10, :cond_2

    .line 130
    :cond_0
    const-string v2, "FRAME_SIZE_ERROR: %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lokhttp3/internal/framed/ac;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 113
    :catch_0
    move-exception v0

    move v6, v1

    .line 178
    :cond_1
    :goto_0
    return v6

    .line 132
    :cond_2
    iget-object v2, p0, Lokhttp3/internal/framed/af;->b:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 133
    iget-object v3, p0, Lokhttp3/internal/framed/af;->b:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v5, v3

    .line 134
    iget-object v3, p0, Lokhttp3/internal/framed/af;->b:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    move-result v3

    const v7, 0x7fffffff

    and-int/2addr v3, v7

    .line 135
    invoke-static {}, Lokhttp3/internal/framed/ac;->b()Ljava/util/logging/Logger;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {}, Lokhttp3/internal/framed/ac;->b()Ljava/util/logging/Logger;

    move-result-object v7

    invoke-static {v6, v3, v0, v2, v5}, Lokhttp3/internal/framed/ae;->a(ZIIBB)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 137
    :cond_3
    packed-switch v2, :pswitch_data_0

    .line 176
    iget-object v1, p0, Lokhttp3/internal/framed/af;->b:Lokio/BufferedSource;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lokio/BufferedSource;->skip(J)V

    goto :goto_0

    .line 1217
    :pswitch_0
    and-int/lit8 v2, v5, 0x1

    if-eqz v2, :cond_4

    move v4, v6

    .line 1218
    :goto_1
    and-int/lit8 v2, v5, 0x20

    if-eqz v2, :cond_5

    move v2, v6

    .line 1219
    :goto_2
    if-eqz v2, :cond_6

    .line 1220
    const-string v0, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/framed/ac;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_4
    move v4, v1

    .line 1217
    goto :goto_1

    :cond_5
    move v2, v1

    .line 1218
    goto :goto_2

    .line 1223
    :cond_6
    and-int/lit8 v2, v5, 0x8

    if-eqz v2, :cond_7

    iget-object v1, p0, Lokhttp3/internal/framed/af;->b:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    .line 1224
    :cond_7
    invoke-static {v0, v5, v1}, Lokhttp3/internal/framed/ac;->a(IBS)I

    move-result v0

    .line 1226
    iget-object v2, p0, Lokhttp3/internal/framed/af;->b:Lokio/BufferedSource;

    invoke-interface {p1, v4, v3, v2, v0}, Lokhttp3/internal/framed/c;->a(ZILokio/BufferedSource;I)V

    .line 1227
    iget-object v0, p0, Lokhttp3/internal/framed/af;->b:Lokio/BufferedSource;

    int-to-long v2, v1

    invoke-interface {v0, v2, v3}, Lokio/BufferedSource;->skip(J)V

    goto :goto_0

    .line 2183
    :pswitch_1
    if-nez v3, :cond_8

    const-string v0, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/framed/ac;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 2185
    :cond_8
    and-int/lit8 v2, v5, 0x1

    if-eqz v2, :cond_a

    move v2, v6

    .line 2187
    :goto_3
    and-int/lit8 v4, v5, 0x8

    if-eqz v4, :cond_b

    iget-object v4, p0, Lokhttp3/internal/framed/af;->b:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readByte()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-short v4, v4

    .line 2189
    :goto_4
    and-int/lit8 v7, v5, 0x20

    if-eqz v7, :cond_9

    .line 2190
    invoke-direct {p0}, Lokhttp3/internal/framed/af;->b()V

    .line 2191
    add-int/lit8 v0, v0, -0x5

    .line 2194
    :cond_9
    invoke-static {v0, v5, v4}, Lokhttp3/internal/framed/ac;->a(IBS)I

    move-result v0

    .line 2196
    invoke-direct {p0, v0, v4, v5, v3}, Lokhttp3/internal/framed/af;->a(ISBI)Ljava/util/List;

    move-result-object v4

    .line 2198
    sget-object v5, Lokhttp3/internal/framed/y;->d:Lokhttp3/internal/framed/y;

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lokhttp3/internal/framed/c;->a(ZZILjava/util/List;Lokhttp3/internal/framed/y;)V

    goto/16 :goto_0

    :cond_a
    move v2, v1

    .line 2185
    goto :goto_3

    :cond_b
    move v4, v1

    .line 2187
    goto :goto_4

    .line 2232
    :pswitch_2
    const/4 v2, 0x5

    if-eq v0, v2, :cond_c

    const-string v2, "TYPE_PRIORITY length: %d != 5"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lokhttp3/internal/framed/ac;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 2233
    :cond_c
    if-nez v3, :cond_d

    const-string v0, "TYPE_PRIORITY streamId == 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/framed/ac;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 2234
    :cond_d
    invoke-direct {p0}, Lokhttp3/internal/framed/af;->b()V

    goto/16 :goto_0

    .line 2247
    :pswitch_3
    if-eq v0, v4, :cond_e

    const-string v2, "TYPE_RST_STREAM length: %d != 4"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lokhttp3/internal/framed/ac;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 2248
    :cond_e
    if-nez v3, :cond_f

    const-string v0, "TYPE_RST_STREAM streamId == 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/framed/ac;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 2249
    :cond_f
    iget-object v0, p0, Lokhttp3/internal/framed/af;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    .line 2250
    invoke-static {v0}, Lokhttp3/internal/framed/a;->b(I)Lokhttp3/internal/framed/a;

    move-result-object v2

    .line 2251
    if-nez v2, :cond_10

    .line 2252
    const-string v2, "TYPE_RST_STREAM unexpected error code: %d"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lokhttp3/internal/framed/ac;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 2254
    :cond_10
    invoke-interface {p1, v3, v2}, Lokhttp3/internal/framed/c;->a(ILokhttp3/internal/framed/a;)V

    goto/16 :goto_0

    .line 2259
    :pswitch_4
    if-eqz v3, :cond_11

    const-string v0, "TYPE_SETTINGS streamId != 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/framed/ac;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 2260
    :cond_11
    and-int/lit8 v2, v5, 0x1

    if-eqz v2, :cond_12

    .line 2261
    if-eqz v0, :cond_1

    const-string v0, "FRAME_SIZE_ERROR ack frame should be empty!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/framed/ac;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 2266
    :cond_12
    rem-int/lit8 v2, v0, 0x6

    if-eqz v2, :cond_13

    const-string v2, "TYPE_SETTINGS length %% 6 != 0: %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lokhttp3/internal/framed/ac;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 2267
    :cond_13
    new-instance v5, Lokhttp3/internal/framed/ap;

    invoke-direct {v5}, Lokhttp3/internal/framed/ap;-><init>()V

    move v3, v1

    .line 2268
    :goto_5
    if-ge v3, v0, :cond_16

    .line 2269
    iget-object v2, p0, Lokhttp3/internal/framed/af;->b:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readShort()S

    move-result v2

    .line 2270
    iget-object v7, p0, Lokhttp3/internal/framed/af;->b:Lokio/BufferedSource;

    invoke-interface {v7}, Lokio/BufferedSource;->readInt()I

    move-result v7

    .line 2272
    packed-switch v2, :pswitch_data_1

    .line 2299
    :cond_14
    :goto_6
    :pswitch_5
    invoke-virtual {v5, v2, v1, v7}, Lokhttp3/internal/framed/ap;->a(III)Lokhttp3/internal/framed/ap;

    .line 2268
    add-int/lit8 v2, v3, 0x6

    move v3, v2

    goto :goto_5

    .line 2276
    :pswitch_6
    if-eqz v7, :cond_14

    if-eq v7, v6, :cond_14

    .line 2277
    const-string v0, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/framed/ac;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :pswitch_7
    move v2, v4

    .line 2282
    goto :goto_6

    .line 2284
    :pswitch_8
    const/4 v2, 0x7

    .line 2285
    if-gez v7, :cond_14

    .line 2286
    const-string v0, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/framed/ac;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 2290
    :pswitch_9
    if-lt v7, v10, :cond_15

    const v8, 0xffffff

    if-le v7, v8, :cond_14

    .line 2291
    :cond_15
    const-string v0, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lokhttp3/internal/framed/ac;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 2301
    :cond_16
    invoke-interface {p1, v1, v5}, Lokhttp3/internal/framed/c;->a(ZLokhttp3/internal/framed/ap;)V

    goto/16 :goto_0

    .line 2306
    :pswitch_a
    if-nez v3, :cond_17

    .line 2307
    const-string v0, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/framed/ac;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 2309
    :cond_17
    and-int/lit8 v2, v5, 0x8

    if-eqz v2, :cond_18

    iget-object v1, p0, Lokhttp3/internal/framed/af;->b:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    .line 2310
    :cond_18
    iget-object v2, p0, Lokhttp3/internal/framed/af;->b:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readInt()I

    move-result v2

    const v4, 0x7fffffff

    and-int/2addr v2, v4

    .line 2311
    add-int/lit8 v0, v0, -0x4

    .line 2312
    invoke-static {v0, v5, v1}, Lokhttp3/internal/framed/ac;->a(IBS)I

    move-result v0

    .line 2313
    invoke-direct {p0, v0, v1, v5, v3}, Lokhttp3/internal/framed/af;->a(ISBI)Ljava/util/List;

    move-result-object v0

    .line 2314
    invoke-interface {p1, v2, v0}, Lokhttp3/internal/framed/c;->a(ILjava/util/List;)V

    goto/16 :goto_0

    .line 2319
    :pswitch_b
    if-eq v0, v9, :cond_19

    const-string v2, "TYPE_PING length != 8: %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lokhttp3/internal/framed/ac;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 2320
    :cond_19
    if-eqz v3, :cond_1a

    const-string v0, "TYPE_PING streamId != 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/framed/ac;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 2321
    :cond_1a
    iget-object v0, p0, Lokhttp3/internal/framed/af;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    .line 2322
    iget-object v2, p0, Lokhttp3/internal/framed/af;->b:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readInt()I

    move-result v2

    .line 2323
    and-int/lit8 v3, v5, 0x1

    if-eqz v3, :cond_1b

    move v1, v6

    .line 2324
    :cond_1b
    invoke-interface {p1, v1, v0, v2}, Lokhttp3/internal/framed/c;->a(ZII)V

    goto/16 :goto_0

    .line 2329
    :pswitch_c
    if-ge v0, v9, :cond_1c

    const-string v2, "TYPE_GOAWAY length < 8: %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lokhttp3/internal/framed/ac;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 2330
    :cond_1c
    if-eqz v3, :cond_1d

    const-string v0, "TYPE_GOAWAY streamId != 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/framed/ac;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 2331
    :cond_1d
    iget-object v2, p0, Lokhttp3/internal/framed/af;->b:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readInt()I

    move-result v2

    .line 2332
    iget-object v3, p0, Lokhttp3/internal/framed/af;->b:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    move-result v3

    .line 2333
    add-int/lit8 v4, v0, -0x8

    .line 2334
    invoke-static {v3}, Lokhttp3/internal/framed/a;->b(I)Lokhttp3/internal/framed/a;

    move-result-object v0

    .line 2335
    if-nez v0, :cond_1e

    .line 2336
    const-string v0, "TYPE_GOAWAY unexpected error code: %d"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lokhttp3/internal/framed/ac;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 2338
    :cond_1e
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 2339
    if-lez v4, :cond_1f

    .line 2340
    iget-object v0, p0, Lokhttp3/internal/framed/af;->b:Lokio/BufferedSource;

    int-to-long v4, v4

    invoke-interface {v0, v4, v5}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v0

    .line 2342
    :cond_1f
    invoke-interface {p1, v2, v0}, Lokhttp3/internal/framed/c;->a(ILokio/ByteString;)V

    goto/16 :goto_0

    .line 2347
    :pswitch_d
    if-eq v0, v4, :cond_20

    const-string v2, "TYPE_WINDOW_UPDATE length !=4: %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lokhttp3/internal/framed/ac;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 2348
    :cond_20
    iget-object v0, p0, Lokhttp3/internal/framed/af;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    int-to-long v4, v0

    const-wide/32 v8, 0x7fffffff

    and-long/2addr v4, v8

    .line 2349
    const-wide/16 v8, 0x0

    cmp-long v0, v4, v8

    if-nez v0, :cond_21

    const-string v0, "windowSizeIncrement was 0"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lokhttp3/internal/framed/ac;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 2350
    :cond_21
    invoke-interface {p1, v3, v4, v5}, Lokhttp3/internal/framed/c;->a(IJ)V

    goto/16 :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 2272
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 354
    iget-object v0, p0, Lokhttp3/internal/framed/af;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->close()V

    .line 355
    return-void
.end method
