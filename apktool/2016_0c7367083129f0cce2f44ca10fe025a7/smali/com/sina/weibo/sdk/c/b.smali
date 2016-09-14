.class final Lcom/sina/weibo/sdk/c/b;
.super Ljava/lang/Object;
.source "LogBuilder.java"


# static fields
.field private static synthetic a:[I


# direct methods
.method static a(Lcom/sina/weibo/sdk/c/f;)Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 132
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 134
    :try_start_0
    invoke-static {}, Lcom/sina/weibo/sdk/c/b;->a()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/c/f;->a()Lcom/sina/weibo/sdk/c/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sina/weibo/sdk/c/e;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 176
    :goto_0
    return-object v1

    .line 136
    :pswitch_0
    const-string v0, "type"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 138
    const-string v0, "time"

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/c/f;->c()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    const-string v2, "WBAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get page log error."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sina/weibo/sdk/d/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :pswitch_1
    :try_start_1
    const-string v0, "type"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 144
    const-string v0, "time"

    .line 1088
    iget-wide v2, p0, Lcom/sina/weibo/sdk/c/f;->f:J

    .line 144
    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 145
    const-string v0, "duration"

    .line 1096
    iget-wide v2, p0, Lcom/sina/weibo/sdk/c/f;->g:J

    .line 145
    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_0

    .line 149
    :pswitch_2
    const-string v0, "type"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 150
    const-string v0, "page_id"

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/c/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    const-string v0, "time"

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/c/f;->c()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 152
    const-string v0, "duration"

    .line 2096
    iget-wide v2, p0, Lcom/sina/weibo/sdk/c/f;->g:J

    .line 152
    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_0

    .line 156
    :pswitch_3
    const-string v0, "type"

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 157
    const-string v0, "page_id"

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/c/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    const-string v0, "time"

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/c/f;->c()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 159
    check-cast p0, Lcom/sina/weibo/sdk/c/a;

    invoke-static {v1, p0}, Lcom/sina/weibo/sdk/c/b;->a(Lorg/json/JSONObject;Lcom/sina/weibo/sdk/c/a;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 163
    :pswitch_4
    const-string v0, "type"

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 164
    const-string v0, "page_id"

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/c/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    const-string v0, "time"

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/c/f;->c()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 166
    const-string v0, "duration"

    .line 3096
    iget-wide v2, p0, Lcom/sina/weibo/sdk/c/f;->g:J

    .line 166
    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static a(Lorg/json/JSONObject;Lcom/sina/weibo/sdk/c/a;)Lorg/json/JSONObject;
    .locals 7

    .prologue
    .line 188
    :try_start_0
    const-string v0, "event_id"

    .line 4023
    iget-object v1, p1, Lcom/sina/weibo/sdk/c/a;->a:Ljava/lang/String;

    .line 188
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4027
    iget-object v0, p1, Lcom/sina/weibo/sdk/c/a;->b:Ljava/util/Map;

    .line 189
    if-eqz v0, :cond_2

    .line 5027
    iget-object v3, p1, Lcom/sina/weibo/sdk/c/a;->b:Ljava/util/Map;

    .line 191
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    const/4 v0, 0x0

    .line 193
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v0

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 206
    :cond_1
    const-string v0, "extend"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    :cond_2
    :goto_1
    return-object p0

    .line 193
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 194
    const/16 v1, 0xa

    if-ge v2, v1, :cond_1

    .line 195
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 196
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 197
    const-string v1, "|"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    :cond_4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ":"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    const-string v1, "WBAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "add event log error."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sina/weibo/sdk/d/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static synthetic a()[I
    .locals 3

    .prologue
    .line 20
    sget-object v0, Lcom/sina/weibo/sdk/c/b;->a:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/sina/weibo/sdk/c/e;->values()[Lcom/sina/weibo/sdk/c/e;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sina/weibo/sdk/c/e;->e:Lcom/sina/weibo/sdk/c/e;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/c/e;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/sina/weibo/sdk/c/e;->d:Lcom/sina/weibo/sdk/c/e;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/c/e;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/sina/weibo/sdk/c/e;->c:Lcom/sina/weibo/sdk/c/e;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/c/e;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/sina/weibo/sdk/c/e;->b:Lcom/sina/weibo/sdk/c/e;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/c/e;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/sina/weibo/sdk/c/e;->a:Lcom/sina/weibo/sdk/c/e;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/c/e;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/sina/weibo/sdk/c/b;->a:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method
