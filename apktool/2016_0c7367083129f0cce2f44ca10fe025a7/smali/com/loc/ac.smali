.class public final Lcom/loc/ac;
.super Ljava/lang/Thread;
.source "DexDownLoad.java"

# interfaces
.implements Lcom/loc/bm;


# instance fields
.field private a:Lcom/loc/ad;

.field private b:Lcom/loc/bl;

.field private c:Lcom/loc/eo;

.field private d:Ljava/lang/String;

.field private e:Ljava/io/RandomAccessFile;

.field private f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/loc/ad;Lcom/loc/eo;)V
    .locals 3

    .prologue
    .line 0
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ac;->f:Landroid/content/Context;

    iput-object p3, p0, Lcom/loc/ac;->c:Lcom/loc/eo;

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p2, p0, Lcom/loc/ac;->a:Lcom/loc/ad;

    new-instance v0, Lcom/loc/bl;

    new-instance v1, Lcom/loc/ai;

    iget-object v2, p0, Lcom/loc/ac;->a:Lcom/loc/ad;

    invoke-direct {v1, v2}, Lcom/loc/ai;-><init>(Lcom/loc/ad;)V

    invoke-direct {v0, v1}, Lcom/loc/bl;-><init>(Lcom/loc/bq;)V

    iput-object v0, p0, Lcom/loc/ac;->b:Lcom/loc/bl;

    iget-object v0, p0, Lcom/loc/ac;->a:Lcom/loc/ad;

    iget-object v0, v0, Lcom/loc/ad;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/loc/aj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ac;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DexDownLoad"

    const-string v2, "DexDownLoad()"

    .line 1000
    invoke-static {v0, v1, v2}, Lcom/loc/es;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/loc/o;Lcom/loc/aq;Lcom/loc/ad;)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 0
    iget-object v3, p3, Lcom/loc/ad;->d:Ljava/lang/String;

    iget-object v4, p3, Lcom/loc/ad;->e:Ljava/lang/String;

    iget-object v5, p3, Lcom/loc/ad;->f:Ljava/lang/String;

    iget-object v2, p3, Lcom/loc/ad;->g:Ljava/lang/String;

    const-string v1, "errorstatus"

    .line 3000
    iget-object v7, p2, Lcom/loc/aq;->e:Ljava/lang/String;

    .line 0
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/loc/ac;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/ac;->c:Lcom/loc/eo;

    invoke-virtual {v2}, Lcom/loc/eo;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/loc/ac;->c:Lcom/loc/eo;

    invoke-virtual {v3}, Lcom/loc/eo;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/loc/aj;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/loc/ac;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/ac;->c:Lcom/loc/eo;

    invoke-static {v0, p1, v1}, Lcom/loc/aj;->a(Landroid/content/Context;Lcom/loc/o;Lcom/loc/eo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v6

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/loc/ah;->a()Lcom/loc/ah;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/ac;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/ac;->c:Lcom/loc/eo;

    invoke-virtual {v0, v1, v2}, Lcom/loc/ah;->b(Landroid/content/Context;Lcom/loc/eo;)Lcom/loc/ag;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    move v0, v6

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/io/File;

    iget-object v7, p0, Lcom/loc/ac;->d:Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/loc/ac;->f:Landroid/content/Context;

    invoke-static {v1, v3, v4}, Lcom/loc/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3, v4, v5}, Lcom/loc/aq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v7, Lcom/loc/aq;

    .line 4000
    invoke-virtual {p1, v1, v7, v0}, Lcom/loc/o;->a(Ljava/lang/String;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v0

    .line 0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    move v0, v6

    goto :goto_0

    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/loc/ac;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/ac;->c:Lcom/loc/eo;

    invoke-virtual {v1}, Lcom/loc/eo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/loc/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/loc/ar;

    invoke-direct/range {v0 .. v5}, Lcom/loc/ar;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "used"

    .line 5000
    iput-object v1, v0, Lcom/loc/ar;->f:Ljava/lang/String;

    .line 0
    invoke-virtual {v0}, Lcom/loc/ar;->a()Lcom/loc/aq;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/ac;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/ac;->c:Lcom/loc/eo;

    iget-object v3, p0, Lcom/loc/ac;->d:Ljava/lang/String;

    invoke-static {v1, p1, v2, v0, v3}, Lcom/loc/aj;->a(Landroid/content/Context;Lcom/loc/o;Lcom/loc/eo;Lcom/loc/aq;Ljava/lang/String;)V

    invoke-static {}, Lcom/loc/ah;->a()Lcom/loc/ah;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/ac;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/ac;->c:Lcom/loc/eo;

    invoke-virtual {v0, v1, v2}, Lcom/loc/ah;->b(Landroid/content/Context;Lcom/loc/eo;)Lcom/loc/ag;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    move v0, v6

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "DexDownLoad"

    const-string v2, "processDownloadedFile()"

    .line 6000
    invoke-static {v0, v1, v2}, Lcom/loc/es;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private d()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 0
    new-instance v2, Lcom/loc/o;

    iget-object v0, p0, Lcom/loc/ac;->f:Landroid/content/Context;

    invoke-static {}, Lcom/loc/ap;->b()Lcom/loc/ap;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/loc/o;-><init>(Landroid/content/Context;Lcom/loc/n;)V

    :try_start_0
    iget-object v0, p0, Lcom/loc/ac;->a:Lcom/loc/ad;

    iget-object v0, v0, Lcom/loc/ad;->d:Ljava/lang/String;

    const-string v3, "used"

    invoke-static {v2, v0, v3}, Lcom/loc/al;->a(Lcom/loc/o;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/aq;

    .line 7000
    iget-object v0, v0, Lcom/loc/aq;->d:Ljava/lang/String;

    .line 0
    iget-object v3, p0, Lcom/loc/ac;->a:Lcom/loc/ad;

    iget-object v3, v3, Lcom/loc/ad;->f:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/loc/aw;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v3, "DexDownLoad"

    const-string v4, "isDownloaded()"

    .line 8000
    invoke-static {v0, v3, v4}, Lcom/loc/es;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 0
    :cond_0
    iget-object v0, p0, Lcom/loc/ac;->a:Lcom/loc/ad;

    iget-object v0, v0, Lcom/loc/ad;->c:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/loc/al;->a(Lcom/loc/o;Ljava/lang/String;)Lcom/loc/aq;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/loc/ac;->a:Lcom/loc/ad;

    invoke-direct {p0, v2, v0, v1}, Lcom/loc/ac;->a(Lcom/loc/o;Lcom/loc/aq;Lcom/loc/ad;)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private e()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 0
    .line 9000
    :try_start_0
    iget-object v0, p0, Lcom/loc/ac;->c:Lcom/loc/eo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/ac;->c:Lcom/loc/eo;

    invoke-virtual {v0}, Lcom/loc/eo;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/loc/ac;->a:Lcom/loc/ad;

    iget-object v3, v3, Lcom/loc/ad;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/ac;->c:Lcom/loc/eo;

    invoke-virtual {v0}, Lcom/loc/eo;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/loc/ac;->a:Lcom/loc/ad;

    iget-object v3, v3, Lcom/loc/ad;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 0
    :goto_0
    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/loc/ac;->d()Z

    move-result v0

    if-nez v0, :cond_4

    .line 10000
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v3, p0, Lcom/loc/ac;->a:Lcom/loc/ad;

    iget v3, v3, Lcom/loc/ad;->i:I

    if-lt v0, v3, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v3, p0, Lcom/loc/ac;->a:Lcom/loc/ad;

    iget v3, v3, Lcom/loc/ad;->h:I

    if-gt v0, v3, :cond_1

    move v0, v1

    .line 0
    :goto_1
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/loc/ac;->f:Landroid/content/Context;

    .line 11000
    invoke-static {v0}, Lcom/loc/eh;->m(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    .line 0
    :goto_2
    if-eqz v0, :cond_4

    iget-object v4, p0, Lcom/loc/ac;->f:Landroid/content/Context;

    iget-object v0, p0, Lcom/loc/ac;->c:Lcom/loc/eo;

    invoke-virtual {v0}, Lcom/loc/eo;->a()Ljava/lang/String;

    move-result-object v0

    .line 12000
    new-instance v5, Lcom/loc/o;

    invoke-static {}, Lcom/loc/ap;->b()Lcom/loc/ap;

    move-result-object v3

    invoke-direct {v5, v4, v3}, Lcom/loc/o;-><init>(Landroid/content/Context;Lcom/loc/n;)V

    const-string v3, "copy"

    invoke-static {v5, v0, v3}, Lcom/loc/al;->a(Lcom/loc/o;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/loc/aj;->a(Ljava/util/List;)V

    if-eqz v6, :cond_3

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_3

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    move v3, v1

    :goto_3
    if-ge v3, v7, :cond_3

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/aq;

    .line 13000
    iget-object v0, v0, Lcom/loc/aq;->a:Ljava/lang/String;

    .line 12000
    invoke-static {v4, v5, v0}, Lcom/loc/aj;->b(Landroid/content/Context;Lcom/loc/o;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    :cond_0
    move v0, v2

    .line 9000
    goto :goto_0

    :cond_1
    move v0, v2

    .line 10000
    goto :goto_1

    :cond_2
    move v0, v2

    .line 11000
    goto :goto_2

    :cond_3
    move v0, v1

    .line 0
    :goto_4
    return v0

    :cond_4
    move v0, v2

    goto :goto_4

    :catch_0
    move-exception v0

    const-string v1, "DexDownLoad"

    const-string v3, "isNeedDownload()"

    .line 14000
    invoke-static {v0, v1, v3}, Lcom/loc/es;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 0
    goto :goto_4
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 0
    :try_start_0
    iget-object v0, p0, Lcom/loc/ac;->e:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/loc/ac;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DexDownLoad"

    const-string v2, "onException()"

    .line 16000
    invoke-static {v0, v1, v2}, Lcom/loc/es;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a([BJ)V
    .locals 4

    .prologue
    .line 0
    :try_start_0
    iget-object v0, p0, Lcom/loc/ac;->e:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/loc/ac;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/loc/ac;->e:Ljava/io/RandomAccessFile;

    :cond_1
    iget-object v0, p0, Lcom/loc/ac;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/loc/ac;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "DexDownLoad"

    const-string v2, "onDownload()"

    .line 15000
    invoke-static {v0, v1, v2}, Lcom/loc/es;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 7

    .prologue
    .line 0
    :try_start_0
    iget-object v0, p0, Lcom/loc/ac;->e:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/loc/ac;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/loc/ac;->a:Lcom/loc/ad;

    .line 18000
    iget-object v2, v0, Lcom/loc/ad;->b:Ljava/lang/String;

    .line 0
    iget-object v0, p0, Lcom/loc/ac;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/loc/aj;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/ac;->a:Lcom/loc/ad;

    .line 19000
    iget-object v4, v0, Lcom/loc/ad;->e:Ljava/lang/String;

    .line 0
    new-instance v6, Lcom/loc/o;

    iget-object v0, p0, Lcom/loc/ac;->f:Landroid/content/Context;

    invoke-static {}, Lcom/loc/ap;->b()Lcom/loc/ap;

    move-result-object v1

    invoke-direct {v6, v0, v1}, Lcom/loc/o;-><init>(Landroid/content/Context;Lcom/loc/n;)V

    new-instance v0, Lcom/loc/ar;

    iget-object v1, p0, Lcom/loc/ac;->a:Lcom/loc/ad;

    iget-object v1, v1, Lcom/loc/ad;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/loc/ac;->a:Lcom/loc/ad;

    iget-object v3, v3, Lcom/loc/ad;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/loc/ac;->a:Lcom/loc/ad;

    iget-object v5, v5, Lcom/loc/ad;->f:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/loc/ar;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "copy"

    .line 20000
    iput-object v1, v0, Lcom/loc/ar;->f:Ljava/lang/String;

    .line 0
    invoke-virtual {v0}, Lcom/loc/ar;->a()Lcom/loc/aq;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/ac;->a:Lcom/loc/ad;

    iget-object v1, v1, Lcom/loc/ad;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/loc/ac;->a:Lcom/loc/ad;

    iget-object v3, v3, Lcom/loc/ad;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/loc/ac;->a:Lcom/loc/ad;

    iget-object v5, v5, Lcom/loc/ad;->f:Ljava/lang/String;

    invoke-static {v1, v3, v4, v5}, Lcom/loc/aq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 21000
    invoke-virtual {v6, v0, v1}, Lcom/loc/o;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 0
    iget-object v0, p0, Lcom/loc/ac;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/ac;->a:Lcom/loc/ad;

    iget-object v1, v1, Lcom/loc/ad;->d:Ljava/lang/String;

    .line 22000
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 0
    :try_start_3
    new-instance v0, Lcom/loc/ar;

    iget-object v1, p0, Lcom/loc/ac;->f:Landroid/content/Context;

    iget-object v3, p0, Lcom/loc/ac;->a:Lcom/loc/ad;

    iget-object v3, v3, Lcom/loc/ad;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/loc/ac;->c:Lcom/loc/eo;

    invoke-virtual {v5}, Lcom/loc/eo;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v3, v5}, Lcom/loc/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/loc/ac;->a:Lcom/loc/ad;

    iget-object v3, v3, Lcom/loc/ad;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/loc/ac;->a:Lcom/loc/ad;

    iget-object v5, v5, Lcom/loc/ad;->f:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/loc/ar;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "used"

    .line 23000
    iput-object v1, v0, Lcom/loc/ar;->f:Ljava/lang/String;

    .line 0
    invoke-virtual {v0}, Lcom/loc/ar;->a()Lcom/loc/aq;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/ac;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/ac;->c:Lcom/loc/eo;

    iget-object v3, p0, Lcom/loc/ac;->d:Ljava/lang/String;

    invoke-static {v1, v6, v2, v0, v3}, Lcom/loc/aj;->a(Landroid/content/Context;Lcom/loc/o;Lcom/loc/eo;Lcom/loc/aq;Ljava/lang/String;)V

    invoke-static {}, Lcom/loc/ah;->a()Lcom/loc/ah;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/ac;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/ac;->c:Lcom/loc/eo;

    invoke-virtual {v0, v1, v2}, Lcom/loc/ah;->b(Landroid/content/Context;Lcom/loc/eo;)Lcom/loc/ag;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    const-string v1, "DexDownLoad"

    const-string v2, "onFinish1"

    .line 24000
    invoke-static {v0, v1, v2}, Lcom/loc/es;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 0
    :catch_1
    move-exception v0

    const-string v1, "DexDownLoad"

    const-string v2, "onFinish()"

    .line 26000
    invoke-static {v0, v1, v2}, Lcom/loc/es;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 0
    :catch_2
    move-exception v0

    :try_start_5
    const-string v1, "DexDownLoad"

    const-string v2, "onFinish3"

    .line 17000
    invoke-static {v0, v1, v2}, Lcom/loc/es;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    .line 0
    :cond_1
    :try_start_6
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/loc/ac;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    :try_start_7
    const-string v1, "DexDownLoad"

    const-string v2, "onFinish"

    .line 25000
    invoke-static {v0, v1, v2}, Lcom/loc/es;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final run()V
    .locals 3

    .prologue
    .line 0
    :try_start_0
    invoke-direct {p0}, Lcom/loc/ac;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/ac;->b:Lcom/loc/bl;

    invoke-virtual {v0, p0}, Lcom/loc/bl;->a(Lcom/loc/bm;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "DexDownLoad"

    const-string v2, "run()"

    .line 2000
    invoke-static {v0, v1, v2}, Lcom/loc/es;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
