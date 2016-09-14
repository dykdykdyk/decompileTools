.class final Lcom/nut/blehunter/service/c;
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
.field final synthetic a:Lcom/nut/blehunter/entity/User;

.field final synthetic b:Lcom/nut/blehunter/service/NutTrackerService;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/service/NutTrackerService;Lcom/nut/blehunter/entity/User;)V
    .locals 0

    .prologue
    .line 1223
    iput-object p1, p0, Lcom/nut/blehunter/service/c;->b:Lcom/nut/blehunter/service/NutTrackerService;

    iput-object p2, p0, Lcom/nut/blehunter/service/c;->a:Lcom/nut/blehunter/entity/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    .prologue
    .line 1227
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 1232
    return-void
.end method

.method public final synthetic onNext(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1223
    check-cast p1, Ljava/lang/String;

    .line 2236
    invoke-static {p1}, Lcom/nut/blehunter/rxApi/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2237
    invoke-static {p1}, Lcom/nut/blehunter/rxApi/a;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2238
    if-eqz v0, :cond_0

    .line 2239
    const-string v1, "downloadUrl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2240
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2241
    iget-object v1, p0, Lcom/nut/blehunter/service/c;->a:Lcom/nut/blehunter/entity/User;

    iput-object v0, v1, Lcom/nut/blehunter/entity/User;->e:Ljava/lang/String;

    .line 2242
    invoke-static {}, Lcom/nut/blehunter/provider/o;->b()Lcom/nut/blehunter/provider/o;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/service/c;->a:Lcom/nut/blehunter/entity/User;

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/provider/o;->a(Lcom/nut/blehunter/entity/User;)V

    .line 2245
    :cond_0
    :goto_0
    return-void

    .line 2246
    :cond_1
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/nut/blehunter/rxApi/a;->a(Ljava/lang/String;Z)Lcom/nut/blehunter/rxApi/model/ApiError;

    goto :goto_0
.end method
