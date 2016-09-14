.class public final Lorg/android/agoo/d/c/g;
.super Ljava/lang/Object;
.source "MtopResponseHelper.java"


# direct methods
.method public static a(Ljava/lang/String;)Lorg/android/agoo/d/c/i;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 25
    new-instance v2, Lorg/android/agoo/d/c/i;

    invoke-direct {v2}, Lorg/android/agoo/d/c/i;-><init>()V

    .line 27
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 28
    const-string v0, "ret"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 31
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    move v0, v1

    :goto_0
    if-ge v0, v5, :cond_0

    .line 32
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 33
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 36
    const-string v7, "::"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 37
    if-eqz v6, :cond_2

    const/4 v7, 0x2

    array-length v8, v6

    if-ne v7, v8, :cond_2

    .line 38
    const/4 v7, 0x0

    aget-object v7, v6, v7

    .line 1084
    iput-object v7, v2, Lorg/android/agoo/d/c/i;->e:Ljava/lang/String;

    .line 39
    const/4 v7, 0x1

    aget-object v7, v6, v7

    .line 2069
    iput-object v7, v2, Lorg/android/agoo/d/c/i;->d:Ljava/lang/String;

    .line 40
    const-string v7, "SUCCESS"

    const/4 v8, 0x0

    aget-object v6, v6, v8

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 41
    const-string v0, "data"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3054
    iput-object v0, v2, Lorg/android/agoo/d/c/i;->c:Ljava/lang/String;

    .line 4039
    const/4 v0, 0x1

    iput-boolean v0, v2, Lorg/android/agoo/d/c/i;->a:Z

    .line 5092
    :cond_0
    const/16 v0, 0xc8

    iput v0, v2, Lorg/android/agoo/d/c/i;->b:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_1
    const-string v0, "MtopResponseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "MtopResponseHelper:["

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/android/agoo/d/c/i;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-object v2

    .line 5039
    :cond_1
    const/4 v6, 0x0

    :try_start_1
    iput-boolean v6, v2, Lorg/android/agoo/d/c/i;->a:Z

    .line 46
    const-string v6, "data"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5054
    iput-object v6, v2, Lorg/android/agoo/d/c/i;->c:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 31
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 6039
    iput-boolean v1, v2, Lorg/android/agoo/d/c/i;->a:Z

    .line 6054
    iput-object p0, v2, Lorg/android/agoo/d/c/i;->c:Ljava/lang/String;

    .line 6092
    const/16 v0, 0x12e

    iput v0, v2, Lorg/android/agoo/d/c/i;->b:I

    goto :goto_1
.end method
