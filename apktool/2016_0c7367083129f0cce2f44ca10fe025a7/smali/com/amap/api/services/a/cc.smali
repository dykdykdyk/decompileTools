.class abstract Lcom/amap/api/services/a/cc;
.super Ljava/lang/ClassLoader;
.source "BaseClassLoader.java"


# instance fields
.field protected final a:Landroid/content/Context;

.field protected final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field protected c:Ldalvik/system/DexFile;

.field volatile d:Z

.field protected e:Lcom/amap/api/services/a/ba;

.field protected f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/a/ba;Z)V
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/a/cc;->b:Ljava/util/Map;

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/services/a/cc;->c:Ldalvik/system/DexFile;

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/services/a/cc;->d:Z

    .line 26
    iput-object p1, p0, Lcom/amap/api/services/a/cc;->a:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/amap/api/services/a/cc;->e:Lcom/amap/api/services/a/ba;

    .line 28
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/amap/api/services/a/ba;)V
    .locals 5

    .prologue
    .line 45
    invoke-virtual {p2}, Lcom/amap/api/services/a/ba;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amap/api/services/a/ba;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/amap/api/services/a/cf;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-static {p1}, Lcom/amap/api/services/a/cf;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    invoke-static {p1, p2}, Lcom/amap/api/services/a/ch;->a(Landroid/content/Context;Lcom/amap/api/services/a/ba;)Lcom/amap/api/services/a/ch;

    .line 53
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 55
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 57
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p2}, Lcom/amap/api/services/a/ba;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amap/api/services/a/ba;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/amap/api/services/a/cf;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    const-string v1, "BaseClassLoader"

    const-string v2, "getInstanceByThread()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_2
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/services/a/cf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 64
    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_0

    .line 66
    new-instance v3, Lcom/amap/api/services/a/bm;

    invoke-static {}, Lcom/amap/api/services/a/ci;->c()Lcom/amap/api/services/a/ci;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lcom/amap/api/services/a/bm;-><init>(Landroid/content/Context;Lcom/amap/api/services/a/bl;)V

    .line 67
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/amap/api/services/a/cf$a;->a(Lcom/amap/api/services/a/bm;Ljava/lang/String;)Lcom/amap/api/services/a/cj;

    move-result-object v2

    .line 68
    if-eqz v2, :cond_3

    .line 69
    invoke-virtual {v2}, Lcom/amap/api/services/a/cj;->d()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/services/a/cc;->f:Ljava/lang/String;

    .line 71
    :cond_3
    invoke-virtual {v0}, Ldalvik/system/DexFile;->close()V

    .line 72
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    iget-object v2, p0, Lcom/amap/api/services/a/cc;->f:Ljava/lang/String;

    new-instance v3, Lcom/amap/api/services/a/bm;

    invoke-static {}, Lcom/amap/api/services/a/ci;->c()Lcom/amap/api/services/a/ci;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lcom/amap/api/services/a/bm;-><init>(Landroid/content/Context;Lcom/amap/api/services/a/bl;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/amap/api/services/a/cc;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/services/a/bm;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method abstract a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/services/a/bm;)V
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amap/api/services/a/cc;->c:Ldalvik/system/DexFile;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b()V
    .locals 3

    .prologue
    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/cc;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 99
    iget-object v0, p0, Lcom/amap/api/services/a/cc;->c:Ldalvik/system/DexFile;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/amap/api/services/a/cc;->c:Ldalvik/system/DexFile;

    invoke-virtual {v0}, Ldalvik/system/DexFile;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    const-string v1, "BaseClassLoader"

    const-string v2, "releaseDexFile()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
