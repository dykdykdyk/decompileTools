.class public Lcom/amap/api/mapcore2d/cn;
.super Ljava/lang/Object;
.source "AuthConfigManager.java"


# static fields
.field public static a:I

.field public static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, -0x1

    sput v0, Lcom/amap/api/mapcore2d/cn;->a:I

    .line 49
    const-string v0, ""

    sput-object v0, Lcom/amap/api/mapcore2d/cn;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/amap/api/mapcore2d/cv;Ljava/lang/String;Ljava/util/Map;)Lcom/amap/api/mapcore2d/cn$a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amap/api/mapcore2d/cv;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amap/api/mapcore2d/cn$a;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    .line 179
    .line 181
    new-instance v0, Lcom/amap/api/mapcore2d/cn$a;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/cn$a;-><init>()V

    .line 183
    :try_start_0
    new-instance v1, Lcom/amap/api/mapcore2d/ea;

    invoke-direct {v1}, Lcom/amap/api/mapcore2d/ea;-><init>()V

    .line 184
    new-instance v2, Lcom/amap/api/mapcore2d/cn$b;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/amap/api/mapcore2d/cn$b;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/cv;Ljava/lang/String;Ljava/util/Map;)V

    .line 185
    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore2d/ea;->a(Lcom/amap/api/mapcore2d/eg;)[B
    :try_end_0
    .catch Lcom/amap/api/mapcore2d/cl; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 187
    const/16 v1, 0x10

    :try_start_1
    new-array v1, v1, [B

    .line 188
    array-length v4, v2

    add-int/lit8 v4, v4, -0x10

    new-array v4, v4, [B

    .line 189
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x10

    invoke-static {v2, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    const/16 v5, 0x10

    const/4 v6, 0x0

    array-length v7, v2

    add-int/lit8 v7, v7, -0x10

    invoke-static {v2, v5, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    const-string v6, "AES"

    invoke-direct {v5, v1, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 192
    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 193
    new-instance v6, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {}, Lcom/amap/api/mapcore2d/cw;->a()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 194
    const/4 v7, 0x2

    invoke-virtual {v1, v7, v5, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 195
    invoke-virtual {v1, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 196
    invoke-static {v1}, Lcom/amap/api/mapcore2d/cw;->a([B)Ljava/lang/String;
    :try_end_1
    .catch Lcom/amap/api/mapcore2d/cl; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v3

    move-object v1, v3

    .line 204
    :goto_0
    if-nez v2, :cond_1

    .line 345
    :cond_0
    :goto_1
    return-object v0

    .line 197
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 198
    :goto_2
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/cl;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/mapcore2d/cn$a;->a:Ljava/lang/String;

    move-object v1, v3

    .line 203
    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v3

    :goto_3
    move-object v1, v3

    goto :goto_0

    .line 202
    :catch_2
    move-exception v1

    move-object v2, v3

    :goto_4
    const-string v4, "ConfigManager"

    const-string v5, "loadConfig"

    invoke-static {v1, v4, v5}, Lcom/amap/api/mapcore2d/da;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    goto :goto_0

    .line 208
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 209
    invoke-static {v2}, Lcom/amap/api/mapcore2d/cw;->a([B)Ljava/lang/String;

    move-result-object v1

    .line 214
    :cond_2
    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 215
    const-string v1, "status"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    const-string v1, "status"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 217
    if-ne v1, v8, :cond_10

    .line 218
    const/4 v1, 0x1

    sput v1, Lcom/amap/api/mapcore2d/cn;->a:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    .line 232
    :cond_3
    :try_start_3
    const-string v1, "ver"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 233
    const-string v1, "ver"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/amap/api/mapcore2d/cn$a;->b:I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    .line 242
    :cond_4
    :goto_5
    :try_start_4
    const-string v1, "result"

    invoke-static {v2, v1}, Lcom/amap/api/mapcore2d/cw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    new-instance v1, Lcom/amap/api/mapcore2d/cn$a$a;

    invoke-direct {v1}, Lcom/amap/api/mapcore2d/cn$a$a;-><init>()V

    .line 245
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/amap/api/mapcore2d/cn$a$a;->a:Z

    .line 246
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/amap/api/mapcore2d/cn$a$a;->b:Z

    .line 247
    iput-object v1, v0, Lcom/amap/api/mapcore2d/cn$a;->l:Lcom/amap/api/mapcore2d/cn$a$a;

    .line 250
    const-string v3, "result"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 252
    const-string v3, "11K"

    invoke-static {v2, v3}, Lcom/amap/api/mapcore2d/cw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 253
    const-string v3, "11K"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 254
    const-string v4, "able"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 255
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/amap/api/mapcore2d/cn;->a(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v1, Lcom/amap/api/mapcore2d/cn$a$a;->a:Z

    .line 263
    :cond_5
    const-string v1, "11B"

    invoke-static {v2, v1}, Lcom/amap/api/mapcore2d/cw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 264
    const-string v1, "11B"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/mapcore2d/cn$a;->c:Lorg/json/JSONObject;

    .line 270
    :cond_6
    const-string v1, "11C"

    invoke-static {v2, v1}, Lcom/amap/api/mapcore2d/cw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 271
    const-string v1, "11C"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/mapcore2d/cn$a;->d:Lorg/json/JSONObject;

    .line 275
    :cond_7
    const-string v1, "11I"

    invoke-static {v2, v1}, Lcom/amap/api/mapcore2d/cw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 276
    const-string v1, "11I"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/mapcore2d/cn$a;->e:Lorg/json/JSONObject;

    .line 282
    :cond_8
    const-string v1, "11H"

    invoke-static {v2, v1}, Lcom/amap/api/mapcore2d/cw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 283
    const-string v1, "11H"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/mapcore2d/cn$a;->f:Lorg/json/JSONObject;

    .line 287
    :cond_9
    const-string v1, "11E"

    invoke-static {v2, v1}, Lcom/amap/api/mapcore2d/cw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 288
    const-string v1, "11E"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/mapcore2d/cn$a;->g:Lorg/json/JSONObject;

    .line 292
    :cond_a
    const-string v1, "11F"

    invoke-static {v2, v1}, Lcom/amap/api/mapcore2d/cw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 293
    const-string v1, "11F"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/mapcore2d/cn$a;->h:Lorg/json/JSONObject;

    .line 297
    :cond_b
    const-string v1, "11G"

    invoke-static {v2, v1}, Lcom/amap/api/mapcore2d/cw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 298
    const-string v1, "11G"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/mapcore2d/cn$a;->i:Lorg/json/JSONObject;

    .line 302
    :cond_c
    const-string v1, "001"

    invoke-static {v2, v1}, Lcom/amap/api/mapcore2d/cw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 303
    const-string v1, "001"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 304
    new-instance v3, Lcom/amap/api/mapcore2d/cn$a$c;

    invoke-direct {v3}, Lcom/amap/api/mapcore2d/cn$a$c;-><init>()V

    .line 305
    invoke-static {v1, v3}, Lcom/amap/api/mapcore2d/cn;->a(Lorg/json/JSONObject;Lcom/amap/api/mapcore2d/cn$a$c;)V

    .line 306
    iput-object v3, v0, Lcom/amap/api/mapcore2d/cn$a;->m:Lcom/amap/api/mapcore2d/cn$a$c;

    .line 309
    :cond_d
    const-string v1, "002"

    invoke-static {v2, v1}, Lcom/amap/api/mapcore2d/cw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 310
    const-string v1, "002"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 311
    new-instance v3, Lcom/amap/api/mapcore2d/cn$a$b;

    invoke-direct {v3}, Lcom/amap/api/mapcore2d/cn$a$b;-><init>()V

    .line 312
    invoke-static {v1, v3}, Lcom/amap/api/mapcore2d/cn;->a(Lorg/json/JSONObject;Lcom/amap/api/mapcore2d/cn$a$b;)V

    .line 313
    iput-object v3, v0, Lcom/amap/api/mapcore2d/cn$a;->n:Lcom/amap/api/mapcore2d/cn$a$b;

    .line 319
    :cond_e
    const-string v1, "006"

    invoke-static {v2, v1}, Lcom/amap/api/mapcore2d/cw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 321
    const-string v1, "006"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 322
    iput-object v1, v0, Lcom/amap/api/mapcore2d/cn$a;->j:Lorg/json/JSONObject;

    .line 327
    :cond_f
    const-string v1, "010"

    invoke-static {v2, v1}, Lcom/amap/api/mapcore2d/cw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    const-string v1, "010"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 329
    iput-object v1, v0, Lcom/amap/api/mapcore2d/cn$a;->k:Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_1

    .line 340
    :catch_3
    move-exception v1

    const-string v2, "AuthConfigManager"

    const-string v3, "loadConfig"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore2d/da;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 220
    :cond_10
    if-nez v1, :cond_3

    .line 221
    const/4 v1, 0x0

    :try_start_5
    sput v1, Lcom/amap/api/mapcore2d/cn;->a:I

    .line 222
    const-string v1, "info"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 223
    const-string v1, "info"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amap/api/mapcore2d/cn;->b:Ljava/lang/String;

    .line 225
    :cond_11
    sget v1, Lcom/amap/api/mapcore2d/cn;->a:I

    if-nez v1, :cond_3

    .line 226
    sget-object v1, Lcom/amap/api/mapcore2d/cn;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/amap/api/mapcore2d/cn$a;->a:Ljava/lang/String;

    goto/16 :goto_1

    .line 238
    :catch_4
    move-exception v1

    const-string v3, "AuthConfigManager"

    const-string v4, "loadConfigVer"

    invoke-static {v1, v3, v4}, Lcom/amap/api/mapcore2d/da;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_5

    .line 202
    :catch_5
    move-exception v1

    goto/16 :goto_4

    .line 203
    :catch_6
    move-exception v1

    goto/16 :goto_3

    .line 197
    :catch_7
    move-exception v1

    goto/16 :goto_2
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 364
    if-nez p0, :cond_1

    .line 365
    const-string v0, ""

    .line 371
    :cond_0
    :goto_0
    return-object v0

    .line 367
    :cond_1
    const-string v0, ""

    .line 368
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 369
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;Lcom/amap/api/mapcore2d/cn$a$b;)V
    .locals 3

    .prologue
    .line 377
    if-eqz p0, :cond_0

    .line 379
    :try_start_0
    const-string v0, "md5"

    invoke-static {p0, v0}, Lcom/amap/api/mapcore2d/cn;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 381
    const-string v1, "url"

    invoke-static {p0, v1}, Lcom/amap/api/mapcore2d/cn;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 382
    iput-object v0, p1, Lcom/amap/api/mapcore2d/cn$a$b;->b:Ljava/lang/String;

    .line 383
    iput-object v1, p1, Lcom/amap/api/mapcore2d/cn$a$b;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 386
    :catch_0
    move-exception v0

    const-string v1, "ConfigManager"

    const-string v2, "parseSDKCoordinate"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/da;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;Lcom/amap/api/mapcore2d/cn$a$c;)V
    .locals 4

    .prologue
    .line 394
    if-eqz p0, :cond_0

    .line 396
    :try_start_0
    const-string v0, "md5"

    invoke-static {p0, v0}, Lcom/amap/api/mapcore2d/cn;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 397
    const-string v1, "url"

    invoke-static {p0, v1}, Lcom/amap/api/mapcore2d/cn;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 398
    const-string v2, "sdkversion"

    invoke-static {p0, v2}, Lcom/amap/api/mapcore2d/cn;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 400
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 401
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    iput-object v1, p1, Lcom/amap/api/mapcore2d/cn$a$c;->a:Ljava/lang/String;

    .line 405
    iput-object v0, p1, Lcom/amap/api/mapcore2d/cn$a$c;->b:Ljava/lang/String;

    .line 406
    iput-object v2, p1, Lcom/amap/api/mapcore2d/cn$a$c;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 413
    :catch_0
    move-exception v0

    const-string v1, "ConfigManager"

    const-string v2, "parseSDKUpdate"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/da;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 157
    :try_start_0
    invoke-static {p0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 159
    array-length v2, v1

    .line 160
    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    .line 161
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 162
    rem-int/lit8 v1, v1, 0x2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v0, :cond_0

    move p1, v0

    .line 164
    :goto_0
    return p1

    .line 162
    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    goto :goto_0
.end method
