.class final Lcom/nut/blehunter/service/q;
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
.field final synthetic a:Lcom/nut/blehunter/entity/Nut;

.field final synthetic b:Lcom/nut/blehunter/service/NutTrackerService;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/service/NutTrackerService;Lcom/nut/blehunter/entity/Nut;)V
    .locals 0

    .prologue
    .line 1607
    iput-object p1, p0, Lcom/nut/blehunter/service/q;->b:Lcom/nut/blehunter/service/NutTrackerService;

    iput-object p2, p0, Lcom/nut/blehunter/service/q;->a:Lcom/nut/blehunter/entity/Nut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    .prologue
    .line 1611
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 1616
    return-void
.end method

.method public final synthetic onNext(Ljava/lang/Object;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 1607
    check-cast p1, Ljava/lang/String;

    .line 2620
    invoke-static {p1}, Lcom/nut/blehunter/rxApi/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2621
    invoke-static {p1}, Lcom/nut/blehunter/rxApi/a;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 2622
    if-eqz v4, :cond_8

    .line 2623
    const-string v0, "lost"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 2624
    if-nez v5, :cond_1

    move v1, v2

    :goto_0
    move v3, v2

    .line 2625
    :goto_1
    if-ge v3, v1, :cond_5

    .line 2626
    new-instance v6, Lcom/nut/blehunter/entity/FindLocation;

    invoke-direct {v6}, Lcom/nut/blehunter/entity/FindLocation;-><init>()V

    .line 2627
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 2628
    iget-object v7, p0, Lcom/nut/blehunter/service/q;->a:Lcom/nut/blehunter/entity/Nut;

    iget-object v7, v7, Lcom/nut/blehunter/entity/Nut;->k:Ljava/lang/String;

    iput-object v7, v6, Lcom/nut/blehunter/entity/FindLocation;->a:Ljava/lang/String;

    .line 2629
    const-string v7, ""

    iput-object v7, v6, Lcom/nut/blehunter/entity/FindLocation;->c:Ljava/lang/String;

    .line 2631
    new-instance v7, Lcom/nut/blehunter/entity/Position;

    invoke-direct {v7}, Lcom/nut/blehunter/entity/Position;-><init>()V

    .line 2632
    const-string v8, "uuid"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/nut/blehunter/entity/Position;->a:Ljava/lang/String;

    .line 2633
    const-string v8, "source"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2634
    const-string v9, "APP"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2635
    iput v2, v7, Lcom/nut/blehunter/entity/Position;->b:I

    .line 2641
    :cond_0
    :goto_2
    const-string v8, "latitude"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v8

    iput-wide v8, v7, Lcom/nut/blehunter/entity/Position;->d:D

    .line 2642
    const-string v8, "longitude"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v8

    iput-wide v8, v7, Lcom/nut/blehunter/entity/Position;->c:D

    .line 2644
    :try_start_0
    const-string v8, "createTime"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nut/blehunter/d/e;->b(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/nut/blehunter/entity/Position;->e:J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2648
    :goto_3
    iput-object v7, v6, Lcom/nut/blehunter/entity/FindLocation;->b:Lcom/nut/blehunter/entity/Position;

    .line 2649
    invoke-static {}, Lcom/nut/blehunter/provider/k;->b()Lcom/nut/blehunter/provider/k;

    move-result-object v0

    iget-object v7, v7, Lcom/nut/blehunter/entity/Position;->a:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/nut/blehunter/provider/k;->c(Ljava/lang/String;)Lcom/nut/blehunter/entity/FindLocation;

    move-result-object v0

    .line 2650
    if-eqz v0, :cond_4

    iget-object v7, v0, Lcom/nut/blehunter/entity/FindLocation;->c:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 2651
    iget-object v0, v0, Lcom/nut/blehunter/entity/FindLocation;->c:Ljava/lang/String;

    iput-object v0, v6, Lcom/nut/blehunter/entity/FindLocation;->c:Ljava/lang/String;

    .line 2652
    invoke-static {}, Lcom/nut/blehunter/provider/k;->b()Lcom/nut/blehunter/provider/k;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/nut/blehunter/provider/k;->a(Lcom/nut/blehunter/entity/FindLocation;)V

    .line 2625
    :goto_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 2624
    :cond_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    move v1, v0

    goto :goto_0

    .line 2636
    :cond_2
    const-string v9, "YIXIN"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2637
    const/4 v8, 0x2

    iput v8, v7, Lcom/nut/blehunter/entity/Position;->b:I

    goto :goto_2

    .line 2638
    :cond_3
    const-string v9, "WECHAT"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2639
    const/4 v8, 0x3

    iput v8, v7, Lcom/nut/blehunter/entity/Position;->b:I

    goto :goto_2

    .line 2646
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_3

    .line 2654
    :cond_4
    invoke-static {}, Lcom/nut/blehunter/u;->a()Lcom/nut/blehunter/u;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/nut/blehunter/u;->a(Lcom/nut/blehunter/entity/FindLocation;)V

    .line 2655
    invoke-static {}, Lcom/nut/blehunter/provider/k;->b()Lcom/nut/blehunter/provider/k;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/nut/blehunter/provider/k;->a(Lcom/nut/blehunter/entity/FindLocation;)V

    goto :goto_4

    .line 2658
    :cond_5
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/service/q;->a:Lcom/nut/blehunter/entity/Nut;

    iget-object v1, v1, Lcom/nut/blehunter/entity/Nut;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/provider/l;->d(Ljava/lang/String;)Lcom/nut/blehunter/entity/Nut;

    move-result-object v0

    .line 2659
    if-eqz v0, :cond_8

    .line 2660
    const-string v1, "lostStartSize"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 2661
    const-string v3, "lostSuccessSize"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 2662
    iget v4, v0, Lcom/nut/blehunter/entity/Nut;->G:I

    sub-int v4, v3, v4

    .line 2663
    if-lez v4, :cond_6

    .line 2664
    iget-object v5, p0, Lcom/nut/blehunter/service/q;->b:Lcom/nut/blehunter/service/NutTrackerService;

    iget-object v6, p0, Lcom/nut/blehunter/service/q;->a:Lcom/nut/blehunter/entity/Nut;

    iget-object v6, v6, Lcom/nut/blehunter/entity/Nut;->k:Ljava/lang/String;

    invoke-static {v5, v6, v4}, Lcom/nut/blehunter/d/l;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2666
    :cond_6
    iput v1, v0, Lcom/nut/blehunter/entity/Nut;->F:I

    .line 2667
    iput v3, v0, Lcom/nut/blehunter/entity/Nut;->G:I

    .line 2668
    iget v1, v0, Lcom/nut/blehunter/entity/Nut;->G:I

    if-lez v1, :cond_7

    .line 2669
    const/4 v1, 0x6

    iput v1, v0, Lcom/nut/blehunter/entity/Nut;->K:I

    .line 2671
    :cond_7
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/nut/blehunter/provider/l;->a(Lcom/nut/blehunter/entity/Nut;Z)V

    .line 2674
    :cond_8
    :goto_5
    return-void

    .line 2675
    :cond_9
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/nut/blehunter/rxApi/a;->a(Ljava/lang/String;Z)Lcom/nut/blehunter/rxApi/model/ApiError;

    goto :goto_5
.end method
