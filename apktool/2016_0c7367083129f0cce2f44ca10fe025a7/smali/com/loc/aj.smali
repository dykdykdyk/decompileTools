.class public final Lcom/loc/aj;
.super Ljava/lang/Object;
.source "DexFileManager.java"


# direct methods
.method static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

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

    return-object v0
.end method

.method static a(Landroid/content/Context;Lcom/loc/o;Lcom/loc/eo;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v0, 0x0

    .line 0
    invoke-virtual {p2}, Lcom/loc/eo;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "copy"

    invoke-static {v1, v2}, Lcom/loc/aq;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/loc/aq;

    .line 14000
    invoke-virtual {p1, v1, v2, v0}, Lcom/loc/o;->a(Ljava/lang/String;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v9

    .line 0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v8

    :cond_0
    invoke-static {v9}, Lcom/loc/aj;->a(Ljava/util/List;)V

    move v7, v0

    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_2

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/loc/aq;

    .line 15000
    iget-object v0, v6, Lcom/loc/aq;->a:Ljava/lang/String;

    .line 16000
    invoke-static {p0, v0}, Lcom/loc/aj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1, p2}, Lcom/loc/aj;->a(Lcom/loc/o;Ljava/lang/String;Ljava/lang/String;Lcom/loc/eo;)Z

    move-result v0

    .line 0
    if-eqz v0, :cond_1

    :try_start_0
    new-instance v0, Lcom/loc/ar;

    invoke-virtual {p2}, Lcom/loc/eo;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/loc/eo;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/loc/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 17000
    iget-object v2, v6, Lcom/loc/aq;->b:Ljava/lang/String;

    .line 0
    invoke-virtual {p2}, Lcom/loc/eo;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/loc/eo;->b()Ljava/lang/String;

    move-result-object v4

    .line 18000
    iget-object v5, v6, Lcom/loc/aq;->d:Ljava/lang/String;

    .line 0
    invoke-direct/range {v0 .. v5}, Lcom/loc/ar;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "used"

    .line 19000
    iput-object v1, v0, Lcom/loc/ar;->f:Ljava/lang/String;

    .line 0
    invoke-virtual {v0}, Lcom/loc/ar;->a()Lcom/loc/aq;

    move-result-object v0

    .line 20000
    iget-object v1, v6, Lcom/loc/aq;->a:Ljava/lang/String;

    .line 0
    invoke-static {p0, v1}, Lcom/loc/aj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/loc/aj;->a(Landroid/content/Context;Lcom/loc/o;Lcom/loc/eo;Lcom/loc/aq;Ljava/lang/String;)V

    .line 21000
    iget-object v0, v6, Lcom/loc/aq;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move-object v8, v0

    .line 0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DexFileManager"

    const-string v2, "loadAvailableDynamicSDKFile"

    invoke-static {v0, v1, v2}, Lcom/loc/es;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    .line 22000
    :cond_1
    iget-object v0, v6, Lcom/loc/aq;->a:Ljava/lang/String;

    .line 0
    invoke-static {p0, p1, v0}, Lcom/loc/aj;->b(Landroid/content/Context;Lcom/loc/o;Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    move-object v0, v8

    goto :goto_2
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/loc/aj;->a(Landroid/content/Context;)Ljava/lang/String;

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

.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/loc/eh;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

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

    invoke-static {v0}, Lcom/loc/ek;->b(Ljava/lang/String;)Ljava/lang/String;

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

.method static a(Landroid/content/Context;Lcom/loc/o;Lcom/loc/eo;Lcom/loc/aq;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 0
    :try_start_0
    invoke-virtual {p2}, Lcom/loc/eo;->a()Ljava/lang/String;

    move-result-object v0

    .line 8000
    iget-object v1, p3, Lcom/loc/aq;->a:Ljava/lang/String;

    .line 0
    invoke-static {p0, p1, v1}, Lcom/loc/aj;->a(Landroid/content/Context;Lcom/loc/o;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v1, 0x20

    :try_start_1
    new-array v1, v1, [B

    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    new-instance v4, Ljava/io/File;

    invoke-virtual {p2}, Lcom/loc/eo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/loc/aj;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v0, 0x1

    invoke-direct {v1, v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v0, 0x400

    :try_start_2
    new-array v0, v0, [B

    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_2

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v3

    :goto_1
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    :goto_2
    if-eqz v3, :cond_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_0
    :goto_3
    if-eqz v2, :cond_1

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_1
    :goto_4
    throw v0

    :cond_2
    :try_start_6
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/ek;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9000
    iput-object v0, p3, Lcom/loc/aq;->b:Ljava/lang/String;

    .line 10000
    iget-object v0, p3, Lcom/loc/aq;->a:Ljava/lang/String;

    .line 0
    invoke-static {v0}, Lcom/loc/aq;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11000
    invoke-virtual {p1, p3, v0}, Lcom/loc/o;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 0
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :goto_5
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :goto_6
    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

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

.method static a(Landroid/content/Context;Lcom/loc/o;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/loc/aj;->b(Landroid/content/Context;Lcom/loc/o;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/loc/aj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/loc/aj;->b(Landroid/content/Context;Lcom/loc/o;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/loc/o;Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 0
    const-string v0, "used"

    invoke-static {p0, p2, v0}, Lcom/loc/al;->a(Lcom/loc/o;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/aq;

    if-eqz v0, :cond_0

    .line 1000
    iget-object v2, v0, Lcom/loc/aq;->a:Ljava/lang/String;

    .line 0
    invoke-static {p1, p0, v2}, Lcom/loc/aj;->a(Landroid/content/Context;Lcom/loc/o;Ljava/lang/String;)V

    .line 2000
    iget-object v0, v0, Lcom/loc/aq;->d:Ljava/lang/String;

    .line 0
    invoke-static {p2, v0}, Lcom/loc/aq;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/loc/aq;

    .line 3000
    invoke-virtual {p0, v0, v2, v3}, Lcom/loc/o;->a(Ljava/lang/String;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v0

    .line 0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/aq;

    const-string v2, "errorstatus"

    .line 4000
    iput-object v2, v0, Lcom/loc/aq;->e:Ljava/lang/String;

    .line 5000
    iget-object v2, v0, Lcom/loc/aq;->a:Ljava/lang/String;

    .line 0
    invoke-static {v2}, Lcom/loc/aq;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6000
    invoke-virtual {p0, v0, v2}, Lcom/loc/o;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7000
    iget-object v0, v0, Lcom/loc/aq;->a:Ljava/lang/String;

    .line 0
    invoke-static {p1, v0}, Lcom/loc/aj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

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
            "Lcom/loc/aq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 0
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_2

    add-int/lit8 v0, v2, 0x1

    move v3, v0

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/aq;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/loc/aq;

    .line 23000
    iget-object v4, v0, Lcom/loc/aq;->d:Ljava/lang/String;

    .line 24000
    iget-object v5, v1, Lcom/loc/aq;->d:Ljava/lang/String;

    .line 0
    invoke-static {v5, v4}, Lcom/loc/aw;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    invoke-interface {p0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, v3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method static a(Lcom/loc/o;Ljava/lang/String;Ljava/lang/String;Lcom/loc/eo;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 0
    invoke-static {p0, p1}, Lcom/loc/al;->a(Lcom/loc/o;Ljava/lang/String;)Lcom/loc/aq;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Lcom/loc/eo;->b()Ljava/lang/String;

    move-result-object v2

    .line 12000
    iget-object v3, v1, Lcom/loc/aq;->c:Ljava/lang/String;

    .line 0
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    .line 13000
    :cond_1
    iget-object v1, v1, Lcom/loc/aq;->b:Ljava/lang/String;

    .line 0
    invoke-static {p2, v1}, Lcom/loc/aj;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/loc/ek;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/loc/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/loc/aj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static b(Landroid/content/Context;Lcom/loc/o;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0, p2}, Lcom/loc/aj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-static {p2}, Lcom/loc/aq;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/loc/aq;

    invoke-virtual {p1, v0, v1}, Lcom/loc/o;->a(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/loc/ak;

    invoke-direct {v0, p0, p1, p2}, Lcom/loc/ak;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/loc/ak;->start()V

    return-void
.end method
