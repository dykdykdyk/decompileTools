.class public Lcom/amap/api/services/a/cf;
.super Ljava/lang/Object;
.source "DexFileManager.java"


# direct methods
.method static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pngex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    return-object v0
.end method

.method static a(Landroid/content/Context;Lcom/amap/api/services/a/bm;Lcom/amap/api/services/a/ba;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 426
    .line 429
    invoke-virtual {p2}, Lcom/amap/api/services/a/ba;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "copy"

    invoke-static {v0, v1}, Lcom/amap/api/services/a/cj;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/amap/api/services/a/cj;

    .line 428
    invoke-virtual {p1, v0, v1}, Lcom/amap/api/services/a/bm;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v9

    .line 431
    if-eqz v9, :cond_0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v8

    .line 476
    :goto_0
    return-object v0

    .line 434
    :cond_1
    invoke-static {v9}, Lcom/amap/api/services/a/cf;->a(Ljava/util/List;)V

    .line 435
    const/4 v0, 0x0

    move v7, v0

    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_3

    .line 436
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/amap/api/services/a/cj;

    .line 439
    invoke-virtual {v6}, Lcom/amap/api/services/a/cj;->a()Ljava/lang/String;

    move-result-object v0

    .line 438
    invoke-static {p0, p1, v0, p2}, Lcom/amap/api/services/a/cf;->a(Landroid/content/Context;Lcom/amap/api/services/a/bm;Ljava/lang/String;Lcom/amap/api/services/a/ba;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 442
    :try_start_0
    new-instance v0, Lcom/amap/api/services/a/cj$a;

    .line 443
    invoke-virtual {p2}, Lcom/amap/api/services/a/ba;->a()Ljava/lang/String;

    move-result-object v1

    .line 444
    invoke-virtual {p2}, Lcom/amap/api/services/a/ba;->b()Ljava/lang/String;

    move-result-object v2

    .line 443
    invoke-static {p0, v1, v2}, Lcom/amap/api/services/a/cf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 445
    invoke-virtual {v6}, Lcom/amap/api/services/a/cj;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/amap/api/services/a/ba;->a()Ljava/lang/String;

    move-result-object v3

    .line 446
    invoke-virtual {p2}, Lcom/amap/api/services/a/ba;->b()Ljava/lang/String;

    move-result-object v4

    .line 447
    invoke-virtual {v6}, Lcom/amap/api/services/a/cj;->d()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/services/a/cj$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "used"

    invoke-virtual {v0, v1}, Lcom/amap/api/services/a/cj$a;->a(Ljava/lang/String;)Lcom/amap/api/services/a/cj$a;

    move-result-object v0

    .line 448
    invoke-virtual {v0}, Lcom/amap/api/services/a/cj$a;->a()Lcom/amap/api/services/a/cj;

    move-result-object v0

    .line 456
    invoke-virtual {v6}, Lcom/amap/api/services/a/cj;->a()Ljava/lang/String;

    move-result-object v1

    .line 455
    invoke-static {p0, v1}, Lcom/amap/api/services/a/cf;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 450
    invoke-static {p0, p1, p2, v0, v1}, Lcom/amap/api/services/a/cf;->a(Landroid/content/Context;Lcom/amap/api/services/a/bm;Lcom/amap/api/services/a/ba;Lcom/amap/api/services/a/cj;Ljava/lang/String;)V

    .line 457
    invoke-virtual {v6}, Lcom/amap/api/services/a/cj;->d()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 465
    :catch_0
    move-exception v0

    const-string v1, "DexFileManager"

    const-string v2, "loadAvailableDynamicSDKFile"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    :goto_2
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    .line 472
    :cond_2
    invoke-virtual {v6}, Lcom/amap/api/services/a/cj;->a()Ljava/lang/String;

    move-result-object v0

    .line 471
    invoke-static {p0, p1, v0}, Lcom/amap/api/services/a/cf;->b(Landroid/content/Context;Lcom/amap/api/services/a/bm;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move-object v0, v8

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 108
    invoke-static {p0}, Lcom/amap/api/services/a/aw;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/a/ay;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".o"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/content/Context;Lcom/amap/api/services/a/bm;Lcom/amap/api/services/a/ba;Lcom/amap/api/services/a/cj;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 330
    .line 333
    :try_start_0
    invoke-virtual {p2}, Lcom/amap/api/services/a/ba;->a()Ljava/lang/String;

    move-result-object v0

    .line 336
    invoke-virtual {p3}, Lcom/amap/api/services/a/cj;->a()Ljava/lang/String;

    move-result-object v1

    .line 335
    invoke-static {p0, p1, v1}, Lcom/amap/api/services/a/cf;->a(Landroid/content/Context;Lcom/amap/api/services/a/bm;Ljava/lang/String;)V

    .line 338
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 339
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 340
    const/16 v1, 0x20

    :try_start_1
    new-array v1, v1, [B

    .line 341
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    .line 342
    new-instance v4, Ljava/io/File;

    .line 343
    invoke-virtual {p2}, Lcom/amap/api/services/a/ba;->b()Ljava/lang/String;

    move-result-object v1

    .line 342
    invoke-static {p0, v0, v1}, Lcom/amap/api/services/a/cf;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 344
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v0, 0x1

    invoke-direct {v1, v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 345
    const/16 v0, 0x400

    :try_start_2
    new-array v0, v0, [B

    .line 347
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_2

    .line 348
    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_0

    .line 359
    :catch_0
    move-exception v0

    move-object v2, v3

    :goto_1
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 361
    :catchall_0
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    :goto_2
    if-eqz v3, :cond_0

    .line 363
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 371
    :cond_0
    :goto_3
    if-eqz v2, :cond_1

    .line 373
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 380
    :cond_1
    :goto_4
    throw v0

    .line 350
    :cond_2
    :try_start_6
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/a/ay;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 351
    invoke-virtual {p3, v0}, Lcom/amap/api/services/a/cj;->d(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p3}, Lcom/amap/api/services/a/cj;->a()Ljava/lang/String;

    move-result-object v0

    .line 353
    invoke-static {v0}, Lcom/amap/api/services/a/cj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 352
    invoke-static {p1, p3, v0}, Lcom/amap/api/services/a/cf$a;->a(Lcom/amap/api/services/a/bm;Lcom/amap/api/services/a/cj;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 363
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 373
    :goto_5
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 380
    :goto_6
    return-void

    .line 368
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 378
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 368
    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 378
    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 361
    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v2, v1

    goto :goto_2

    .line 359
    :catch_5
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catch_6
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_1
.end method

.method static a(Landroid/content/Context;Lcom/amap/api/services/a/bm;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 195
    invoke-static {p0, p1, p2}, Lcom/amap/api/services/a/cf;->b(Landroid/content/Context;Lcom/amap/api/services/a/bm;Ljava/lang/String;)V

    .line 197
    invoke-static {p2}, Lcom/amap/api/services/a/cf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/amap/api/services/a/cf;->b(Landroid/content/Context;Lcom/amap/api/services/a/bm;Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 124
    new-instance v2, Lcom/amap/api/services/a/bm;

    invoke-static {}, Lcom/amap/api/services/a/ci;->c()Lcom/amap/api/services/a/ci;

    move-result-object v1

    invoke-direct {v2, p0, v1}, Lcom/amap/api/services/a/bm;-><init>(Landroid/content/Context;Lcom/amap/api/services/a/bl;)V

    .line 125
    const-string v1, "copy"

    invoke-static {v2, p1, v1}, Lcom/amap/api/services/a/cf$a;->a(Lcom/amap/api/services/a/bm;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 126
    invoke-static {v3}, Lcom/amap/api/services/a/cf;->a(Ljava/util/List;)V

    .line 128
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 129
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v1, v0

    .line 131
    :goto_0
    if-ge v1, v4, :cond_0

    .line 132
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/a/cj;

    .line 133
    invoke-virtual {v0}, Lcom/amap/api/services/a/cj;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lcom/amap/api/services/a/cf;->b(Landroid/content/Context;Lcom/amap/api/services/a/bm;Ljava/lang/String;)V

    .line 131
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 137
    :cond_0
    return-void
.end method

.method public static a(Lcom/amap/api/services/a/bm;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 277
    const-string v0, "used"

    invoke-static {p0, p2, v0}, Lcom/amap/api/services/a/cf$a;->a(Lcom/amap/api/services/a/bm;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 280
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 281
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/a/cj;

    .line 282
    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {v0}, Lcom/amap/api/services/a/cj;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p0, v2}, Lcom/amap/api/services/a/cf;->a(Landroid/content/Context;Lcom/amap/api/services/a/bm;Ljava/lang/String;)V

    .line 288
    invoke-virtual {v0}, Lcom/amap/api/services/a/cj;->d()Ljava/lang/String;

    move-result-object v0

    .line 287
    invoke-static {p2, v0}, Lcom/amap/api/services/a/cj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/amap/api/services/a/cj;

    invoke-virtual {p0, v0, v2}, Lcom/amap/api/services/a/bm;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 290
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 291
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/a/cj;

    .line 292
    const-string v2, "errorstatus"

    invoke-virtual {v0, v2}, Lcom/amap/api/services/a/cj;->c(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v0}, Lcom/amap/api/services/a/cj;->a()Ljava/lang/String;

    move-result-object v2

    .line 295
    invoke-static {v2}, Lcom/amap/api/services/a/cj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 293
    invoke-static {p0, v0, v2}, Lcom/amap/api/services/a/cf$a;->a(Lcom/amap/api/services/a/bm;Lcom/amap/api/services/a/cj;Ljava/lang/String;)V

    .line 298
    invoke-virtual {v0}, Lcom/amap/api/services/a/cj;->a()Ljava/lang/String;

    move-result-object v0

    .line 297
    invoke-static {p1, v0}, Lcom/amap/api/services/a/cf;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 299
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 311
    :cond_1
    return-void
.end method

.method static a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/a/cj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 486
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_2

    .line 487
    add-int/lit8 v0, v2, 0x1

    move v3, v0

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 488
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/a/cj;

    .line 489
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/a/cj;

    .line 491
    invoke-virtual {v0}, Lcom/amap/api/services/a/cj;->d()Ljava/lang/String;

    move-result-object v4

    .line 492
    invoke-virtual {v1}, Lcom/amap/api/services/a/cj;->d()Ljava/lang/String;

    move-result-object v5

    .line 494
    invoke-static {v5, v4}, Lcom/amap/api/services/a/ck;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    .line 495
    invoke-interface {p0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 496
    invoke-interface {p0, v3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 487
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 486
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 502
    :cond_2
    return-void
.end method

.method static a(Landroid/content/Context;Lcom/amap/api/services/a/bm;Ljava/lang/String;Lcom/amap/api/services/a/ba;)Z
    .locals 1

    .prologue
    .line 389
    .line 390
    invoke-static {p0, p2}, Lcom/amap/api/services/a/cf;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 389
    invoke-static {p1, p2, v0, p3}, Lcom/amap/api/services/a/cf;->a(Lcom/amap/api/services/a/bm;Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/services/a/ba;)Z

    move-result v0

    return v0
.end method

.method static a(Lcom/amap/api/services/a/bm;Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/services/a/ba;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 395
    invoke-static {p0, p1}, Lcom/amap/api/services/a/cf$a;->a(Lcom/amap/api/services/a/bm;Ljava/lang/String;)Lcom/amap/api/services/a/cj;

    move-result-object v1

    .line 396
    if-eqz v1, :cond_0

    .line 398
    invoke-virtual {p3}, Lcom/amap/api/services/a/ba;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amap/api/services/a/cj;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 415
    :cond_0
    :goto_0
    return v0

    .line 402
    :cond_1
    invoke-virtual {v1}, Lcom/amap/api/services/a/cj;->b()Ljava/lang/String;

    move-result-object v1

    .line 401
    invoke-static {p2, v1}, Lcom/amap/api/services/a/cf;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 403
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 173
    invoke-static {p0}, Lcom/amap/api/services/a/ay;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 179
    :cond_0
    const/4 v0, 0x0

    .line 181
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/amap/api/services/a/cf;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    invoke-static {p0, p1, p2}, Lcom/amap/api/services/a/cf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amap/api/services/a/cf;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static b(Landroid/content/Context;Lcom/amap/api/services/a/bm;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 210
    invoke-static {p0, p2}, Lcom/amap/api/services/a/cf;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 216
    :cond_0
    invoke-static {p2}, Lcom/amap/api/services/a/cj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/amap/api/services/a/cj;

    invoke-virtual {p1, v0, v1}, Lcom/amap/api/services/a/bm;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 218
    return-void
.end method

.method static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 230
    new-instance v0, Lcom/amap/api/services/a/cf$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/amap/api/services/a/cf$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-virtual {v0}, Lcom/amap/api/services/a/cf$1;->start()V

    .line 261
    return-void
.end method
