.class final Lcom/nut/blehunter/ui/cu;
.super Ljava/lang/Object;
.source "Main2Activity.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/Main2Activity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/Main2Activity;)V
    .locals 0

    .prologue
    .line 920
    iput-object p1, p0, Lcom/nut/blehunter/ui/cu;->a:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 923
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 924
    const/4 v0, 0x0

    .line 925
    const v2, 0x7f0d0243

    if-ne v1, v2, :cond_2

    .line 926
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nut/blehunter/ui/cu;->a:Lcom/nut/blehunter/ui/Main2Activity;

    const-class v2, Lcom/nut/blehunter/ui/ScanDeviceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 927
    iget-object v1, p0, Lcom/nut/blehunter/ui/cu;->a:Lcom/nut/blehunter/ui/Main2Activity;

    const-string v2, "popup_window_bind_hardware"

    .line 1281
    invoke-static {v1, v2}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 935
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 936
    iget-object v1, p0, Lcom/nut/blehunter/ui/cu;->a:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-virtual {v1, v0}, Lcom/nut/blehunter/ui/Main2Activity;->startActivity(Landroid/content/Intent;)V

    .line 938
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 928
    :cond_2
    const v2, 0x7f0d0242

    if-ne v1, v2, :cond_3

    .line 929
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nut/blehunter/ui/cu;->a:Lcom/nut/blehunter/ui/Main2Activity;

    const-class v2, Lcom/nut/blehunter/ui/AddFriendActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 930
    iget-object v1, p0, Lcom/nut/blehunter/ui/cu;->a:Lcom/nut/blehunter/ui/Main2Activity;

    const-string v2, "popup_window_add_friend"

    .line 2281
    invoke-static {v1, v2}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 931
    :cond_3
    const v2, 0x7f0d0244

    if-ne v1, v2, :cond_0

    .line 932
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nut/blehunter/ui/cu;->a:Lcom/nut/blehunter/ui/Main2Activity;

    const-class v2, Lcom/nut/blehunter/qrcode/CaptureActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 933
    iget-object v1, p0, Lcom/nut/blehunter/ui/cu;->a:Lcom/nut/blehunter/ui/Main2Activity;

    const-string v2, "popup_window_scan"

    .line 3281
    invoke-static {v1, v2}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
