.class public Lcom/amap/api/services/a/i;
.super Ljava/lang/Object;
.source "CoreUtil.java"


# direct methods
.method public static a(D)D
    .locals 4

    .prologue
    .line 152
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.000000"

    new-instance v2, Ljava/text/DecimalFormatSymbols;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-direct {v0, v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 154
    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static a(I)D
    .locals 4

    .prologue
    .line 51
    int-to-double v0, p0

    const-wide v2, 0x40fb454000000000L    # 111700.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static a(Lcom/amap/api/services/core/LatLonPoint;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 158
    if-nez p0, :cond_0

    .line 159
    const-string v0, ""

    .line 163
    :goto_0
    return-object v0

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/amap/api/services/a/i;->a(D)D

    move-result-wide v0

    .line 162
    invoke-virtual {p0}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/amap/api/services/a/i;->a(D)D

    move-result-wide v2

    .line 163
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 211
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 212
    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 230
    if-nez p0, :cond_0

    .line 231
    const-string v0, ""

    .line 242
    :goto_0
    return-object v0

    .line 233
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 234
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 235
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/LatLonPoint;

    .line 236
    invoke-virtual {v0}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/amap/api/services/a/i;->a(D)D

    move-result-wide v4

    .line 237
    invoke-virtual {v0}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/amap/api/services/a/i;->a(D)D

    move-result-wide v6

    .line 238
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 239
    const-string v0, ";"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 234
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 241
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 242
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 247
    invoke-static {}, Lcom/amap/api/services/a/bg;->a()Lcom/amap/api/services/a/bg;

    move-result-object v0

    .line 248
    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {v0, p0, p1, p2}, Lcom/amap/api/services/a/bg;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 252
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 47
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 66
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 67
    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "infocode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 148
    :cond_0
    return-void

    .line 70
    :cond_1
    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    const-string v2, "infocode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 72
    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 76
    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    sparse-switch v2, :sswitch_data_0

    .line 141
    const-string v1, "info"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    new-instance v1, Lcom/amap/api/services/core/AMapException;

    invoke-direct {v1, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :catch_0
    move-exception v0

    const-string v1, "CoreUtil"

    const-string v2, "paseAuthFailurJson"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :sswitch_0
    :try_start_1
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u7528\u6237\u7b7e\u540d\u672a\u901a\u8fc7"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :sswitch_1
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u7528\u6237key\u4e0d\u6b63\u786e\u6216\u8fc7\u671f"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :sswitch_2
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u8bf7\u6c42\u670d\u52a1\u4e0d\u5b58\u5728"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :sswitch_3
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u8bbf\u95ee\u5df2\u8d85\u51fa\u65e5\u8bbf\u95ee\u91cf"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :sswitch_4
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u7528\u6237\u8bbf\u95ee\u8fc7\u4e8e\u9891\u7e41"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :sswitch_5
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u7528\u6237IP\u65e0\u6548"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :sswitch_6
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u7528\u6237\u57df\u540d\u65e0\u6548"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :sswitch_7
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u7528\u6237MD5\u5b89\u5168\u7801\u672a\u901a\u8fc7"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :sswitch_8
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u8bf7\u6c42key\u4e0e\u7ed1\u5b9a\u5e73\u53f0\u4e0d\u7b26"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :sswitch_9
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "IP\u8bbf\u95ee\u8d85\u9650"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :sswitch_a
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u670d\u52a1\u4e0d\u652f\u6301https\u8bf7\u6c42"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :sswitch_b
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u6743\u9650\u4e0d\u8db3\uff0c\u670d\u52a1\u8bf7\u6c42\u88ab\u62d2\u7edd"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :sswitch_c
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u5f00\u53d1\u8005\u5220\u9664\u4e86key\uff0ckey\u88ab\u5220\u9664\u540e\u65e0\u6cd5\u6b63\u5e38\u4f7f\u7528"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :sswitch_d
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u8bf7\u6c42\u670d\u52a1\u54cd\u5e94\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :sswitch_e
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u5f15\u64ce\u8fd4\u56de\u6570\u636e\u5f02\u5e38"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :sswitch_f
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u670d\u52a1\u7aef\u8bf7\u6c42\u94fe\u63a5\u8d85\u65f6"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :sswitch_10
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u8bfb\u53d6\u670d\u52a1\u7ed3\u679c\u8d85\u65f6"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :sswitch_11
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u8bf7\u6c42\u53c2\u6570\u975e\u6cd5"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :sswitch_12
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u7f3a\u5c11\u5fc5\u586b\u53c2\u6570"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :sswitch_13
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u8bf7\u6c42\u534f\u8bae\u975e\u6cd5"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :sswitch_14
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u5176\u4ed6\u672a\u77e5\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :sswitch_15
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "tableID\u683c\u5f0f\u4e0d\u6b63\u786e\u4e0d\u5b58\u5728"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :sswitch_16
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "key\u5bf9\u5e94\u7684tableID\u4e0d\u5b58\u5728"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :sswitch_17
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "ID\u4e0d\u5b58\u5728"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :sswitch_18
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u670d\u52a1\u5668\u7ef4\u62a4\u4e2d"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :sswitch_19
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u627e\u4e0d\u5230\u5bf9\u5e94\u7684userid\u4fe1\u606f,\u8bf7\u68c0\u67e5\u60a8\u63d0\u4f9b\u7684userid\u662f\u5426\u5b58\u5728"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :sswitch_1a
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "App key\u672a\u5f00\u901a\u201c\u9644\u8fd1\u201d\u529f\u80fd,\u8bf7\u6ce8\u518c\u9644\u8fd1KEY"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :sswitch_1b
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u89c4\u5212\u70b9\uff08\u5305\u62ec\u8d77\u70b9\u3001\u7ec8\u70b9\u3001\u9014\u7ecf\u70b9\uff09\u4e0d\u5728\u4e2d\u56fd\u9646\u5730\u8303\u56f4\u5185"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :sswitch_1c
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u89c4\u5212\u70b9\uff08\u8d77\u70b9\u3001\u7ec8\u70b9\u3001\u9014\u7ecf\u70b9\uff09\u9644\u8fd1\u641c\u4e0d\u5230\u8def"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :sswitch_1d
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u8def\u7ebf\u8ba1\u7b97\u5931\u8d25\uff0c\u901a\u5e38\u662f\u7531\u4e8e\u9053\u8def\u8fde\u901a\u5173\u7cfb\u5bfc\u81f4"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :sswitch_1e
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u8d77\u70b9\u7ec8\u70b9\u8ddd\u79bb\u8fc7\u957f"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 77
    nop

    :sswitch_data_0
    .sparse-switch
        0x2711 -> :sswitch_1
        0x2712 -> :sswitch_2
        0x2713 -> :sswitch_3
        0x2714 -> :sswitch_4
        0x2715 -> :sswitch_5
        0x2716 -> :sswitch_6
        0x2717 -> :sswitch_0
        0x2718 -> :sswitch_7
        0x2719 -> :sswitch_8
        0x271a -> :sswitch_9
        0x271b -> :sswitch_a
        0x271c -> :sswitch_b
        0x271d -> :sswitch_c
        0x4e20 -> :sswitch_11
        0x4e21 -> :sswitch_12
        0x4e22 -> :sswitch_13
        0x4e23 -> :sswitch_14
        0x5140 -> :sswitch_1b
        0x5141 -> :sswitch_1c
        0x5142 -> :sswitch_1d
        0x5143 -> :sswitch_1e
        0x55f0 -> :sswitch_15
        0x7530 -> :sswitch_d
        0x7531 -> :sswitch_e
        0x7532 -> :sswitch_f
        0x7533 -> :sswitch_10
        0x7d00 -> :sswitch_16
        0x7d01 -> :sswitch_17
        0x7d02 -> :sswitch_18
        0x7dc8 -> :sswitch_19
        0x7dc9 -> :sswitch_1a
    .end sparse-switch
.end method

.method public static c(Ljava/lang/String;)Ljava/util/Date;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 197
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-object v0

    .line 200
    :cond_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HHmm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 203
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 205
    :catch_0
    move-exception v1

    const-string v2, "CoreUtil"

    const-string v3, "parseString2Time"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Ljava/util/Date;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 216
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-object v0

    .line 219
    :cond_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 222
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 224
    :catch_0
    move-exception v1

    const-string v2, "CoreUtil"

    const-string v3, "parseTime"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
