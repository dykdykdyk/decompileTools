.class public final Lcom/nut/blehunter/d/g;
.super Ljava/lang/Object;
.source "JsonUtils.java"


# direct methods
.method public static a(Ljava/lang/String;)Lcom/nut/blehunter/entity/MapRegion;
    .locals 4

    .prologue
    .line 14
    const/4 v1, 0x0

    .line 16
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :goto_0
    new-instance v1, Lcom/nut/blehunter/entity/MapRegion;

    invoke-direct {v1}, Lcom/nut/blehunter/entity/MapRegion;-><init>()V

    .line 22
    if-eqz v0, :cond_0

    .line 23
    const-string v2, "address"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/nut/blehunter/entity/MapRegion;->a:Ljava/lang/String;

    .line 24
    const-string v2, "latitude"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/nut/blehunter/entity/MapRegion;->b:D

    .line 25
    const-string v2, "longitude"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/nut/blehunter/entity/MapRegion;->c:D

    .line 26
    const-string v2, "radius"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/nut/blehunter/entity/MapRegion;->d:I

    .line 28
    :cond_0
    return-object v1

    .line 18
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method
