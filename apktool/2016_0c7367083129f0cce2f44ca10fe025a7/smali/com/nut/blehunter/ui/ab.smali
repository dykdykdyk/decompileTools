.class final Lcom/nut/blehunter/ui/ab;
.super Lcom/nut/blehunter/rxApi/j;
.source "DeclareLostActivity.java"


# instance fields
.field final synthetic a:Lcom/nut/blehunter/entity/Nut;

.field final synthetic b:Lcom/nut/blehunter/ui/DeclareLostActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/DeclareLostActivity;Lcom/nut/blehunter/entity/Nut;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/nut/blehunter/ui/ab;->b:Lcom/nut/blehunter/ui/DeclareLostActivity;

    iput-object p2, p0, Lcom/nut/blehunter/ui/ab;->a:Lcom/nut/blehunter/entity/Nut;

    invoke-direct {p0}, Lcom/nut/blehunter/rxApi/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nut/blehunter/rxApi/model/ApiError;)V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/nut/blehunter/ui/ab;->b:Lcom/nut/blehunter/ui/DeclareLostActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 235
    iget-object v0, p0, Lcom/nut/blehunter/ui/ab;->b:Lcom/nut/blehunter/ui/DeclareLostActivity;

    const v1, 0x7f0601e5

    invoke-static {v0, v1}, Lcom/nut/blehunter/d/o;->a(Landroid/content/Context;I)V

    .line 236
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 214
    iget-object v0, p0, Lcom/nut/blehunter/ui/ab;->b:Lcom/nut/blehunter/ui/DeclareLostActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 215
    iget-object v0, p0, Lcom/nut/blehunter/ui/ab;->b:Lcom/nut/blehunter/ui/DeclareLostActivity;

    const v1, 0x7f0601e6

    invoke-static {v0, v1}, Lcom/nut/blehunter/d/o;->a(Landroid/content/Context;I)V

    .line 216
    invoke-static {p1}, Lcom/nut/blehunter/rxApi/a;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 217
    if-eqz v0, :cond_0

    .line 218
    const-string v1, "losingRecord"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/nut/blehunter/entity/LosingRecord;

    .line 1049
    invoke-static {v0, v1}, Lcom/nut/blehunter/e;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 218
    check-cast v0, Lcom/nut/blehunter/entity/LosingRecord;

    .line 220
    if-eqz v0, :cond_0

    .line 221
    iget-object v1, p0, Lcom/nut/blehunter/ui/ab;->a:Lcom/nut/blehunter/entity/Nut;

    iput-object v0, v1, Lcom/nut/blehunter/entity/Nut;->o:Lcom/nut/blehunter/entity/LosingRecord;

    .line 222
    iget-object v0, p0, Lcom/nut/blehunter/ui/ab;->a:Lcom/nut/blehunter/entity/Nut;

    const/4 v1, 0x2

    iput v1, v0, Lcom/nut/blehunter/entity/Nut;->K:I

    .line 223
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/ab;->a:Lcom/nut/blehunter/entity/Nut;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/provider/l;->a(Lcom/nut/blehunter/entity/Nut;Z)V

    .line 224
    iget-object v0, p0, Lcom/nut/blehunter/ui/ab;->b:Lcom/nut/blehunter/ui/DeclareLostActivity;

    const-string v1, "item_lost_declare_succeeded"

    .line 1281
    invoke-static {v0, v1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 226
    invoke-static {}, Lcom/nut/blehunter/provider/k;->b()Lcom/nut/blehunter/provider/k;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/ab;->a:Lcom/nut/blehunter/entity/Nut;

    iget-object v1, v1, Lcom/nut/blehunter/entity/Nut;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/provider/k;->d(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/nut/blehunter/ui/ab;->b:Lcom/nut/blehunter/ui/DeclareLostActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/DeclareLostActivity;->a(Lcom/nut/blehunter/ui/DeclareLostActivity;)V

    .line 230
    :cond_0
    return-void
.end method
