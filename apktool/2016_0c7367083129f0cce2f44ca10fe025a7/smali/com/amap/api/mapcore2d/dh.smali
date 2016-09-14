.class public abstract Lcom/amap/api/mapcore2d/dh;
.super Ljava/lang/Object;
.source "LogProcessor.java"


# instance fields
.field private a:Lcom/amap/api/mapcore2d/cv;

.field private b:I

.field private c:Lcom/amap/api/mapcore2d/dx;

.field private d:Lcom/amap/api/mapcore2d/dw;


# direct methods
.method protected constructor <init>(I)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lcom/amap/api/mapcore2d/dh;->b:I

    .line 44
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 302
    const/4 v0, 0x0

    .line 304
    :try_start_0
    invoke-static {p2}, Lcom/amap/api/mapcore2d/cw;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 305
    invoke-static {p1, v1}, Lcom/amap/api/mapcore2d/cp;->e(Landroid/content/Context;[B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 309
    :goto_0
    return-object v0

    .line 307
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 286
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 287
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ",\"timestamp\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 289
    const-string v1, "\",\"et\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 290
    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 291
    const-string v1, "\",\"classname\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 292
    invoke-virtual {v0, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 293
    const-string v1, "\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 294
    const-string v1, "\"detail\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 295
    invoke-virtual {v0, p6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 296
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 298
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
            "Lcom/amap/api/mapcore2d/ds;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 603
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 604
    const-string v0, "{\"pinfo\":\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/amap/api/mapcore2d/dh;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"els\":["

    .line 605
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    const/4 v0, 0x1

    .line 607
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/ds;

    .line 608
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ds;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/amap/api/mapcore2d/dh;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 612
    if-eqz v4, :cond_0

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 615
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "||"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ds;->c()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 616
    if-eqz v1, :cond_1

    .line 617
    const/4 v1, 0x0

    .line 621
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

    .line 623
    goto :goto_0

    .line 619
    :cond_1
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 624
    :cond_2
    if-eqz v1, :cond_3

    .line 625
    const/4 v0, 0x0

    .line 628
    :goto_2
    return-object v0

    .line 627
    :cond_3
    const-string v0, "]}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private a(Lcom/amap/api/mapcore2d/dr;I)V
    .locals 3

    .prologue
    .line 508
    const/4 v0, 0x2

    .line 509
    :try_start_0
    invoke-static {p2}, Lcom/amap/api/mapcore2d/db;->a(I)Ljava/lang/Class;

    move-result-object v1

    .line 508
    invoke-virtual {p1, v0, v1}, Lcom/amap/api/mapcore2d/dr;->a(ILjava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 510
    invoke-direct {p0, v0, p1, p2}, Lcom/amap/api/mapcore2d/dh;->a(Ljava/util/List;Lcom/amap/api/mapcore2d/dr;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    :goto_0
    return-void

    .line 513
    :catch_0
    move-exception v0

    const-string v1, "LogProcessor"

    const-string v2, "processDeleteFail"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/da;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/amap/api/mapcore2d/dr;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 2

    .prologue
    .line 226
    invoke-static {p4}, Lcom/amap/api/mapcore2d/db;->b(I)Lcom/amap/api/mapcore2d/ds;

    move-result-object v0

    .line 228
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/ds;->a(I)V

    .line 230
    invoke-virtual {v0, p2}, Lcom/amap/api/mapcore2d/ds;->b(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v0, p3}, Lcom/amap/api/mapcore2d/ds;->a(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore2d/dr;->a(Lcom/amap/api/mapcore2d/ds;)V

    .line 234
    return-void
.end method

.method private a(Ljava/util/List;Lcom/amap/api/mapcore2d/dr;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/amap/api/mapcore2d/ds;",
            ">;",
            "Lcom/amap/api/mapcore2d/dr;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 561
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 562
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/ds;

    .line 563
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ds;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amap/api/mapcore2d/dh;->b(Ljava/lang/String;)Z

    move-result v2

    .line 564
    if-eqz v2, :cond_0

    .line 565
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ds;->b()Ljava/lang/String;

    move-result-object v2

    .line 566
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 565
    invoke-virtual {p2, v2, v0}, Lcom/amap/api/mapcore2d/dr;->a(Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0

    .line 568
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore2d/ds;->a(I)V

    .line 570
    invoke-virtual {p2, v0}, Lcom/amap/api/mapcore2d/dr;->b(Lcom/amap/api/mapcore2d/ds;)V

    goto :goto_0

    .line 576
    :cond_1
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/mapcore2d/dr;)Z
    .locals 8

    .prologue
    .line 343
    const/4 v3, 0x0

    .line 344
    const/4 v2, 0x0

    .line 345
    const/4 v1, 0x0

    .line 347
    :try_start_0
    invoke-static {p1, p3}, Lcom/amap/api/mapcore2d/db;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 348
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 349
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 350
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 377
    if-eqz v3, :cond_0

    .line 379
    :try_start_1
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_b

    .line 384
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 386
    :try_start_2
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/dw$b;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_c

    .line 391
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/dw;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 393
    :try_start_3
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/dw;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_d

    .line 351
    :cond_2
    :goto_2
    const/4 v0, 0x0

    .line 399
    :goto_3
    return v0

    .line 354
    :cond_3
    const/4 v0, 0x1

    const/4 v5, 0x1

    const-wide/16 v6, 0x5000

    :try_start_4
    invoke-static {v4, v0, v5, v6, v7}, Lcom/amap/api/mapcore2d/dw;->a(Ljava/io/File;IIJ)Lcom/amap/api/mapcore2d/dw;

    move-result-object v2

    .line 355
    invoke-virtual {p0, p5}, Lcom/amap/api/mapcore2d/dh;->a(Lcom/amap/api/mapcore2d/dr;)Lcom/amap/api/mapcore2d/dx;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amap/api/mapcore2d/dw;->a(Lcom/amap/api/mapcore2d/dx;)V

    .line 356
    invoke-virtual {v2, p2}, Lcom/amap/api/mapcore2d/dw;->a(Ljava/lang/String;)Lcom/amap/api/mapcore2d/dw$b;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v1

    .line 358
    if-eqz v1, :cond_7

    .line 377
    if-eqz v3, :cond_4

    .line 379
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_e

    .line 384
    :cond_4
    :goto_4
    if-eqz v1, :cond_5

    .line 386
    :try_start_6
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/dw$b;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_f

    .line 391
    :cond_5
    :goto_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/dw;->a()Z

    move-result v0

    if-nez v0, :cond_6

    .line 393
    :try_start_7
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/dw;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_10

    .line 359
    :cond_6
    :goto_6
    const/4 v0, 0x0

    goto :goto_3

    .line 362
    :cond_7
    :try_start_8
    invoke-static {p4}, Lcom/amap/api/mapcore2d/cw;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 364
    invoke-virtual {v2, p2}, Lcom/amap/api/mapcore2d/dw;->b(Ljava/lang/String;)Lcom/amap/api/mapcore2d/dw$a;

    move-result-object v4

    .line 365
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/amap/api/mapcore2d/dw$a;->a(I)Ljava/io/OutputStream;

    move-result-object v3

    .line 366
    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V

    .line 367
    invoke-virtual {v4}, Lcom/amap/api/mapcore2d/dw$a;->a()V

    .line 368
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/dw;->b()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 377
    if-eqz v3, :cond_8

    .line 379
    :try_start_9
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_11

    .line 384
    :cond_8
    :goto_7
    if-eqz v1, :cond_9

    .line 386
    :try_start_a
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/dw$b;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_12

    .line 391
    :cond_9
    :goto_8
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/dw;->a()Z

    move-result v0

    if-nez v0, :cond_a

    .line 393
    :try_start_b
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/dw;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_13

    .line 370
    :cond_a
    :goto_9
    const/4 v0, 0x1

    goto :goto_3

    .line 372
    :catch_0
    move-exception v0

    :try_start_c
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 377
    if-eqz v3, :cond_b

    .line 379
    :try_start_d
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_6

    .line 384
    :cond_b
    :goto_a
    if-eqz v1, :cond_c

    .line 386
    :try_start_e
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/dw$b;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_7

    .line 391
    :cond_c
    :goto_b
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/dw;->a()Z

    move-result v0

    if-nez v0, :cond_d

    .line 393
    :try_start_f
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/dw;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_8

    .line 399
    :cond_d
    :goto_c
    const/4 v0, 0x0

    goto :goto_3

    .line 375
    :catch_1
    move-exception v0

    :try_start_10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 377
    if-eqz v3, :cond_e

    .line 379
    :try_start_11
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_9

    .line 384
    :cond_e
    :goto_d
    if-eqz v1, :cond_f

    .line 386
    :try_start_12
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/dw$b;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_a

    .line 391
    :cond_f
    :goto_e
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/dw;->a()Z

    move-result v0

    if-nez v0, :cond_d

    .line 393
    :try_start_13
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/dw;->close()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_2

    goto :goto_c

    .line 395
    :catch_2
    move-exception v0

    :goto_f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_c

    .line 377
    :catchall_0
    move-exception v0

    if-eqz v3, :cond_10

    .line 379
    :try_start_14
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_3

    .line 384
    :cond_10
    :goto_10
    if-eqz v1, :cond_11

    .line 386
    :try_start_15
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/dw$b;->close()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_4

    .line 391
    :cond_11
    :goto_11
    if-eqz v2, :cond_12

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/dw;->a()Z

    move-result v1

    if-nez v1, :cond_12

    .line 393
    :try_start_16
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/dw;->close()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_5

    .line 377
    :cond_12
    :goto_12
    throw v0

    .line 381
    :catch_3
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_10

    .line 388
    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_11

    .line 395
    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_12

    .line 381
    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a

    .line 388
    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_b

    .line 395
    :catch_8
    move-exception v0

    goto :goto_f

    .line 381
    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_d

    .line 388
    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_e

    .line 381
    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 388
    :catch_c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 395
    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    .line 381
    :catch_e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_4

    .line 388
    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_5

    .line 395
    :catch_10
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_6

    .line 381
    :catch_11
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_7

    .line 388
    :catch_12
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_8

    .line 395
    :catch_13
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_9
.end method

.method public static a([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 403
    .line 405
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 428
    :cond_0
    :goto_0
    return v0

    .line 409
    :cond_1
    :try_start_0
    const-string v1, "<br/>"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 411
    array-length v4, p0

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v5, p0, v2

    .line 414
    array-length v6, v3

    move v1, v0

    :goto_2
    if-ge v1, v6, :cond_3

    aget-object v7, v3, v1

    .line 415
    const-string v8, "at"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_2

    .line 417
    const/4 v0, 0x1

    goto :goto_0

    .line 414
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 411
    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 426
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)Lcom/amap/api/mapcore2d/dw;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 701
    .line 703
    :try_start_0
    invoke-static {p1, p2}, Lcom/amap/api/mapcore2d/db;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 704
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 705
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 706
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 719
    :goto_0
    return-object v0

    .line 710
    :cond_0
    const/4 v1, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x5000

    invoke-static {v2, v1, v3, v4, v5}, Lcom/amap/api/mapcore2d/dw;->a(Ljava/io/File;IIJ)Lcom/amap/api/mapcore2d/dw;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 712
    :catch_0
    move-exception v1

    const-string v2, "LogProcessor"

    const-string v3, "initDiskLru"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore2d/da;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 715
    :catch_1
    move-exception v1

    const-string v2, "LogProcessor"

    const-string v3, "initDiskLru"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore2d/da;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 729
    invoke-static {p0}, Lcom/amap/api/mapcore2d/cw;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 730
    if-eqz v0, :cond_0

    .line 731
    const-string v1, "\n"

    const-string v2, "<br/>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 734
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

    .line 480
    iget-object v1, p0, Lcom/amap/api/mapcore2d/dh;->d:Lcom/amap/api/mapcore2d/dw;

    if-nez v1, :cond_0

    .line 490
    :goto_0
    return v0

    .line 485
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/dh;->d:Lcom/amap/api/mapcore2d/dw;

    invoke-virtual {v1, p1}, Lcom/amap/api/mapcore2d/dw;->c(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 488
    :catch_0
    move-exception v1

    const-string v2, "LogUpdateProcessor"

    const-string v3, "deleteLogData"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore2d/da;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 520
    .line 522
    invoke-static {p1}, Lcom/amap/api/mapcore2d/cw;->a(Ljava/lang/String;)[B

    move-result-object v2

    .line 521
    invoke-static {v2}, Lcom/amap/api/mapcore2d/cw;->c([B)[B

    move-result-object v2

    .line 523
    new-instance v3, Lcom/amap/api/mapcore2d/dc;

    invoke-direct {v3, v2}, Lcom/amap/api/mapcore2d/dc;-><init>([B)V

    .line 525
    :try_start_0
    invoke-static {}, Lcom/amap/api/mapcore2d/ea;->a()Lcom/amap/api/mapcore2d/ea;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/amap/api/mapcore2d/ea;->b(Lcom/amap/api/mapcore2d/eg;)[B

    move-result-object v2

    .line 527
    if-nez v2, :cond_1

    .line 556
    :cond_0
    :goto_0
    return v0

    .line 530
    :cond_1
    invoke-static {v2}, Lcom/amap/api/mapcore2d/cw;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Lcom/amap/api/mapcore2d/cl; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 532
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 533
    const-string v2, "code"

    .line 534
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 535
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/amap/api/mapcore2d/cl; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    .line 538
    :catch_0
    move-exception v2

    .line 541
    :try_start_2
    const-string v3, "LogProcessor"

    const-string v4, "processUpdate"

    invoke-static {v2, v3, v4}, Lcom/amap/api/mapcore2d/da;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/amap/api/mapcore2d/cl; {:try_start_2 .. :try_end_2} :catch_1

    move v0, v1

    .line 555
    goto :goto_0

    .line 546
    :catch_1
    move-exception v2

    .line 547
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/cl;->b()I

    move-result v3

    const/16 v4, 0x1b

    if-ne v3, v4, :cond_2

    .line 553
    :goto_1
    const-string v1, "LogProcessor"

    const-string v3, "processUpdate"

    invoke-static {v2, v1, v3}, Lcom/amap/api/mapcore2d/da;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 550
    goto :goto_1
.end method

.method private c(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 316
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 317
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/cw;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 319
    return-object v0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 632
    const/4 v1, 0x0

    .line 634
    const/4 v2, 0x0

    .line 637
    :try_start_0
    iget-object v3, p0, Lcom/amap/api/mapcore2d/dh;->d:Lcom/amap/api/mapcore2d/dw;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_2

    .line 659
    if-eqz v0, :cond_0

    .line 661
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 668
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 670
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    .line 678
    :cond_1
    :goto_1
    return-object v0

    .line 640
    :cond_2
    :try_start_3
    iget-object v3, p0, Lcom/amap/api/mapcore2d/dh;->d:Lcom/amap/api/mapcore2d/dw;

    invoke-virtual {v3, p1}, Lcom/amap/api/mapcore2d/dw;->a(Ljava/lang/String;)Lcom/amap/api/mapcore2d/dw$b;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    .line 641
    if-nez v3, :cond_4

    .line 659
    if-eqz v0, :cond_3

    .line 661
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9

    .line 668
    :cond_3
    :goto_2
    if-eqz v0, :cond_1

    .line 670
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 672
    :catch_0
    move-exception v1

    const-string v2, "LogProcessor"

    const-string v3, "readLog2"

    .line 673
    :goto_3
    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore2d/da;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 644
    :cond_4
    const/4 v1, 0x0

    :try_start_6
    invoke-virtual {v3, v1}, Lcom/amap/api/mapcore2d/dw$b;->a(I)Ljava/io/InputStream;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_b
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v3

    .line 646
    :try_start_7
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_c
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 647
    const/16 v1, 0x400

    :try_start_8
    new-array v1, v1, [B

    .line 648
    :goto_4
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_6

    .line 649
    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_4

    .line 655
    :catch_1
    move-exception v1

    :goto_5
    :try_start_9
    const-string v4, "LogProcessor"

    const-string v5, "readLog"

    invoke-static {v1, v4, v5}, Lcom/amap/api/mapcore2d/da;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 659
    if-eqz v2, :cond_5

    .line 661
    :try_start_a
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 668
    :cond_5
    :goto_6
    if-eqz v3, :cond_1

    .line 670
    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_1

    .line 672
    :catch_2
    move-exception v1

    const-string v2, "LogProcessor"

    const-string v3, "readLog2"

    goto :goto_3

    .line 652
    :cond_6
    :try_start_c
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/mapcore2d/cw;->a([B)Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-result-object v0

    .line 659
    if-eqz v2, :cond_7

    .line 661
    :try_start_d
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    .line 668
    :cond_7
    :goto_7
    if-eqz v3, :cond_1

    .line 670
    :try_start_e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3

    goto :goto_1

    .line 672
    :catch_3
    move-exception v1

    const-string v2, "LogProcessor"

    const-string v3, "readLog2"

    goto :goto_3

    .line 659
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    :goto_8
    if-eqz v2, :cond_8

    .line 661
    :try_start_f
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4

    .line 668
    :cond_8
    :goto_9
    if-eqz v3, :cond_9

    .line 670
    :try_start_10
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5

    .line 659
    :cond_9
    :goto_a
    throw v0

    .line 663
    :catch_4
    move-exception v1

    const-string v2, "LogProcessor"

    const-string v4, "readLog1"

    .line 664
    invoke-static {v1, v2, v4}, Lcom/amap/api/mapcore2d/da;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 672
    :catch_5
    move-exception v1

    const-string v2, "LogProcessor"

    const-string v3, "readLog2"

    .line 673
    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore2d/da;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 663
    :catch_6
    move-exception v1

    const-string v2, "LogProcessor"

    const-string v4, "readLog1"

    .line 664
    invoke-static {v1, v2, v4}, Lcom/amap/api/mapcore2d/da;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 663
    :catch_7
    move-exception v2

    const-string v3, "LogProcessor"

    const-string v4, "readLog1"

    .line 664
    invoke-static {v2, v3, v4}, Lcom/amap/api/mapcore2d/da;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 672
    :catch_8
    move-exception v1

    const-string v2, "LogProcessor"

    const-string v3, "readLog2"

    goto/16 :goto_3

    .line 663
    :catch_9
    move-exception v2

    const-string v3, "LogProcessor"

    const-string v4, "readLog1"

    .line 664
    invoke-static {v2, v3, v4}, Lcom/amap/api/mapcore2d/da;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 663
    :catch_a
    move-exception v1

    const-string v2, "LogProcessor"

    const-string v4, "readLog1"

    .line 664
    invoke-static {v1, v2, v4}, Lcom/amap/api/mapcore2d/da;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 659
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_8

    :catchall_2
    move-exception v0

    goto :goto_8

    .line 655
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

.method private d(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 54
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/dh;->a()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore2d/dh;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/amap/api/mapcore2d/dw;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/dh;->d:Lcom/amap/api/mapcore2d/dw;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    const-string v1, "LogProcessor"

    const-string v2, "LogUpDateProcessor"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/da;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private e(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/mapcore2d/cv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    const/4 v1, 0x0

    .line 213
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 214
    :try_start_1
    new-instance v0, Lcom/amap/api/mapcore2d/dt;

    const/4 v3, 0x0

    invoke-direct {v0, p1, v3}, Lcom/amap/api/mapcore2d/dt;-><init>(Landroid/content/Context;Z)V

    .line 216
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/dt;->a()Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 217
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 221
    :goto_0
    return-object v0

    .line 217
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

    .line 219
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

    .line 217
    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1
.end method

.method private f(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 579
    .line 583
    :try_start_0
    invoke-static {p1}, Lcom/amap/api/mapcore2d/cp;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 584
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 596
    :goto_0
    return-object v0

    .line 587
    :cond_0
    invoke-static {v1}, Lcom/amap/api/mapcore2d/cw;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 588
    invoke-static {p1, v1}, Lcom/amap/api/mapcore2d/cp;->b(Landroid/content/Context;[B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 592
    :catch_0
    move-exception v1

    const-string v2, "LogProcessor"

    const-string v3, "getPublicInfo"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore2d/da;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/amap/api/mapcore2d/dr;)Lcom/amap/api/mapcore2d/dx;
    .locals 1

    .prologue
    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dh;->c:Lcom/amap/api/mapcore2d/dx;

    if-nez v0, :cond_0

    .line 250
    new-instance v0, Lcom/amap/api/mapcore2d/dh$a;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/mapcore2d/dh$a;-><init>(Lcom/amap/api/mapcore2d/dh;Lcom/amap/api/mapcore2d/dr;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/dh;->c:Lcom/amap/api/mapcore2d/dx;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dh;->c:Lcom/amap/api/mapcore2d/dx;

    return-object v0

    .line 254
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 495
    iget v0, p0, Lcom/amap/api/mapcore2d/dh;->b:I

    invoke-static {v0}, Lcom/amap/api/mapcore2d/db;->c(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    invoke-static {p1}, Lcom/amap/api/mapcore2d/cs;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    return-object v0
.end method

.method protected a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 323
    const/4 v0, 0x0

    .line 325
    :try_start_0
    invoke-static {p1}, Lcom/amap/api/mapcore2d/dh;->b(Ljava/lang/Throwable;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 330
    :goto_0
    return-object v0

    .line 328
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
            "Lcom/amap/api/mapcore2d/cv;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method a(Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/dh;->e(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    invoke-virtual {p0, p2}, Lcom/amap/api/mapcore2d/dh;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    .line 122
    if-eqz v4, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 133
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore2d/cv;

    .line 134
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/cv;->e()[Ljava/lang/String;

    move-result-object v2

    .line 135
    invoke-static {v2, v4}, Lcom/amap/api/mapcore2d/dh;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    .line 136
    invoke-virtual/range {v0 .. v6}, Lcom/amap/api/mapcore2d/dh;->a(Lcom/amap/api/mapcore2d/cv;Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_3
    const-string v0, "com.amap.api.col"

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    :try_start_0
    new-instance v0, Lcom/amap/api/mapcore2d/cv$a;

    const-string v1, "collection"

    const-string v2, "1.0"

    const-string v3, "AMap_collection_1.0"

    invoke-direct {v0, v1, v2, v3}, Lcom/amap/api/mapcore2d/cv$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.amap.api.collection"

    aput-object v3, v1, v2

    .line 150
    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/cv$a;->a([Ljava/lang/String;)Lcom/amap/api/mapcore2d/cv$a;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/cv$a;->a()Lcom/amap/api/mapcore2d/cv;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    .line 152
    invoke-virtual/range {v0 .. v6}, Lcom/amap/api/mapcore2d/dh;->a(Lcom/amap/api/mapcore2d/cv;Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/amap/api/mapcore2d/cl; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/cl;->printStackTrace()V

    goto :goto_0
.end method

.method protected a(Lcom/amap/api/mapcore2d/cv;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/amap/api/mapcore2d/dh;->a:Lcom/amap/api/mapcore2d/cv;

    .line 208
    return-void
.end method

.method a(Lcom/amap/api/mapcore2d/cv;Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    .prologue
    .line 70
    invoke-virtual/range {p0 .. p1}, Lcom/amap/api/mapcore2d/dh;->a(Lcom/amap/api/mapcore2d/cv;)V

    .line 71
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/mapcore2d/dh;->d()Ljava/lang/String;

    move-result-object v5

    .line 72
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/cp;->a(Landroid/content/Context;Lcom/amap/api/mapcore2d/cv;)Ljava/lang/String;

    move-result-object v4

    .line 73
    invoke-static/range {p2 .. p2}, Lcom/amap/api/mapcore2d/cm;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 74
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore2d/dh;->c(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    .line 75
    if-eqz v7, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/mapcore2d/dh;->b()I

    move-result v6

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    if-eqz p5, :cond_2

    .line 81
    const-string v8, "class:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p5

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    :cond_2
    if-eqz p6, :cond_3

    .line 85
    const-string v8, " method:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "$<br/>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    :cond_3
    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/dh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 92
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v2, p0

    .line 91
    invoke-direct/range {v2 .. v8}, Lcom/amap/api/mapcore2d/dh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 93
    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 96
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/amap/api/mapcore2d/dh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/mapcore2d/dh;->a()Ljava/lang/String;

    move-result-object v10

    .line 101
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    monitor-enter v3

    .line 102
    :try_start_0
    new-instance v12, Lcom/amap/api/mapcore2d/dr;

    move-object/from16 v0, p2

    invoke-direct {v12, v0}, Lcom/amap/api/mapcore2d/dr;-><init>(Landroid/content/Context;)V

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    .line 103
    invoke-direct/range {v7 .. v12}, Lcom/amap/api/mapcore2d/dh;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/mapcore2d/dr;)Z

    move-result v16

    .line 105
    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/mapcore2d/cv;->a()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v11, p0

    move-object v14, v9

    move v15, v6

    invoke-direct/range {v11 .. v16}, Lcom/amap/api/mapcore2d/dh;->a(Lcom/amap/api/mapcore2d/dr;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 107
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected abstract a(Landroid/content/Context;)Z
.end method

.method protected b()I
    .locals 1

    .prologue
    .line 500
    iget v0, p0, Lcom/amap/api/mapcore2d/dh;->b:I

    return v0
.end method

.method b(Landroid/content/Context;)V
    .locals 17

    .prologue
    .line 165
    invoke-direct/range {p0 .. p1}, Lcom/amap/api/mapcore2d/dh;->e(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 166
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore2d/dh;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    .line 170
    if-eqz v8, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 173
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/mapcore2d/dh;->d()Ljava/lang/String;

    move-result-object v5

    .line 174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore2d/dh;->a:Lcom/amap/api/mapcore2d/cv;

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/amap/api/mapcore2d/cp;->a(Landroid/content/Context;Lcom/amap/api/mapcore2d/cv;)Ljava/lang/String;

    move-result-object v4

    .line 175
    invoke-static/range {p1 .. p1}, Lcom/amap/api/mapcore2d/cm;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 176
    const-string v7, "ANR"

    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/mapcore2d/dh;->b()I

    move-result v6

    move-object/from16 v2, p0

    .line 178
    invoke-direct/range {v2 .. v8}, Lcom/amap/api/mapcore2d/dh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 180
    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 187
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/amap/api/mapcore2d/dh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 188
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/amap/api/mapcore2d/dh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/mapcore2d/dh;->a()Ljava/lang/String;

    move-result-object v10

    .line 190
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    monitor-enter v3

    .line 191
    :try_start_0
    new-instance v12, Lcom/amap/api/mapcore2d/dr;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/amap/api/mapcore2d/dr;-><init>(Landroid/content/Context;)V

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 192
    invoke-direct/range {v7 .. v12}, Lcom/amap/api/mapcore2d/dh;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/mapcore2d/dr;)Z

    move-result v16

    .line 194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore2d/dh;->a:Lcom/amap/api/mapcore2d/cv;

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/cv;->a()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v11, p0

    move-object v14, v9

    move v15, v6

    invoke-direct/range {v11 .. v16}, Lcom/amap/api/mapcore2d/dh;->a(Lcom/amap/api/mapcore2d/dr;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 196
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
    .line 684
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dh;->d:Lcom/amap/api/mapcore2d/dw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/dh;->d:Lcom/amap/api/mapcore2d/dw;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/dw;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dh;->d:Lcom/amap/api/mapcore2d/dw;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/dw;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 694
    :cond_0
    :goto_0
    return-void

    .line 688
    :catch_0
    move-exception v0

    const-string v1, "LogProcessor"

    const-string v2, "closeDiskLru"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/da;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 691
    :catch_1
    move-exception v0

    const-string v1, "LogProcessor"

    const-string v2, "closeDiskLru"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/da;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method c(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 436
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/dh;->d(Landroid/content/Context;)V

    .line 438
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/dh;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 477
    :goto_0
    return-void

    .line 444
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    :try_start_1
    new-instance v0, Lcom/amap/api/mapcore2d/dr;

    invoke-direct {v0, p1}, Lcom/amap/api/mapcore2d/dr;-><init>(Landroid/content/Context;)V

    .line 447
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/dh;->b()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/amap/api/mapcore2d/dh;->a(Lcom/amap/api/mapcore2d/dr;I)V

    .line 453
    const/4 v2, 0x0

    .line 454
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/dh;->b()I

    move-result v3

    invoke-static {v3}, Lcom/amap/api/mapcore2d/db;->a(I)Ljava/lang/Class;

    move-result-object v3

    .line 453
    invoke-virtual {v0, v2, v3}, Lcom/amap/api/mapcore2d/dr;->a(ILjava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 456
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 457
    :cond_1
    monitor-exit v1

    goto :goto_0

    .line 469
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 473
    :catch_0
    move-exception v0

    const-string v1, "LogProcessor"

    const-string v2, "processUpdateLog"

    .line 474
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/da;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 460
    :cond_2
    :try_start_3
    invoke-direct {p0, v2, p1}, Lcom/amap/api/mapcore2d/dh;->a(Ljava/util/List;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 461
    if-nez v3, :cond_3

    .line 462
    monitor-exit v1

    goto :goto_0

    .line 464
    :cond_3
    invoke-direct {p0, v3}, Lcom/amap/api/mapcore2d/dh;->c(Ljava/lang/String;)I

    move-result v3

    .line 465
    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 466
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/dh;->b()I

    move-result v3

    invoke-direct {p0, v2, v0, v3}, Lcom/amap/api/mapcore2d/dh;->a(Ljava/util/List;Lcom/amap/api/mapcore2d/dr;I)V

    .line 469
    :cond_4
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
