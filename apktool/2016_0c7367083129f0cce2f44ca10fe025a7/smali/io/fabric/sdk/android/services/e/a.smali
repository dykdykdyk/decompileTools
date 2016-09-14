.class abstract Lio/fabric/sdk/android/services/e/a;
.super Lio/fabric/sdk/android/services/b/a;
.source "AbstractAppSpiCall.java"


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/o;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/network/l;I)V
    .locals 0

    .prologue
    .line 69
    invoke-direct/range {p0 .. p5}, Lio/fabric/sdk/android/services/b/a;-><init>(Lio/fabric/sdk/android/o;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/network/l;I)V

    .line 70
    return-void
.end method

.method private a(Lio/fabric/sdk/android/services/network/HttpRequest;Lio/fabric/sdk/android/services/e/d;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 108
    const-string v0, "app[identifier]"

    iget-object v1, p2, Lio/fabric/sdk/android/services/e/d;->b:Ljava/lang/String;

    .line 5526
    invoke-virtual {p1, v0, v1}, Lio/fabric/sdk/android/services/network/HttpRequest;->b(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    .line 108
    const-string v1, "app[name]"

    iget-object v2, p2, Lio/fabric/sdk/android/services/e/d;->f:Ljava/lang/String;

    .line 6526
    invoke-virtual {v0, v1, v2}, Lio/fabric/sdk/android/services/network/HttpRequest;->b(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    .line 108
    const-string v1, "app[display_version]"

    iget-object v2, p2, Lio/fabric/sdk/android/services/e/d;->c:Ljava/lang/String;

    .line 7526
    invoke-virtual {v0, v1, v2}, Lio/fabric/sdk/android/services/network/HttpRequest;->b(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    .line 108
    const-string v1, "app[build_version]"

    iget-object v2, p2, Lio/fabric/sdk/android/services/e/d;->d:Ljava/lang/String;

    .line 8526
    invoke-virtual {v0, v1, v2}, Lio/fabric/sdk/android/services/network/HttpRequest;->b(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    .line 108
    const-string v1, "app[source]"

    iget v2, p2, Lio/fabric/sdk/android/services/e/d;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/fabric/sdk/android/services/network/HttpRequest;->a(Ljava/lang/String;Ljava/lang/Number;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    const-string v1, "app[minimum_sdk_version]"

    iget-object v2, p2, Lio/fabric/sdk/android/services/e/d;->h:Ljava/lang/String;

    .line 9526
    invoke-virtual {v0, v1, v2}, Lio/fabric/sdk/android/services/network/HttpRequest;->b(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    .line 108
    const-string v1, "app[built_sdk_version]"

    iget-object v2, p2, Lio/fabric/sdk/android/services/e/d;->i:Ljava/lang/String;

    .line 10526
    invoke-virtual {v0, v1, v2}, Lio/fabric/sdk/android/services/network/HttpRequest;->b(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v2

    .line 116
    iget-object v0, p2, Lio/fabric/sdk/android/services/e/d;->e:Ljava/lang/String;

    invoke-static {v0}, Lio/fabric/sdk/android/services/b/l;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    const-string v0, "app[instance_identifier]"

    iget-object v1, p2, Lio/fabric/sdk/android/services/e/d;->e:Ljava/lang/String;

    .line 11526
    invoke-virtual {v2, v0, v1}, Lio/fabric/sdk/android/services/network/HttpRequest;->b(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    .line 120
    :cond_0
    iget-object v0, p2, Lio/fabric/sdk/android/services/e/d;->j:Lio/fabric/sdk/android/services/e/n;

    if-eqz v0, :cond_1

    .line 121
    const/4 v1, 0x0

    .line 124
    :try_start_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/e/a;->b:Lio/fabric/sdk/android/o;

    .line 12116
    iget-object v0, v0, Lio/fabric/sdk/android/o;->r:Landroid/content/Context;

    .line 124
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v3, p2, Lio/fabric/sdk/android/services/e/d;->j:Lio/fabric/sdk/android/services/e/n;

    iget v3, v3, Lio/fabric/sdk/android/services/e/n;->b:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 127
    const-string v0, "app[icon][hash]"

    iget-object v3, p2, Lio/fabric/sdk/android/services/e/d;->j:Lio/fabric/sdk/android/services/e/n;

    iget-object v3, v3, Lio/fabric/sdk/android/services/e/n;->a:Ljava/lang/String;

    .line 12526
    invoke-virtual {v2, v0, v3}, Lio/fabric/sdk/android/services/network/HttpRequest;->b(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    .line 127
    const-string v3, "app[icon][data]"

    const-string v4, "icon.png"

    const-string v5, "application/octet-stream"

    invoke-virtual {v0, v3, v4, v5, v1}, Lio/fabric/sdk/android/services/network/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    const-string v3, "app[icon][width]"

    iget-object v4, p2, Lio/fabric/sdk/android/services/e/d;->j:Lio/fabric/sdk/android/services/e/n;

    iget v4, v4, Lio/fabric/sdk/android/services/e/n;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lio/fabric/sdk/android/services/network/HttpRequest;->a(Ljava/lang/String;Ljava/lang/Number;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    const-string v3, "app[icon][height]"

    iget-object v4, p2, Lio/fabric/sdk/android/services/e/d;->j:Lio/fabric/sdk/android/services/e/n;

    iget v4, v4, Lio/fabric/sdk/android/services/e/n;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lio/fabric/sdk/android/services/network/HttpRequest;->a(Ljava/lang/String;Ljava/lang/Number;)Lio/fabric/sdk/android/services/network/HttpRequest;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    const-string v0, "Failed to close app icon InputStream."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 140
    :cond_1
    :goto_0
    iget-object v0, p2, Lio/fabric/sdk/android/services/e/d;->k:Ljava/util/Collection;

    if-eqz v0, :cond_2

    .line 141
    iget-object v0, p2, Lio/fabric/sdk/android/services/e/d;->k:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/q;

    .line 13151
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "app[build][libraries][%s][version]"

    new-array v5, v8, [Ljava/lang/Object;

    .line 14032
    iget-object v6, v0, Lio/fabric/sdk/android/q;->a:Ljava/lang/String;

    .line 13151
    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 14036
    iget-object v4, v0, Lio/fabric/sdk/android/q;->b:Ljava/lang/String;

    .line 14526
    invoke-virtual {v2, v3, v4}, Lio/fabric/sdk/android/services/network/HttpRequest;->b(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    .line 15155
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "app[build][libraries][%s][type]"

    new-array v5, v8, [Ljava/lang/Object;

    .line 16032
    iget-object v6, v0, Lio/fabric/sdk/android/q;->a:Ljava/lang/String;

    .line 15155
    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 16040
    iget-object v0, v0, Lio/fabric/sdk/android/q;->c:Ljava/lang/String;

    .line 16526
    invoke-virtual {v2, v3, v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->b(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    goto :goto_1

    .line 131
    :catch_0
    move-exception v0

    .line 132
    :try_start_1
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v3

    const-string v4, "Fabric"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to find app icon with resource ID: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p2, Lio/fabric/sdk/android/services/e/d;->j:Lio/fabric/sdk/android/services/e/n;

    iget v6, v6, Lio/fabric/sdk/android/services/e/n;->b:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5, v0}, Lio/fabric/sdk/android/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    const-string v0, "Failed to close app icon InputStream."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v2, "Failed to close app icon InputStream."

    invoke-static {v1, v2}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_2
    return-object v2
.end method


# virtual methods
.method public a(Lio/fabric/sdk/android/services/e/d;)Z
    .locals 6

    .prologue
    .line 74
    .line 3117
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/services/b/a;->a(Ljava/util/Map;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    .line 4098
    const-string v1, "X-CRASHLYTICS-API-KEY"

    iget-object v2, p1, Lio/fabric/sdk/android/services/e/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lio/fabric/sdk/android/services/network/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    const-string v1, "X-CRASHLYTICS-API-CLIENT-TYPE"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Lio/fabric/sdk/android/services/network/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    const-string v1, "X-CRASHLYTICS-API-CLIENT-VERSION"

    iget-object v2, p0, Lio/fabric/sdk/android/services/e/a;->b:Lio/fabric/sdk/android/o;

    invoke-virtual {v2}, Lio/fabric/sdk/android/o;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/fabric/sdk/android/services/network/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    .line 76
    invoke-direct {p0, v0, p1}, Lio/fabric/sdk/android/services/e/a;->a(Lio/fabric/sdk/android/services/network/HttpRequest;Lio/fabric/sdk/android/services/e/d;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v1

    .line 78
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v0

    const-string v2, "Fabric"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Sending app info to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4100
    iget-object v4, p0, Lio/fabric/sdk/android/services/b/a;->a:Ljava/lang/String;

    .line 78
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p1, Lio/fabric/sdk/android/services/e/d;->j:Lio/fabric/sdk/android/services/e/n;

    if-eqz v0, :cond_0

    .line 80
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v0

    const-string v2, "Fabric"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "App icon hash is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lio/fabric/sdk/android/services/e/d;->j:Lio/fabric/sdk/android/services/e/n;

    iget-object v4, v4, Lio/fabric/sdk/android/services/e/n;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v0

    const-string v2, "Fabric"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "App icon size is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lio/fabric/sdk/android/services/e/d;->j:Lio/fabric/sdk/android/services/e/n;

    iget v4, v4, Lio/fabric/sdk/android/services/e/n;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lio/fabric/sdk/android/services/e/d;->j:Lio/fabric/sdk/android/services/e/n;

    iget v4, v4, Lio/fabric/sdk/android/services/e/n;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_0
    invoke-virtual {v1}, Lio/fabric/sdk/android/services/network/HttpRequest;->b()I

    move-result v2

    .line 87
    const-string v0, "POST"

    .line 4925
    invoke-virtual {v1}, Lio/fabric/sdk/android/services/network/HttpRequest;->a()Ljava/net/HttpURLConnection;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v3

    .line 87
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Create"

    .line 90
    :goto_0
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v3

    const-string v4, "Fabric"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " app request ID: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "X-REQUEST-ID"

    invoke-virtual {v1, v5}, Lio/fabric/sdk/android/services/network/HttpRequest;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Result was "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-static {v2}, Lio/fabric/sdk/android/services/b/ag;->a(I)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 87
    :cond_1
    const-string v0, "Update"

    goto :goto_0

    .line 94
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
