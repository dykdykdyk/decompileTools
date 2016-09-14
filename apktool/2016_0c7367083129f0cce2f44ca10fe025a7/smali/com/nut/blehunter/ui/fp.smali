.class final Lcom/nut/blehunter/ui/fp;
.super Lcom/nut/blehunter/rxApi/j;
.source "ScanDeviceActivity.java"


# instance fields
.field final synthetic a:Lcom/nut/blehunter/entity/x;

.field final synthetic b:Lcom/nut/blehunter/ui/ScanDeviceActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/ScanDeviceActivity;Lcom/nut/blehunter/entity/x;)V
    .locals 0

    .prologue
    .line 865
    iput-object p1, p0, Lcom/nut/blehunter/ui/fp;->b:Lcom/nut/blehunter/ui/ScanDeviceActivity;

    iput-object p2, p0, Lcom/nut/blehunter/ui/fp;->a:Lcom/nut/blehunter/entity/x;

    invoke-direct {p0}, Lcom/nut/blehunter/rxApi/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nut/blehunter/rxApi/model/ApiError;)V
    .locals 3

    .prologue
    .line 876
    iget-object v0, p0, Lcom/nut/blehunter/ui/fp;->b:Lcom/nut/blehunter/ui/ScanDeviceActivity;

    iget v1, p1, Lcom/nut/blehunter/rxApi/model/ApiError;->errorCode:I

    iget-object v2, p1, Lcom/nut/blehunter/rxApi/model/ApiError;->errorMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/nut/blehunter/rxApi/f;->a(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;)V

    .line 877
    iget-object v0, p0, Lcom/nut/blehunter/ui/fp;->b:Lcom/nut/blehunter/ui/ScanDeviceActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 878
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 868
    iget-object v0, p0, Lcom/nut/blehunter/ui/fp;->b:Lcom/nut/blehunter/ui/ScanDeviceActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 869
    iget-object v0, p0, Lcom/nut/blehunter/ui/fp;->b:Lcom/nut/blehunter/ui/ScanDeviceActivity;

    iget-object v1, p0, Lcom/nut/blehunter/ui/fp;->a:Lcom/nut/blehunter/entity/x;

    invoke-static {v0, v1}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->a(Lcom/nut/blehunter/ui/ScanDeviceActivity;Lcom/nut/blehunter/entity/x;)V

    .line 870
    iget-object v0, p0, Lcom/nut/blehunter/ui/fp;->b:Lcom/nut/blehunter/ui/ScanDeviceActivity;

    iget-object v1, p0, Lcom/nut/blehunter/ui/fp;->a:Lcom/nut/blehunter/entity/x;

    iget v1, v1, Lcom/nut/blehunter/entity/x;->c:I

    invoke-static {v1}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nut/blehunter/ui/fp;->a:Lcom/nut/blehunter/entity/x;

    iget v2, v2, Lcom/nut/blehunter/entity/x;->c:I

    invoke-static {v2}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->a(Lcom/nut/blehunter/ui/ScanDeviceActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    iget-object v0, p0, Lcom/nut/blehunter/ui/fp;->b:Lcom/nut/blehunter/ui/ScanDeviceActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->a(Lcom/nut/blehunter/ui/ScanDeviceActivity;I)V

    .line 872
    return-void
.end method
