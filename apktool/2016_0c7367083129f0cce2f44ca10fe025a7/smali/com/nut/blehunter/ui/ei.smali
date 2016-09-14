.class final Lcom/nut/blehunter/ui/ei;
.super Lcom/nut/blehunter/rxApi/j;
.source "NutDetailActivity.java"


# instance fields
.field final synthetic a:Lcom/nut/blehunter/entity/Nut;

.field final synthetic b:Lcom/nut/blehunter/ui/NutDetailActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/NutDetailActivity;Lcom/nut/blehunter/entity/Nut;)V
    .locals 0

    .prologue
    .line 692
    iput-object p1, p0, Lcom/nut/blehunter/ui/ei;->b:Lcom/nut/blehunter/ui/NutDetailActivity;

    iput-object p2, p0, Lcom/nut/blehunter/ui/ei;->a:Lcom/nut/blehunter/entity/Nut;

    invoke-direct {p0}, Lcom/nut/blehunter/rxApi/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nut/blehunter/rxApi/model/ApiError;)V
    .locals 3

    .prologue
    .line 706
    iget-object v0, p0, Lcom/nut/blehunter/ui/ei;->b:Lcom/nut/blehunter/ui/NutDetailActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/aa;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 707
    iget v0, p1, Lcom/nut/blehunter/rxApi/model/ApiError;->errorCode:I

    const/16 v1, 0x13e

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/nut/blehunter/rxApi/model/ApiError;->errorCode:I

    const/16 v1, 0x13c

    if-ne v0, v1, :cond_1

    .line 709
    :cond_0
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/ei;->b:Lcom/nut/blehunter/ui/NutDetailActivity;

    invoke-static {v1}, Lcom/nut/blehunter/ui/NutDetailActivity;->h(Lcom/nut/blehunter/ui/NutDetailActivity;)Lcom/nut/blehunter/entity/Nut;

    move-result-object v1

    iget-object v1, v1, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/provider/l;->i(Ljava/lang/String;)V

    .line 710
    iget-object v0, p0, Lcom/nut/blehunter/ui/ei;->b:Lcom/nut/blehunter/ui/NutDetailActivity;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/NutDetailActivity;->finish()V

    .line 714
    :goto_0
    return-void

    .line 712
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/ei;->b:Lcom/nut/blehunter/ui/NutDetailActivity;

    iget v1, p1, Lcom/nut/blehunter/rxApi/model/ApiError;->errorCode:I

    iget-object v2, p1, Lcom/nut/blehunter/rxApi/model/ApiError;->errorMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/nut/blehunter/rxApi/f;->a(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 695
    iget-object v0, p0, Lcom/nut/blehunter/ui/ei;->b:Lcom/nut/blehunter/ui/NutDetailActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/aa;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 696
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/ei;->a:Lcom/nut/blehunter/entity/Nut;

    iget-object v1, v1, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/provider/l;->i(Ljava/lang/String;)V

    .line 697
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 698
    const-string v1, "device_id"

    iget-object v2, p0, Lcom/nut/blehunter/ui/ei;->a:Lcom/nut/blehunter/entity/Nut;

    iget-object v2, v2, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    const-string v1, "is_reset"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 700
    iget-object v1, p0, Lcom/nut/blehunter/ui/ei;->b:Lcom/nut/blehunter/ui/NutDetailActivity;

    const/16 v2, 0x11

    invoke-virtual {v1, v2, v0}, Lcom/nut/blehunter/ui/NutDetailActivity;->a(ILandroid/os/Bundle;)V

    .line 701
    iget-object v0, p0, Lcom/nut/blehunter/ui/ei;->b:Lcom/nut/blehunter/ui/NutDetailActivity;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/NutDetailActivity;->finish()V

    .line 702
    return-void
.end method
