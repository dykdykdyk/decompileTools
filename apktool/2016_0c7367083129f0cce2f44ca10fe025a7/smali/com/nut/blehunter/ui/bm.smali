.class final Lcom/nut/blehunter/ui/bm;
.super Ljava/lang/Object;
.source "LocationRecordActivity.java"

# interfaces
.implements Lrx/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/i",
        "<",
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/List",
        "<",
        "Lcom/nut/blehunter/entity/Position;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/util/HashMap;

.field final synthetic c:Lcom/nut/blehunter/ui/LocationRecordActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/LocationRecordActivity;ILjava/util/HashMap;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/nut/blehunter/ui/bm;->c:Lcom/nut/blehunter/ui/LocationRecordActivity;

    iput p2, p0, Lcom/nut/blehunter/ui/bm;->a:I

    iput-object p3, p0, Lcom/nut/blehunter/ui/bm;->b:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 217
    check-cast p1, Lrx/t;

    .line 1220
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1224
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/nut/blehunter/ui/bm;->c:Lcom/nut/blehunter/ui/LocationRecordActivity;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/LocationRecordActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "/rec"

    invoke-static {v0, v3}, Lcom/nut/blehunter/d/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/nut/blehunter/ui/bm;->c:Lcom/nut/blehunter/ui/LocationRecordActivity;

    invoke-static {v3}, Lcom/nut/blehunter/ui/LocationRecordActivity;->c(Lcom/nut/blehunter/ui/LocationRecordActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2135
    :try_start_1
    new-instance v0, Ljava/lang/String;

    .line 2142
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2143
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2144
    invoke-static {v3, v5}, Lcom/nut/blehunter/d/d;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 2145
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 2146
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 2147
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 2135
    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v0, v6, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1226
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1227
    const-string v0, "data"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1228
    const-string v5, "sync_date"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1229
    new-instance v3, Lcom/nut/blehunter/ui/bn;

    invoke-direct {v3, p0}, Lcom/nut/blehunter/ui/bn;-><init>(Lcom/nut/blehunter/ui/bm;)V

    invoke-virtual {v3}, Lcom/nut/blehunter/ui/bn;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 1231
    invoke-static {}, Lcom/nut/blehunter/e;->a()Lcom/google/gson/Gson;

    move-result-object v5

    invoke-virtual {v5, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 1232
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1233
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_0
    move-object v3, v2

    move-object v2, v1

    .line 1239
    :goto_0
    new-instance v0, Ljava/sql/Date;

    iget v1, p0, Lcom/nut/blehunter/ui/bm;->a:I

    int-to-long v6, v1

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-direct {v0, v6, v7}, Ljava/sql/Date;-><init>(J)V

    invoke-static {v0}, Lorg/threeten/bp/c;->a(Ljava/sql/Date;)Lorg/threeten/bp/j;

    move-result-object v5

    .line 1240
    iget-object v0, p0, Lcom/nut/blehunter/ui/bm;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nut/blehunter/ui/bm;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1241
    iget-object v0, p0, Lcom/nut/blehunter/ui/bm;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1242
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1243
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v7, p0, Lcom/nut/blehunter/ui/bm;->b:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1236
    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v2

    move-object v2, v1

    goto :goto_0

    .line 1245
    :cond_1
    iget-object v1, p0, Lcom/nut/blehunter/ui/bm;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1251
    :cond_2
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1252
    const-string v1, "sync_date"

    invoke-virtual {v5}, Lorg/threeten/bp/j;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1253
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1254
    const-string v1, "data"

    invoke-static {}, Lcom/nut/blehunter/e;->a()Lcom/google/gson/Gson;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1255
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1256
    invoke-static {v3}, Lorg/threeten/bp/j;->a(Ljava/lang/CharSequence;)Lorg/threeten/bp/j;

    move-result-object v1

    .line 1257
    if-eqz v1, :cond_3

    invoke-virtual {v5, v1}, Lorg/threeten/bp/j;->a(Lorg/threeten/bp/a/a;)I

    move-result v1

    if-lez v1, :cond_3

    .line 1258
    const-wide/16 v6, 0x1d

    invoke-virtual {v5, v6, v7}, Lorg/threeten/bp/j;->f(J)Lorg/threeten/bp/j;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/j;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1259
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1263
    :cond_3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/nut/blehunter/d/d;->a(Ljava/lang/String;Ljava/io/File;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1268
    :goto_3
    invoke-virtual {p1, v4}, Lrx/t;->onNext(Ljava/lang/Object;)V

    .line 1269
    invoke-virtual {p1}, Lrx/t;->onCompleted()V

    .line 217
    return-void

    .line 1265
    :catch_1
    move-exception v0

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_4

    .line 1236
    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catch_5
    move-exception v0

    goto :goto_2
.end method
