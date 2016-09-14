.class final Lcom/nut/blehunter/ui/gh;
.super Ljava/lang/Object;
.source "SettingAlertSoundActivity.java"

# interfaces
.implements Lcom/nut/blehunter/ui/a/d;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView;

.field final synthetic b:Lcom/nut/blehunter/ui/SettingAlertSoundActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/SettingAlertSoundActivity;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/nut/blehunter/ui/gh;->b:Lcom/nut/blehunter/ui/SettingAlertSoundActivity;

    iput-object p2, p0, Lcom/nut/blehunter/ui/gh;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 42
    iget-object v0, p0, Lcom/nut/blehunter/ui/gh;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/dx;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ui/a/a;

    .line 1070
    iput p1, v0, Lcom/nut/blehunter/ui/a/a;->c:I

    .line 44
    iget-object v1, p0, Lcom/nut/blehunter/ui/gh;->b:Lcom/nut/blehunter/ui/SettingAlertSoundActivity;

    invoke-static {v1}, Lcom/nut/blehunter/ui/SettingAlertSoundActivity;->a(Lcom/nut/blehunter/ui/SettingAlertSoundActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/a/a;->c(I)V

    .line 45
    invoke-virtual {v0, p1}, Lcom/nut/blehunter/ui/a/a;->c(I)V

    .line 46
    iget-object v0, p0, Lcom/nut/blehunter/ui/gh;->b:Lcom/nut/blehunter/ui/SettingAlertSoundActivity;

    invoke-static {v0, p1}, Lcom/nut/blehunter/ui/SettingAlertSoundActivity;->a(Lcom/nut/blehunter/ui/SettingAlertSoundActivity;I)I

    .line 47
    iget-object v0, p0, Lcom/nut/blehunter/ui/gh;->b:Lcom/nut/blehunter/ui/SettingAlertSoundActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/SettingAlertSoundActivity;->b(Lcom/nut/blehunter/ui/SettingAlertSoundActivity;)Lcom/nut/blehunter/ble/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/ble/a;->b()V

    .line 48
    if-nez p1, :cond_0

    const/4 v1, 0x5

    .line 49
    :goto_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/gh;->b:Lcom/nut/blehunter/ui/SettingAlertSoundActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/SettingAlertSoundActivity;->b(Lcom/nut/blehunter/ui/SettingAlertSoundActivity;)Lcom/nut/blehunter/ble/a;

    move-result-object v0

    sget-object v3, Lcom/nut/blehunter/a;->o:[I

    aget v3, v3, p1

    const/4 v5, 0x3

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/nut/blehunter/ble/a;->a(IZIZI)V

    .line 50
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/gh;->b:Lcom/nut/blehunter/ui/SettingAlertSoundActivity;

    invoke-virtual {v1}, Lcom/nut/blehunter/ui/SettingAlertSoundActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "device_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nut/blehunter/ui/gh;->b:Lcom/nut/blehunter/ui/SettingAlertSoundActivity;

    invoke-static {v2}, Lcom/nut/blehunter/ui/SettingAlertSoundActivity;->a(Lcom/nut/blehunter/ui/SettingAlertSoundActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/provider/l;->b(Ljava/lang/String;I)V

    .line 51
    return-void

    .line 48
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method
