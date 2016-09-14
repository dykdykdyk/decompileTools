.class public final Lcom/nut/blehunter/d/k;
.super Ljava/lang/Object;
.source "PickPhotoUtils.java"


# direct methods
.method public static a(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    .line 2161
    const-string v0, "output"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 74
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 7

    .prologue
    const/16 v6, 0x384

    const/4 v5, 0x1

    .line 57
    invoke-static {p0}, Lcom/nut/blehunter/d/d;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    const-string v0, "beginCropImage fail, temp file no exist"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, La/a/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 65
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 66
    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-static {p0}, Lcom/nut/blehunter/d/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 68
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 1040
    new-instance v2, Lcom/soundcloud/android/crop/a;

    invoke-direct {v2, v0, v1}, Lcom/soundcloud/android/crop/a;-><init>(Landroid/net/Uri;Landroid/net/Uri;)V

    .line 1077
    iget-object v0, v2, Lcom/soundcloud/android/crop/a;->a:Landroid/content/Intent;

    const-string v1, "max_x"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1078
    iget-object v0, v2, Lcom/soundcloud/android/crop/a;->a:Landroid/content/Intent;

    const-string v1, "max_y"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2065
    iget-object v0, v2, Lcom/soundcloud/android/crop/a;->a:Landroid/content/Intent;

    const-string v1, "aspect_x"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2066
    iget-object v0, v2, Lcom/soundcloud/android/crop/a;->a:Landroid/content/Intent;

    const-string v1, "aspect_y"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2151
    iget-object v0, v2, Lcom/soundcloud/android/crop/a;->a:Landroid/content/Intent;

    const-class v1, Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2152
    iget-object v0, v2, Lcom/soundcloud/android/crop/a;->a:Landroid/content/Intent;

    .line 2098
    const/16 v1, 0x1a35

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 39
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 41
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-static {p0}, Lcom/nut/blehunter/d/d;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 43
    invoke-static {v1, v2}, Lcom/nut/blehunter/d/d;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 44
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 45
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 46
    const/4 v0, 0x1

    .line 52
    :goto_0
    return v0

    .line 48
    :catch_0
    move-exception v1

    const-string v2, "when take picture from camera"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, La/a/a;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 51
    :catch_1
    move-exception v1

    const-string v2, "when take picture from camera (Exception)"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, La/a/a;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
