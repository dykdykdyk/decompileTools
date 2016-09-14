.class public abstract Lcom/amap/api/services/a/bk;
.super Ljava/lang/Object;
.source "LogProcessor.java"


# instance fields
.field private a:Lcom/amap/api/services/a/ba;

.field private b:I

.field private c:Lcom/amap/api/services/a/cm;

.field private d:Lcom/amap/api/services/a/cl;


# direct methods
.method protected constructor <init>(I)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/amap/api/services/a/bk;->b:I

    .line 47
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/amap/api/services/a/ba;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/services/a/aw;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 177
    const-string v2, "\"sim\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\"sdkversion\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/services/a/ba;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\"product\":\""

    .line 178
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/services/a/ba;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\"ed\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 179
    invoke-virtual {p1}, Lcom/amap/api/services/a/ba;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\"nt\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 180
    invoke-static {p0}, Lcom/amap/api/services/a/aw;->c(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\"np\":\""

    .line 182
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/amap/api/services/a/aw;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\"mnc\":\""

    .line 183
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/amap/api/services/a/aw;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\"ant\":\""

    .line 186
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/amap/api/services/a/aw;->d(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 188
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 332
    const/4 v0, 0x0

    .line 334
    :try_start_0
    invoke-static {p2}, Lcom/amap/api/services/a/bb;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 335
    invoke-static {p1, v1}, Lcom/amap/api/services/a/av;->e(Landroid/content/Context;[B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 339
    :goto_0
    return-object v0

    .line 337
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 316
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 317
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ",\"timestamp\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 318
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 319
    const-string v1, "\",\"et\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 320
    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 321
    const-string v1, "\",\"classname\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 322
    invoke-virtual {v0, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 323
    const-string v1, "\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 324
    const-string v1, "\"detail\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 325
    invoke-virtual {v0, p6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 326
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 328
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/List;Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/amap/api/services/a/bv;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 654
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 655
    const-string v0, "{\"pinfo\":\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/amap/api/services/a/bk;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"els\":["

    .line 656
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    const/4 v0, 0x1

    .line 658
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/a/bv;

    .line 659
    invoke-virtual {v0}, Lcom/amap/api/services/a/bv;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/amap/api/services/a/bk;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 663
    if-eqz v4, :cond_0

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 666
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "||"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/amap/api/services/a/bv;->c()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 667
    if-eqz v1, :cond_1

    .line 668
    const/4 v1, 0x0

    .line 672
    :goto_1
    const-string v4, "{\"log\":\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\"}"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    move v0, v1

    move v1, v0

    .line 674
    goto :goto_0

    .line 670
    :cond_1
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 675
    :cond_2
    if-eqz v1, :cond_3

    .line 676
    const/4 v0, 0x0

    .line 679
    :goto_2
    return-object v0

    .line 678
    :cond_3
    const-string v0, "]}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private a(Lcom/amap/api/services/a/bu;I)V
    .locals 3

    .prologue
    .line 540
    const/4 v0, 0x2

    .line 541
    :try_start_0
    invoke-static {p2}, Lcom/amap/api/services/a/be;->a(I)Ljava/lang/Class;

    move-result-object v1

    .line 540
    invoke-virtual {p1, v0, v1}, Lcom/amap/api/services/a/bu;->a(ILjava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 542
    invoke-direct {p0, v0, p1, p2}, Lcom/amap/api/services/a/bk;->a(Ljava/util/List;Lcom/amap/api/services/a/bu;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    :goto_0
    return-void

    .line 545
    :catch_0
    move-exception v0

    const-string v1, "LogProcessor"

    const-string v2, "processDeleteFail"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/amap/api/services/a/bu;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 2

    .prologue
    .line 256
    invoke-static {p4}, Lcom/amap/api/services/a/be;->b(I)Lcom/amap/api/services/a/bv;

    move-result-object v0

    .line 258
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/services/a/bv;->a(I)V

    .line 260
    invoke-virtual {v0, p2}, Lcom/amap/api/services/a/bv;->b(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v0, p3}, Lcom/amap/api/services/a/bv;->a(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p1, v0}, Lcom/amap/api/services/a/bu;->a(Lcom/amap/api/services/a/bv;)V

    .line 264
    return-void
.end method

.method private a(Ljava/util/List;Lcom/amap/api/services/a/bu;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/amap/api/services/a/bv;",
            ">;",
            "Lcom/amap/api/services/a/bu;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 593
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 594
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/a/bv;

    .line 595
    invoke-virtual {v0}, Lcom/amap/api/services/a/bv;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amap/api/services/a/bk;->b(Ljava/lang/String;)Z

    move-result v2

    .line 596
    if-eqz v2, :cond_0

    .line 597
    invoke-virtual {v0}, Lcom/amap/api/services/a/bv;->b()Ljava/lang/String;

    move-result-object v2

    .line 598
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 597
    invoke-virtual {p2, v2, v0}, Lcom/amap/api/services/a/bu;->a(Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0

    .line 600
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/a/bv;->a(I)V

    .line 602
    invoke-virtual {p2, v0}, Lcom/amap/api/services/a/bu;->b(Lcom/amap/api/services/a/bv;)V

    goto :goto_0

    .line 608
    :cond_1
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/services/a/bu;)Z
    .locals 8

    .prologue
    .line 373
    const/4 v3, 0x0

    .line 374
    const/4 v2, 0x0

    .line 375
    const/4 v1, 0x0

    .line 377
    :try_start_0
    invoke-static {p1, p3}, Lcom/amap/api/services/a/be;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 378
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 379
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 380
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 407
    if-eqz v3, :cond_0

    .line 409
    :try_start_1
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_b

    .line 414
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 416
    :try_start_2
    invoke-virtual {v1}, Lcom/amap/api/services/a/cl$b;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_c

    .line 421
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/amap/api/services/a/cl;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 423
    :try_start_3
    invoke-virtual {v2}, Lcom/amap/api/services/a/cl;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_d

    .line 381
    :cond_2
    :goto_2
    const/4 v0, 0x0

    .line 429
    :goto_3
    return v0

    .line 384
    :cond_3
    const/4 v0, 0x1

    const/4 v5, 0x1

    const-wide/16 v6, 0x5000

    :try_start_4
    invoke-static {v4, v0, v5, v6, v7}, Lcom/amap/api/services/a/cl;->a(Ljava/io/File;IIJ)Lcom/amap/api/services/a/cl;

    move-result-object v2

    .line 385
    invoke-virtual {p0, p5}, Lcom/amap/api/services/a/bk;->a(Lcom/amap/api/services/a/bu;)Lcom/amap/api/services/a/cm;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amap/api/services/a/cl;->a(Lcom/amap/api/services/a/cm;)V

    .line 386
    invoke-virtual {v2, p2}, Lcom/amap/api/services/a/cl;->a(Ljava/lang/String;)Lcom/amap/api/services/a/cl$b;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v1

    .line 388
    if-eqz v1, :cond_7

    .line 407
    if-eqz v3, :cond_4

    .line 409
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_e

    .line 414
    :cond_4
    :goto_4
    if-eqz v1, :cond_5

    .line 416
    :try_start_6
    invoke-virtual {v1}, Lcom/amap/api/services/a/cl$b;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_f

    .line 421
    :cond_5
    :goto_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/amap/api/services/a/cl;->a()Z

    move-result v0

    if-nez v0, :cond_6

    .line 423
    :try_start_7
    invoke-virtual {v2}, Lcom/amap/api/services/a/cl;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_10

    .line 389
    :cond_6
    :goto_6
    const/4 v0, 0x0

    goto :goto_3

    .line 392
    :cond_7
    :try_start_8
    invoke-static {p4}, Lcom/amap/api/services/a/bb;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 394
    invoke-virtual {v2, p2}, Lcom/amap/api/services/a/cl;->b(Ljava/lang/String;)Lcom/amap/api/services/a/cl$a;

    move-result-object v4

    .line 395
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/amap/api/services/a/cl$a;->a(I)Ljava/io/OutputStream;

    move-result-object v3

    .line 396
    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V

    .line 397
    invoke-virtual {v4}, Lcom/amap/api/services/a/cl$a;->a()V

    .line 398
    invoke-virtual {v2}, Lcom/amap/api/services/a/cl;->b()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 407
    if-eqz v3, :cond_8

    .line 409
    :try_start_9
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_11

    .line 414
    :cond_8
    :goto_7
    if-eqz v1, :cond_9

    .line 416
    :try_start_a
    invoke-virtual {v1}, Lcom/amap/api/services/a/cl$b;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_12

    .line 421
    :cond_9
    :goto_8
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/amap/api/services/a/cl;->a()Z

    move-result v0

    if-nez v0, :cond_a

    .line 423
    :try_start_b
    invoke-virtual {v2}, Lcom/amap/api/services/a/cl;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_13

    .line 400
    :cond_a
    :goto_9
    const/4 v0, 0x1

    goto :goto_3

    .line 402
    :catch_0
    move-exception v0

    :try_start_c
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 407
    if-eqz v3, :cond_b

    .line 409
    :try_start_d
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_6

    .line 414
    :cond_b
    :goto_a
    if-eqz v1, :cond_c

    .line 416
    :try_start_e
    invoke-virtual {v1}, Lcom/amap/api/services/a/cl$b;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_7

    .line 421
    :cond_c
    :goto_b
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lcom/amap/api/services/a/cl;->a()Z

    move-result v0

    if-nez v0, :cond_d

    .line 423
    :try_start_f
    invoke-virtual {v2}, Lcom/amap/api/services/a/cl;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_8

    .line 429
    :cond_d
    :goto_c
    const/4 v0, 0x0

    goto :goto_3

    .line 405
    :catch_1
    move-exception v0

    :try_start_10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 407
    if-eqz v3, :cond_e

    .line 409
    :try_start_11
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_9

    .line 414
    :cond_e
    :goto_d
    if-eqz v1, :cond_f

    .line 416
    :try_start_12
    invoke-virtual {v1}, Lcom/amap/api/services/a/cl$b;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_a

    .line 421
    :cond_f
    :goto_e
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lcom/amap/api/services/a/cl;->a()Z

    move-result v0

    if-nez v0, :cond_d

    .line 423
    :try_start_13
    invoke-virtual {v2}, Lcom/amap/api/services/a/cl;->close()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_2

    goto :goto_c

    .line 425
    :catch_2
    move-exception v0

    :goto_f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_c

    .line 407
    :catchall_0
    move-exception v0

    if-eqz v3, :cond_10

    .line 409
    :try_start_14
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_3

    .line 414
    :cond_10
    :goto_10
    if-eqz v1, :cond_11

    .line 416
    :try_start_15
    invoke-virtual {v1}, Lcom/amap/api/services/a/cl$b;->close()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_4

    .line 421
    :cond_11
    :goto_11
    if-eqz v2, :cond_12

    invoke-virtual {v2}, Lcom/amap/api/services/a/cl;->a()Z

    move-result v1

    if-nez v1, :cond_12

    .line 423
    :try_start_16
    invoke-virtual {v2}, Lcom/amap/api/services/a/cl;->close()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_5

    .line 407
    :cond_12
    :goto_12
    throw v0

    .line 411
    :catch_3
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_10

    .line 418
    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_11

    .line 425
    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_12

    .line 411
    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a

    .line 418
    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_b

    .line 425
    :catch_8
    move-exception v0

    goto :goto_f

    .line 411
    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_d

    .line 418
    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_e

    .line 411
    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 418
    :catch_c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 425
    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    .line 411
    :catch_e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_4

    .line 418
    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_5

    .line 425
    :catch_10
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_6

    .line 411
    :catch_11
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_7

    .line 418
    :catch_12
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_8

    .line 425
    :catch_13
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_9
.end method

.method public static a([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 433
    .line 435
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 460
    :cond_0
    :goto_0
    return v0

    .line 439
    :cond_1
    :try_start_0
    const-string v1, "<br/>"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 440
    array-length v4, p0

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v5, p0, v2

    .line 444
    array-length v6, v3

    move v1, v0

    :goto_2
    if-ge v1, v6, :cond_3

    aget-object v7, v3, v1

    .line 445
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 446
    const-string v8, "at "

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_2

    .line 449
    const/4 v0, 0x1

    goto :goto_0

    .line 444
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 440
    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 458
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)Lcom/amap/api/services/a/cl;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 752
    .line 754
    :try_start_0
    invoke-static {p1, p2}, Lcom/amap/api/services/a/be;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 755
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 756
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 757
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 770
    :goto_0
    return-object v0

    .line 761
    :cond_0
    const/4 v1, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x5000

    invoke-static {v2, v1, v3, v4, v5}, Lcom/amap/api/services/a/cl;->a(Ljava/io/File;IIJ)Lcom/amap/api/services/a/cl;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 763
    :catch_0
    move-exception v1

    const-string v2, "LogProcessor"

    const-string v3, "initDiskLru"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 766
    :catch_1
    move-exception v1

    const-string v2, "LogProcessor"

    const-string v3, "initDiskLru"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 780
    invoke-static {p0}, Lcom/amap/api/services/a/bb;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 781
    if-eqz v0, :cond_0

    .line 782
    const-string v1, "\n"

    const-string v2, "<br/>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 785
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 512
    iget-object v1, p0, Lcom/amap/api/services/a/bk;->d:Lcom/amap/api/services/a/cl;

    if-nez v1, :cond_0

    .line 522
    :goto_0
    return v0

    .line 517
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/services/a/bk;->d:Lcom/amap/api/services/a/cl;

    invoke-virtual {v1, p1}, Lcom/amap/api/services/a/cl;->c(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 520
    :catch_0
    move-exception v1

    const-string v2, "LogUpdateProcessor"

    const-string v3, "deleteLogData"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 552
    .line 554
    invoke-static {p1}, Lcom/amap/api/services/a/bb;->a(Ljava/lang/String;)[B

    move-result-object v2

    .line 553
    invoke-static {v2}, Lcom/amap/api/services/a/bb;->c([B)[B

    move-result-object v2

    .line 555
    new-instance v3, Lcom/amap/api/services/a/bf;

    invoke-direct {v3, v2}, Lcom/amap/api/services/a/bf;-><init>([B)V

    .line 557
    :try_start_0
    invoke-static {}, Lcom/amap/api/services/a/cp;->a()Lcom/amap/api/services/a/cp;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/amap/api/services/a/cp;->b(Lcom/amap/api/services/a/cv;)[B

    move-result-object v2

    .line 559
    if-nez v2, :cond_1

    .line 588
    :cond_0
    :goto_0
    return v0

    .line 562
    :cond_1
    invoke-static {v2}, Lcom/amap/api/services/a/bb;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Lcom/amap/api/services/a/ar; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 564
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 565
    const-string v2, "code"

    .line 566
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 567
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/amap/api/services/a/ar; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    .line 570
    :catch_0
    move-exception v2

    .line 573
    :try_start_2
    const-string v3, "LogProcessor"

    const-string v4, "processUpdate"

    invoke-static {v2, v3, v4}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/amap/api/services/a/ar; {:try_start_2 .. :try_end_2} :catch_1

    move v0, v1

    .line 587
    goto :goto_0

    .line 578
    :catch_1
    move-exception v2

    .line 579
    invoke-virtual {v2}, Lcom/amap/api/services/a/ar;->b()I

    move-result v3

    const/16 v4, 0x1b

    if-ne v3, v4, :cond_2

    .line 585
    :goto_1
    const-string v1, "LogProcessor"

    const-string v3, "processUpdate"

    invoke-static {v2, v1, v3}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 582
    goto :goto_1
.end method

.method private c(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 346
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 347
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/amap/api/services/a/bb;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 349
    return-object v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 614
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 616
    :try_start_0
    const-string v0, "\"key\":\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/amap/api/services/a/as;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\"platform\":\"android\",\"diu\":\""

    .line 617
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/amap/api/services/a/aw;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\"pkg\":\""

    .line 618
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/amap/api/services/a/as;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\"model\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 619
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\"appname\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/amap/api/services/a/as;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\"appversion\":\""

    .line 620
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/amap/api/services/a/as;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\"sysversion\":\""

    .line 621
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 624
    :catch_0
    move-exception v0

    const-string v2, "CInfo"

    const-string v3, "getPublicJSONInfo"

    invoke-static {v0, v2, v3}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 683
    const/4 v1, 0x0

    .line 685
    const/4 v2, 0x0

    .line 688
    :try_start_0
    iget-object v3, p0, Lcom/amap/api/services/a/bk;->d:Lcom/amap/api/services/a/cl;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_2

    .line 710
    if-eqz v0, :cond_0

    .line 712
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 719
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 721
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    .line 729
    :cond_1
    :goto_1
    return-object v0

    .line 691
    :cond_2
    :try_start_3
    iget-object v3, p0, Lcom/amap/api/services/a/bk;->d:Lcom/amap/api/services/a/cl;

    invoke-virtual {v3, p1}, Lcom/amap/api/services/a/cl;->a(Ljava/lang/String;)Lcom/amap/api/services/a/cl$b;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    .line 692
    if-nez v3, :cond_4

    .line 710
    if-eqz v0, :cond_3

    .line 712
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9

    .line 719
    :cond_3
    :goto_2
    if-eqz v0, :cond_1

    .line 721
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 723
    :catch_0
    move-exception v1

    const-string v2, "LogProcessor"

    const-string v3, "readLog2"

    .line 724
    :goto_3
    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 695
    :cond_4
    const/4 v1, 0x0

    :try_start_6
    invoke-virtual {v3, v1}, Lcom/amap/api/services/a/cl$b;->a(I)Ljava/io/InputStream;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_b
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v3

    .line 697
    :try_start_7
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_c
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 698
    const/16 v1, 0x400

    :try_start_8
    new-array v1, v1, [B

    .line 699
    :goto_4
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_6

    .line 700
    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_4

    .line 706
    :catch_1
    move-exception v1

    :goto_5
    :try_start_9
    const-string v4, "LogProcessor"

    const-string v5, "readLog"

    invoke-static {v1, v4, v5}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 710
    if-eqz v2, :cond_5

    .line 712
    :try_start_a
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 719
    :cond_5
    :goto_6
    if-eqz v3, :cond_1

    .line 721
    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_1

    .line 723
    :catch_2
    move-exception v1

    const-string v2, "LogProcessor"

    const-string v3, "readLog2"

    goto :goto_3

    .line 703
    :cond_6
    :try_start_c
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/a/bb;->a([B)Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-result-object v0

    .line 710
    if-eqz v2, :cond_7

    .line 712
    :try_start_d
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    .line 719
    :cond_7
    :goto_7
    if-eqz v3, :cond_1

    .line 721
    :try_start_e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3

    goto :goto_1

    .line 723
    :catch_3
    move-exception v1

    const-string v2, "LogProcessor"

    const-string v3, "readLog2"

    goto :goto_3

    .line 710
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    :goto_8
    if-eqz v2, :cond_8

    .line 712
    :try_start_f
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4

    .line 719
    :cond_8
    :goto_9
    if-eqz v3, :cond_9

    .line 721
    :try_start_10
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5

    .line 710
    :cond_9
    :goto_a
    throw v0

    .line 714
    :catch_4
    move-exception v1

    const-string v2, "LogProcessor"

    const-string v4, "readLog1"

    .line 715
    invoke-static {v1, v2, v4}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 723
    :catch_5
    move-exception v1

    const-string v2, "LogProcessor"

    const-string v3, "readLog2"

    .line 724
    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 714
    :catch_6
    move-exception v1

    const-string v2, "LogProcessor"

    const-string v4, "readLog1"

    .line 715
    invoke-static {v1, v2, v4}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 714
    :catch_7
    move-exception v2

    const-string v3, "LogProcessor"

    const-string v4, "readLog1"

    .line 715
    invoke-static {v2, v3, v4}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 723
    :catch_8
    move-exception v1

    const-string v2, "LogProcessor"

    const-string v3, "readLog2"

    goto/16 :goto_3

    .line 714
    :catch_9
    move-exception v2

    const-string v3, "LogProcessor"

    const-string v4, "readLog1"

    .line 715
    invoke-static {v2, v3, v4}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 714
    :catch_a
    move-exception v1

    const-string v2, "LogProcessor"

    const-string v4, "readLog1"

    .line 715
    invoke-static {v1, v2, v4}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 710
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_8

    :catchall_2
    move-exception v0

    goto :goto_8

    .line 706
    :catch_b
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    goto/16 :goto_5

    :catch_c
    move-exception v1

    move-object v2, v0

    goto/16 :goto_5
.end method

.method private e(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 57
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/services/a/bk;->a()Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/amap/api/services/a/bk;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/amap/api/services/a/cl;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/bk;->d:Lcom/amap/api/services/a/cl;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    const-string v1, "LogProcessor"

    const-string v2, "LogUpDateProcessor"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private f(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/a/ba;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    const/4 v1, 0x0

    .line 243
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 244
    :try_start_1
    new-instance v0, Lcom/amap/api/services/a/bw;

    const/4 v3, 0x0

    invoke-direct {v0, p1, v3}, Lcom/amap/api/services/a/bw;-><init>(Landroid/content/Context;Z)V

    .line 246
    invoke-virtual {v0}, Lcom/amap/api/services/a/bw;->a()Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 247
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 251
    :goto_0
    return-object v0

    .line 247
    :catchall_0
    move-exception v0

    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 249
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_2

    .line 247
    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1
.end method

.method private g(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 630
    .line 634
    :try_start_0
    invoke-static {p1}, Lcom/amap/api/services/a/bk;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 635
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 647
    :goto_0
    return-object v0

    .line 638
    :cond_0
    invoke-static {v1}, Lcom/amap/api/services/a/bb;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 639
    invoke-static {p1, v1}, Lcom/amap/api/services/a/av;->b(Landroid/content/Context;[B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 643
    :catch_0
    move-exception v1

    const-string v2, "LogProcessor"

    const-string v3, "getPublicInfo"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/amap/api/services/a/bu;)Lcom/amap/api/services/a/cm;
    .locals 1

    .prologue
    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/bk;->c:Lcom/amap/api/services/a/cm;

    if-nez v0, :cond_0

    .line 280
    new-instance v0, Lcom/amap/api/services/a/bk$a;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/services/a/bk$a;-><init>(Lcom/amap/api/services/a/bk;Lcom/amap/api/services/a/bu;)V

    iput-object v0, p0, Lcom/amap/api/services/a/bk;->c:Lcom/amap/api/services/a/cm;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amap/api/services/a/bk;->c:Lcom/amap/api/services/a/cm;

    return-object v0

    .line 284
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 527
    iget v0, p0, Lcom/amap/api/services/a/bk;->b:I

    invoke-static {v0}, Lcom/amap/api/services/a/be;->c(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    invoke-static {p1}, Lcom/amap/api/services/a/ay;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 271
    return-object v0
.end method

.method protected a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 353
    const/4 v0, 0x0

    .line 355
    :try_start_0
    invoke-static {p1}, Lcom/amap/api/services/a/bk;->b(Ljava/lang/Throwable;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 360
    :goto_0
    return-object v0

    .line 358
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected abstract a(Ljava/util/List;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/a/ba;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method a(Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/bk;->f(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    invoke-virtual {p0, p2}, Lcom/amap/api/services/a/bk;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    .line 129
    if-eqz v4, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/a/ba;

    .line 141
    invoke-virtual {v1}, Lcom/amap/api/services/a/ba;->d()[Ljava/lang/String;

    move-result-object v2

    .line 142
    invoke-static {v2, v4}, Lcom/amap/api/services/a/bk;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    .line 143
    invoke-virtual/range {v0 .. v6}, Lcom/amap/api/services/a/bk;->a(Lcom/amap/api/services/a/ba;Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :cond_3
    const-string v0, "com.amap.api.col"

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    :try_start_0
    new-instance v0, Lcom/amap/api/services/a/ba$a;

    const-string v1, "collection"

    const-string v2, "1.0"

    const-string v3, "AMap_collection_1.0"

    invoke-direct {v0, v1, v2, v3}, Lcom/amap/api/services/a/ba$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.amap.api.collection"

    aput-object v3, v1, v2

    .line 157
    invoke-virtual {v0, v1}, Lcom/amap/api/services/a/ba$a;->a([Ljava/lang/String;)Lcom/amap/api/services/a/ba$a;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Lcom/amap/api/services/a/ba$a;->a()Lcom/amap/api/services/a/ba;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    .line 159
    invoke-virtual/range {v0 .. v6}, Lcom/amap/api/services/a/bk;->a(Lcom/amap/api/services/a/ba;Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/amap/api/services/a/ar; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/amap/api/services/a/ar;->printStackTrace()V

    goto :goto_0
.end method

.method protected a(Lcom/amap/api/services/a/ba;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/amap/api/services/a/bk;->a:Lcom/amap/api/services/a/ba;

    .line 238
    return-void
.end method

.method a(Lcom/amap/api/services/a/ba;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    .prologue
    .line 77
    invoke-virtual/range {p0 .. p1}, Lcom/amap/api/services/a/bk;->a(Lcom/amap/api/services/a/ba;)V

    .line 78
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/services/a/bk;->d()Ljava/lang/String;

    move-result-object v5

    .line 79
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/amap/api/services/a/bk;->a(Landroid/content/Context;Lcom/amap/api/services/a/ba;)Ljava/lang/String;

    move-result-object v4

    .line 80
    invoke-static/range {p2 .. p2}, Lcom/amap/api/services/a/as;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 82
    if-eqz p3, :cond_0

    const-string v2, ""

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/services/a/bk;->b()I

    move-result v6

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    if-eqz p5, :cond_2

    .line 88
    const-string v7, "class:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p5

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    :cond_2
    if-eqz p6, :cond_3

    .line 92
    const-string v7, " method:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "$<br/>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    :cond_3
    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/amap/api/services/a/bk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 99
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v2, p0

    move-object/from16 v7, p3

    .line 98
    invoke-direct/range {v2 .. v8}, Lcom/amap/api/services/a/bk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 100
    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 103
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/amap/api/services/a/bk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/services/a/bk;->a()Ljava/lang/String;

    move-result-object v10

    .line 108
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    monitor-enter v3

    .line 109
    :try_start_0
    new-instance v12, Lcom/amap/api/services/a/bu;

    move-object/from16 v0, p2

    invoke-direct {v12, v0}, Lcom/amap/api/services/a/bu;-><init>(Landroid/content/Context;)V

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    .line 110
    invoke-direct/range {v7 .. v12}, Lcom/amap/api/services/a/bk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/services/a/bu;)Z

    move-result v16

    .line 112
    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/services/a/ba;->a()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v11, p0

    move-object v14, v9

    move v15, v6

    invoke-direct/range {v11 .. v16}, Lcom/amap/api/services/a/bk;->a(Lcom/amap/api/services/a/bu;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 114
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method a(Lcom/amap/api/services/a/ba;Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 69
    invoke-direct {p0, p3}, Lcom/amap/api/services/a/bk;->c(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/amap/api/services/a/bk;->a(Lcom/amap/api/services/a/ba;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method protected abstract a(Landroid/content/Context;)Z
.end method

.method protected b()I
    .locals 1

    .prologue
    .line 532
    iget v0, p0, Lcom/amap/api/services/a/bk;->b:I

    return v0
.end method

.method b(Landroid/content/Context;)V
    .locals 17

    .prologue
    .line 195
    invoke-direct/range {p0 .. p1}, Lcom/amap/api/services/a/bk;->f(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 196
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/amap/api/services/a/bk;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    .line 200
    if-eqz v8, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 203
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/services/a/bk;->d()Ljava/lang/String;

    move-result-object v5

    .line 204
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/services/a/bk;->a:Lcom/amap/api/services/a/ba;

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/amap/api/services/a/bk;->a(Landroid/content/Context;Lcom/amap/api/services/a/ba;)Ljava/lang/String;

    move-result-object v4

    .line 205
    invoke-static/range {p1 .. p1}, Lcom/amap/api/services/a/as;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 206
    const-string v7, "ANR"

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/services/a/bk;->b()I

    move-result v6

    move-object/from16 v2, p0

    .line 208
    invoke-direct/range {v2 .. v8}, Lcom/amap/api/services/a/bk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 210
    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 217
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/amap/api/services/a/bk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 218
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/amap/api/services/a/bk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 219
    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/services/a/bk;->a()Ljava/lang/String;

    move-result-object v10

    .line 220
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    monitor-enter v3

    .line 221
    :try_start_0
    new-instance v12, Lcom/amap/api/services/a/bu;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/amap/api/services/a/bu;-><init>(Landroid/content/Context;)V

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 222
    invoke-direct/range {v7 .. v12}, Lcom/amap/api/services/a/bk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/services/a/bu;)Z

    move-result v16

    .line 224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/services/a/bk;->a:Lcom/amap/api/services/a/ba;

    invoke-virtual {v2}, Lcom/amap/api/services/a/ba;->a()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v11, p0

    move-object v14, v9

    move v15, v6

    invoke-direct/range {v11 .. v16}, Lcom/amap/api/services/a/bk;->a(Lcom/amap/api/services/a/bu;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 226
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method c()V
    .locals 3

    .prologue
    .line 735
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/bk;->d:Lcom/amap/api/services/a/cl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/a/bk;->d:Lcom/amap/api/services/a/cl;

    invoke-virtual {v0}, Lcom/amap/api/services/a/cl;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 736
    iget-object v0, p0, Lcom/amap/api/services/a/bk;->d:Lcom/amap/api/services/a/cl;

    invoke-virtual {v0}, Lcom/amap/api/services/a/cl;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 745
    :cond_0
    :goto_0
    return-void

    .line 739
    :catch_0
    move-exception v0

    const-string v1, "LogProcessor"

    const-string v2, "closeDiskLru"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 742
    :catch_1
    move-exception v0

    const-string v1, "LogProcessor"

    const-string v2, "closeDiskLru"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method c(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 468
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/bk;->e(Landroid/content/Context;)V

    .line 470
    invoke-virtual {p0, p1}, Lcom/amap/api/services/a/bk;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 509
    :goto_0
    return-void

    .line 476
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    :try_start_1
    new-instance v0, Lcom/amap/api/services/a/bu;

    invoke-direct {v0, p1}, Lcom/amap/api/services/a/bu;-><init>(Landroid/content/Context;)V

    .line 479
    invoke-virtual {p0}, Lcom/amap/api/services/a/bk;->b()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/amap/api/services/a/bk;->a(Lcom/amap/api/services/a/bu;I)V

    .line 485
    const/4 v2, 0x0

    .line 486
    invoke-virtual {p0}, Lcom/amap/api/services/a/bk;->b()I

    move-result v3

    invoke-static {v3}, Lcom/amap/api/services/a/be;->a(I)Ljava/lang/Class;

    move-result-object v3

    .line 485
    invoke-virtual {v0, v2, v3}, Lcom/amap/api/services/a/bu;->a(ILjava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 488
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 489
    :cond_1
    monitor-exit v1

    goto :goto_0

    .line 501
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 505
    :catch_0
    move-exception v0

    const-string v1, "LogProcessor"

    const-string v2, "processUpdateLog"

    .line 506
    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 492
    :cond_2
    :try_start_3
    invoke-direct {p0, v2, p1}, Lcom/amap/api/services/a/bk;->a(Ljava/util/List;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 493
    if-nez v3, :cond_3

    .line 494
    monitor-exit v1

    goto :goto_0

    .line 496
    :cond_3
    invoke-direct {p0, v3}, Lcom/amap/api/services/a/bk;->c(Ljava/lang/String;)I

    move-result v3

    .line 497
    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 498
    invoke-virtual {p0}, Lcom/amap/api/services/a/bk;->b()I

    move-result v3

    invoke-direct {p0, v2, v0, v3}, Lcom/amap/api/services/a/bk;->a(Ljava/util/List;Lcom/amap/api/services/a/bu;I)V

    .line 501
    :cond_4
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
