.class final Lcom/nut/blehunter/ui/fl;
.super Lcom/nut/blehunter/rxApi/j;
.source "SafeRegionManageActivity.java"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nut/blehunter/ui/SafeRegionManageActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/SafeRegionManageActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/nut/blehunter/ui/fl;->b:Lcom/nut/blehunter/ui/SafeRegionManageActivity;

    iput-object p2, p0, Lcom/nut/blehunter/ui/fl;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nut/blehunter/rxApi/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nut/blehunter/rxApi/model/ApiError;)V
    .locals 3

    .prologue
    .line 272
    iget-object v0, p0, Lcom/nut/blehunter/ui/fl;->b:Lcom/nut/blehunter/ui/SafeRegionManageActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 273
    iget-object v0, p0, Lcom/nut/blehunter/ui/fl;->b:Lcom/nut/blehunter/ui/SafeRegionManageActivity;

    iget v1, p1, Lcom/nut/blehunter/rxApi/model/ApiError;->errorCode:I

    iget-object v2, p1, Lcom/nut/blehunter/rxApi/model/ApiError;->errorMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/nut/blehunter/rxApi/f;->a(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;)V

    .line 274
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/nut/blehunter/ui/fl;->b:Lcom/nut/blehunter/ui/SafeRegionManageActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 267
    invoke-static {}, Lcom/nut/blehunter/provider/n;->b()Lcom/nut/blehunter/provider/n;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/fl;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/provider/n;->a(Ljava/lang/String;)V

    .line 268
    return-void
.end method
