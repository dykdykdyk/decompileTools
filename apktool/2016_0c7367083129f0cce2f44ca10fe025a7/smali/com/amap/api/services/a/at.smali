.class public Lcom/amap/api/services/a/at;
.super Ljava/lang/Object;
.source "AuthConfigManager.java"


# static fields
.field public static a:I

.field public static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, -0x1

    sput v0, Lcom/amap/api/services/a/at;->a:I

    .line 48
    const-string v0, ""

    sput-object v0, Lcom/amap/api/services/a/at;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/amap/api/services/a/ba;Ljava/lang/String;Ljava/util/Map;)Lcom/amap/api/services/a/at$a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amap/api/services/a/ba;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amap/api/services/a/at$a;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    .line 210
    .line 212
    new-instance v0, Lcom/amap/api/services/a/at$a;

    invoke-direct {v0}, Lcom/amap/api/services/a/at$a;-><init>()V

    .line 214
    :try_start_0
    new-instance v1, Lcom/amap/api/services/a/cp;

    invoke-direct {v1}, Lcom/amap/api/services/a/cp;-><init>()V

    .line 215
    new-instance v2, Lcom/amap/api/services/a/at$b;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/amap/api/services/a/at$b;-><init>(Landroid/content/Context;Lcom/amap/api/services/a/ba;Ljava/lang/String;Ljava/util/Map;)V

    .line 216
    invoke-virtual {v1, v2}, Lcom/amap/api/services/a/cp;->a(Lcom/amap/api/services/a/cv;)[B
    :try_end_0
    .catch Lcom/amap/api/services/a/ar; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 218
    const/16 v1, 0x10

    :try_start_1
    new-array v1, v1, [B

    .line 219
    array-length v4, v2

    add-int/lit8 v4, v4, -0x10

    new-array v4, v4, [B

    .line 220
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x10

    invoke-static {v2, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 221
    const/16 v5, 0x10

    const/4 v6, 0x0

    array-length v7, v2

    add-int/lit8 v7, v7, -0x10

    invoke-static {v2, v5, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    const-string v6, "AES"

    invoke-direct {v5, v1, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 223
    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 224
    new-instance v6, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {}, Lcom/amap/api/services/a/bb;->a()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 225
    const/4 v7, 0x2

    invoke-virtual {v1, v7, v5, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 226
    invoke-virtual {v1, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 227
    invoke-static {v1}, Lcom/amap/api/services/a/bb;->a([B)Ljava/lang/String;
    :try_end_1
    .catch Lcom/amap/api/services/a/ar; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v3

    move-object v1, v3

    .line 235
    :goto_0
    if-nez v2, :cond_1

    .line 414
    :cond_0
    :goto_1
    return-object v0

    .line 228
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 229
    :goto_2
    invoke-virtual {v1}, Lcom/amap/api/services/a/ar;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/services/a/at$a;->a:Ljava/lang/String;

    move-object v1, v3

    .line 234
    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v3

    :goto_3
    move-object v1, v3

    goto :goto_0

    .line 233
    :catch_2
    move-exception v1

    move-object v2, v3

    :goto_4
    const-string v4, "ConfigManager"

    const-string v5, "loadConfig"

    invoke-static {v1, v4, v5}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    goto :goto_0

    .line 239
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 240
    invoke-static {v2}, Lcom/amap/api/services/a/bb;->a([B)Ljava/lang/String;

    move-result-object v1

    .line 245
    :cond_2
    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 246
    const-string v1, "status"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    const-string v1, "status"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 248
    if-ne v1, v8, :cond_15

    .line 249
    const/4 v1, 0x1

    sput v1, Lcom/amap/api/services/a/at;->a:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    .line 263
    :cond_3
    :try_start_3
    const-string v1, "ver"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 264
    const-string v1, "ver"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/amap/api/services/a/at$a;->b:I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    .line 273
    :cond_4
    :goto_5
    :try_start_4
    const-string v1, "result"

    invoke-static {v2, v1}, Lcom/amap/api/services/a/bb;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    new-instance v1, Lcom/amap/api/services/a/at$a$a;

    invoke-direct {v1}, Lcom/amap/api/services/a/at$a$a;-><init>()V

    .line 276
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/amap/api/services/a/at$a$a;->a:Z

    .line 277
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/amap/api/services/a/at$a$a;->b:Z

    .line 278
    iput-object v1, v0, Lcom/amap/api/services/a/at$a;->m:Lcom/amap/api/services/a/at$a$a;

    .line 281
    const-string v3, "result"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 283
    const-string v3, "11K"

    invoke-static {v2, v3}, Lcom/amap/api/services/a/bb;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    move-result v3

    if-eqz v3, :cond_5

    .line 285
    :try_start_5
    const-string v3, "11K"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 286
    const-string v4, "able"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 287
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/amap/api/services/a/at;->a(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v1, Lcom/amap/api/services/a/at$a$a;->a:Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    .line 298
    :cond_5
    :goto_6
    :try_start_6
    const-string v1, "11B"

    invoke-static {v2, v1}, Lcom/amap/api/services/a/bb;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 299
    const-string v1, "11B"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/services/a/at$a;->c:Lorg/json/JSONObject;

    .line 305
    :cond_6
    const-string v1, "11C"

    invoke-static {v2, v1}, Lcom/amap/api/services/a/bb;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 306
    const-string v1, "11C"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/services/a/at$a;->d:Lorg/json/JSONObject;

    .line 310
    :cond_7
    const-string v1, "11I"

    invoke-static {v2, v1}, Lcom/amap/api/services/a/bb;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 311
    const-string v1, "11I"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/services/a/at$a;->e:Lorg/json/JSONObject;

    .line 317
    :cond_8
    const-string v1, "11H"

    invoke-static {v2, v1}, Lcom/amap/api/services/a/bb;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 318
    const-string v1, "11H"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/services/a/at$a;->f:Lorg/json/JSONObject;

    .line 322
    :cond_9
    const-string v1, "11E"

    invoke-static {v2, v1}, Lcom/amap/api/services/a/bb;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 323
    const-string v1, "11E"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/services/a/at$a;->g:Lorg/json/JSONObject;

    .line 327
    :cond_a
    const-string v1, "11F"

    invoke-static {v2, v1}, Lcom/amap/api/services/a/bb;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 328
    const-string v1, "11F"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/services/a/at$a;->h:Lorg/json/JSONObject;

    .line 332
    :cond_b
    const-string v1, "13A"

    invoke-static {v2, v1}, Lcom/amap/api/services/a/bb;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 333
    const-string v1, "13A"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/services/a/at$a;->j:Lorg/json/JSONObject;

    .line 337
    :cond_c
    const-string v1, "11G"

    invoke-static {v2, v1}, Lcom/amap/api/services/a/bb;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 338
    const-string v1, "11G"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/services/a/at$a;->i:Lorg/json/JSONObject;

    .line 342
    :cond_d
    const-string v1, "001"

    invoke-static {v2, v1}, Lcom/amap/api/services/a/bb;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 343
    const-string v1, "001"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 344
    new-instance v3, Lcom/amap/api/services/a/at$a$d;

    invoke-direct {v3}, Lcom/amap/api/services/a/at$a$d;-><init>()V

    .line 345
    invoke-static {v1, v3}, Lcom/amap/api/services/a/at;->a(Lorg/json/JSONObject;Lcom/amap/api/services/a/at$a$d;)V

    .line 346
    iput-object v3, v0, Lcom/amap/api/services/a/at$a;->n:Lcom/amap/api/services/a/at$a$d;

    .line 349
    :cond_e
    const-string v1, "002"

    invoke-static {v2, v1}, Lcom/amap/api/services/a/bb;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 350
    const-string v1, "002"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 351
    new-instance v3, Lcom/amap/api/services/a/at$a$c;

    invoke-direct {v3}, Lcom/amap/api/services/a/at$a$c;-><init>()V

    .line 352
    invoke-static {v1, v3}, Lcom/amap/api/services/a/at;->a(Lorg/json/JSONObject;Lcom/amap/api/services/a/at$a$c;)V

    .line 353
    iput-object v3, v0, Lcom/amap/api/services/a/at$a;->o:Lcom/amap/api/services/a/at$a$c;

    .line 359
    :cond_f
    const-string v1, "006"

    invoke-static {v2, v1}, Lcom/amap/api/services/a/bb;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 361
    const-string v1, "006"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 362
    iput-object v1, v0, Lcom/amap/api/services/a/at$a;->k:Lorg/json/JSONObject;

    .line 367
    :cond_10
    const-string v1, "010"

    invoke-static {v2, v1}, Lcom/amap/api/services/a/bb;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 368
    const-string v1, "010"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 369
    iput-object v1, v0, Lcom/amap/api/services/a/at$a;->l:Lorg/json/JSONObject;

    .line 373
    :cond_11
    const-string v1, "11Z"

    invoke-static {v2, v1}, Lcom/amap/api/services/a/bb;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 374
    const-string v1, "11Z"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 375
    new-instance v3, Lcom/amap/api/services/a/at$a$b;

    invoke-direct {v3}, Lcom/amap/api/services/a/at$a$b;-><init>()V

    .line 376
    invoke-static {v1, v3}, Lcom/amap/api/services/a/at;->a(Lorg/json/JSONObject;Lcom/amap/api/services/a/at$a$b;)V

    .line 377
    iput-object v3, v0, Lcom/amap/api/services/a/at$a;->p:Lcom/amap/api/services/a/at$a$b;

    .line 380
    :cond_12
    const-string v1, "121"

    invoke-static {v2, v1}, Lcom/amap/api/services/a/bb;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 381
    const-string v1, "121"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 382
    new-instance v3, Lcom/amap/api/services/a/at$a$b;

    invoke-direct {v3}, Lcom/amap/api/services/a/at$a$b;-><init>()V

    .line 383
    invoke-static {v1, v3}, Lcom/amap/api/services/a/at;->a(Lorg/json/JSONObject;Lcom/amap/api/services/a/at$a$b;)V

    .line 384
    iput-object v3, v0, Lcom/amap/api/services/a/at$a;->q:Lcom/amap/api/services/a/at$a$b;

    .line 386
    :cond_13
    const-string v1, "122"

    invoke-static {v2, v1}, Lcom/amap/api/services/a/bb;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 387
    const-string v1, "122"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 388
    new-instance v3, Lcom/amap/api/services/a/at$a$b;

    invoke-direct {v3}, Lcom/amap/api/services/a/at$a$b;-><init>()V

    .line 389
    invoke-static {v1, v3}, Lcom/amap/api/services/a/at;->a(Lorg/json/JSONObject;Lcom/amap/api/services/a/at$a$b;)V

    .line 390
    iput-object v3, v0, Lcom/amap/api/services/a/at$a;->r:Lcom/amap/api/services/a/at$a$b;

    .line 393
    :cond_14
    const-string v1, "123"

    invoke-static {v2, v1}, Lcom/amap/api/services/a/bb;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 394
    const-string v1, "123"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 395
    new-instance v2, Lcom/amap/api/services/a/at$a$b;

    invoke-direct {v2}, Lcom/amap/api/services/a/at$a$b;-><init>()V

    .line 396
    invoke-static {v1, v2}, Lcom/amap/api/services/a/at;->a(Lorg/json/JSONObject;Lcom/amap/api/services/a/at$a$b;)V

    .line 397
    iput-object v2, v0, Lcom/amap/api/services/a/at$a;->s:Lcom/amap/api/services/a/at$a$b;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_1

    .line 409
    :catch_3
    move-exception v1

    const-string v2, "AuthConfigManager"

    const-string v3, "loadConfig"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 251
    :cond_15
    if-nez v1, :cond_3

    .line 252
    const/4 v1, 0x0

    :try_start_7
    sput v1, Lcom/amap/api/services/a/at;->a:I

    .line 253
    const-string v1, "info"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 254
    const-string v1, "info"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amap/api/services/a/at;->b:Ljava/lang/String;

    .line 256
    :cond_16
    sget v1, Lcom/amap/api/services/a/at;->a:I

    if-nez v1, :cond_3

    .line 257
    sget-object v1, Lcom/amap/api/services/a/at;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/amap/api/services/a/at$a;->a:Ljava/lang/String;

    goto/16 :goto_1

    .line 269
    :catch_4
    move-exception v1

    const-string v3, "AuthConfigManager"

    const-string v4, "loadConfigVer"

    invoke-static {v1, v3, v4}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 290
    :catch_5
    move-exception v1

    const-string v3, "AuthConfigManager"

    const-string v4, "loadException"

    invoke-static {v1, v3, v4}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_6

    .line 233
    :catch_6
    move-exception v1

    goto/16 :goto_4

    .line 234
    :catch_7
    move-exception v1

    goto/16 :goto_3

    .line 228
    :catch_8
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
    .line 433
    if-nez p0, :cond_1

    .line 434
    const-string v0, ""

    .line 440
    :cond_0
    :goto_0
    return-object v0

    .line 436
    :cond_1
    const-string v0, ""

    .line 437
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 438
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;Lcom/amap/api/services/a/at$a$b;)V
    .locals 4

    .prologue
    .line 444
    if-eqz p1, :cond_0

    .line 445
    :try_start_0
    const-string v0, "m"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/at;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 446
    const-string v1, "u"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/at;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 447
    const-string v2, "v"

    invoke-static {p0, v2}, Lcom/amap/api/services/a/at;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 448
    const-string v3, "able"

    invoke-static {p0, v3}, Lcom/amap/api/services/a/at;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 449
    iput-object v0, p1, Lcom/amap/api/services/a/at$a$b;->c:Ljava/lang/String;

    .line 450
    iput-object v1, p1, Lcom/amap/api/services/a/at$a$b;->b:Ljava/lang/String;

    .line 451
    iput-object v2, p1, Lcom/amap/api/services/a/at$a$b;->d:Ljava/lang/String;

    .line 452
    const/4 v0, 0x0

    invoke-static {v3, v0}, Lcom/amap/api/services/a/at;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Lcom/amap/api/services/a/at$a$b;->a:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 456
    :catch_0
    move-exception v0

    const-string v1, "ConfigManager"

    const-string v2, "parsePluginEntity"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;Lcom/amap/api/services/a/at$a$c;)V
    .locals 3

    .prologue
    .line 463
    if-eqz p0, :cond_0

    .line 465
    :try_start_0
    const-string v0, "md5"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/at;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 467
    const-string v1, "url"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/at;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 468
    iput-object v0, p1, Lcom/amap/api/services/a/at$a$c;->b:Ljava/lang/String;

    .line 469
    iput-object v1, p1, Lcom/amap/api/services/a/at$a$c;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    :cond_0
    :goto_0
    return-void

    .line 472
    :catch_0
    move-exception v0

    const-string v1, "ConfigManager"

    const-string v2, "parseSDKCoordinate"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;Lcom/amap/api/services/a/at$a$d;)V
    .locals 4

    .prologue
    .line 480
    if-eqz p0, :cond_0

    .line 482
    :try_start_0
    const-string v0, "md5"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/at;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 483
    const-string v1, "url"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/at;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 484
    const-string v2, "sdkversion"

    invoke-static {p0, v2}, Lcom/amap/api/services/a/at;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 486
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 487
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 490
    :cond_1
    iput-object v1, p1, Lcom/amap/api/services/a/at$a$d;->a:Ljava/lang/String;

    .line 491
    iput-object v0, p1, Lcom/amap/api/services/a/at$a$d;->b:Ljava/lang/String;

    .line 492
    iput-object v2, p1, Lcom/amap/api/services/a/at$a$d;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 499
    :catch_0
    move-exception v0

    const-string v1, "ConfigManager"

    const-string v2, "parseSDKUpdate"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 188
    :try_start_0
    invoke-static {p0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 189
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 190
    array-length v2, v1

    .line 191
    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    .line 192
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 193
    rem-int/lit8 v1, v1, 0x2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v0, :cond_0

    move p1, v0

    .line 195
    :goto_0
    return p1

    .line 193
    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    .line 195
    :catch_0
    move-exception v0

    goto :goto_0
.end method
