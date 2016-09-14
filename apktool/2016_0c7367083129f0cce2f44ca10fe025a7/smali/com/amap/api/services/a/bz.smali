.class public Lcom/amap/api/services/a/bz;
.super Ljava/lang/Thread;
.source "DexDownLoad.java"

# interfaces
.implements Lcom/amap/api/services/a/cr$a;


# instance fields
.field private a:Lcom/amap/api/services/a/ca;

.field private b:Lcom/amap/api/services/a/cr;

.field private c:Lcom/amap/api/services/a/ba;

.field private d:Ljava/lang/String;

.field private e:Ljava/io/RandomAccessFile;

.field private f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/a/ca;Lcom/amap/api/services/a/ba;)V
    .locals 3

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 76
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/bz;->f:Landroid/content/Context;

    .line 77
    iput-object p3, p0, Lcom/amap/api/services/a/bz;->c:Lcom/amap/api/services/a/ba;

    .line 78
    if-nez p2, :cond_0

    .line 90
    :goto_0
    return-void

    .line 84
    :cond_0
    iput-object p2, p0, Lcom/amap/api/services/a/bz;->a:Lcom/amap/api/services/a/ca;

    .line 85
    new-instance v0, Lcom/amap/api/services/a/cr;

    new-instance v1, Lcom/amap/api/services/a/ce;

    iget-object v2, p0, Lcom/amap/api/services/a/bz;->a:Lcom/amap/api/services/a/ca;

    invoke-direct {v1, v2}, Lcom/amap/api/services/a/ce;-><init>(Lcom/amap/api/services/a/ca;)V

    invoke-direct {v0, v1}, Lcom/amap/api/services/a/cr;-><init>(Lcom/amap/api/services/a/cv;)V

    iput-object v0, p0, Lcom/amap/api/services/a/bz;->b:Lcom/amap/api/services/a/cr;

    .line 86
    iget-object v0, p0, Lcom/amap/api/services/a/bz;->a:Lcom/amap/api/services/a/ca;

    iget-object v0, v0, Lcom/amap/api/services/a/ca;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amap/api/services/a/cf;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/bz;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    const-string v1, "DexDownLoad"

    const-string v2, "DexDownLoad()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 61
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 62
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 63
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 64
    return-void
.end method

