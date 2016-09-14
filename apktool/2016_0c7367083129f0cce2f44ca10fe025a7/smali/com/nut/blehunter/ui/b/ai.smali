.class final Lcom/nut/blehunter/ui/b/ai;
.super Lcom/nut/blehunter/rxApi/j;
.source "NutListFragment.java"


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/b/ac;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/b/ac;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/nut/blehunter/ui/b/ai;->a:Lcom/nut/blehunter/ui/b/ac;

    invoke-direct {p0}, Lcom/nut/blehunter/rxApi/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nut/blehunter/rxApi/model/ApiError;)V
    .locals 0

    .prologue
    .line 349
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 330
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/ai;->a:Lcom/nut/blehunter/ui/b/ac;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/b/ac;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    invoke-static {p1}, Lcom/nut/blehunter/rxApi/a;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 334
    if-eqz v0, :cond_0

    .line 335
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 336
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 337
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/ai;->a:Lcom/nut/blehunter/ui/b/ac;

    new-instance v2, Lcom/nut/blehunter/ui/b/aj;

    iget-object v3, p0, Lcom/nut/blehunter/ui/b/ai;->a:Lcom/nut/blehunter/ui/b/ac;

    invoke-virtual {v3}, Lcom/nut/blehunter/ui/b/ac;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1093
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1094
    const/4 v0, 0x0

    .line 337
    :goto_1
    invoke-direct {v2, v3, v0}, Lcom/nut/blehunter/ui/b/aj;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v1, v2}, Lcom/nut/blehunter/ui/b/ac;->a(Lcom/nut/blehunter/ui/b/ac;Lcom/nut/blehunter/ui/b/aj;)Lcom/nut/blehunter/ui/b/aj;

    .line 338
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/ai;->a:Lcom/nut/blehunter/ui/b/ac;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/ac;->a(Lcom/nut/blehunter/ui/b/ac;)Lcom/nut/blehunter/ui/widget/LoopViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/b/ai;->a:Lcom/nut/blehunter/ui/b/ac;

    invoke-static {v1}, Lcom/nut/blehunter/ui/b/ac;->f(Lcom/nut/blehunter/ui/b/ac;)Lcom/nut/blehunter/ui/b/aj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/widget/LoopViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 339
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/ai;->a:Lcom/nut/blehunter/ui/b/ac;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/ac;->g(Lcom/nut/blehunter/ui/b/ac;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/ai;->a:Lcom/nut/blehunter/ui/b/ac;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/ac;->b(Lcom/nut/blehunter/ui/b/ac;)V

    goto :goto_0

    .line 1096
    :cond_2
    new-instance v4, Lcom/nut/blehunter/k;

    invoke-direct {v4}, Lcom/nut/blehunter/k;-><init>()V

    invoke-virtual {v4}, Lcom/nut/blehunter/k;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 1097
    invoke-static {v0, v4}, Lcom/nut/blehunter/e;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_1
.end method
