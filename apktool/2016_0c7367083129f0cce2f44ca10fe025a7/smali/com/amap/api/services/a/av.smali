.class public Lcom/amap/api/services/a/av;
.super Ljava/lang/Object;
.source "ClientInfo.java"


# direct methods
.method public static a()Ljava/lang/String;
    .locals 7

    .prologue
    .line 55
    const/4 v1, 0x0

    .line 57
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 58
    :try_start_1
    const-string v0, "1"

    .line 59
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    add-int/lit8 v5, v2, -0x2

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 66
    :goto_0
    return-object v0

    .line 64
    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_1
    const-string v2, "CInfo"

    const-string v3, "getTS"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;Lcom/amap/api/services/a/av$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    invoke-static {p0, p1}, Lcom/amap/api/services/a/av;->b(Landroid/content/Context;Lcom/amap/api/services/a/av$a;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/a/ax;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/amap/api/services/a/ba;Ljava/util/Map;Z)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amap/api/services/a/ba;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 224
    :try_start_0
    invoke-static {p0, p3}, Lcom/amap/api/services/a/av;->b(Landroid/content/Context;Z)Lcom/amap/api/services/a/av$a;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amap/api/services/a/av;->a(Landroid/content/Context;Lcom/amap/api/services/a/av$a;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 229
    :goto_0
    return-object v0

    .line 227
    :catch_0
    move-exception v0

    const-string v1, "CInfo"

    const-string v2, "rsaLocClineInfo"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 36
    const/4 v0, 0x0

    .line 38
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/services/a/as;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/a/ay;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    .line 45
    :catch_0
    move-exception v1

    const-string v2, "CInfo"

    const-string v3, "Scode"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 408
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 409
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    .line 412
    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    .line 413
    const/4 v0, -0x1

    .line 417
    :goto_0
    invoke-static {p1}, Lcom/amap/api/services/a/bb;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/amap/api/services/a/bb;->a(Ljava/io/ByteArrayOutputStream;B[B)V

    .line 421
    :goto_1
    return-void

    .line 415
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-byte v0, v0

    goto :goto_0

    .line 419
    :cond_1
    new-array v0, v1, [B

    invoke-static {p0, v1, v0}, Lcom/amap/api/services/a/bb;->a(Ljava/io/ByteArrayOutputStream;B[B)V

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;Ljava/io/ByteArrayOutputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 372
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 374
    invoke-static {v0}, Lcom/amap/api/services/a/bb;->b([B)[B

    move-result-object v0

    .line 376
    invoke-static {p0, v0}, Lcom/amap/api/services/a/av;->c(Landroid/content/Context;[B)[B

    move-result-object v0

    .line 379
    return-object v0
.end method

.method public static a(Landroid/content/Context;Z)[B
    .locals 3

    .prologue
    .line 199
    :try_start_0
    invoke-static {p0, p1}, Lcom/amap/api/services/a/av;->b(Landroid/content/Context;Z)Lcom/amap/api/services/a/av$a;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amap/api/services/a/av;->b(Landroid/content/Context;Lcom/amap/api/services/a/av$a;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 203
    :goto_0
    return-object v0

    .line 201
    :catch_0
    move-exception v0

    const-string v1, "CInfo"

    const-string v2, "getGZipXInfo"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;[B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/lang/NullPointerException;,
            Ljava/io/IOException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 102
    const-string v1, "AES"

    invoke-static {v1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    .line 103
    if-nez v1, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-object v0

    .line 109
    :cond_1
    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 110
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 111
    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    .line 119
    invoke-static {p0}, Lcom/amap/api/services/a/bb;->a(Landroid/content/Context;)Ljava/security/PublicKey;

    move-result-object v2

    .line 121
    if-eqz v2, :cond_0

    .line 127
    invoke-static {v1, v2}, Lcom/amap/api/services/a/ax;->a([BLjava/security/Key;)[B

    move-result-object v2

    .line 129
    invoke-static {v1, p1}, Lcom/amap/api/services/a/ax;->a([B[B)[B

    move-result-object v1

    .line 131
    array-length v0, v2

    array-length v3, v1

    add-int/2addr v0, v3

    new-array v0, v0, [B

    .line 133
    array-length v3, v2

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    array-length v2, v2

    array-length v3, v1

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Z)Lcom/amap/api/services/a/av$a;
    .locals 3

    .prologue
    .line 453
    new-instance v1, Lcom/amap/api/services/a/av$a;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/amap/api/services/a/av$a;-><init>(Lcom/amap/api/services/a/av$1;)V

    .line 455
    invoke-static {p0}, Lcom/amap/api/services/a/aw;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 457
    iput-object v0, v1, Lcom/amap/api/services/a/av$a;->a:Ljava/lang/String;

    .line 460
    invoke-static {p0}, Lcom/amap/api/services/a/aw;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/services/a/av$a;->b:Ljava/lang/String;

    .line 462
    invoke-static {p0}, Lcom/amap/api/services/a/aw;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 463
    if-nez v0, :cond_0

    .line 464
    const-string v0, ""

    .line 467
    :cond_0
    iput-object v0, v1, Lcom/amap/api/services/a/av$a;->c:Ljava/lang/String;

    .line 470
    invoke-static {p0}, Lcom/amap/api/services/a/as;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/services/a/av$a;->d:Ljava/lang/String;

    .line 474
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, v1, Lcom/amap/api/services/a/av$a;->e:Ljava/lang/String;

    .line 478
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v0, v1, Lcom/amap/api/services/a/av$a;->f:Ljava/lang/String;

    .line 482
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v0, v1, Lcom/amap/api/services/a/av$a;->g:Ljava/lang/String;

    .line 486
    invoke-static {p0}, Lcom/amap/api/services/a/as;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/services/a/av$a;->h:Ljava/lang/String;

    .line 490
    invoke-static {p0}, Lcom/amap/api/services/a/as;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/services/a/av$a;->i:Ljava/lang/String;

    .line 493
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/services/a/av$a;->j:Ljava/lang/String;

    .line 495
    invoke-static {p0}, Lcom/amap/api/services/a/aw;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/services/a/av$a;->k:Ljava/lang/String;

    .line 498
    invoke-static {p0}, Lcom/amap/api/services/a/aw;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/services/a/av$a;->l:Ljava/lang/String;

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/amap/api/services/a/aw;->m(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/services/a/av$a;->m:Ljava/lang/String;

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/amap/api/services/a/aw;->l(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/services/a/av$a;->n:Ljava/lang/String;

    .line 507
    invoke-static {p0}, Lcom/amap/api/services/a/aw;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/services/a/av$a;->o:Ljava/lang/String;

    .line 510
    invoke-static {p0}, Lcom/amap/api/services/a/aw;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/services/a/av$a;->p:Ljava/lang/String;

    .line 513
    if-eqz p1, :cond_1

    .line 514
    const-string v0, ""

    iput-object v0, v1, Lcom/amap/api/services/a/av$a;->q:Ljava/lang/String;

    .line 520
    :goto_0
    if-eqz p1, :cond_2

    .line 521
    const-string v0, ""

    iput-object v0, v1, Lcom/amap/api/services/a/av$a;->r:Ljava/lang/String;

    .line 526
    :goto_1
    if-eqz p1, :cond_3

    .line 528
    const-string v0, ""

    iput-object v0, v1, Lcom/amap/api/services/a/av$a;->s:Ljava/lang/String;

    .line 530
    const-string v0, ""

    iput-object v0, v1, Lcom/amap/api/services/a/av$a;->t:Ljava/lang/String;

    .line 541
    :goto_2
    return-object v1

    .line 516
    :cond_1
    invoke-static {p0}, Lcom/amap/api/services/a/aw;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/services/a/av$a;->q:Ljava/lang/String;

    goto :goto_0

    .line 523
    :cond_2
    invoke-static {p0}, Lcom/amap/api/services/a/aw;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/services/a/av$a;->r:Ljava/lang/String;

    goto :goto_1

    .line 533
    :cond_3
    invoke-static {p0}, Lcom/amap/api/services/a/aw;->j(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 535
    const/4 v2, 0x0

    aget-object v2, v0, v2

    iput-object v2, v1, Lcom/amap/api/services/a/av$a;->s:Ljava/lang/String;

    .line 538
    const/4 v2, 0x1

    aget-object v0, v0, v2

    iput-object v0, v1, Lcom/amap/api/services/a/av$a;->t:Ljava/lang/String;

    goto :goto_2
.end method

.method public static b(Landroid/content/Context;[B)Ljava/lang/String;
    .locals 3

    .prologue
    .line 242
    :try_start_0
    invoke-static {p0, p1}, Lcom/amap/api/services/a/av;->d(Landroid/content/Context;[B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 247
    :goto_0
    return-object v0

    .line 245
    :catch_0
    move-exception v0

    const-string v1, "CInfo"

    const-string v2, "AESData"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v0, ""

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Lcom/amap/api/services/a/av$a;)[B
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 286
    .line 288
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    :try_start_1
    iget-object v1, p1, Lcom/amap/api/services/a/av$a;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/amap/api/services/a/av;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 294
    iget-object v1, p1, Lcom/amap/api/services/a/av$a;->b:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/amap/api/services/a/av;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 297
    iget-object v1, p1, Lcom/amap/api/services/a/av$a;->c:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/amap/api/services/a/av;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 300
    iget-object v1, p1, Lcom/amap/api/services/a/av$a;->d:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/amap/api/services/a/av;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 304
    iget-object v1, p1, Lcom/amap/api/services/a/av$a;->e:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/amap/api/services/a/av;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 308
    iget-object v1, p1, Lcom/amap/api/services/a/av$a;->f:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/amap/api/services/a/av;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 312
    iget-object v1, p1, Lcom/amap/api/services/a/av$a;->g:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/amap/api/services/a/av;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 316
    iget-object v1, p1, Lcom/amap/api/services/a/av$a;->h:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/amap/api/services/a/av;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 319
    iget-object v1, p1, Lcom/amap/api/services/a/av$a;->i:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/amap/api/services/a/av;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 323
    iget-object v1, p1, Lcom/amap/api/services/a/av$a;->j:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/amap/api/services/a/av;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 326
    iget-object v1, p1, Lcom/amap/api/services/a/av$a;->k:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/amap/api/services/a/av;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 329
    iget-object v1, p1, Lcom/amap/api/services/a/av$a;->l:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/amap/api/services/a/av;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 332
    iget-object v1, p1, Lcom/amap/api/services/a/av$a;->m:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/amap/api/services/a/av;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 335
    iget-object v1, p1, Lcom/amap/api/services/a/av$a;->n:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/amap/api/services/a/av;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 338
    iget-object v1, p1, Lcom/amap/api/services/a/av$a;->o:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/amap/api/services/a/av;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 341
    iget-object v1, p1, Lcom/amap/api/services/a/av$a;->p:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/amap/api/services/a/av;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 344
    iget-object v1, p1, Lcom/amap/api/services/a/av$a;->q:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/amap/api/services/a/av;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 347
    iget-object v1, p1, Lcom/amap/api/services/a/av$a;->r:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/amap/api/services/a/av;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 350
    iget-object v1, p1, Lcom/amap/api/services/a/av$a;->s:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/amap/api/services/a/av;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 352
    iget-object v1, p1, Lcom/amap/api/services/a/av$a;->t:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/amap/api/services/a/av;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 354
    invoke-static {p0, v2}, Lcom/amap/api/services/a/av;->a(Landroid/content/Context;Ljava/io/ByteArrayOutputStream;)[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 360
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 366
    :cond_0
    :goto_0
    return-object v0

    .line 362
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 356
    :catch_1
    move-exception v1

    move-object v2, v0

    :goto_1
    :try_start_3
    const-string v3, "CInfo"

    const-string v4, "InitXInfo"

    invoke-static {v1, v3, v4}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 358
    if-eqz v2, :cond_0

    .line 360
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 362
    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 358
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    if-eqz v2, :cond_1

    .line 360
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 363
    :cond_1
    :goto_3
    throw v0

    .line 362
    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 358
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 356
    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public static c(Landroid/content/Context;[B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/lang/NullPointerException;,
            Ljava/io/IOException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x80

    const/16 v3, 0x75

    const/4 v2, 0x0

    .line 260
    invoke-static {p0}, Lcom/amap/api/services/a/bb;->a(Landroid/content/Context;)Ljava/security/PublicKey;

    move-result-object v0

    .line 262
    array-length v1, p1

    if-le v1, v3, :cond_0

    .line 263
    new-array v1, v3, [B

    .line 265
    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 267
    invoke-static {v1, v0}, Lcom/amap/api/services/a/ax;->a([BLjava/security/Key;)[B

    move-result-object v1

    .line 269
    array-length v0, p1

    add-int/lit16 v0, v0, 0x80

    add-int/lit8 v0, v0, -0x75

    new-array v0, v0, [B

    .line 271
    invoke-static {v1, v2, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 273
    array-length v1, p1

    add-int/lit8 v1, v1, -0x75

    invoke-static {p1, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 277
    :goto_0
    return-object v0

    .line 275
    :cond_0
    invoke-static {p1, v0}, Lcom/amap/api/services/a/ax;->a([BLjava/security/Key;)[B

    move-result-object v0

    goto :goto_0
.end method

.method static d(Landroid/content/Context;[B)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/io/IOException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 390
    invoke-static {p0, p1}, Lcom/amap/api/services/a/av;->a(Landroid/content/Context;[B)[B

    move-result-object v0

    .line 391
    invoke-static {v0}, Lcom/amap/api/services/a/bb;->b([B)[B

    move-result-object v0

    .line 393
    if-eqz v0, :cond_0

    .line 394
    invoke-static {v0}, Lcom/amap/api/services/a/ax;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 397
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;[B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 433
    :try_start_0
    invoke-static {p0, p1}, Lcom/amap/api/services/a/av;->d(Landroid/content/Context;[B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 437
    :goto_0
    return-object v0

    .line 435
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 437
    const-string v0, ""

    goto :goto_0
.end method
