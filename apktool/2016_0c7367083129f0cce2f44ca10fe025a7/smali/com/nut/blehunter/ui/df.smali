.class final Lcom/nut/blehunter/ui/df;
.super Lcom/nut/blehunter/rxApi/j;
.source "MapLocationActivity.java"


# instance fields
.field final synthetic a:Lcom/nut/blehunter/c/g;

.field final synthetic b:Lcom/nut/blehunter/entity/Nut;

.field final synthetic c:Landroid/graphics/Bitmap;

.field final synthetic d:Z

.field final synthetic e:Lcom/nut/blehunter/ui/MapLocationActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/MapLocationActivity;Lcom/nut/blehunter/c/g;Lcom/nut/blehunter/entity/Nut;Landroid/graphics/Bitmap;Z)V
    .locals 0

    .prologue
    .line 785
    iput-object p1, p0, Lcom/nut/blehunter/ui/df;->e:Lcom/nut/blehunter/ui/MapLocationActivity;

    iput-object p2, p0, Lcom/nut/blehunter/ui/df;->a:Lcom/nut/blehunter/c/g;

    iput-object p3, p0, Lcom/nut/blehunter/ui/df;->b:Lcom/nut/blehunter/entity/Nut;

    iput-object p4, p0, Lcom/nut/blehunter/ui/df;->c:Landroid/graphics/Bitmap;

    iput-boolean p5, p0, Lcom/nut/blehunter/ui/df;->d:Z

    invoke-direct {p0}, Lcom/nut/blehunter/rxApi/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nut/blehunter/rxApi/model/ApiError;)V
    .locals 2

    .prologue
    .line 809
    iget-object v0, p0, Lcom/nut/blehunter/ui/df;->e:Lcom/nut/blehunter/ui/MapLocationActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 810
    iget-object v0, p0, Lcom/nut/blehunter/ui/df;->e:Lcom/nut/blehunter/ui/MapLocationActivity;

    const v1, 0x7f060051

    invoke-static {v0, v1}, Lcom/nut/blehunter/d/o;->b(Landroid/content/Context;I)V

    .line 811
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 789
    :try_start_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/df;->e:Lcom/nut/blehunter/ui/MapLocationActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 790
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 791
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/nut/blehunter/entity/ThirdAccount;

    .line 1049
    invoke-static {v0, v1}, Lcom/nut/blehunter/e;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 791
    check-cast v0, Lcom/nut/blehunter/entity/ThirdAccount;

    .line 793
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v1

    .line 794
    new-instance v2, Lcom/nut/blehunter/entity/Wechat;

    invoke-direct {v2}, Lcom/nut/blehunter/entity/Wechat;-><init>()V

    .line 795
    iget-object v3, v0, Lcom/nut/blehunter/entity/ThirdAccount;->e:Ljava/lang/String;

    iput-object v3, v2, Lcom/nut/blehunter/entity/Wechat;->a:Ljava/lang/String;

    .line 796
    iget-object v3, v0, Lcom/nut/blehunter/entity/ThirdAccount;->f:Ljava/lang/String;

    iput-object v3, v2, Lcom/nut/blehunter/entity/Wechat;->b:Ljava/lang/String;

    .line 797
    iput-object v2, v1, Lcom/nut/blehunter/entity/User;->f:Lcom/nut/blehunter/entity/Wechat;

    .line 798
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v2

    iget-object v3, p0, Lcom/nut/blehunter/ui/df;->e:Lcom/nut/blehunter/ui/MapLocationActivity;

    invoke-virtual {v2, v3, v1}, Lcom/nut/blehunter/entity/o;->a(Landroid/content/Context;Lcom/nut/blehunter/entity/User;)V

    .line 799
    iget-object v1, p0, Lcom/nut/blehunter/ui/df;->a:Lcom/nut/blehunter/c/g;

    if-eqz v1, :cond_0

    .line 800
    iget-object v1, p0, Lcom/nut/blehunter/ui/df;->a:Lcom/nut/blehunter/c/g;

    iget-object v2, p0, Lcom/nut/blehunter/ui/df;->b:Lcom/nut/blehunter/entity/Nut;

    iget-object v3, p0, Lcom/nut/blehunter/ui/df;->c:Landroid/graphics/Bitmap;

    iget-boolean v4, p0, Lcom/nut/blehunter/ui/df;->d:Z

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/nut/blehunter/c/g;->a(Lcom/nut/blehunter/entity/ThirdAccount;Lcom/nut/blehunter/entity/Nut;Landroid/graphics/Bitmap;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 805
    :cond_0
    :goto_0
    return-void

    .line 803
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
