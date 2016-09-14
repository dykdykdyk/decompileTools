.class final Lcom/nut/blehunter/ui/em;
.super Lcom/nut/blehunter/rxApi/j;
.source "NutSettingActivity.java"


# instance fields
.field final synthetic a:Lcom/nut/blehunter/entity/Nut;

.field final synthetic b:Lcom/nut/blehunter/ui/NutSettingActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/NutSettingActivity;Lcom/nut/blehunter/entity/Nut;)V
    .locals 0

    .prologue
    .line 626
    iput-object p1, p0, Lcom/nut/blehunter/ui/em;->b:Lcom/nut/blehunter/ui/NutSettingActivity;

    iput-object p2, p0, Lcom/nut/blehunter/ui/em;->a:Lcom/nut/blehunter/entity/Nut;

    invoke-direct {p0}, Lcom/nut/blehunter/rxApi/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nut/blehunter/rxApi/model/ApiError;)V
    .locals 3

    .prologue
    .line 636
    iget-object v0, p0, Lcom/nut/blehunter/ui/em;->b:Lcom/nut/blehunter/ui/NutSettingActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/aa;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 637
    iget v0, p1, Lcom/nut/blehunter/rxApi/model/ApiError;->errorCode:I

    const/16 v1, 0x130

    if-ne v0, v1, :cond_0

    .line 638
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/em;->a:Lcom/nut/blehunter/entity/Nut;

    iget-object v1, v1, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/provider/l;->i(Ljava/lang/String;)V

    .line 642
    :goto_0
    return-void

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/em;->b:Lcom/nut/blehunter/ui/NutSettingActivity;

    iget v1, p1, Lcom/nut/blehunter/rxApi/model/ApiError;->errorCode:I

    iget-object v2, p1, Lcom/nut/blehunter/rxApi/model/ApiError;->errorMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/nut/blehunter/rxApi/f;->a(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 629
    iget-object v0, p0, Lcom/nut/blehunter/ui/em;->b:Lcom/nut/blehunter/ui/NutSettingActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/aa;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 630
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/em;->a:Lcom/nut/blehunter/entity/Nut;

    iget-object v1, v1, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/provider/l;->i(Ljava/lang/String;)V

    .line 631
    iget-object v0, p0, Lcom/nut/blehunter/ui/em;->b:Lcom/nut/blehunter/ui/NutSettingActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/NutSettingActivity;->d(Lcom/nut/blehunter/ui/NutSettingActivity;)V

    .line 632
    return-void
.end method
