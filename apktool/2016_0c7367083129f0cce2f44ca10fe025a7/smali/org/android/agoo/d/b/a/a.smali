.class public final Lorg/android/agoo/d/b/a/a;
.super Lorg/android/agoo/d/b/a/b;
.source "HttpURLChunkedChannel.java"


# instance fields
.field private volatile k:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/android/agoo/d/b/a/b;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/android/agoo/d/b/a/a;->k:Ljava/net/HttpURLConnection;

    return-void
.end method

.method private static a(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 135
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 136
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 137
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    add-int/lit8 v0, v3, -0x1

    if-ge v1, v0, :cond_0

    .line 139
    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 142
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/net/HttpURLConnection;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 114
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    .line 115
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 116
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 119
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 121
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 122
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 125
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lorg/android/agoo/d/b/a/a;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 129
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 131
    :cond_1
    return-object v2
.end method


# virtual methods
.method protected final a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 51
    :try_start_0
    iget-object v1, p0, Lorg/android/agoo/d/b/a/a;->j:Landroid/content/Context;

    const-string v3, "AppStore"

    const/4 v4, 0x4

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 53
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 54
    const-string v3, "agoo_connect_type"

    const-string v4, "httpchunk"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 55
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 58
    :goto_0
    :try_start_1
    const-string v1, "HttpURLChunked"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http chunked connectId:["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1093
    iget v4, p0, Lorg/android/agoo/d/b/a/b;->h:I

    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]==>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1393
    iget-object v3, p0, Lorg/android/agoo/d/b/a/b;->a:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget v3, p0, Lorg/android/agoo/d/b/a/b;->b:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    move v0, v2

    .line 61
    :cond_0
    if-eqz v0, :cond_2

    .line 62
    const-string v0, "HttpURLChunked"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http chunked setPoxy:["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2385
    iget-object v4, p0, Lorg/android/agoo/d/b/a/b;->a:Ljava/lang/String;

    .line 62
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2389
    iget v4, p0, Lorg/android/agoo/d/b/a/b;->b:I

    .line 63
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 62
    invoke-static {v0, v3}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance v0, Ljava/net/Proxy;

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v4, Ljava/net/InetSocketAddress;

    .line 3385
    iget-object v5, p0, Lorg/android/agoo/d/b/a/b;->a:Ljava/lang/String;

    .line 65
    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    .line 3389
    iget v6, p0, Lorg/android/agoo/d/b/a/b;->b:I

    .line 66
    invoke-direct {v4, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v0, v3, v4}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 67
    invoke-virtual {v1, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lorg/android/agoo/d/b/a/a;->k:Ljava/net/HttpURLConnection;

    .line 71
    :goto_1
    iget-object v0, p0, Lorg/android/agoo/d/b/a/a;->k:Ljava/net/HttpURLConnection;

    const-string v1, "User-agent"

    const-string v3, "Agoo-sdk-%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 72
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 71
    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    if-eqz p2, :cond_3

    .line 74
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 75
    iget-object v4, p0, Lorg/android/agoo/d/b/a/a;->k:Ljava/net/HttpURLConnection;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 102
    :catch_0
    move-exception v0

    .line 6079
    iget-object v1, p0, Lorg/android/agoo/d/b/a/b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    .line 103
    if-nez v1, :cond_1

    .line 104
    invoke-virtual {p0, v2}, Lorg/android/agoo/d/b/a/a;->a(Z)V

    .line 105
    const-string v1, "HttpURLChunked"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http chunked connectId:["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6093
    iget v3, p0, Lorg/android/agoo/d/b/a/b;->h:I

    .line 105
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]==>[Throwable]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    sget-object v1, Lorg/android/agoo/d/b/b;->s:Lorg/android/agoo/d/b/b;

    invoke-virtual {p0, v1, v0}, Lorg/android/agoo/d/b/a/a;->a(Lorg/android/agoo/d/b/b;Ljava/lang/Throwable;)V

    .line 110
    :cond_1
    :goto_3
    return-void

    .line 69
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lorg/android/agoo/d/b/a/a;->k:Ljava/net/HttpURLConnection;

    goto :goto_1

    .line 78
    :cond_3
    iget-object v0, p0, Lorg/android/agoo/d/b/a/a;->k:Ljava/net/HttpURLConnection;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 79
    iget-object v0, p0, Lorg/android/agoo/d/b/a/a;->k:Ljava/net/HttpURLConnection;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 81
    iget-object v3, p0, Lorg/android/agoo/d/b/a/a;->k:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    .line 83
    iget-object v3, p0, Lorg/android/agoo/d/b/a/a;->k:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 84
    iget-object v4, p0, Lorg/android/agoo/d/b/a/a;->k:Ljava/net/HttpURLConnection;

    invoke-static {v4}, Lorg/android/agoo/d/b/a/a;->a(Ljava/net/HttpURLConnection;)Ljava/util/Map;

    move-result-object v4

    .line 85
    const/16 v5, 0xc8

    if-ne v5, v3, :cond_5

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lorg/android/agoo/d/b/a/a;->g:J

    .line 87
    iget-object v3, p0, Lorg/android/agoo/d/b/a/a;->k:Ljava/net/HttpURLConnection;

    .line 4147
    if-nez v3, :cond_4

    .line 4148
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 4150
    :cond_4
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lorg/android/agoo/d/b/a/a;->d:Ljava/io/InputStream;

    .line 88
    invoke-virtual {p0, v0, v1, v4}, Lorg/android/agoo/d/b/a/a;->a(JLjava/util/Map;)V

    .line 89
    invoke-virtual {p0}, Lorg/android/agoo/d/b/a/a;->h()V

    goto :goto_3

    .line 91
    :cond_5
    const-string v0, "HttpURLChunked"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "http chunked connectId:["

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5093
    iget v5, p0, Lorg/android/agoo/d/b/a/b;->h:I

    .line 91
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "]==>["

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "]"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/message/proguard/u;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 95
    iget-object v0, p0, Lorg/android/agoo/d/b/a/a;->j:Landroid/content/Context;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    .line 6035
    :try_start_3
    const-string v5, "AppStore"

    const/4 v6, 0x4

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 6037
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6038
    const-string v5, "agoo_push_errorid"

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 6039
    const-string v1, "agoo_push_path"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 6040
    const-string v1, "agoo_connect_type"

    const-string v5, "httpchunk"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 6041
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 98
    :cond_6
    :goto_4
    :try_start_4
    invoke-static {v3}, Lorg/android/agoo/d/b/b;->b(I)Lorg/android/agoo/d/b/b;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "http httpStatusCode=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v4, v1}, Lorg/android/agoo/d/b/a/a;->a(Lorg/android/agoo/d/b/b;Ljava/util/Map;Ljava/lang/Throwable;)V

    .line 100
    invoke-virtual {p0}, Lorg/android/agoo/d/b/a/a;->i()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v1

    goto/16 :goto_0
.end method

.method protected final f()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/android/agoo/d/b/a/a;->k:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lorg/android/agoo/d/b/a/a;->k:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/android/agoo/d/b/a/a;->k:Ljava/net/HttpURLConnection;

    .line 161
    :cond_0
    return-void
.end method

.method protected final g()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lorg/android/agoo/d/b/a/a;->k:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lorg/android/agoo/d/b/a/a;->k:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/android/agoo/d/b/a/a;->k:Ljava/net/HttpURLConnection;

    .line 170
    :cond_0
    return-void
.end method
