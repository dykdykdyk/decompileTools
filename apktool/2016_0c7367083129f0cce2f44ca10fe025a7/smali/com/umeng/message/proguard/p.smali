.class public final Lcom/umeng/message/proguard/p;
.super Ljava/lang/Object;
.source "DigestUtil.java"


# direct methods
.method public static final a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    :try_start_0
    const-string v0, "MD5"

    invoke-static {p0, v0}, Lcom/umeng/message/proguard/p;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 88
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 90
    const/16 v2, 0x400

    new-array v4, v2, [B

    .line 91
    const/4 v2, 0x0

    const/16 v5, 0x400

    invoke-virtual {p0, v4, v2, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 92
    :goto_0
    if-ltz v2, :cond_0

    .line 93
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 94
    const/4 v2, 0x0

    const/16 v5, 0x400

    invoke-virtual {p0, v4, v2, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 1065
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1066
    if-eqz v2, :cond_1

    array-length v4, v2

    if-gtz v4, :cond_2

    .line 1067
    :cond_1
    :goto_1
    return-object v0

    .line 1069
    :cond_2
    :goto_2
    array-length v4, v2

    if-ge v1, v4, :cond_4

    .line 1070
    aget-byte v4, v2, v1

    and-int/lit16 v4, v4, 0xff

    .line 1071
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 1072
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_3

    .line 1073
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1075
    :cond_3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1077
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 99
    :catch_0
    move-exception v1

    goto :goto_1
.end method
