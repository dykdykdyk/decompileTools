.class abstract Lcom/loc/ag;
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

.field protected e:Lcom/loc/eo;

.field protected f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/loc/eo;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/loc/ag;->b:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/ag;->c:Ldalvik/system/DexFile;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/ag;->d:Z

    iput-object p1, p0, Lcom/loc/ag;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/loc/ag;->e:Lcom/loc/eo;

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Lcom/loc/eo;)V
    .locals 5

    .prologue
    .line 0
    invoke-virtual {p2}, Lcom/loc/eo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/loc/eo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/loc/aj;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/loc/aj;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1, p2}, Lcom/loc/ao;->a(Landroid/content/Context;Lcom/loc/eo;)Lcom/loc/ao;

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/loc/eo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/loc/eo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/loc/aj;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BaseClassLoader"

    const-string v2, "getInstanceByThread()"

    .line 2000
    invoke-static {v0, v1, v2}, Lcom/loc/es;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 0
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

    invoke-static {v3}, Lcom/loc/aj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v3, Lcom/loc/o;

    invoke-static {}, Lcom/loc/ap;->b()Lcom/loc/ap;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lcom/loc/o;-><init>(Landroid/content/Context;Lcom/loc/n;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/loc/al;->a(Lcom/loc/o;Ljava/lang/String;)Lcom/loc/aq;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1000
    iget-object v2, v2, Lcom/loc/aq;->d:Ljava/lang/String;

    .line 0
    iput-object v2, p0, Lcom/loc/ag;->f:Ljava/lang/String;

    :cond_3
    invoke-virtual {v0}, Ldalvik/system/DexFile;->close()V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/loc/ag;->f:Ljava/lang/String;

    new-instance v3, Lcom/loc/o;

    invoke-static {}, Lcom/loc/ap;->b()Lcom/loc/ap;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lcom/loc/o;-><init>(Landroid/content/Context;Lcom/loc/n;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/loc/ag;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/loc/o;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method abstract a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/loc/o;)V
.end method

.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/loc/ag;->c:Ldalvik/system/DexFile;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final b()V
    .locals 3

    .prologue
    .line 0
    :try_start_0
    iget-object v0, p0, Lcom/loc/ag;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/loc/ag;->c:Ldalvik/system/DexFile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/ag;->c:Ldalvik/system/DexFile;

    invoke-virtual {v0}, Ldalvik/system/DexFile;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "BaseClassLoader"

    const-string v2, "releaseDexFile()"

    .line 3000
    invoke-static {v0, v1, v2}, Lcom/loc/es;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
