.class public final Lcom/loc/dy;
.super Ljava/lang/Object;
.source "AuthConfigManager.java"


# static fields
.field public static a:I

.field public static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/loc/dy;->a:I

    const-string v0, ""

    sput-object v0, Lcom/loc/dy;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/loc/eo;Ljava/lang/String;)Lcom/loc/dz;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/loc/eo;",
            "Ljava/lang/String;",
            ")",
            "Lcom/loc/dz;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    .line 0
    new-instance v0, Lcom/loc/dz;

    invoke-direct {v0}, Lcom/loc/dz;-><init>()V

    :try_start_0
    new-instance v1, Lcom/loc/bi;

    invoke-direct {v1}, Lcom/loc/bi;-><init>()V

    new-instance v1, Lcom/loc/ee;

    invoke-direct {v1, p0, p1, p2}, Lcom/loc/ee;-><init>(Landroid/content/Context;Lcom/loc/eo;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/loc/bi;->a(Lcom/loc/bq;)[B
    :try_end_0
    .catch Lcom/loc/h; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    const/16 v1, 0x10

    :try_start_1
    new-array v1, v1, [B

    array-length v4, v2

    add-int/lit8 v4, v4, -0x10

    new-array v4, v4, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x10

    invoke-static {v2, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v5, 0x10

    const/4 v6, 0x0

    array-length v7, v2

    add-int/lit8 v7, v7, -0x10

    invoke-static {v2, v5, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    const-string v6, "AES"

    invoke-direct {v5, v1, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    new-instance v6, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {}, Lcom/loc/eq;->a()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v7, 0x2

    invoke-virtual {v1, v7, v5, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v1, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/loc/eq;->a([B)Ljava/lang/String;
    :try_end_1
    .catch Lcom/loc/h; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_8

    move-result-object v3

    move-object v1, v3

    :goto_0
    if-nez v2, :cond_1

    :cond_0
    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    move-object v2, v3

    .line 1000
    :goto_2
    iget-object v1, v1, Lcom/loc/h;->a:Ljava/lang/String;

    .line 0
    iput-object v1, v0, Lcom/loc/dz;->a:Ljava/lang/String;

    move-object v1, v3

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v3

    :goto_3
    move-object v1, v3

    goto :goto_0

    :catch_2
    move-exception v1

    move-object v2, v3

    :goto_4
    const-string v4, "ConfigManager"

    const-string v5, "loadConfig"

    invoke-static {v1, v4, v5}, Lcom/loc/es;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    goto :goto_0

    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Lcom/loc/eq;->a([B)Ljava/lang/String;

    move-result-object v1

    :cond_2
    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "status"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "status"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v8, :cond_18

    const/4 v1, 0x1

    sput v1, Lcom/loc/dy;->a:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    :cond_3
    :try_start_3
    const-string v1, "ver"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "ver"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/loc/dz;->b:I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    :cond_4
    :goto_5
    :try_start_4
    const-string v1, "result"

    invoke-static {v2, v1}, Lcom/loc/eq;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/loc/ea;

    invoke-direct {v1}, Lcom/loc/ea;-><init>()V

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/loc/ea;->a:Z

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/loc/ea;->b:Z

    iput-object v1, v0, Lcom/loc/dz;->n:Lcom/loc/ea;

    const-string v3, "result"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "11K"

    invoke-static {v2, v3}, Lcom/loc/eq;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    move-result v3

    if-eqz v3, :cond_5

    :try_start_5
    const-string v3, "11K"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "able"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/loc/dy;->a(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v1, Lcom/loc/ea;->a:Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    :cond_5
    :goto_6
    :try_start_6
    const-string v1, "11B"

    invoke-static {v2, v1}, Lcom/loc/eq;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "11B"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/loc/dz;->c:Lorg/json/JSONObject;

    :cond_6
    const-string v1, "11C"

    invoke-static {v2, v1}, Lcom/loc/eq;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "11C"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/loc/dz;->e:Lorg/json/JSONObject;

    :cond_7
    const-string v1, "11I"

    invoke-static {v2, v1}, Lcom/loc/eq;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "11I"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/loc/dz;->f:Lorg/json/JSONObject;

    :cond_8
    const-string v1, "11H"

    invoke-static {v2, v1}, Lcom/loc/eq;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "11H"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/loc/dz;->g:Lorg/json/JSONObject;

    :cond_9
    const-string v1, "11E"

    invoke-static {v2, v1}, Lcom/loc/eq;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "11E"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/loc/dz;->h:Lorg/json/JSONObject;

    :cond_a
    const-string v1, "11F"

    invoke-static {v2, v1}, Lcom/loc/eq;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "11F"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/loc/dz;->i:Lorg/json/JSONObject;

    :cond_b
    const-string v1, "13A"

    invoke-static {v2, v1}, Lcom/loc/eq;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "13A"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/loc/dz;->k:Lorg/json/JSONObject;

    :cond_c
    const-string v1, "11G"

    invoke-static {v2, v1}, Lcom/loc/eq;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "11G"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/loc/dz;->j:Lorg/json/JSONObject;

    :cond_d
    const-string v1, "001"

    invoke-static {v2, v1}, Lcom/loc/eq;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "001"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v3, Lcom/loc/ed;

    invoke-direct {v3}, Lcom/loc/ed;-><init>()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .line 2000
    if-eqz v1, :cond_e

    :try_start_7
    const-string v4, "md5"

    invoke-static {v1, v4}, Lcom/loc/dy;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "url"

    invoke-static {v1, v5}, Lcom/loc/dy;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "sdkversion"

    invoke-static {v1, v6}, Lcom/loc/dy;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6

    move-result v6

    if-eqz v6, :cond_1a

    .line 0
    :cond_e
    :goto_7
    :try_start_8
    iput-object v3, v0, Lcom/loc/dz;->o:Lcom/loc/ed;

    :cond_f
    const-string v1, "002"

    invoke-static {v2, v1}, Lcom/loc/eq;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "002"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v3, Lcom/loc/ec;

    invoke-direct {v3}, Lcom/loc/ec;-><init>()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    .line 3000
    if-eqz v1, :cond_10

    :try_start_9
    const-string v4, "md5"

    invoke-static {v1, v4}, Lcom/loc/dy;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "url"

    invoke-static {v1, v5}, Lcom/loc/dy;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v4, v3, Lcom/loc/ec;->b:Ljava/lang/String;

    iput-object v1, v3, Lcom/loc/ec;->a:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_7

    .line 0
    :cond_10
    :goto_8
    :try_start_a
    iput-object v3, v0, Lcom/loc/dz;->p:Lcom/loc/ec;

    :cond_11
    const-string v1, "006"

    invoke-static {v2, v1}, Lcom/loc/eq;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "006"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/loc/dz;->l:Lorg/json/JSONObject;

    :cond_12
    const-string v1, "010"

    invoke-static {v2, v1}, Lcom/loc/eq;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "010"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/loc/dz;->m:Lorg/json/JSONObject;

    :cond_13
    const-string v1, "11Z"

    invoke-static {v2, v1}, Lcom/loc/eq;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "11Z"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v3, Lcom/loc/eb;

    invoke-direct {v3}, Lcom/loc/eb;-><init>()V

    invoke-static {v1, v3}, Lcom/loc/dy;->a(Lorg/json/JSONObject;Lcom/loc/eb;)V

    iput-object v3, v0, Lcom/loc/dz;->q:Lcom/loc/eb;

    :cond_14
    const-string v1, "135"

    invoke-static {v2, v1}, Lcom/loc/eq;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, "135"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/loc/dz;->d:Lorg/json/JSONObject;

    :cond_15
    const-string v1, "121"

    invoke-static {v2, v1}, Lcom/loc/eq;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v1, "121"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v3, Lcom/loc/eb;

    invoke-direct {v3}, Lcom/loc/eb;-><init>()V

    invoke-static {v1, v3}, Lcom/loc/dy;->a(Lorg/json/JSONObject;Lcom/loc/eb;)V

    iput-object v3, v0, Lcom/loc/dz;->r:Lcom/loc/eb;

    :cond_16
    const-string v1, "122"

    invoke-static {v2, v1}, Lcom/loc/eq;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, "122"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v3, Lcom/loc/eb;

    invoke-direct {v3}, Lcom/loc/eb;-><init>()V

    invoke-static {v1, v3}, Lcom/loc/dy;->a(Lorg/json/JSONObject;Lcom/loc/eb;)V

    iput-object v3, v0, Lcom/loc/dz;->s:Lcom/loc/eb;

    :cond_17
    const-string v1, "123"

    invoke-static {v2, v1}, Lcom/loc/eq;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "123"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lcom/loc/eb;

    invoke-direct {v2}, Lcom/loc/eb;-><init>()V

    invoke-static {v1, v2}, Lcom/loc/dy;->a(Lorg/json/JSONObject;Lcom/loc/eb;)V

    iput-object v2, v0, Lcom/loc/dz;->t:Lcom/loc/eb;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v1

    const-string v2, "AuthConfigManager"

    const-string v3, "loadConfig"

    invoke-static {v1, v2, v3}, Lcom/loc/es;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_18
    if-nez v1, :cond_3

    const/4 v1, 0x0

    :try_start_b
    sput v1, Lcom/loc/dy;->a:I

    const-string v1, "info"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, "info"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/loc/dy;->b:Ljava/lang/String;

    :cond_19
    sget v1, Lcom/loc/dy;->a:I

    if-nez v1, :cond_3

    sget-object v1, Lcom/loc/dy;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/loc/dz;->a:Ljava/lang/String;

    goto/16 :goto_1

    :catch_4
    move-exception v1

    const-string v3, "AuthConfigManager"

    const-string v4, "loadConfigVer"

    invoke-static {v1, v3, v4}, Lcom/loc/es;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :catch_5
    move-exception v1

    const-string v3, "AuthConfigManager"

    const-string v4, "loadException"

    invoke-static {v1, v3, v4}, Lcom/loc/es;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_6

    .line 2000
    :cond_1a
    :try_start_c
    iput-object v5, v3, Lcom/loc/ed;->a:Ljava/lang/String;

    iput-object v4, v3, Lcom/loc/ed;->b:Ljava/lang/String;

    iput-object v1, v3, Lcom/loc/ed;->c:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_6

    goto/16 :goto_7

    :catch_6
    move-exception v1

    :try_start_d
    const-string v4, "ConfigManager"

    const-string v5, "parseSDKUpdate"

    invoke-static {v1, v4, v5}, Lcom/loc/es;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 3000
    :catch_7
    move-exception v1

    const-string v4, "ConfigManager"

    const-string v5, "parseSDKCoordinate"

    invoke-static {v1, v4, v5}, Lcom/loc/es;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_3

    goto/16 :goto_8

    .line 0
    :catch_8
    move-exception v1

    goto/16 :goto_4

    :catch_9
    move-exception v1

    goto/16 :goto_3

    :catch_a
    move-exception v1

    goto/16 :goto_2
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_1

    const-string v0, ""

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/loc/dx;->c(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Lorg/json/JSONObject;Lcom/loc/eb;)V
    .locals 4

    :try_start_0
    const-string v0, "m"

    invoke-static {p0, v0}, Lcom/loc/dy;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "u"

    invoke-static {p0, v1}, Lcom/loc/dy;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "v"

    invoke-static {p0, v2}, Lcom/loc/dy;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "able"

    invoke-static {p0, v3}, Lcom/loc/dy;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v0, p1, Lcom/loc/eb;->c:Ljava/lang/String;

    iput-object v1, p1, Lcom/loc/eb;->b:Ljava/lang/String;

    iput-object v2, p1, Lcom/loc/eb;->d:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v3, v0}, Lcom/loc/dy;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Lcom/loc/eb;->a:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ConfigManager"

    const-string v2, "parsePluginEntity"

    invoke-static {v0, v1, v2}, Lcom/loc/es;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Z)Z
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    rem-int/lit8 v1, v1, 0x2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v0, :cond_0

    move p1, v0

    :goto_0
    return p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
