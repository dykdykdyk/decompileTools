.class final Lcom/nut/blehunter/service/g;
.super Ljava/lang/Object;
.source "NutTrackerService.java"

# interfaces
.implements Lrx/b/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/b/f",
        "<",
        "Ljava/lang/String;",
        "Lrx/h",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nut/blehunter/service/NutTrackerService;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/service/NutTrackerService;)V
    .locals 0

    .prologue
    .line 1279
    iput-object p1, p0, Lcom/nut/blehunter/service/g;->a:Lcom/nut/blehunter/service/NutTrackerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 1279
    check-cast p1, Ljava/lang/String;

    .line 2282
    invoke-static {p1}, Lcom/nut/blehunter/rxApi/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2283
    invoke-static {p1}, Lrx/h;->a(Ljava/lang/Object;)Lrx/h;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2285
    :cond_0
    invoke-static {p1}, Lcom/nut/blehunter/rxApi/a;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2286
    if-eqz v0, :cond_1

    .line 2287
    const-string v1, "lastVersion"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 2288
    iget-object v2, p0, Lcom/nut/blehunter/service/g;->a:Lcom/nut/blehunter/service/NutTrackerService;

    .line 3108
    const-string v3, "product_version"

    invoke-static {v2, v3, v1}, Lcom/nut/blehunter/d/l;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2289
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2290
    if-eqz v0, :cond_1

    .line 2291
    const-string v1, "items"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2292
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2293
    invoke-static {v0}, Lcom/nut/blehunter/e;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2294
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 2295
    invoke-static {}, Lcom/nut/blehunter/provider/m;->b()Lcom/nut/blehunter/provider/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nut/blehunter/provider/m;->a(Ljava/util/List;)V

    .line 2301
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/service/g;->a:Lcom/nut/blehunter/service/NutTrackerService;

    invoke-static {v0}, Lcom/nut/blehunter/service/NutTrackerService;->e(Lcom/nut/blehunter/service/NutTrackerService;)Lrx/h;

    move-result-object v0

    goto :goto_0
.end method
