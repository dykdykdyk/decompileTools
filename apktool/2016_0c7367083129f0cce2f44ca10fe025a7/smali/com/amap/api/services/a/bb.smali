.class public Lcom/amap/api/services/a/bb;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public static a(J)Ljava/lang/String;
    .locals 4

    .prologue
    .line 552
    const/4 v0, 0x0

    .line 554
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd HH:mm:ss:SSS"

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 555
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 556
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 561
    :goto_0
    return-object v0

    .line 558
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 205
    .line 208
    :try_start_0
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    :try_start_1
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 210
    :try_start_2
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 211
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 212
    :goto_0
    if-eqz v1, :cond_0

    .line 213
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 214
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_0

    .line 216
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    .line 221
    if-eqz v3, :cond_1

    .line 223
    :try_start_3
    invoke-virtual {v3}, Ljava/io/Writer;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5

    .line 229
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 231
    :try_start_4
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_6

    .line 238
    :cond_2
    :goto_2
    return-object v0

    .line 219
    :catch_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 221
    if-eqz v3, :cond_3

    .line 223
    :try_start_6
    invoke-virtual {v3}, Ljava/io/Writer;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    .line 229
    :cond_3
    :goto_4
    if-eqz v2, :cond_2

    .line 231
    :try_start_7
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 234
    :catch_1
    move-exception v1

    :goto_5
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 221
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    :goto_6
    if-eqz v3, :cond_4

    .line 223
    :try_start_8
    invoke-virtual {v3}, Ljava/io/Writer;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    .line 229
    :cond_4
    :goto_7
    if-eqz v2, :cond_5

    .line 231
    :try_start_9
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3

    .line 221
    :cond_5
    :goto_8
    throw v0

    .line 226
    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    .line 234
    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    .line 226
    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 234
    :catch_6
    move-exception v1

    goto :goto_5

    .line 221
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_6

    .line 219
    :catch_7
    move-exception v1

    move-object v2, v0

    goto :goto_3

    :catch_8
    move-exception v1

    goto :goto_3
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 248
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 249
    :cond_0
    const/4 v0, 0x0

    .line 269
    :goto_0
    return-object v0

    .line 251
    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 253
    const/4 v0, 0x1

    .line 254
    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 255
    if-eqz v2, :cond_3

    .line 256
    const/4 v2, 0x0

    .line 257
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v5, "="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 258
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 266
    :catch_0
    move-exception v0

    const-string v1, "Utils"

    const-string v2, "assembleParams"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 260
    :cond_3
    :try_start_1
    const-string v1, "&"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v5, "="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 261
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static a([B)Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 49
    :cond_0
    const-string v0, ""

    .line 55
    :goto_0
    return-object v0

    .line 52
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method static a(Landroid/content/Context;)Ljava/security/PublicKey;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/lang/NullPointerException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 381
    const/16 v1, 0x2a2

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    .line 434
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    :try_start_1
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 436
    const-string v3, "RSA"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 437
    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 438
    if-eqz v1, :cond_0

    if-nez v3, :cond_2

    .line 448
    :cond_0
    if-eqz v2, :cond_1

    .line 449
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4

    .line 455
    :cond_1
    :goto_0
    return-object v0

    .line 441
    :cond_2
    :try_start_3
    new-instance v4, Ljava/security/spec/X509EncodedKeySpec;

    .line 442
    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 443
    invoke-virtual {v3, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 448
    if-eqz v2, :cond_1

    .line 449
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 452
    :catch_0
    move-exception v1

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 445
    :catch_1
    move-exception v1

    move-object v2, v0

    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 448
    if-eqz v2, :cond_1

    .line 449
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 452
    :catch_2
    move-exception v1

    goto :goto_1

    .line 447
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 448
    :goto_3
    if-eqz v2, :cond_3

    .line 449
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    .line 447
    :cond_3
    :goto_4
    throw v0

    .line 452
    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_1

    .line 447
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 445
    :catch_5
    move-exception v1

    goto :goto_2

    .line 381
    :array_0
    .array-data 1
        0x30t
        -0x7et
        0x2t
        -0x62t
        0x30t
        -0x7et
        0x2t
        0x7t
        -0x60t
        0x3t
        0x2t
        0x1t
        0x2t
        0x2t
        0x9t
        0x0t
        -0x63t
        0xft
        0x77t
        0x3at
        0x2ct
        -0x13t
        -0x69t
        -0x28t
        0x30t
        0xdt
        0x6t
        0x9t
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x1t
        0x5t
        0x5t
        0x0t
        0x30t
        0x68t
        0x31t
        0xbt
        0x30t
        0x9t
        0x6t
        0x3t
        0x55t
        0x4t
        0x6t
        0x13t
        0x2t
        0x43t
        0x4et
        0x31t
        0x13t
        0x30t
        0x11t
        0x6t
        0x3t
        0x55t
        0x4t
        0x8t
        0xct
        0xat
        0x53t
        0x6ft
        0x6dt
        0x65t
        0x2dt
        0x53t
        0x74t
        0x61t
        0x74t
        0x65t
        0x31t
        0x10t
        0x30t
        0xet
        0x6t
        0x3t
        0x55t
        0x4t
        0x7t
        0xct
        0x7t
        0x42t
        0x65t
        0x69t
        0x6at
        0x69t
        0x6et
        0x67t
        0x31t
        0x11t
        0x30t
        0xft
        0x6t
        0x3t
        0x55t
        0x4t
        0xat
        0xct
        0x8t
        0x41t
        0x75t
        0x74t
        0x6ft
        0x6et
        0x61t
        0x76t
        0x69t
        0x31t
        0x1ft
        0x30t
        0x1dt
        0x6t
        0x3t
        0x55t
        0x4t
        0x3t
        0xct
        0x16t
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x61t
        0x75t
        0x74t
        0x6ft
        0x6et
        0x61t
        0x76t
        0x69t
        0x2et
        0x61t
        0x70t
        0x69t
        0x73t
        0x65t
        0x72t
        0x76t
        0x65t
        0x72t
        0x30t
        0x1et
        0x17t
        0xdt
        0x31t
        0x33t
        0x30t
        0x38t
        0x31t
        0x35t
        0x30t
        0x37t
        0x35t
        0x36t
        0x35t
        0x35t
        0x5at
        0x17t
        0xdt
        0x32t
        0x33t
        0x30t
        0x38t
        0x31t
        0x33t
        0x30t
        0x37t
        0x35t
        0x36t
        0x35t
        0x35t
        0x5at
        0x30t
        0x68t
        0x31t
        0xbt
        0x30t
        0x9t
        0x6t
        0x3t
        0x55t
        0x4t
        0x6t
        0x13t
        0x2t
        0x43t
        0x4et
        0x31t
        0x13t
        0x30t
        0x11t
        0x6t
        0x3t
        0x55t
        0x4t
        0x8t
        0xct
        0xat
        0x53t
        0x6ft
        0x6dt
        0x65t
        0x2dt
        0x53t
        0x74t
        0x61t
        0x74t
        0x65t
        0x31t
        0x10t
        0x30t
        0xet
        0x6t
        0x3t
        0x55t
        0x4t
        0x7t
        0xct
        0x7t
        0x42t
        0x65t
        0x69t
        0x6at
        0x69t
        0x6et
        0x67t
        0x31t
        0x11t
        0x30t
        0xft
        0x6t
        0x3t
        0x55t
        0x4t
        0xat
        0xct
        0x8t
        0x41t
        0x75t
        0x74t
        0x6ft
        0x6et
        0x61t
        0x76t
        0x69t
        0x31t
        0x1ft
        0x30t
        0x1dt
        0x6t
        0x3t
        0x55t
        0x4t
        0x3t
        0xct
        0x16t
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x61t
        0x75t
        0x74t
        0x6ft
        0x6et
        0x61t
        0x76t
        0x69t
        0x2et
        0x61t
        0x70t
        0x69t
        0x73t
        0x65t
        0x72t
        0x76t
        0x65t
        0x72t
        0x30t
        -0x7ft
        -0x61t
        0x30t
        0xdt
        0x6t
        0x9t
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x1t
        0x1t
        0x5t
        0x0t
        0x3t
        -0x7ft
        -0x73t
        0x0t
        0x30t
        -0x7ft
        -0x77t
        0x2t
        -0x7ft
        -0x7ft
        0x0t
        -0xft
        -0x1bt
        -0x80t
        -0x38t
        0x76t
        -0x3bt
        0x3et
        -0x7ft
        0x4ft
        0x7dt
        -0x24t
        0x79t
        0x0t
        0x3ft
        -0x7dt
        -0x1et
        0x76t
        0x5t
        -0x55t
        -0x79t
        0x5bt
        0x27t
        0x5at
        0x7bt
        0x48t
        -0x7et
        -0x53t
        -0x29t
        -0x2dt
        -0x4dt
        -0x2at
        -0x78t
        -0x51t
        0x17t
        -0x2t
        -0x79t
        -0x1dt
        0x7bt
        -0x7t
        0x16t
        -0x72t
        -0x14t
        -0x19t
        0x4at
        0x43t
        -0x2bt
        0x41t
        0x7ct
        -0x7t
        0xbt
        -0x48t
        0x26t
        -0x7bt
        0x10t
        -0x3at
        0x50t
        0x20t
        0x3at
        -0x21t
        0xet
        0xbt
        0x24t
        0x3ct
        0xdt
        -0x79t
        0x64t
        0x69t
        -0x20t
        0x7bt
        -0x1ft
        0x72t
        -0x65t
        -0x29t
        0xct
        0x64t
        0x21t
        -0x78t
        0x3ft
        0x7et
        -0x7bt
        0x30t
        0x37t
        0x50t
        -0x74t
        0x1ct
        -0xat
        0x7dt
        0x3bt
        -0x29t
        -0x5ft
        -0x7et
        0x76t
        -0x46t
        0x2bt
        -0x7ft
        0x9t
        0x5dt
        -0x64t
        0x51t
        -0x13t
        -0x72t
        -0x29t
        0x55t
        -0x67t
        -0x25t
        -0x74t
        0x76t
        0x48t
        0x56t
        0x7dt
        -0x2bt
        -0x5ct
        -0xbt
        0x3ft
        0x45t
        -0x26t
        -0xat
        -0x41t
        0x7et
        -0x35t
        -0x73t
        0x3ct
        0x3et
        -0x56t
        -0x50t
        0x1t
        0x27t
        0x13t
        0x2t
        0x3t
        0x1t
        0x0t
        0x1t
        -0x5dt
        0x50t
        0x30t
        0x4et
        0x30t
        0x1dt
        0x6t
        0x3t
        0x55t
        0x1dt
        0xet
        0x4t
        0x16t
        0x4t
        0x14t
        -0x1dt
        0x3ft
        0x30t
        -0x4ft
        -0x71t
        -0xdt
        0x1at
        0x55t
        0x16t
        -0x1bt
        0x5dt
        -0x5t
        0x7at
        -0x67t
        -0x6dt
        0xet
        -0x12t
        0x6t
        -0xdt
        -0x6dt
        0x30t
        0x1ft
        0x6t
        0x3t
        0x55t
        0x1dt
        0x23t
        0x4t
        0x18t
        0x30t
        0x16t
        -0x80t
        0x14t
        -0x1dt
        0x3ft
        0x30t
        -0x4ft
        -0x71t
        -0xdt
        0x1at
        0x55t
        0x16t
        -0x1bt
        0x5dt
        -0x5t
        0x7at
        -0x67t
        -0x6dt
        0xet
        -0x12t
        0x6t
        -0xdt
        -0x6dt
        0x30t
        0xct
        0x6t
        0x3t
        0x55t
        0x1dt
        0x13t
        0x4t
        0x5t
        0x30t
        0x3t
        0x1t
        0x1t
        -0x1t
        0x30t
        0xdt
        0x6t
        0x9t
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x1t
        0x5t
        0x5t
        0x0t
        0x3t
        -0x7ft
        -0x7ft
        0x0t
        -0x20t
        -0x4at
        0x37t
        -0x7dt
        -0x3at
        -0x80t
        0xft
        -0x3et
        0x64t
        -0x3ct
        0x3t
        -0x56t
        0x51t
        0x70t
        -0x3dt
        -0x38t
        -0x45t
        -0x7et
        0x8t
        0x63t
        -0x64t
        -0x26t
        -0x6ct
        -0x38t
        -0x7at
        0x7dt
        0x13t
        -0x40t
        -0x3dt
        0x5at
        0x55t
        -0x2ft
        -0x8t
        -0x7bt
        -0x67t
        0x69t
        0x4dt
        -0x20t
        -0x41t
        -0x3et
        -0x1ct
        0x43t
        -0x1ct
        -0x4et
        0x74t
        -0x31t
        0x78t
        -0x2t
        0x21t
        0xdt
        0x2ft
        0x2et
        -0x5t
        -0x70t
        0x3t
        -0x65t
        -0x7dt
        -0x73t
        0x5ct
        -0x7ct
        0x3at
        0x50t
        0x6bt
        -0x43t
        0x52t
        0x6t
        -0x3ft
        0x27t
        -0x5at
        -0x1t
        0x55t
        -0x3at
        0x52t
        -0x73t
        0x77t
        0xdt
        -0x4t
        -0x20t
        0x0t
        -0x62t
        0x64t
        -0x29t
        0x5et
        -0x4bt
        0x4bt
        -0x67t
        0x7et
        -0x50t
        0x55t
        0x28t
        -0x1bt
        0x3ct
        0x69t
        0x1ct
        -0x1bt
        -0x15t
        -0xft
        -0x62t
        0x67t
        -0x58t
        -0x6dt
        0x23t
        -0x77t
        -0x1bt
        -0x1at
        -0x7at
        0x71t
        0x3ft
        0x23t
        -0x21t
        0x46t
        0x17t
        0x21t
        -0x17t
        0x42t
        0x6ct
        0x38t
        0x70t
        0x2et
        -0x55t
        -0x7bt
        -0x7bt
        0x21t
        0x76t
        0x1bt
        0x60t
        -0x7t
        -0x67t
    .end array-data
.end method

.method public static a(Ljava/io/ByteArrayOutputStream;B[B)V
    .locals 5

    .prologue
    const/16 v4, 0xff

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 84
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte p1, v2, v3

    invoke-virtual {p0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 85
    if-lez p1, :cond_1

    move v2, v0

    :goto_0
    and-int/lit16 v3, p1, 0xff

    if-ge v3, v4, :cond_2

    :goto_1
    and-int/2addr v0, v2

    if-eqz v0, :cond_3

    .line 86
    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 94
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v2, v1

    .line 85
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 87
    :cond_3
    and-int/lit16 v0, p1, 0xff

    if-ne v0, v4, :cond_0

    .line 88
    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-virtual {p0, p2, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 91
    :catch_0
    move-exception v0

    const-string v1, "Utils"

    const-string v2, "writeField"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    int-to-byte v0, v0

    .line 40
    invoke-static {p1}, Lcom/amap/api/services/a/bb;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/amap/api/services/a/bb;->a(Ljava/io/ByteArrayOutputStream;B[B)V

    .line 41
    return-void
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 127
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a()[B
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 141
    :try_start_0
    const-string v0, "16,16,18,77,15,911,121,77,121,911,38,77,911,99,86,67,611,96,48,77,84,911,38,67,021,301,86,67,611,98,48,77,511,77,48,97,511,58,48,97,511,84,501,87,511,96,48,77,221,911,38,77,121,37,86,67,25,301,86,67,021,96,86,67,021,701,86,67,35,56,86,67,611,37,221,87"

    .line 146
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 149
    array-length v0, v2

    new-array v3, v0, [B

    move v0, v1

    .line 150
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 151
    aget-object v4, v2, v0

    invoke-static {v4}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v4

    aput-byte v4, v3, v0

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/amap/api/services/a/ax;->b(Ljava/lang/String;)[B

    move-result-object v0

    .line 156
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 157
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 161
    array-length v0, v2

    new-array v0, v0, [B

    .line 162
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 163
    aget-object v3, v2, v1

    invoke-static {v3}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v3

    aput-byte v3, v0, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 169
    :catch_0
    move-exception v0

    const-string v1, "Utils"

    const-string v2, "getIV"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const/16 v0, 0x10

    new-array v0, v0, [B

    :cond_1
    return-object v0
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 66
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 74
    :goto_0
    return-object v0

    .line 71
    :cond_0
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 97
    if-nez p0, :cond_0

    .line 98
    const/4 v0, 0x0

    .line 106
    :goto_0
    return-object v0

    .line 100
    :cond_0
    invoke-static {p0}, Lcom/amap/api/services/a/bb;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 103
    invoke-static {v0}, Lcom/amap/api/services/a/ax;->b([B)Ljava/lang/String;

    move-result-object v0

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/lit8 v2, v2, 0x1a

    add-int/lit8 v2, v2, 0x41

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b([B)[B
    .locals 3

    .prologue
    .line 316
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/services/a/bb;->g([B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 320
    :goto_0
    return-object v0

    .line 318
    :catch_0
    move-exception v0

    const-string v1, "Utils"

    const-string v2, "gZip"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 113
    const-string v0, ""

    .line 115
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/a/ax;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static c([B)[B
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 324
    if-eqz p0, :cond_0

    array-length v1, p0

    if-nez v1, :cond_1

    .line 363
    :cond_0
    :goto_0
    return-object v0

    .line 331
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    :try_start_1
    new-instance v3, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 333
    :try_start_2
    new-instance v1, Ljava/util/zip/ZipEntry;

    const-string v4, "log"

    invoke-direct {v1, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 334
    invoke-virtual {v3, p0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 335
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 336
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 337
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    .line 344
    if-eqz v3, :cond_2

    .line 346
    :try_start_3
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_6

    .line 352
    :cond_2
    :goto_1
    if-eqz v2, :cond_0

    .line 354
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 357
    :catch_0
    move-exception v1

    const-string v2, "Utils"

    const-string v3, "zip2"

    :goto_2
    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 340
    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    :goto_3
    :try_start_5
    const-string v4, "Utils"

    const-string v5, "zip"

    invoke-static {v1, v4, v5}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 344
    if-eqz v3, :cond_3

    .line 346
    :try_start_6
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    .line 352
    :cond_3
    :goto_4
    if-eqz v2, :cond_0

    .line 354
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_0

    .line 357
    :catch_2
    move-exception v1

    const-string v2, "Utils"

    const-string v3, "zip2"

    goto :goto_2

    .line 344
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    :goto_5
    if-eqz v3, :cond_4

    .line 346
    :try_start_8
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    .line 352
    :cond_4
    :goto_6
    if-eqz v2, :cond_5

    .line 354
    :try_start_9
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4

    .line 344
    :cond_5
    :goto_7
    throw v0

    .line 348
    :catch_3
    move-exception v1

    const-string v3, "Utils"

    const-string v4, "zip1"

    invoke-static {v1, v3, v4}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 357
    :catch_4
    move-exception v1

    const-string v2, "Utils"

    const-string v3, "zip2"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 348
    :catch_5
    move-exception v1

    const-string v3, "Utils"

    const-string v4, "zip1"

    invoke-static {v1, v3, v4}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_6
    move-exception v1

    const-string v3, "Utils"

    const-string v4, "zip1"

    invoke-static {v1, v3, v4}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 344
    :catchall_1
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_5

    .line 340
    :catch_7
    move-exception v1

    move-object v3, v0

    goto :goto_3

    :catch_8
    move-exception v1

    goto :goto_3
.end method

.method static d([B)Ljava/lang/String;
    .locals 3

    .prologue
    .line 474
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/services/a/bb;->f([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 478
    :goto_0
    return-object v0

    .line 476
    :catch_0
    move-exception v0

    const-string v1, "Utils"

    const-string v2, "HexString"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static e([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 483
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/services/a/bb;->f([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 487
    :goto_0
    return-object v0

    .line 485
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 487
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f([B)Ljava/lang/String;
    .locals 5

    .prologue
    .line 491
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 492
    if-nez p0, :cond_0

    .line 493
    const/4 v0, 0x0

    .line 502
    :goto_0
    return-object v0

    .line 495
    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 496
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 497
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 498
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 500
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 502
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static g([B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 514
    .line 517
    if-nez p0, :cond_1

    .line 546
    :cond_0
    :goto_0
    return-object v0

    .line 521
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 522
    :try_start_1
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 523
    :try_start_2
    invoke-virtual {v1, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 524
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 525
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 529
    if-eqz v1, :cond_2

    .line 531
    :try_start_3
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    .line 536
    :cond_2
    if-eqz v2, :cond_0

    .line 538
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 540
    :catch_0
    move-exception v0

    throw v0

    .line 527
    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    :goto_1
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 529
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_3

    .line 531
    :try_start_6
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    .line 536
    :cond_3
    if-eqz v2, :cond_4

    .line 538
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    .line 529
    :cond_4
    throw v0

    .line 533
    :catch_2
    move-exception v0

    throw v0

    .line 540
    :catch_3
    move-exception v0

    throw v0

    .line 533
    :catch_4
    move-exception v0

    throw v0

    .line 529
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_2

    :catchall_2
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_2

    .line 527
    :catch_5
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_1

    :catch_6
    move-exception v0

    goto :goto_1
.end method
