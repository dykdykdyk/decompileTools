.class final Lcom/nut/blehunter/service/e;
.super Lcom/nut/blehunter/rxApi/j;
.source "NutTrackerService.java"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nut/blehunter/service/NutTrackerService;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/service/NutTrackerService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1253
    iput-object p1, p0, Lcom/nut/blehunter/service/e;->b:Lcom/nut/blehunter/service/NutTrackerService;

    iput-object p2, p0, Lcom/nut/blehunter/service/e;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nut/blehunter/rxApi/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nut/blehunter/rxApi/model/ApiError;)V
    .locals 0

    .prologue
    .line 1272
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1256
    invoke-static {p1}, Lcom/nut/blehunter/rxApi/a;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1257
    if-eqz v0, :cond_0

    .line 1258
    const-string v1, "shareRecords"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1259
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1260
    invoke-static {v0}, Lcom/nut/blehunter/e;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1261
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v1

    iget-object v2, p0, Lcom/nut/blehunter/service/e;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/nut/blehunter/provider/l;->e(Ljava/lang/String;)Lcom/nut/blehunter/entity/Nut;

    move-result-object v1

    .line 1262
    if-eqz v1, :cond_0

    .line 1263
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v2

    iget-object v1, v1, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/nut/blehunter/provider/l;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 1267
    :cond_0
    return-void
.end method
