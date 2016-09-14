.class public final Lorg/android/agoo/d/c/e;
.super Ljava/lang/Object;
.source "MtopRequestHelper.java"


# direct methods
.method private static final a()J
    .locals 6

    .prologue
    .line 131
    const-wide/16 v0, 0x0

    .line 133
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v0, v2, v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    return-wide v0

    .line 134
    :catch_0
    move-exception v2

    .line 135
    const-string v3, "MtopRequestHelper"

    const-string v4, "getTime"

    invoke-static {v3, v4, v2}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 170
    const/4 v0, 0x0

    .line 172
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v2, "UTF-8"

    .line 173
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 172
    invoke-static {v1}, Lcom/umeng/message/proguard/p;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 174
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 175
    if-eqz p9, :cond_0

    const-string v3, ""

    invoke-virtual {v3, p9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 176
    invoke-virtual {v2, p9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    :cond_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    const-string v1, "&"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 183
    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    const-string v1, "&"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    const-string v1, "&"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 187
    invoke-virtual {v2, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    const-string v1, "&"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    invoke-virtual {v2, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    const-string v1, "&"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v3, "UTF-8"

    .line 192
    invoke-virtual {p8, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 191
    invoke-static {v1}, Lcom/umeng/message/proguard/p;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 193
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 194
    const-string v1, "&"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    invoke-virtual {v2, p6, p7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 196
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    .line 197
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 196
    invoke-static {v1}, Lcom/umeng/message/proguard/p;->a(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 201
    :goto_0
    return-object v0

    .line 198
    :catch_0
    move-exception v1

    .line 199
    const-string v2, "MtopRequestHelper"

    const-string v3, "toV3Sign"

    invoke-static {v2, v3, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static final a(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 205
    const/4 v0, 0x0

    .line 207
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 208
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 212
    :goto_0
    return-object v0

    .line 209
    :catch_0
    move-exception v1

    .line 210
    const-string v2, "MtopRequestHelper"

    const-string v3, "param2String"

    invoke-static {v2, v3, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static final a(Landroid/content/Context;Lorg/android/agoo/d/c/d;)Lorg/android/agoo/d/a/e;
    .locals 11

    .prologue
    const/4 v0, 0x0

    .line 41
    .line 43
    if-nez p1, :cond_0

    .line 127
    :goto_0
    return-object v0

    .line 46
    :cond_0
    :try_start_0
    new-instance v10, Lorg/android/agoo/d/a/e;

    invoke-direct {v10}, Lorg/android/agoo/d/a/e;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 47
    :try_start_1
    const-string v1, "api"

    .line 2108
    iget-object v2, p1, Lorg/android/agoo/d/c/d;->a:Ljava/lang/String;

    .line 47
    invoke-virtual {v10, v1, v2}, Lorg/android/agoo/d/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v1, "v"

    .line 2116
    iget-object v2, p1, Lorg/android/agoo/d/c/d;->b:Ljava/lang/String;

    .line 48
    invoke-virtual {v10, v1, v2}, Lorg/android/agoo/d/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3047
    iget-wide v6, p1, Lorg/android/agoo/d/c/d;->h:J

    .line 50
    const-wide/16 v2, 0x0

    cmp-long v1, v6, v2

    if-gtz v1, :cond_1

    .line 51
    invoke-static {}, Lorg/android/agoo/d/c/e;->a()J

    move-result-wide v6

    .line 53
    :cond_1
    const-string v1, "t"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Lorg/android/agoo/d/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    if-eqz p0, :cond_b

    .line 57
    invoke-static {p0}, Lcom/umeng/message/proguard/s;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 58
    invoke-static {p0}, Lcom/umeng/message/proguard/s;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 60
    :goto_1
    const-string v0, "imei"

    invoke-virtual {v10, v0, v4}, Lorg/android/agoo/d/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v0, "imsi"

    invoke-virtual {v10, v0, v5}, Lorg/android/agoo/d/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v0, "ttid"

    .line 3100
    iget-object v1, p1, Lorg/android/agoo/d/c/d;->c:Ljava/lang/String;

    .line 62
    invoke-virtual {v10, v0, v1}, Lorg/android/agoo/d/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v0, "appKey"

    .line 3144
    iget-object v1, p1, Lorg/android/agoo/d/c/d;->f:Ljava/lang/String;

    .line 63
    invoke-virtual {v10, v0, v1}, Lorg/android/agoo/d/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4058
    iget-object v0, p1, Lorg/android/agoo/d/c/d;->g:Ljava/lang/String;

    .line 64
    invoke-static {v0}, Lcom/umeng/message/proguard/u;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 65
    const-string v0, "deviceId"

    .line 5058
    iget-object v1, p1, Lorg/android/agoo/d/c/d;->g:Ljava/lang/String;

    .line 65
    invoke-virtual {v10, v0, v1}, Lorg/android/agoo/d/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5080
    :cond_2
    iget-object v0, p1, Lorg/android/agoo/d/c/d;->l:Ljava/util/Map;

    .line 69
    if-eqz v0, :cond_4

    .line 70
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 71
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 72
    if-eqz v2, :cond_4

    .line 74
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 75
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 76
    if-eqz v0, :cond_3

    .line 77
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/umeng/message/proguard/u;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 78
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/umeng/message/proguard/u;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 79
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v10, v1, v0}, Lorg/android/agoo/d/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v0, v10

    goto/16 :goto_0

    .line 5140
    :cond_4
    iget-object v0, p1, Lorg/android/agoo/d/c/d;->k:Ljava/util/Map;

    .line 85
    invoke-static {v0}, Lorg/android/agoo/d/c/e;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    .line 86
    invoke-static {v8}, Lcom/umeng/message/proguard/u;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 87
    const-string v0, "MtopRequestHelper"

    const-string v1, "data==null"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5144
    :cond_5
    iget-object v0, p1, Lorg/android/agoo/d/c/d;->f:Ljava/lang/String;

    .line 90
    invoke-static {v0}, Lcom/umeng/message/proguard/u;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 91
    const-string v1, "MtopRequestHelper"

    const-string v2, "appkey==null"

    invoke-static {v1, v2}, Lcom/umeng/message/proguard/bn;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5152
    :cond_6
    iget-object v1, p1, Lorg/android/agoo/d/c/d;->j:Ljava/lang/String;

    .line 6039
    iget-boolean v2, p1, Lorg/android/agoo/d/c/d;->i:Z

    .line 95
    if-eqz v2, :cond_7

    .line 6108
    iget-object v2, p1, Lorg/android/agoo/d/c/d;->a:Ljava/lang/String;

    .line 6116
    iget-object v3, p1, Lorg/android/agoo/d/c/d;->b:Ljava/lang/String;

    .line 6132
    iget-object v9, p1, Lorg/android/agoo/d/c/d;->e:Ljava/lang/String;

    .line 106
    invoke-static/range {v0 .. v9}, Lorg/android/agoo/d/c/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-static {v8}, Lcom/umeng/message/proguard/u;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 111
    const-string v1, "sign"

    invoke-virtual {v10, v1, v0}, Lorg/android/agoo/d/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_7
    :goto_3
    invoke-static {v8}, Lcom/umeng/message/proguard/u;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 117
    const-string v0, "data"

    invoke-virtual {v10, v0, v8}, Lorg/android/agoo/d/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7124
    :goto_4
    iget-object v0, p1, Lorg/android/agoo/d/c/d;->d:Ljava/lang/String;

    .line 121
    invoke-static {v0}, Lcom/umeng/message/proguard/u;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 122
    const-string v0, "sid"

    .line 8124
    iget-object v1, p1, Lorg/android/agoo/d/c/d;->d:Ljava/lang/String;

    .line 122
    invoke-virtual {v10, v0, v1}, Lorg/android/agoo/d/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    move-object v0, v10

    .line 126
    goto/16 :goto_0

    .line 113
    :cond_9
    const-string v0, "MtopRequestHelper"

    const-string v1, "sign==null"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 119
    :cond_a
    const-string v0, "MtopRequestHelper"

    const-string v1, "data==null"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_1
    move-exception v1

    goto/16 :goto_0

    :cond_b
    move-object v5, v0

    move-object v4, v0

    goto/16 :goto_1
.end method

.method public static final a(Lorg/android/agoo/d/c/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 26
    :try_start_0
    invoke-static {p1}, Lcom/umeng/message/proguard/u;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1144
    iget-object v0, p0, Lorg/android/agoo/d/c/d;->f:Ljava/lang/String;

    .line 27
    invoke-static {v0}, Lcom/umeng/message/proguard/u;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1148
    iput-object p1, p0, Lorg/android/agoo/d/c/d;->f:Ljava/lang/String;

    .line 30
    :cond_0
    invoke-static {p2}, Lcom/umeng/message/proguard/u;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1152
    iget-object v0, p0, Lorg/android/agoo/d/c/d;->j:Ljava/lang/String;

    .line 31
    invoke-static {v0}, Lcom/umeng/message/proguard/u;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1156
    iput-object p2, p0, Lorg/android/agoo/d/c/d;->j:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :cond_1
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    const-string v1, "MtopRequestHelper"

    const-string v2, "checkAppKeyAndAppSecret"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
