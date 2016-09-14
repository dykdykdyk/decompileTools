.class Lcom/amap/api/services/a/cg;
.super Lcom/amap/api/services/a/cc;
.source "DynamicClassLoader.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/a/ba;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/amap/api/services/a/cc;-><init>(Landroid/content/Context;Lcom/amap/api/services/a/ba;Z)V

    .line 89
    invoke-virtual {p2}, Lcom/amap/api/services/a/ba;->a()Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-virtual {p2}, Lcom/amap/api/services/a/ba;->b()Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-static {p1, v0, v1}, Lcom/amap/api/services/a/cf;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {p1}, Lcom/amap/api/services/a/cf;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "dexPath or dexOutputDir is null."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 103
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 105
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    invoke-virtual {p2}, Lcom/amap/api/services/a/ba;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amap/api/services/a/ba;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/amap/api/services/a/cf;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "file not exist!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_3
    if-eqz p3, :cond_4

    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/services/a/cf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/amap/api/services/a/cg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    new-instance v2, Lcom/amap/api/services/a/cg$1;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/amap/api/services/a/cg$1;-><init>(Lcom/amap/api/services/a/cg;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {v2}, Lcom/amap/api/services/a/cg$1;->start()V

    .line 125
    :cond_4
    return-void
.end method

.method private a(Lcom/amap/api/services/a/bm;Lcom/amap/api/services/a/ba;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/amap/api/services/a/cg;->a:Landroid/content/Context;

    .line 59
    invoke-virtual {p2}, Lcom/amap/api/services/a/ba;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amap/api/services/a/ba;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/cf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {p1, v0, p3, p2}, Lcom/amap/api/services/a/cf;->a(Lcom/amap/api/services/a/bm;Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/services/a/ba;)Z

    move-result v0

    return v0
.end method

.method private a(Lcom/amap/api/services/a/bm;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 65
    iget-object v0, p0, Lcom/amap/api/services/a/cg;->a:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/amap/api/services/a/cf;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    iget-object v0, p0, Lcom/amap/api/services/a/cg;->e:Lcom/amap/api/services/a/ba;

    invoke-static {p1, p2, v1, v0}, Lcom/amap/api/services/a/cf;->a(Lcom/amap/api/services/a/bm;Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/services/a/ba;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    .line 82
    :goto_0
    return v0

    .line 70
    :cond_0
    invoke-static {p1, p2}, Lcom/amap/api/services/a/cf$a;->a(Lcom/amap/api/services/a/bm;Ljava/lang/String;)Lcom/amap/api/services/a/cj;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_1

    .line 72
    const/4 v0, 0x0

    goto :goto_0

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/amap/api/services/a/cg;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 75
    new-instance v0, Lcom/amap/api/services/a/cj$a;

    invoke-static {v1}, Lcom/amap/api/services/a/ay;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/amap/api/services/a/cg;->e:Lcom/amap/api/services/a/ba;

    .line 76
    invoke-virtual {v1}, Lcom/amap/api/services/a/ba;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/amap/api/services/a/cg;->e:Lcom/amap/api/services/a/ba;

    invoke-virtual {v1}, Lcom/amap/api/services/a/ba;->b()Ljava/lang/String;

    move-result-object v4

    move-object v1, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/services/a/cj$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "useod"

    .line 77
    invoke-virtual {v0, v1}, Lcom/amap/api/services/a/cj$a;->a(Ljava/lang/String;)Lcom/amap/api/services/a/cj$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/a/cj$a;->a()Lcom/amap/api/services/a/cj;

    move-result-object v0

    .line 79
    invoke-static {p2}, Lcom/amap/api/services/a/cj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-static {p1, v0, v1}, Lcom/amap/api/services/a/cf$a;->a(Lcom/amap/api/services/a/bm;Lcom/amap/api/services/a/cj;Ljava/lang/String;)V

    :cond_2
    move v0, v6

    .line 82
    goto :goto_0
.end method


# virtual methods
.method a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 159
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 161
    :try_start_0
    new-instance v0, Lcom/amap/api/services/a/bm;

    invoke-static {}, Lcom/amap/api/services/a/ci;->c()Lcom/amap/api/services/a/ci;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/amap/api/services/a/bm;-><init>(Landroid/content/Context;Lcom/amap/api/services/a/bl;)V

    .line 163
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amap/api/services/a/cf$a;->a(Lcom/amap/api/services/a/bm;Ljava/lang/String;)Lcom/amap/api/services/a/cj;

    move-result-object v2

    .line 166
    if-eqz v2, :cond_0

    .line 167
    invoke-virtual {v2}, Lcom/amap/api/services/a/cj;->d()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/services/a/cg;->f:Ljava/lang/String;

    .line 170
    :cond_0
    iget-object v2, p0, Lcom/amap/api/services/a/cg;->e:Lcom/amap/api/services/a/ba;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/amap/api/services/a/cg;->a(Lcom/amap/api/services/a/bm;Lcom/amap/api/services/a/ba;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 176
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/amap/api/services/a/cg;->d:Z

    .line 178
    iget-object v2, p0, Lcom/amap/api/services/a/cg;->a:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/amap/api/services/a/cf;->a(Landroid/content/Context;Lcom/amap/api/services/a/bm;Ljava/lang/String;)V

    .line 180
    iget-object v2, p0, Lcom/amap/api/services/a/cg;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/amap/api/services/a/cg;->e:Lcom/amap/api/services/a/ba;

    invoke-static {v2, v0, v3}, Lcom/amap/api/services/a/cf;->a(Landroid/content/Context;Lcom/amap/api/services/a/bm;Lcom/amap/api/services/a/ba;)Ljava/lang/String;

    move-result-object v2

    .line 183
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 184
    iput-object v2, p0, Lcom/amap/api/services/a/cg;->f:Ljava/lang/String;

    .line 189
    iget-object v2, p0, Lcom/amap/api/services/a/cg;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/amap/api/services/a/cg;->e:Lcom/amap/api/services/a/ba;

    invoke-virtual {p0, v2, v3}, Lcom/amap/api/services/a/cg;->a(Landroid/content/Context;Lcom/amap/api/services/a/ba;)V

    .line 195
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 241
    :goto_0
    return-void

    .line 202
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/services/a/cf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 204
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 208
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/a/cf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/services/a/cg;->f:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/amap/api/services/a/cg;->a(Lcom/amap/api/services/a/bm;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 220
    iget-object v0, p0, Lcom/amap/api/services/a/cg;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/services/a/cg;->e:Lcom/amap/api/services/a/ba;

    invoke-virtual {p0, v0, v1}, Lcom/amap/api/services/a/cg;->a(Landroid/content/Context;Lcom/amap/api/services/a/ba;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :cond_3
    :goto_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    goto :goto_0

    .line 233
    :catch_0
    move-exception v0

    const-string v1, "DynamicClassLoader"

    const-string v2, "verifyDynamicSDK()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/services/a/bm;)V
    .locals 6

    .prologue
    .line 244
    iget-object v0, p0, Lcom/amap/api/services/a/cg;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 245
    :cond_0
    invoke-static {p2}, Lcom/amap/api/services/a/ay;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 246
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 247
    iget-object v0, p0, Lcom/amap/api/services/a/cg;->e:Lcom/amap/api/services/a/ba;

    invoke-virtual {v0}, Lcom/amap/api/services/a/ba;->a()Ljava/lang/String;

    move-result-object v3

    .line 248
    iget-object v0, p0, Lcom/amap/api/services/a/cg;->e:Lcom/amap/api/services/a/ba;

    invoke-virtual {v0}, Lcom/amap/api/services/a/ba;->b()Ljava/lang/String;

    move-result-object v4

    .line 254
    new-instance v0, Lcom/amap/api/services/a/cj$a;

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/services/a/cj$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "useod"

    .line 255
    invoke-virtual {v0, v2}, Lcom/amap/api/services/a/cj$a;->a(Ljava/lang/String;)Lcom/amap/api/services/a/cj$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/a/cj$a;->a()Lcom/amap/api/services/a/cj;

    move-result-object v0

    .line 257
    invoke-static {v1}, Lcom/amap/api/services/a/cj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 256
    invoke-static {p4, v0, v1}, Lcom/amap/api/services/a/cf$a;->a(Lcom/amap/api/services/a/bm;Lcom/amap/api/services/a/cj;Ljava/lang/String;)V

    .line 266
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/cg;->c:Ldalvik/system/DexFile;

    if-eqz v0, :cond_0

    .line 47
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/services/a/cg;->b()V

    .line 43
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/cg;->c:Ldalvik/system/DexFile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    const-string v1, "DynamicClassLoader"

    const-string v2, "loadDexFile()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "load dex fail"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/cg;->c:Ldalvik/system/DexFile;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Ljava/lang/ClassNotFoundException;

    invoke-direct {v0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :catch_0
    move-exception v0

    const-string v1, "DynamicClassLoader"

    const-string v2, "findCl"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    new-instance v0, Ljava/lang/ClassNotFoundException;

    invoke-direct {v0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/services/a/cg;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 140
    if-eqz v0, :cond_1

    .line 148
    :goto_0
    return-object v0

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/amap/api/services/a/cg;->c:Ldalvik/system/DexFile;

    invoke-virtual {v0, p1, p0}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 144
    if-nez v0, :cond_2

    .line 145
    new-instance v0, Ljava/lang/ClassNotFoundException;

    invoke-direct {v0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_2
    iget-object v1, p0, Lcom/amap/api/services/a/cg;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
