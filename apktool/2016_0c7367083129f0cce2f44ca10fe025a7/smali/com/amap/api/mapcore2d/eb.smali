.class public abstract Lcom/amap/api/mapcore2d/eb;
.super Lcom/amap/api/mapcore2d/eg;
.source "BinaryRequest.java"


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lcom/amap/api/mapcore2d/cv;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/cv;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/eg;-><init>()V

    .line 30
    if-eqz p1, :cond_0

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/eb;->a:Landroid/content/Context;

    .line 33
    :cond_0
    iput-object p2, p0, Lcom/amap/api/mapcore2d/eb;->b:Lcom/amap/api/mapcore2d/cv;

    .line 35
    return-void
.end method

.method private j()[B
    .locals 4

    .prologue
    .line 92
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 94
    :try_start_0
    const-string v0, "PANDORA$"

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cw;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 96
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 98
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-byte v3, v0, v2

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 100
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-byte v3, v0, v2

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 101
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 106
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 111
    :goto_0
    return-object v0

    .line 108
    :catch_0
    move-exception v1

    const-string v2, "BinaryRequest"

    const-string v3, "getBinaryHead"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore2d/da;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :catch_1
    move-exception v0

    :try_start_2
    const-string v2, "BinaryRequest"

    const-string v3, "getBinaryHead"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/da;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 111
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 108
    :catch_2
    move-exception v0

    const-string v1, "BinaryRequest"

    const-string v2, "getBinaryHead"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/da;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 105
    :catchall_0
    move-exception v0

    .line 106
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 109
    :goto_2
    throw v0

    .line 108
    :catch_3
    move-exception v1

    const-string v2, "BinaryRequest"

    const-string v3, "getBinaryHead"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore2d/da;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private k()[B
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 184
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 186
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/eb;->a()[B

    move-result-object v0

    .line 187
    if-eqz v0, :cond_0

    array-length v2, v0

    if-nez v2, :cond_1

    .line 188
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-byte v3, v0, v2

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 189
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 201
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 207
    :goto_0
    return-object v0

    .line 203
    :catch_0
    move-exception v1

    const-string v2, "BinaryRequest"

    const-string v3, "getRequestRawData"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore2d/da;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 191
    :cond_1
    const/4 v2, 0x1

    :try_start_2
    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput-byte v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 192
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/eb;->a([B)[B

    move-result-object v2

    .line 193
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 194
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 195
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 201
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 203
    :catch_1
    move-exception v1

    const-string v2, "BinaryRequest"

    const-string v3, "getRequestRawData"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore2d/da;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :catch_2
    move-exception v0

    :try_start_4
    const-string v2, "BinaryRequest"

    const-string v3, "getRequestRawData"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/da;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 201
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 207
    :goto_1
    new-array v0, v6, [B

    aput-byte v5, v0, v5

    goto :goto_0

    .line 203
    :catch_3
    move-exception v0

    const-string v1, "BinaryRequest"

    const-string v2, "getRequestRawData"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/da;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 200
    :catchall_0
    move-exception v0

    .line 201
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    .line 204
    :goto_2
    throw v0

    .line 203
    :catch_4
    move-exception v1

    const-string v2, "BinaryRequest"

    const-string v3, "getRequestRawData"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore2d/da;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private l()[B
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 214
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 216
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/eb;->b()[B

    move-result-object v0

    .line 217
    if-eqz v0, :cond_0

    array-length v2, v0

    if-nez v2, :cond_1

    .line 218
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-byte v3, v0, v2

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 219
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 232
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 237
    :goto_0
    return-object v0

    .line 234
    :catch_0
    move-exception v1

    const-string v2, "BinaryRequest"

    const-string v3, "getRequestEncryptData"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore2d/da;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 221
    :cond_1
    const/4 v2, 0x1

    :try_start_2
    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput-byte v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 222
    iget-object v2, p0, Lcom/amap/api/mapcore2d/eb;->a:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/amap/api/mapcore2d/cp;->a(Landroid/content/Context;[B)[B

    move-result-object v0

    .line 223
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/eb;->a([B)[B

    move-result-object v2

    .line 225
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 226
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 227
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 232
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 234
    :catch_1
    move-exception v1

    const-string v2, "BinaryRequest"

    const-string v3, "getRequestEncryptData"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore2d/da;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 229
    :catch_2
    move-exception v0

    :try_start_4
    const-string v2, "BinaryRequest"

    const-string v3, "getRequestEncryptData"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/da;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 232
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 237
    :goto_1
    new-array v0, v6, [B

    aput-byte v5, v0, v5

    goto :goto_0

    .line 234
    :catch_3
    move-exception v0

    const-string v1, "BinaryRequest"

    const-string v2, "getRequestEncryptData"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/da;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 231
    :catchall_0
    move-exception v0

    .line 232
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    .line 235
    :goto_2
    throw v0

    .line 234
    :catch_4
    move-exception v1

    const-string v2, "BinaryRequest"

    const-string v3, "getRequestEncryptData"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore2d/da;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public abstract a()[B
.end method

.method protected a([B)[B
    .locals 4

    .prologue
    .line 175
    array-length v0, p1

    .line 176
    div-int/lit16 v1, v0, 0x100

    int-to-byte v1, v1

    .line 177
    rem-int/lit16 v0, v0, 0x100

    int-to-byte v0, v0

    .line 178
    const/4 v2, 0x2

    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte v1, v2, v3

    const/4 v1, 0x1

    aput-byte v0, v2, v1

    return-object v2
.end method

.method public final a_()[B
    .locals 4

    .prologue
    .line 64
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 66
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/eb;->j()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 67
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/eb;->d()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 68
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/eb;->k()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 69
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/eb;->l()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 70
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 80
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 87
    :goto_0
    return-object v0

    .line 82
    :catch_0
    move-exception v1

    const-string v2, "BinaryRequest"

    const-string v3, "getEntityBytes"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore2d/da;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :catch_1
    move-exception v0

    :try_start_2
    const-string v2, "BinaryRequest"

    const-string v3, "getEntityBytes"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/da;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 87
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 82
    :catch_2
    move-exception v0

    const-string v1, "BinaryRequest"

    const-string v2, "getEntityBytes"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/da;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 79
    :catchall_0
    move-exception v0

    .line 80
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 83
    :goto_2
    throw v0

    .line 82
    :catch_3
    move-exception v1

    const-string v2, "BinaryRequest"

    const-string v3, "getEntityBytes"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore2d/da;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public abstract b()[B
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    const-string v0, "2.1"

    return-object v0
.end method

.method public d()[B
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 117
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/eb;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/amap/api/mapcore2d/cp;->a(Landroid/content/Context;Z)[B

    move-result-object v0

    .line 121
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/eb;->a([B)[B

    move-result-object v2

    .line 122
    const/4 v3, 0x1

    new-array v3, v3, [B

    const/4 v4, 0x0

    const/4 v5, 0x3

    aput-byte v5, v3, v4

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 124
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 125
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 127
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/eb;->c()Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static {v0}, Lcom/amap/api/mapcore2d/cw;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 129
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 130
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/eb;->a([B)[B

    move-result-object v2

    .line 131
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 132
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 137
    :goto_0
    const-string v0, "platform=Android&sdkversion=%s&product=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/amap/api/mapcore2d/eb;->b:Lcom/amap/api/mapcore2d/cv;

    .line 139
    invoke-virtual {v4}, Lcom/amap/api/mapcore2d/cv;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/amap/api/mapcore2d/eb;->b:Lcom/amap/api/mapcore2d/cv;

    invoke-virtual {v4}, Lcom/amap/api/mapcore2d/cv;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 137
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-static {v0}, Lcom/amap/api/mapcore2d/cw;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 143
    if-eqz v0, :cond_1

    array-length v2, v0

    if-lez v2, :cond_1

    .line 144
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/eb;->a([B)[B

    move-result-object v2

    .line 145
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 146
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 152
    :goto_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 157
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 162
    :goto_2
    return-object v0

    .line 134
    :cond_0
    const/4 v0, 0x2

    :try_start_2
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "BinaryRequest"

    const-string v3, "getPublicData"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/da;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 157
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 162
    :goto_3
    new-array v0, v7, [B

    aput-byte v6, v0, v6

    goto :goto_2

    .line 148
    :cond_1
    const/4 v0, 0x2

    :try_start_5
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 156
    :catchall_0
    move-exception v0

    .line 157
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .line 160
    :goto_4
    throw v0

    .line 159
    :catch_1
    move-exception v1

    const-string v2, "BinaryRequest"

    const-string v3, "getRequestEncryptData"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore2d/da;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v1, "BinaryRequest"

    const-string v2, "getRequestEncryptData"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/da;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_3
    move-exception v1

    const-string v2, "BinaryRequest"

    const-string v3, "getRequestEncryptData"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore2d/da;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 134
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data

    .line 148
    nop

    :array_1
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public f()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/amap/api/mapcore2d/eb;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cm;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-static {}, Lcom/amap/api/mapcore2d/cp;->a()Ljava/lang/String;

    move-result-object v1

    .line 49
    iget-object v2, p0, Lcom/amap/api/mapcore2d/eb;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "key="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/amap/api/mapcore2d/cp;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 50
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 51
    const-string v4, "ts"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v1, "key"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v0, "scode"

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-object v3
.end method
