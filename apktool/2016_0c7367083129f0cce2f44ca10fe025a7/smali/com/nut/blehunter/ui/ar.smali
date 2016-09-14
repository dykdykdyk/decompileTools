.class final Lcom/nut/blehunter/ui/ar;
.super Ljava/lang/Object;
.source "FriendManageActivity.java"

# interfaces
.implements Lrx/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/k",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/FriendManageActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/FriendManageActivity;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/nut/blehunter/ui/ar;->a:Lcom/nut/blehunter/ui/FriendManageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    .prologue
    .line 207
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 211
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 212
    iget-object v0, p0, Lcom/nut/blehunter/ui/ar;->a:Lcom/nut/blehunter/ui/FriendManageActivity;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/FriendManageActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    :goto_0
    return-void

    .line 215
    :cond_0
    invoke-static {p1}, Lcom/nut/blehunter/rxApi/f;->a(Ljava/lang/Throwable;)Lcom/nut/blehunter/rxApi/model/ApiError;

    move-result-object v0

    .line 216
    iget-object v1, p0, Lcom/nut/blehunter/ui/ar;->a:Lcom/nut/blehunter/ui/FriendManageActivity;

    iget v2, v0, Lcom/nut/blehunter/rxApi/model/ApiError;->errorCode:I

    iget-object v0, v0, Lcom/nut/blehunter/rxApi/model/ApiError;->errorMsg:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/nut/blehunter/rxApi/f;->a(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public final synthetic onNext(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 204
    check-cast p1, Ljava/lang/String;

    .line 1222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1223
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v1

    .line 1225
    invoke-static {p1}, Lcom/nut/blehunter/rxApi/a;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1226
    if-eqz v2, :cond_2

    .line 1227
    const-string v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1228
    invoke-static {v2}, Lcom/nut/blehunter/rxApi/a;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1229
    if-eqz v2, :cond_3

    .line 1230
    const-string v3, "user"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1231
    invoke-static {v3}, Lcom/nut/blehunter/rxApi/a;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1232
    if-eqz v3, :cond_0

    .line 1233
    const-string v4, "uuid"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1234
    const-string v5, "index"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 1235
    if-eqz v1, :cond_0

    iget-object v5, v1, Lcom/nut/blehunter/entity/User;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1236
    new-instance v4, Lcom/nut/blehunter/entity/Friend;

    invoke-direct {v4}, Lcom/nut/blehunter/entity/Friend;-><init>()V

    invoke-virtual {v4, v1, v3}, Lcom/nut/blehunter/entity/Friend;->a(Lcom/nut/blehunter/entity/User;I)Lcom/nut/blehunter/entity/Friend;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1240
    :cond_0
    const-string v1, "friends"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1241
    invoke-static {v1}, Lcom/nut/blehunter/e;->d(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1242
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1243
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1251
    :cond_1
    :goto_0
    invoke-static {}, Lcom/nut/blehunter/provider/j;->b()Lcom/nut/blehunter/provider/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nut/blehunter/provider/j;->a(Ljava/util/List;)V

    .line 204
    :cond_2
    return-void

    .line 1246
    :cond_3
    if-eqz v1, :cond_1

    .line 1247
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1248
    new-instance v2, Lcom/nut/blehunter/entity/Friend;

    invoke-direct {v2}, Lcom/nut/blehunter/entity/Friend;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/nut/blehunter/entity/Friend;->a(Lcom/nut/blehunter/entity/User;I)Lcom/nut/blehunter/entity/Friend;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