.method private a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 250
    invoke-static {p1}, Lcom/amap/api/services/a/aw;->m(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/amap/api/services/a/bm;Lcom/amap/api/services/a/cj;Lcom/amap/api/services/a/ca;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 122
    iget-object v3, p3, Lcom/amap/api/services/a/ca;->b:Ljava/lang/String;

    .line 123
    iget-object v4, p3, Lcom/amap/api/services/a/ca;->c:Ljava/lang/String;

    .line 124
    iget-object v5, p3, Lcom/amap/api/services/a/ca;->d:Ljava/lang/String;

    .line 125
    iget-object v2, p3, Lcom/amap/api/services/a/ca;->e:Ljava/lang/String;

    .line 128
    const-string v0, "errorstatus"

    invoke-virtual {p2}, Lcom/amap/api/services/a/cj;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amap/api/services/a/bz;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/services/a/bz;->c:Lcom/amap/api/services/a/ba;

    invoke-virtual {v2}, Lcom/amap/api/services/a/ba;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/services/a/bz;->c:Lcom/amap/api/services/a/ba;

    invoke-virtual {v3}, Lcom/amap/api/services/a/ba;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/cf;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/amap/api/services/a/bz;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/services/a/bz;->c:Lcom/amap/api/services/a/ba;

    invoke-static {v0, p1, v1}, Lcom/amap/api/services/a/cf;->a(Landroid/content/Context;Lcom/amap/api/services/a/bm;Lcom/amap/api/services/a/ba;)Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    .line 181
    :goto_0
    return v0

    .line 140
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/amap/api/services/a/cd;->a()Lcom/amap/api/services/a/cd;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/services/a/bz;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/services/a/bz;->c:Lcom/amap/api/services/a/ba;

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/services/a/cd;->b(Landroid/content/Context;Lcom/amap/api/services/a/ba;)Lcom/amap/api/services/a/cc;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    move v0, v6

    .line 146
    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 151
    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amap/api/services/a/bz;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 154
    const/4 v0, 0x0

    goto :goto_0

    .line 159
    :cond_3
    iget-object v0, p0, Lcom/amap/api/services/a/bz;->f:Landroid/content/Context;

    invoke-static {v0, v3, v4}, Lcom/amap/api/services/a/cf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, v4, v5}, Lcom/amap/api/services/a/cj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/amap/api/services/a/cj;

    invoke-virtual {p1, v0, v1}, Lcom/amap/api/services/a/bm;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    move v0, v6

    .line 163
    goto :goto_0

    .line 169
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/services/a/bz;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/services/a/bz;->c:Lcom/amap/api/services/a/ba;

    invoke-virtual {v1}, Lcom/amap/api/services/a/ba;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/amap/api/services/a/cf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 171
    new-instance v0, Lcom/amap/api/services/a/cj$a;

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/services/a/cj$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "used"

    invoke-virtual {v0, v1}, Lcom/amap/api/services/a/cj$a;->a(Ljava/lang/String;)Lcom/amap/api/services/a/cj$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/a/cj$a;->a()Lcom/amap/api/services/a/cj;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lcom/amap/api/services/a/bz;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/services/a/bz;->c:Lcom/amap/api/services/a/ba;

    iget-object v3, p0, Lcom/amap/api/services/a/bz;->d:Ljava/lang/String;

    invoke-static {v1, p1, v2, v0, v3}, Lcom/amap/api/services/a/cf;->a(Landroid/content/Context;Lcom/amap/api/services/a/bm;Lcom/amap/api/services/a/ba;Lcom/amap/api/services/a/cj;Ljava/lang/String;)V

    .line 175
    invoke-static {}, Lcom/amap/api/services/a/cd;->a()Lcom/amap/api/services/a/cd;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/services/a/bz;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/services/a/bz;->c:Lcom/amap/api/services/a/ba;

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/services/a/cd;->b(Landroid/content/Context;Lcom/amap/api/services/a/ba;)Lcom/amap/api/services/a/cc;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    move v0, v6

    .line 181
    goto :goto_0

    .line 179
    :catch_1
    move-exception v0

    const-string v1, "DexDownLoad"

    const-string v2, "processDownloadedFile()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private d()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 193
    new-instance v2, Lcom/amap/api/services/a/bm;

    iget-object v0, p0, Lcom/amap/api/services/a/bz;->f:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/services/a/ci;->c()Lcom/amap/api/services/a/ci;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/amap/api/services/a/bm;-><init>(Landroid/content/Context;Lcom/amap/api/services/a/bl;)V

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/bz;->a:Lcom/amap/api/services/a/ca;

    iget-object v0, v0, Lcom/amap/api/services/a/ca;->b:Ljava/lang/String;

    const-string v3, "used"

    .line 196
    invoke-static {v2, v0, v3}, Lcom/amap/api/services/a/cf$a;->a(Lcom/amap/api/services/a/bm;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 198
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 199
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/a/cj;

    .line 200
    invoke-virtual {v0}, Lcom/amap/api/services/a/cj;->d()Ljava/lang/String;

    move-result-object v0

    .line 201
    iget-object v3, p0, Lcom/amap/api/services/a/bz;->a:Lcom/amap/api/services/a/ca;

    iget-object v3, v3, Lcom/amap/api/services/a/ca;->d:Ljava/lang/String;

    .line 202
    invoke-static {v0, v3}, Lcom/amap/api/services/a/ck;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_0

    .line 203
    const/4 v0, 0x1

    .line 219
    :goto_0
    return v0

    .line 209
    :catch_0
    move-exception v0

    const-string v3, "DexDownLoad"

    const-string v4, "isDownloaded()"

    invoke-static {v0, v3, v4}, Lcom/amap/api/services/a/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/a/bz;->a:Lcom/amap/api/services/a/ca;

    iget-object v0, v0, Lcom/amap/api/services/a/ca;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/amap/api/services/a/cf$a;->a(Lcom/amap/api/services/a/bm;Ljava/lang/String;)Lcom/amap/api/services/a/cj;

    move-result-object v0

    .line 212
    if-eqz v0, :cond_1

    .line 215
    iget-object v1, p0, Lcom/amap/api/services/a/bz;->a:Lcom/amap/api/services/a/ca;

    invoke-direct {p0, v2, v0, v1}, Lcom/amap/api/services/a/bz;->a(Lcom/amap/api/services/a/bm;Lcom/amap/api/services/a/cj;Lcom/amap/api/services/a/ca;)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 219
    goto :goto_0
.end method

.method private e()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 228
    iget-object v1, p0, Lcom/amap/api/services/a/bz;->c:Lcom/amap/api/services/a/ba;

    if-nez v1, :cond_1

    .line 231
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/amap/api/services/a/bz;->c:Lcom/amap/api/services/a/ba;

    invoke-virtual {v1}, Lcom/amap/api/services/a/ba;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/services/a/bz;->a:Lcom/amap/api/services/a/ca;

    iget-object v2, v2, Lcom/amap/api/services/a/ca;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/services/a/bz;->c:Lcom/amap/api/services/a/ba;

    invoke-virtual {v1}, Lcom/amap/api/services/a/ba;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/services/a/bz;->a:Lcom/amap/api/services/a/ca;

    iget-object v2, v2, Lcom/amap/api/services/a/ca;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private f()Z
    .locals 2

    .prologue
    .line 240
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v1, p0, Lcom/amap/api/services/a/bz;->a:Lcom/amap/api/services/a/ca;

    iget v1, v1, Lcom/amap/api/services/a/ca;->g:I

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v1, p0, Lcom/amap/api/services/a/bz;->a:Lcom/amap/api/services/a/ca;

    iget v1, v1, Lcom/amap/api/services/a/ca;->f:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 267
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/services/a/bz;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/amap/api/services/a/bz;->d()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/amap/api/services/a/bz;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/services/a/bz;->f:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/amap/api/services/a/bz;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    iget-object v1, p0, Lcom/amap/api/services/a/bz;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/services/a/bz;->c:Lcom/amap/api/services/a/ba;

    invoke-virtual {v2}, Lcom/amap/api/services/a/ba;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amap/api/services/a/cf;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    const/4 v0, 0x1

    .line 274
    :cond_0
    :goto_0
    return v0

    .line 273
    :catch_0
    move-exception v1

    const-string v2, "DexDownLoad"

    const-string v3, "isNeedDownload()"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 94
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/services/a/bz;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    const-string v1, "DexDownLoad"

    const-string v2, "startDownload()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 311
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/bz;->e:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    .line 320
    :goto_0
    return-void

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/a/bz;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 317
    :catch_0
    move-exception v0

    const-string v1, "DexDownLoad"

    const-string v2, "onException()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a([BJ)V
    .locals 4

    .prologue
    .line 286
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/bz;->e:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_1

    .line 287
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amap/api/services/a/bz;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 289
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 290
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 292
    :cond_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/amap/api/services/a/bz;->e:Ljava/io/RandomAccessFile;

    .line 295
    :cond_1
    iget-object v0, p0, Lcom/amap/api/services/a/bz;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 296
    iget-object v0, p0, Lcom/amap/api/services/a/bz;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :goto_0
    return-void

    .line 301
    :catch_0
    move-exception v0

    const-string v1, "DexDownLoad"

    const-string v2, "onDownload()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()V
    .locals 7

    .prologue
    .line 327
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/bz;->e:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_0

    .line 384
    :goto_0
    return-void

    .line 331
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/services/a/bz;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 338
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/services/a/bz;->a:Lcom/amap/api/services/a/ca;

    invoke-virtual {v0}, Lcom/amap/api/services/a/ca;->b()Ljava/lang/String;

    move-result-object v2

    .line 345
    iget-object v0, p0, Lcom/amap/api/services/a/bz;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/amap/api/services/a/cf;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/amap/api/services/a/bz;->a:Lcom/amap/api/services/a/ca;

    invoke-virtual {v0}, Lcom/amap/api/services/a/ca;->c()Ljava/lang/String;

    move-result-object v4

    .line 348
    new-instance v6, Lcom/amap/api/services/a/bm;

    iget-object v0, p0, Lcom/amap/api/services/a/bz;->f:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/services/a/ci;->c()Lcom/amap/api/services/a/ci;

    move-result-object v1

    invoke-direct {v6, v0, v1}, Lcom/amap/api/services/a/bm;-><init>(Landroid/content/Context;Lcom/amap/api/services/a/bl;)V

    .line 349
    new-instance v0, Lcom/amap/api/services/a/cj$a;

    iget-object v1, p0, Lcom/amap/api/services/a/bz;->a:Lcom/amap/api/services/a/ca;

    iget-object v1, v1, Lcom/amap/api/services/a/ca;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/amap/api/services/a/bz;->a:Lcom/amap/api/services/a/ca;

    iget-object v3, v3, Lcom/amap/api/services/a/ca;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/amap/api/services/a/bz;->a:Lcom/amap/api/services/a/ca;

    iget-object v5, v5, Lcom/amap/api/services/a/ca;->d:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/services/a/cj$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "copy"

    invoke-virtual {v0, v1}, Lcom/amap/api/services/a/cj$a;->a(Ljava/lang/String;)Lcom/amap/api/services/a/cj$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/a/cj$a;->a()Lcom/amap/api/services/a/cj;

    move-result-object v0

    .line 351
    iget-object v1, p0, Lcom/amap/api/services/a/bz;->a:Lcom/amap/api/services/a/ca;

    iget-object v1, v1, Lcom/amap/api/services/a/ca;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/amap/api/services/a/bz;->a:Lcom/amap/api/services/a/ca;

    iget-object v3, v3, Lcom/amap/api/services/a/ca;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/amap/api/services/a/bz;->a:Lcom/amap/api/services/a/ca;

    iget-object v5, v5, Lcom/amap/api/services/a/ca;->d:Ljava/lang/String;

    invoke-static {v1, v3, v4, v5}, Lcom/amap/api/services/a/cj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v0, v1}, Lcom/amap/api/services/a/cf$a;->a(Lcom/amap/api/services/a/bm;Lcom/amap/api/services/a/cj;Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/amap/api/services/a/bz;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/services/a/bz;->a:Lcom/amap/api/services/a/ca;

    iget-object v1, v1, Lcom/amap/api/services/a/ca;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/amap/api/services/a/bz;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 359
    :try_start_3
    new-instance v0, Lcom/amap/api/services/a/cj$a;

    iget-object v1, p0, Lcom/amap/api/services/a/bz;->f:Landroid/content/Context;

    iget-object v3, p0, Lcom/amap/api/services/a/bz;->a:Lcom/amap/api/services/a/ca;

    iget-object v3, v3, Lcom/amap/api/services/a/ca;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/amap/api/services/a/bz;->c:Lcom/amap/api/services/a/ba;

    invoke-virtual {v5}, Lcom/amap/api/services/a/ba;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v3, v5}, Lcom/amap/api/services/a/cf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/amap/api/services/a/bz;->a:Lcom/amap/api/services/a/ca;

    iget-object v3, v3, Lcom/amap/api/services/a/ca;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/amap/api/services/a/bz;->a:Lcom/amap/api/services/a/ca;

    iget-object v5, v5, Lcom/amap/api/services/a/ca;->d:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/services/a/cj$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "used"

    invoke-virtual {v0, v1}, Lcom/amap/api/services/a/cj$a;->a(Ljava/lang/String;)Lcom/amap/api/services/a/cj$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/a/cj$a;->a()Lcom/amap/api/services/a/cj;

    move-result-object v0

    .line 360
    iget-object v1, p0, Lcom/amap/api/services/a/bz;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/services/a/bz;->c:Lcom/amap/api/services/a/ba;

    iget-object v3, p0, Lcom/amap/api/services/a/bz;->d:Ljava/lang/String;

    invoke-static {v1, v6, v2, v0, v3}, Lcom/amap/api/services/a/cf;->a(Landroid/content/Context;Lcom/amap/api/services/a/bm;Lcom/amap/api/services/a/ba;Lcom/amap/api/services/a/cj;Ljava/lang/String;)V

    .line 362
    invoke-static {}, Lcom/amap/api/services/a/cd;->a()Lcom/amap/api/services/a/cd;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/services/a/bz;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/services/a/bz;->c:Lcom/amap/api/services/a/ba;

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/services/a/cd;->b(Landroid/content/Context;Lcom/amap/api/services/a/ba;)Lcom/amap/api/services/a/cc;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 368
    :catch_0
    move-exception v0

    :try_start_4
    const-string v1, "DexDownLoad"

    const-string v2, "onFinish1"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 381
    :catch_1
    move-exception v0

    const-string v1, "DexDownLoad"

    const-string v2, "onFinish()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 334
    :catch_2
    move-exception v0

    :try_start_5
    const-string v1, "DexDownLoad"

    const-string v2, "onFinish3"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    .line 373
    :cond_1
    :try_start_6
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amap/api/services/a/bz;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 374
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 377
    :catch_3
    move-exception v0

    :try_start_7
    const-string v1, "DexDownLoad"

    const-string v2, "onFinish"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 393
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 102
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/services/a/bz;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/amap/api/services/a/bz;->b:Lcom/amap/api/services/a/cr;

    invoke-virtual {v0, p0}, Lcom/amap/api/services/a/cr;->a(Lcom/amap/api/services/a/cr$a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    const-string v1, "DexDownLoad"

    const-string v2, "run()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
