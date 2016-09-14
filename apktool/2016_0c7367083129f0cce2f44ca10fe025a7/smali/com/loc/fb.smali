.class public final Lcom/loc/fb;
.super Lcom/loc/l;
.source "AnrLogProcessor.java"


# static fields
.field private static c:Z


# instance fields
.field private d:[Ljava/lang/String;

.field private e:I

.field private f:Z

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/loc/fb;->c:Z

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/loc/l;-><init>(I)V

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/loc/fb;->d:[Ljava/lang/String;

    iput v1, p0, Lcom/loc/fb;->e:I

    iput-boolean v1, p0, Lcom/loc/fb;->f:Z

    iput v1, p0, Lcom/loc/fb;->g:I

    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    iget v0, p0, Lcom/loc/fb;->e:I

    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    const/16 v2, 0x9

    if-gt v0, v2, :cond_0

    iget-object v2, p0, Lcom/loc/fb;->d:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lcom/loc/fb;->e:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/loc/fb;->d:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "ANRWriter"

    const-string v3, "getLogInfo"

    invoke-static {v0, v2, v3}, Lcom/loc/es;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a(Ljava/util/List;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/loc/eo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 0
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v3, "/data/anr/traces.txt"

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_18
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v2}, Lcom/loc/bf;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_11

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_12
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_13

    :cond_1
    :goto_1
    move-object v0, v1

    :goto_2
    return-object v0

    :cond_2
    :try_start_3
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_18
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-instance v2, Lcom/loc/bf;

    sget-object v0, Lcom/loc/bh;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v0}, Lcom/loc/bf;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_19
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move v4, v5

    :cond_3
    :goto_3
    :try_start_5
    invoke-virtual {v2}, Lcom/loc/bf;->a()Ljava/lang/String;

    move-result-object v0

    const-string v6, "pid"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_11

    :goto_4
    const-string v4, "\"main\""

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v2}, Lcom/loc/bf;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_4
    const/4 v4, 0x1

    move-object v6, v0

    move v0, v4

    :goto_5
    const-string v4, ""

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result v4

    if-eqz v4, :cond_10

    move v4, v5

    :goto_6
    if-eqz v4, :cond_3

    .line 2000
    :try_start_6
    iget v0, p0, Lcom/loc/fb;->e:I

    const/16 v7, 0x9

    if-le v0, v7, :cond_5

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/fb;->e:I

    :cond_5
    iget-object v0, p0, Lcom/loc/fb;->d:[Ljava/lang/String;

    iget v7, p0, Lcom/loc/fb;->e:I

    aput-object v6, v0, v7

    iget v0, p0, Lcom/loc/fb;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/loc/fb;->e:I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 0
    :goto_7
    :try_start_7
    iget v0, p0, Lcom/loc/fb;->g:I
    :try_end_7
    .catch Ljava/io/EOFException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const/4 v7, 0x5

    if-ne v0, v7, :cond_8

    :goto_8
    if-eqz v2, :cond_6

    :try_start_8
    invoke-virtual {v2}, Lcom/loc/bf;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_14
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_15

    :cond_6
    :goto_9
    if-eqz v3, :cond_7

    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_16
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_17

    :cond_7
    :goto_a
    iget-boolean v0, p0, Lcom/loc/fb;->f:Z

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lcom/loc/fb;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 2000
    :catch_0
    move-exception v0

    :try_start_a
    const-string v7, "ANRWriter"

    const-string v8, "addData"

    invoke-static {v0, v7, v8}, Lcom/loc/es;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_8

    .line 0
    :cond_8
    iget-boolean v0, p0, Lcom/loc/fb;->f:Z

    if-nez v0, :cond_b

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_9
    :goto_b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/eo;

    invoke-virtual {v0}, Lcom/loc/eo;->d()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6}, Lcom/loc/fb;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/loc/fb;->f:Z

    iget-boolean v8, p0, Lcom/loc/fb;->f:Z

    if-eqz v8, :cond_9

    .line 3000
    iput-object v0, p0, Lcom/loc/l;->a:Lcom/loc/eo;
    :try_end_a
    .catch Ljava/io/EOFException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_b

    :catch_2
    move-exception v0

    move-object v0, v2

    move-object v2, v3

    .line 0
    :goto_c
    if-eqz v0, :cond_a

    :try_start_b
    invoke-virtual {v0}, Lcom/loc/bf;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_7

    :cond_a
    :goto_d
    if-eqz v2, :cond_7

    :try_start_c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_a

    :catch_3
    move-exception v0

    const-string v2, "ANRWriter"

    const-string v3, "initLog3"

    :goto_e
    invoke-static {v0, v2, v3}, Lcom/loc/es;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_b
    :try_start_d
    iget v0, p0, Lcom/loc/fb;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/loc/fb;->g:I
    :try_end_d
    .catch Ljava/io/EOFException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto/16 :goto_3

    :catch_4
    move-exception v0

    :goto_f
    :try_start_e
    const-string v4, "ANRWriter"

    const-string v5, "initLog"

    invoke-static {v0, v4, v5}, Lcom/loc/es;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    if-eqz v2, :cond_c

    :try_start_f
    invoke-virtual {v2}, Lcom/loc/bf;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_d
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_e

    :cond_c
    :goto_10
    if-eqz v3, :cond_7

    :try_start_10
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_f

    goto :goto_a

    :catch_5
    move-exception v0

    const-string v2, "ANRWriter"

    const-string v3, "initLog3"

    goto :goto_e

    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_11
    if-eqz v2, :cond_d

    :try_start_11
    invoke-virtual {v2}, Lcom/loc/bf;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_a

    :cond_d
    :goto_12
    if-eqz v3, :cond_e

    :try_start_12
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_c

    :cond_e
    :goto_13
    throw v0

    :cond_f
    move-object v0, v1

    goto/16 :goto_2

    :catch_6
    move-exception v0

    const-string v3, "ANRWriter"

    const-string v4, "initLog1"

    invoke-static {v0, v3, v4}, Lcom/loc/es;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :catch_7
    move-exception v0

    const-string v3, "ANRWriter"

    const-string v4, "initLog2"

    invoke-static {v0, v3, v4}, Lcom/loc/es;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :catch_8
    move-exception v0

    const-string v2, "ANRWriter"

    const-string v3, "initLog4"

    :goto_14
    invoke-static {v0, v2, v3}, Lcom/loc/es;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :catch_9
    move-exception v1

    const-string v2, "ANRWriter"

    const-string v4, "initLog1"

    invoke-static {v1, v2, v4}, Lcom/loc/es;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :catch_a
    move-exception v1

    const-string v2, "ANRWriter"

    const-string v4, "initLog2"

    invoke-static {v1, v2, v4}, Lcom/loc/es;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :catch_b
    move-exception v1

    const-string v2, "ANRWriter"

    const-string v3, "initLog3"

    invoke-static {v1, v2, v3}, Lcom/loc/es;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :catch_c
    move-exception v1

    const-string v2, "ANRWriter"

    const-string v3, "initLog4"

    invoke-static {v1, v2, v3}, Lcom/loc/es;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :catch_d
    move-exception v0

    const-string v2, "ANRWriter"

    const-string v4, "initLog1"

    invoke-static {v0, v2, v4}, Lcom/loc/es;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :catch_e
    move-exception v0

    const-string v2, "ANRWriter"

    const-string v4, "initLog2"

    invoke-static {v0, v2, v4}, Lcom/loc/es;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :catch_f
    move-exception v0

    const-string v2, "ANRWriter"

    const-string v3, "initLog4"

    goto :goto_14

    :catch_10
    move-exception v2

    const-string v3, "ANRWriter"

    const-string v4, "initLog1"

    invoke-static {v2, v3, v4}, Lcom/loc/es;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_11
    move-exception v2

    const-string v3, "ANRWriter"

    const-string v4, "initLog2"

    invoke-static {v2, v3, v4}, Lcom/loc/es;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_12
    move-exception v0

    const-string v2, "ANRWriter"

    const-string v3, "initLog3"

    invoke-static {v0, v2, v3}, Lcom/loc/es;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_13
    move-exception v0

    const-string v2, "ANRWriter"

    const-string v3, "initLog4"

    invoke-static {v0, v2, v3}, Lcom/loc/es;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_14
    move-exception v0

    const-string v2, "ANRWriter"

    const-string v4, "initLog1"

    invoke-static {v0, v2, v4}, Lcom/loc/es;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :catch_15
    move-exception v0

    const-string v2, "ANRWriter"

    const-string v4, "initLog2"

    invoke-static {v0, v2, v4}, Lcom/loc/es;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :catch_16
    move-exception v0

    const-string v2, "ANRWriter"

    const-string v3, "initLog3"

    goto/16 :goto_e

    :catch_17
    move-exception v0

    const-string v2, "ANRWriter"

    const-string v3, "initLog4"

    goto/16 :goto_14

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto/16 :goto_11

    :catchall_2
    move-exception v0

    goto/16 :goto_11

    :catch_18
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto/16 :goto_f

    :catch_19
    move-exception v0

    move-object v2, v1

    goto/16 :goto_f

    :catch_1a
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    goto/16 :goto_c

    :catch_1b
    move-exception v0

    move-object v0, v1

    move-object v2, v3

    goto/16 :goto_c

    :cond_10
    move v4, v0

    goto/16 :goto_6

    :cond_11
    move-object v6, v0

    move v0, v4

    goto/16 :goto_5
.end method

.method protected final c(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 0
    invoke-static {p1}, Lcom/loc/eh;->m(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v0, :cond_3

    sget-boolean v2, Lcom/loc/fb;->c:Z

    if-eqz v2, :cond_3

    sput-boolean v1, Lcom/loc/fb;->c:Z

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    new-instance v4, Lcom/loc/aa;

    invoke-direct {v4, p1}, Lcom/loc/aa;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/loc/aa;->a()Lcom/loc/ab;

    move-result-object v5

    if-nez v5, :cond_0

    monitor-exit v3

    :goto_0
    return v0

    .line 1000
    :cond_0
    iget v2, v5, Lcom/loc/ab;->c:I

    if-ne v2, v0, :cond_1

    move v2, v0

    .line 0
    :goto_1
    if-eqz v2, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Lcom/loc/ab;->c(Z)V

    invoke-virtual {v4, v5}, Lcom/loc/aa;->a(Lcom/loc/ab;)V

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move v2, v1

    .line 1000
    goto :goto_1

    .line 0
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
