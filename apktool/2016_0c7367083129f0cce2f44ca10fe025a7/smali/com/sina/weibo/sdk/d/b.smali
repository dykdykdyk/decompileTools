.class public final Lcom/sina/weibo/sdk/d/b;
.super Ljava/lang/Object;
.source "AidTask.java"


# static fields
.field private static c:Lcom/sina/weibo/sdk/d/b;


# instance fields
.field a:Lcom/sina/weibo/sdk/d/e;

.field volatile b:Ljava/util/concurrent/locks/ReentrantLock;

.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;

.field private f:Lcom/sina/weibo/sdk/d/g;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/d/b;->b:Ljava/util/concurrent/locks/ReentrantLock;

    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/d/b;->d:Landroid/content/Context;

    .line 148
    new-instance v0, Lcom/sina/weibo/sdk/d/g;

    iget-object v1, p0, Lcom/sina/weibo/sdk/d/b;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/d/g;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/d/b;->f:Lcom/sina/weibo/sdk/d/g;

    .line 149
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sina/weibo/sdk/d/c;

    invoke-direct {v1, p0}, Lcom/sina/weibo/sdk/d/c;-><init>(Lcom/sina/weibo/sdk/d/b;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 159
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 160
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/sina/weibo/sdk/d/b;
    .locals 2

    .prologue
    .line 164
    const-class v1, Lcom/sina/weibo/sdk/d/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sina/weibo/sdk/d/b;->c:Lcom/sina/weibo/sdk/d/b;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Lcom/sina/weibo/sdk/d/b;

    invoke-direct {v0, p0}, Lcom/sina/weibo/sdk/d/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sina/weibo/sdk/d/b;->c:Lcom/sina/weibo/sdk/d/b;

    .line 167
    :cond_0
    sget-object v0, Lcom/sina/weibo/sdk/d/b;->c:Lcom/sina/weibo/sdk/d/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 489
    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    .line 2541
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/sina/weibo/sdk/d/h;->a([B)[B

    move-result-object v0

    .line 2542
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 2543
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 2544
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    .line 491
    const/4 v1, 0x1

    invoke-virtual {v4, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 493
    const/4 v2, 0x0

    .line 494
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 496
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    const/4 v0, 0x0

    .line 3532
    :goto_0
    :try_start_1
    array-length v2, v5

    if-lt v0, v2, :cond_1

    move v2, v3

    .line 499
    :goto_1
    if-ne v2, v3, :cond_0

    .line 506
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 507
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 508
    const-string v2, "AidTask"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "encryptRsa total enBytes len = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sina/weibo/sdk/d/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    invoke-static {v0}, Lcom/sina/weibo/sdk/d/h;->b([B)[B

    move-result-object v0

    .line 511
    const-string v2, "AidTask"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "encryptRsa total base64byte len = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sina/weibo/sdk/d/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "01"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 516
    const-string v2, "AidTask"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "encryptRsa total base64string : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sina/weibo/sdk/d/i;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 524
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 518
    :goto_2
    return-object v0

    .line 500
    :cond_0
    :try_start_3
    invoke-virtual {v4, v5, v0, v2}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v6

    .line 501
    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 502
    const-string v7, "AidTask"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "encryptRsa offset = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "     len = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 503
    const-string v9, "     enBytes len = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v6, v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 502
    invoke-static {v7, v6}, Lcom/sina/weibo/sdk/d/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    add-int/2addr v0, v2

    goto/16 :goto_0

    .line 3535
    :cond_1
    array-length v2, v5

    sub-int/2addr v2, v0

    .line 3536
    const/16 v6, 0x75

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v2

    goto/16 :goto_1

    .line 521
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 522
    :goto_3
    if-eqz v1, :cond_2

    .line 524
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 528
    :cond_2
    :goto_4
    throw v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_4

    .line 521
    :catchall_1
    move-exception v0

    goto :goto_3
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 389
    invoke-static {p0}, Lcom/sina/weibo/sdk/d/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 390
    const-string v1, ""

    .line 392
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :goto_0
    const-string v1, "AidTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "genMfpString() utf-8 string : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/d/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    :try_start_1
    const-string v1, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDHHM0Fi2Z6+QYKXqFUX2Cy6AaWq3cPi+GSn9oeAwQbPZR75JB7Netm0HtBVVbtPhzT7UO2p1JhFUKWqrqoYuAjkgMVPmA0sFrQohns5EE44Y86XQopD4ZO+dE5KjUZFE6vrPO3rWW3np2BqlgKpjnYZri6TJApmIpGcQg9/G/3zQIDAQAB"

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/d/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 398
    const-string v1, "AidTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "encryptRsa() string : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/d/i;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 403
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 400
    :catch_1
    move-exception v0

    .line 401
    const-string v1, "AidTask"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sina/weibo/sdk/d/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const-string v0, ""

    goto :goto_1
.end method

.method private static c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 550
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Android "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 552
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 407
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 409
    :try_start_0
    invoke-static {}, Lcom/sina/weibo/sdk/d/b;->c()Ljava/lang/String;

    move-result-object v0

    .line 410
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 411
    const-string v2, "1"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 413
    :cond_0
    invoke-static {p0}, Lcom/sina/weibo/sdk/d/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 414
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 415
    const-string v2, "2"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 417
    :cond_1
    invoke-static {p0}, Lcom/sina/weibo/sdk/d/b;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 418
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 419
    const-string v2, "3"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 421
    :cond_2
    invoke-static {p0}, Lcom/sina/weibo/sdk/d/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 422
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 423
    const-string v2, "4"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 425
    :cond_3
    invoke-static {p0}, Lcom/sina/weibo/sdk/d/b;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 426
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 427
    const-string v2, "5"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 429
    :cond_4
    invoke-static {p0}, Lcom/sina/weibo/sdk/d/b;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 430
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 431
    const-string v2, "6"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 433
    :cond_5
    invoke-static {}, Lcom/sina/weibo/sdk/d/b;->d()Ljava/lang/String;

    move-result-object v0

    .line 434
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 435
    const-string v2, "7"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 437
    :cond_6
    invoke-static {p0}, Lcom/sina/weibo/sdk/d/b;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 438
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 439
    const-string v2, "10"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 441
    :cond_7
    invoke-static {}, Lcom/sina/weibo/sdk/d/b;->e()Ljava/lang/String;

    move-result-object v0

    .line 442
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 443
    const-string v2, "13"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 445
    :cond_8
    invoke-static {}, Lcom/sina/weibo/sdk/d/b;->f()Ljava/lang/String;

    move-result-object v0

    .line 446
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 447
    const-string v2, "14"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 449
    :cond_9
    invoke-static {}, Lcom/sina/weibo/sdk/d/b;->g()Ljava/lang/String;

    move-result-object v0

    .line 450
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 451
    const-string v2, "15"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 453
    :cond_a
    invoke-static {p0}, Lcom/sina/weibo/sdk/d/b;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 454
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 455
    const-string v2, "16"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 457
    :cond_b
    invoke-static {p0}, Lcom/sina/weibo/sdk/d/b;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 458
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 459
    const-string v2, "17"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 461
    :cond_c
    invoke-static {}, Lcom/sina/weibo/sdk/d/b;->h()Ljava/lang/String;

    move-result-object v0

    .line 462
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 463
    const-string v2, "18"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 465
    :cond_d
    invoke-static {p0}, Lcom/sina/weibo/sdk/d/b;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 466
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 467
    const-string v2, "19"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 470
    :cond_e
    const-string v0, ""
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 472
    :try_start_1
    invoke-static {}, Lcom/sina/weibo/sdk/d/p;->a()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 477
    :goto_0
    :try_start_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 478
    const-string v2, "20"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 482
    :cond_f
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 485
    :goto_1
    return-object v0

    .line 474
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 485
    :catch_1
    move-exception v0

    const-string v0, ""

    goto :goto_1
.end method

.method private static d()Ljava/lang/String;
    .locals 6

    .prologue
    .line 604
    const-string v1, ""

    .line 606
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 607
    const-string v2, "get"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 608
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "ro.serialno"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "unknown"

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 611
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method private static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 557
    .line 558
    :try_start_0
    const-string v0, "phone"

    .line 557
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 559
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 561
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method private static e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 625
    :try_start_0
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method private static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 566
    .line 567
    :try_start_0
    const-string v0, "phone"

    .line 566
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 568
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 570
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method private static f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 632
    :try_start_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method private static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 575
    .line 576
    :try_start_0
    const-string v0, "phone"

    .line 575
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 577
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 579
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method private static g()Ljava/lang/String;
    .locals 4

    .prologue
    .line 639
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 640
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 641
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 642
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v0, v0

    .line 643
    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 645
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method private static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 584
    :try_start_0
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    if-nez v0, :cond_0

    .line 586
    const-string v0, ""

    .line 591
    :goto_0
    return-object v0

    .line 588
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 589
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 591
    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method private static h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 675
    :try_start_0
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 677
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method private static h(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 596
    .line 597
    :try_start_0
    const-string v0, "phone"

    .line 596
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 598
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 600
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method private static i(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 617
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    .line 616
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 620
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method private static j(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 650
    :try_start_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 652
    const-string v0, "window"

    .line 651
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 653
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 654
    new-instance v0, Ljava/lang/StringBuilder;

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 655
    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 656
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 654
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 658
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method private static k(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 663
    .line 664
    :try_start_0
    const-string v0, "wifi"

    .line 663
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 665
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 666
    if-eqz v0, :cond_0

    .line 667
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 670
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static l(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 681
    const-string v1, "none"

    .line 684
    :try_start_0
    const-string v0, "connectivity"

    .line 683
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 685
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 690
    if-eqz v0, :cond_1

    .line 691
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_0

    .line 692
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 724
    const-string v0, "none"

    .line 733
    :goto_0
    return-object v0

    .line 701
    :pswitch_0
    const-string v0, "2G"

    goto :goto_0

    .line 716
    :pswitch_1
    const-string v0, "3G"

    goto :goto_0

    .line 720
    :pswitch_2
    const-string v0, "4G"

    goto :goto_0

    .line 727
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 728
    const-string v0, "wifi"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    move-object v0, v1

    goto :goto_0

    .line 692
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method final declared-synchronized a()Lcom/sina/weibo/sdk/d/e;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 302
    monitor-enter p0

    .line 304
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/sina/weibo/sdk/d/b;->a(I)Ljava/io/File;

    move-result-object v2

    .line 305
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v2

    new-array v2, v2, [B

    .line 307
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    .line 308
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v3}, Lcom/sina/weibo/sdk/d/e;->a(Ljava/lang/String;)Lcom/sina/weibo/sdk/d/e;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v0

    .line 313
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 317
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 311
    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_0

    .line 313
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 314
    :catch_1
    move-exception v1

    goto :goto_0

    .line 310
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 311
    :goto_2
    if-eqz v1, :cond_1

    .line 313
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 316
    :cond_1
    :goto_3
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 302
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_3

    .line 310
    :catchall_2
    move-exception v0

    goto :goto_2

    .line 311
    :catch_4
    move-exception v2

    goto :goto_1
.end method

.method final a(I)Ljava/io/File;
    .locals 4

    .prologue
    .line 321
    iget-object v0, p0, Lcom/sina/weibo/sdk/d/b;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 322
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "weibo_sdk_aid"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 323
    return-object v1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 175
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    const-string v0, "AidTask"

    const-string v1, "aidTaskInit "

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/d/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1187
    iput-object p1, p0, Lcom/sina/weibo/sdk/d/b;->e:Ljava/lang/String;

    .line 1189
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sina/weibo/sdk/d/d;

    invoke-direct {v1, p0}, Lcom/sina/weibo/sdk/d/d;-><init>(Lcom/sina/weibo/sdk/d/b;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1217
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method final b()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/exception/WeiboException;
        }
    .end annotation

    .prologue
    .line 333
    iget-object v0, p0, Lcom/sina/weibo/sdk/d/b;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 334
    iget-object v1, p0, Lcom/sina/weibo/sdk/d/b;->d:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sina/weibo/sdk/d/p;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 335
    iget-object v2, p0, Lcom/sina/weibo/sdk/d/b;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/sina/weibo/sdk/d/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 337
    new-instance v3, Lcom/sina/weibo/sdk/net/k;

    iget-object v4, p0, Lcom/sina/weibo/sdk/d/b;->e:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/sina/weibo/sdk/net/k;-><init>(Ljava/lang/String;)V

    .line 338
    const-string v4, "appkey"

    iget-object v5, p0, Lcom/sina/weibo/sdk/d/b;->e:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/sina/weibo/sdk/net/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v4, "mfp"

    invoke-virtual {v3, v4, v2}, Lcom/sina/weibo/sdk/net/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const-string v2, "packagename"

    invoke-virtual {v3, v2, v0}, Lcom/sina/weibo/sdk/net/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v0, "key_hash"

    invoke-virtual {v3, v0, v1}, Lcom/sina/weibo/sdk/net/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :try_start_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/d/b;->d:Landroid/content/Context;

    const-string v1, "https://api.weibo.com/oauth2/getaid.json"

    const-string v2, "GET"

    .line 2046
    invoke-static {v0, v1, v2, v3}, Lcom/sina/weibo/sdk/net/HttpManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sina/weibo/sdk/net/k;)Ljava/lang/String;

    move-result-object v0

    .line 345
    const-string v1, "AidTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loadAidFromNet response : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/d/i;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sina/weibo/sdk/exception/WeiboException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    return-object v0

    .line 347
    :catch_0
    move-exception v0

    .line 348
    const-string v1, "AidTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loadAidFromNet WeiboException Msg : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/exception/WeiboException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/d/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    throw v0
.end method

.method final declared-synchronized b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 358
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 362
    :cond_1
    const/4 v1, 0x0

    .line 364
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/sina/weibo/sdk/d/b;->a(I)Ljava/io/File;

    move-result-object v2

    .line 365
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 366
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 371
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    .line 369
    :goto_1
    if-eqz v0, :cond_0

    .line 371
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 372
    :catch_2
    move-exception v0

    goto :goto_0

    .line 368
    :catchall_0
    move-exception v0

    .line 369
    :goto_2
    if-eqz v1, :cond_2

    .line 371
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 374
    :cond_2
    :goto_3
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 358
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_3
    move-exception v1

    goto :goto_3

    .line 368
    :catchall_2
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method
