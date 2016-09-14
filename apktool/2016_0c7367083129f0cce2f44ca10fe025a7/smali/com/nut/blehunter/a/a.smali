.class public final Lcom/nut/blehunter/a/a;
.super Ljava/lang/Object;
.source "RecordFileUtil.java"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 48
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/log"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "behavious.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 53
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 54
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 60
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 58
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 144
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    const-string v1, "multipart/form-data"

    invoke-static {v1}, Lokhttp3/ai;->a(Ljava/lang/String;)Lokhttp3/ai;

    move-result-object v1

    invoke-static {v1, v0}, Lokhttp3/au;->create(Lokhttp3/ai;Ljava/io/File;)Lokhttp3/au;

    move-result-object v1

    .line 147
    const-string v2, "file"

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lokhttp3/al;->a(Ljava/lang/String;Ljava/lang/String;Lokhttp3/au;)Lokhttp3/al;

    move-result-object v0

    .line 148
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->e()Lcom/nut/blehunter/rxApi/service/UploadFileService;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "LOG"

    invoke-interface {v1, v2, v3, v0}, Lcom/nut/blehunter/rxApi/service/UploadFileService;->uploadFile(Ljava/lang/String;Ljava/lang/String;Lokhttp3/al;)Lrx/h;

    move-result-object v0

    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/h;->b(Lrx/m;)Lrx/h;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/a/b;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/a/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/k;)Lrx/u;

    .line 174
    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 177
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 181
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v0

    .line 182
    new-array v0, v0, [B

    .line 183
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 184
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 185
    new-instance v1, Ljava/util/zip/ZipOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 186
    new-instance v2, Ljava/util/zip/ZipEntry;

    const-string v3, "behavious.txt"

    invoke-direct {v2, v3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 187
    invoke-virtual {v1, v0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 188
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    const/4 v0, 0x1

    .line 194
    :goto_0
    return v0

    .line 191
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 194
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
