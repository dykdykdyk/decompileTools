.class final Lcom/nut/blehunter/c/e;
.super Landroid/os/AsyncTask;
.source "SendAuthWeChat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nut/blehunter/c/c;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/c/c;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/nut/blehunter/c/e;->a:Lcom/nut/blehunter/c/c;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 202
    check-cast p1, [Ljava/lang/String;

    .line 4206
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 4207
    iget-object v1, p0, Lcom/nut/blehunter/c/e;->a:Lcom/nut/blehunter/c/c;

    invoke-virtual {v1, v0}, Lcom/nut/blehunter/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 202
    check-cast p1, Ljava/lang/String;

    .line 1215
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1216
    iget-object v0, p0, Lcom/nut/blehunter/c/e;->a:Lcom/nut/blehunter/c/c;

    .line 2044
    invoke-virtual {v0}, Lcom/nut/blehunter/c/c;->a()V

    .line 3239
    :cond_0
    :goto_0
    return-void

    .line 1220
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1221
    const-string v1, "access_token"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1222
    const-string v2, "refresh_token"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1224
    const-string v3, "openid"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1230
    const-string v3, "weChat accessToken=%s refreshToken=%s"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v5

    aput-object v2, v4, v6

    invoke-static {v3, v4}, La/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1231
    iget-object v2, p0, Lcom/nut/blehunter/c/e;->a:Lcom/nut/blehunter/c/c;

    .line 3238
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3241
    const-string v3, "reqCatchUserInfo start"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, La/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3242
    new-instance v3, Lcom/nut/blehunter/c/f;

    invoke-direct {v3, v2}, Lcom/nut/blehunter/c/f;-><init>(Lcom/nut/blehunter/c/c;)V

    new-array v2, v7, [Ljava/lang/String;

    aput-object v1, v2, v5

    aput-object v0, v2, v6

    invoke-virtual {v3, v2}, Lcom/nut/blehunter/c/f;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1227
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
