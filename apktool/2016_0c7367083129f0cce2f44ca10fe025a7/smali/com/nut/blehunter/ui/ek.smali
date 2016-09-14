.class final Lcom/nut/blehunter/ui/ek;
.super Lcom/nut/blehunter/rxApi/j;
.source "NutSettingActivity.java"


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/NutSettingActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/NutSettingActivity;)V
    .locals 0

    .prologue
    .line 415
    iput-object p1, p0, Lcom/nut/blehunter/ui/ek;->a:Lcom/nut/blehunter/ui/NutSettingActivity;

    invoke-direct {p0}, Lcom/nut/blehunter/rxApi/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nut/blehunter/rxApi/model/ApiError;)V
    .locals 3

    .prologue
    .line 448
    iget-object v0, p0, Lcom/nut/blehunter/ui/ek;->a:Lcom/nut/blehunter/ui/NutSettingActivity;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/NutSettingActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    :goto_0
    return-void

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/ek;->a:Lcom/nut/blehunter/ui/NutSettingActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 452
    iget-object v0, p0, Lcom/nut/blehunter/ui/ek;->a:Lcom/nut/blehunter/ui/NutSettingActivity;

    iget v1, p1, Lcom/nut/blehunter/rxApi/model/ApiError;->errorCode:I

    iget-object v2, p1, Lcom/nut/blehunter/rxApi/model/ApiError;->errorMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/nut/blehunter/rxApi/f;->a(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 6

    .prologue
    const v5, 0x7f0601aa

    const/4 v4, 0x0

    .line 418
    iget-object v0, p0, Lcom/nut/blehunter/ui/ek;->a:Lcom/nut/blehunter/ui/NutSettingActivity;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/NutSettingActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/ek;->a:Lcom/nut/blehunter/ui/NutSettingActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 422
    invoke-static {p1}, Lcom/nut/blehunter/rxApi/a;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 423
    if-eqz v0, :cond_0

    .line 424
    const-string v1, "firmware"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 425
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 426
    const-class v1, Lcom/nut/blehunter/entity/i;

    .line 1049
    invoke-static {v0, v1}, Lcom/nut/blehunter/e;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 426
    check-cast v0, Lcom/nut/blehunter/entity/i;

    .line 428
    if-eqz v0, :cond_2

    :try_start_0
    iget-object v1, v0, Lcom/nut/blehunter/entity/i;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/nut/blehunter/ui/ek;->a:Lcom/nut/blehunter/ui/NutSettingActivity;

    invoke-static {v2}, Lcom/nut/blehunter/ui/NutSettingActivity;->a(Lcom/nut/blehunter/ui/NutSettingActivity;)Lcom/nut/blehunter/entity/Nut;

    move-result-object v2

    iget-object v2, v2, Lcom/nut/blehunter/entity/Nut;->v:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-le v1, v2, :cond_2

    .line 430
    invoke-static {}, Lcom/nut/blehunter/provider/m;->b()Lcom/nut/blehunter/provider/m;

    move-result-object v1

    iget-object v2, p0, Lcom/nut/blehunter/ui/ek;->a:Lcom/nut/blehunter/ui/NutSettingActivity;

    invoke-static {v2}, Lcom/nut/blehunter/ui/NutSettingActivity;->a(Lcom/nut/blehunter/ui/NutSettingActivity;)Lcom/nut/blehunter/entity/Nut;

    move-result-object v2

    iget v2, v2, Lcom/nut/blehunter/entity/Nut;->p:I

    invoke-virtual {v1, v2, v0}, Lcom/nut/blehunter/provider/m;->a(ILcom/nut/blehunter/entity/i;)V

    .line 431
    iget-object v1, p0, Lcom/nut/blehunter/ui/ek;->a:Lcom/nut/blehunter/ui/NutSettingActivity;

    iget-object v2, p0, Lcom/nut/blehunter/ui/ek;->a:Lcom/nut/blehunter/ui/NutSettingActivity;

    invoke-static {v2}, Lcom/nut/blehunter/ui/NutSettingActivity;->a(Lcom/nut/blehunter/ui/NutSettingActivity;)Lcom/nut/blehunter/entity/Nut;

    move-result-object v2

    iget v2, v2, Lcom/nut/blehunter/entity/Nut;->p:I

    iget-object v3, p0, Lcom/nut/blehunter/ui/ek;->a:Lcom/nut/blehunter/ui/NutSettingActivity;

    invoke-static {v1, v2, v0, v3}, Lcom/nut/blehunter/dfu/e;->a(Landroid/support/v4/app/FragmentActivity;ILcom/nut/blehunter/entity/i;Lcom/nut/blehunter/ui/b/a/d;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 436
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 437
    iget-object v0, p0, Lcom/nut/blehunter/ui/ek;->a:Lcom/nut/blehunter/ui/NutSettingActivity;

    iget-object v1, p0, Lcom/nut/blehunter/ui/ek;->a:Lcom/nut/blehunter/ui/NutSettingActivity;

    invoke-virtual {v1, v5}, Lcom/nut/blehunter/ui/NutSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcom/nut/blehunter/d/o;->a(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 433
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/ek;->a:Lcom/nut/blehunter/ui/NutSettingActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nut/blehunter/ui/ek;->a:Lcom/nut/blehunter/ui/NutSettingActivity;

    const v3, 0x7f0601aa

    invoke-virtual {v2, v3}, Lcom/nut/blehunter/ui/NutSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/nut/blehunter/d/o;->a(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 440
    :cond_3
    iget-object v0, p0, Lcom/nut/blehunter/ui/ek;->a:Lcom/nut/blehunter/ui/NutSettingActivity;

    iget-object v1, p0, Lcom/nut/blehunter/ui/ek;->a:Lcom/nut/blehunter/ui/NutSettingActivity;

    invoke-virtual {v1, v5}, Lcom/nut/blehunter/ui/NutSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcom/nut/blehunter/d/o;->a(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0
.end method
