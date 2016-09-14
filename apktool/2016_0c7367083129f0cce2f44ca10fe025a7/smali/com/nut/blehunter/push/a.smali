.class public final Lcom/nut/blehunter/push/a;
.super Ljava/lang/Object;
.source "PushMsgUtils.java"


# direct methods
.method public static a(Ljava/lang/String;)Lcom/nut/blehunter/entity/FindLocation;
    .locals 10

    .prologue
    .line 57
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 58
    const-string v1, "uuid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    const-string v2, "tagId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 60
    new-instance v3, Lcom/nut/blehunter/entity/Position;

    invoke-direct {v3}, Lcom/nut/blehunter/entity/Position;-><init>()V

    .line 61
    const-string v4, "createTime"

    invoke-static {}, Lcom/nut/blehunter/d/c;->a()J

    move-result-wide v6

    invoke-virtual {v0, v4, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 62
    const-string v6, "latitude"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 63
    const-string v8, "longitude"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 64
    iput-object v1, v3, Lcom/nut/blehunter/entity/Position;->a:Ljava/lang/String;

    .line 65
    iput-wide v4, v3, Lcom/nut/blehunter/entity/Position;->e:J

    .line 66
    iput-wide v6, v3, Lcom/nut/blehunter/entity/Position;->d:D

    .line 67
    iput-wide v8, v3, Lcom/nut/blehunter/entity/Position;->c:D

    .line 68
    new-instance v0, Lcom/nut/blehunter/entity/FindLocation;

    invoke-direct {v0}, Lcom/nut/blehunter/entity/FindLocation;-><init>()V

    .line 69
    iput-object v2, v0, Lcom/nut/blehunter/entity/FindLocation;->a:Ljava/lang/String;

    .line 70
    iput-object v3, v0, Lcom/nut/blehunter/entity/FindLocation;->b:Lcom/nut/blehunter/entity/Position;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    return-object v0

    .line 73
    :catch_0
    move-exception v0

    const-string v1, "parseFindLoc Exception"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, La/a/a;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 79
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 82
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 83
    const-class v1, Lcom/nut/blehunter/service/NutTrackerService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 84
    const-string v1, "com.nutspace.action.push.message"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 41
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1092
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    const-string v0, "push_channel_id"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/nut/blehunter/d/l;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "update push token:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, La/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1090
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1091
    const-string v0, "reqModifyProfile params is null"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, La/a/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1094
    :cond_2
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->b()Lcom/nut/blehunter/rxApi/service/AccountService;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/nut/blehunter/rxApi/model/ModifyProfileRequestBody;->createModifyProfileRequestBody(Ljava/lang/String;Ljava/lang/String;)Lcom/nut/blehunter/rxApi/model/ModifyProfileRequestBody;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nut/blehunter/rxApi/service/AccountService;->modifyProfile(Lcom/nut/blehunter/rxApi/model/ModifyProfileRequestBody;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/push/b;

    invoke-direct {v1, p0, p1}, Lcom/nut/blehunter/push/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_0
.end method
