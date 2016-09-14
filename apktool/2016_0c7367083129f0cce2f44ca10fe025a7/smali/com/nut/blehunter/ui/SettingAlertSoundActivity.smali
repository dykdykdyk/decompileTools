.class public Lcom/nut/blehunter/ui/SettingAlertSoundActivity;
.super Lcom/nut/blehunter/ui/b;
.source "SettingAlertSoundActivity.java"


# instance fields
.field private a:Lcom/nut/blehunter/ble/a;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/SettingAlertSoundActivity;)I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/nut/blehunter/ui/SettingAlertSoundActivity;->b:I

    return v0
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/SettingAlertSoundActivity;I)I
    .locals 0

    .prologue
    .line 19
    iput p1, p0, Lcom/nut/blehunter/ui/SettingAlertSoundActivity;->b:I

    return p1
.end method

.method static synthetic b(Lcom/nut/blehunter/ui/SettingAlertSoundActivity;)Lcom/nut/blehunter/ble/a;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/nut/blehunter/ui/SettingAlertSoundActivity;->a:Lcom/nut/blehunter/ble/a;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nut/blehunter/ui/SettingAlertSoundActivity;->a:Lcom/nut/blehunter/ble/a;

    invoke-virtual {v0}, Lcom/nut/blehunter/ble/a;->b()V

    .line 72
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 73
    const-string v1, "selected_sound"

    iget v2, p0, Lcom/nut/blehunter/ui/SettingAlertSoundActivity;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 74
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/nut/blehunter/ui/SettingAlertSoundActivity;->setResult(ILandroid/content/Intent;)V

    .line 75
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/SettingAlertSoundActivity;->finish()V

    .line 76
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 27
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f030045

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/SettingAlertSoundActivity;->setContentView(I)V

    .line 29
    const v0, 0x7f06004e

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/SettingAlertSoundActivity;->a(I)V

    .line 31
    const v0, 0x7f0d0146

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/SettingAlertSoundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 32
    invoke-virtual {v0, v5}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 33
    new-instance v1, Lcom/nut/blehunter/ui/widget/c;

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/SettingAlertSoundActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200ec

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Lcom/nut/blehunter/ui/widget/c;-><init>(Landroid/graphics/drawable/Drawable;Z)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/ef;)V

    .line 34
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-virtual {v1, v5}, Landroid/support/v7/widget/LinearLayoutManager;->b(I)V

    .line 36
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/eg;)V

    .line 37
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/SettingAlertSoundActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "selected_sound"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 38
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/SettingAlertSoundActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00f3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 39
    new-instance v3, Lcom/nut/blehunter/ui/a/a;

    new-instance v4, Lcom/nut/blehunter/ui/gh;

    invoke-direct {v4, p0, v0}, Lcom/nut/blehunter/ui/gh;-><init>(Lcom/nut/blehunter/ui/SettingAlertSoundActivity;Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {v3, v2, v1, v4}, Lcom/nut/blehunter/ui/a/a;-><init>([Ljava/lang/String;ILcom/nut/blehunter/ui/a/d;)V

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/dx;)V

    .line 53
    iput v1, p0, Lcom/nut/blehunter/ui/SettingAlertSoundActivity;->b:I

    .line 54
    new-instance v0, Lcom/nut/blehunter/ble/a;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ble/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/SettingAlertSoundActivity;->a:Lcom/nut/blehunter/ble/a;

    .line 55
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nut/blehunter/ui/SettingAlertSoundActivity;->a:Lcom/nut/blehunter/ble/a;

    invoke-virtual {v0}, Lcom/nut/blehunter/ble/a;->e()Z

    .line 66
    invoke-super {p0}, Lcom/nut/blehunter/ui/b;->onPause()V

    .line 67
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Lcom/nut/blehunter/ui/b;->onResume()V

    .line 60
    iget-object v0, p0, Lcom/nut/blehunter/ui/SettingAlertSoundActivity;->a:Lcom/nut/blehunter/ble/a;

    invoke-virtual {v0}, Lcom/nut/blehunter/ble/a;->d()Z

    .line 61
    return-void
.end method
