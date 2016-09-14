.class final Lcom/nut/blehunter/service/u;
.super Ljava/lang/Object;
.source "NutTrackerService.java"

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
.field final synthetic a:Lcom/nut/blehunter/service/NutTrackerService;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/service/NutTrackerService;)V
    .locals 0

    .prologue
    .line 1017
    iput-object p1, p0, Lcom/nut/blehunter/service/u;->a:Lcom/nut/blehunter/service/NutTrackerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    .prologue
    .line 1020
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 1024
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1025
    return-void
.end method

.method public final synthetic onNext(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 1017
    check-cast p1, Ljava/lang/String;

    .line 2030
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2031
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v1

    .line 2033
    invoke-static {p1}, Lcom/nut/blehunter/rxApi/a;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 2034
    if-eqz v2, :cond_2

    .line 2035
    const-string v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2036
    invoke-static {v2}, Lcom/nut/blehunter/rxApi/a;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 2037
    if-eqz v2, :cond_3

    .line 2038
    const-string v3, "user"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2039
    invoke-static {v3}, Lcom/nut/blehunter/rxApi/a;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 2040
    if-eqz v3, :cond_0

    .line 2041
    const-string v4, "uuid"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2042
    const-string v5, "index"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 2043
    if-eqz v1, :cond_0

    iget-object v5, v1, Lcom/nut/blehunter/entity/User;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2044
    new-instance v4, Lcom/nut/blehunter/entity/Friend;

    invoke-direct {v4}, Lcom/nut/blehunter/entity/Friend;-><init>()V

    invoke-virtual {v4, v1, v3}, Lcom/nut/blehunter/entity/Friend;->a(Lcom/nut/blehunter/entity/User;I)Lcom/nut/blehunter/entity/Friend;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2048
    :cond_0
    const-string v1, "friends"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2049
    invoke-static {v1}, Lcom/nut/blehunter/e;->d(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2050
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2051
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2059
    :cond_1
    :goto_0
    invoke-static {}, Lcom/nut/blehunter/provider/j;->b()Lcom/nut/blehunter/provider/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nut/blehunter/provider/j;->a(Ljava/util/List;)V

    .line 1017
    :cond_2
    return-void

    .line 2054
    :cond_3
    if-eqz v1, :cond_1

    .line 2055
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2056
    new-instance v2, Lcom/nut/blehunter/entity/Friend;

    invoke-direct {v2}, Lcom/nut/blehunter/entity/Friend;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/nut/blehunter/entity/Friend;->a(Lcom/nut/blehunter/entity/User;I)Lcom/nut/blehunter/entity/Friend;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
