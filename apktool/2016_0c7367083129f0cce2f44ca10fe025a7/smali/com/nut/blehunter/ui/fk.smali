.class final Lcom/nut/blehunter/ui/fk;
.super Lcom/nut/blehunter/rxApi/j;
.source "SafeRegionManageActivity.java"


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/SafeRegionManageActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/SafeRegionManageActivity;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/nut/blehunter/ui/fk;->a:Lcom/nut/blehunter/ui/SafeRegionManageActivity;

    invoke-direct {p0}, Lcom/nut/blehunter/rxApi/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nut/blehunter/rxApi/model/ApiError;)V
    .locals 3

    .prologue
    .line 252
    iget-object v0, p0, Lcom/nut/blehunter/ui/fk;->a:Lcom/nut/blehunter/ui/SafeRegionManageActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 253
    iget-object v0, p0, Lcom/nut/blehunter/ui/fk;->a:Lcom/nut/blehunter/ui/SafeRegionManageActivity;

    iget v1, p1, Lcom/nut/blehunter/rxApi/model/ApiError;->errorCode:I

    iget-object v2, p1, Lcom/nut/blehunter/rxApi/model/ApiError;->errorMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/nut/blehunter/rxApi/f;->a(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;)V

    .line 254
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/nut/blehunter/ui/fk;->a:Lcom/nut/blehunter/ui/SafeRegionManageActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 247
    invoke-static {}, Lcom/nut/blehunter/provider/j;->b()Lcom/nut/blehunter/provider/j;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/fk;->a:Lcom/nut/blehunter/ui/SafeRegionManageActivity;

    invoke-static {v1}, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->a(Lcom/nut/blehunter/ui/SafeRegionManageActivity;)Lcom/nut/blehunter/entity/Friend;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/provider/j;->a(Lcom/nut/blehunter/entity/Friend;)V

    .line 248
    return-void
.end method
