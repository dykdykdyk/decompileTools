.class final Lcom/nut/blehunter/ui/bw;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lrx/b/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/b/b",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/LoginActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/LoginActivity;)V
    .locals 0

    .prologue
    .line 503
    iput-object p1, p0, Lcom/nut/blehunter/ui/bw;->a:Lcom/nut/blehunter/ui/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 503
    check-cast p1, Ljava/lang/String;

    .line 1506
    invoke-static {p1}, Lcom/nut/blehunter/rxApi/a;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1507
    if-eqz v0, :cond_0

    .line 1508
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1509
    invoke-static {v0}, Lcom/nut/blehunter/rxApi/a;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1510
    if-nez v0, :cond_1

    .line 1511
    invoke-static {}, Lcom/nut/blehunter/provider/j;->b()Lcom/nut/blehunter/provider/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/provider/j;->d()V

    .line 1512
    :cond_0
    :goto_0
    return-void

    .line 1514
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1516
    const-string v2, "user"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1517
    invoke-static {v2}, Lcom/nut/blehunter/rxApi/a;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1518
    if-eqz v2, :cond_2

    .line 1519
    const-string v3, "uuid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1520
    const-string v4, "index"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 1521
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v4

    .line 1522
    if-eqz v4, :cond_2

    iget-object v5, v4, Lcom/nut/blehunter/entity/User;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1523
    new-instance v3, Lcom/nut/blehunter/entity/Friend;

    invoke-direct {v3}, Lcom/nut/blehunter/entity/Friend;-><init>()V

    invoke-virtual {v3, v4, v2}, Lcom/nut/blehunter/entity/Friend;->a(Lcom/nut/blehunter/entity/User;I)Lcom/nut/blehunter/entity/Friend;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1527
    :cond_2
    const-string v2, "friends"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1528
    invoke-static {v0}, Lcom/nut/blehunter/e;->d(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1529
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1530
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1532
    :cond_3
    invoke-static {}, Lcom/nut/blehunter/provider/j;->b()Lcom/nut/blehunter/provider/j;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/provider/j;->a(Ljava/util/List;)V

    goto :goto_0
.end method
