.class public Lcom/nut/blehunter/ui/QuickAddActivity;
.super Lcom/nut/blehunter/ui/b;
.source "QuickAddActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 38
    :goto_0
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/QuickAddActivity;->finish()V

    .line 39
    return-void

    .line 25
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nut/blehunter/ui/AddFriendActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/QuickAddActivity;->startActivity(Landroid/content/Intent;)V

    .line 26
    const-string v0, "unbind_guide_add"

    .line 1281
    invoke-static {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 30
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nut/blehunter/ui/ScanDeviceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/QuickAddActivity;->startActivity(Landroid/content/Intent;)V

    .line 31
    const-string v0, "unbind_guide_bind"

    .line 2281
    invoke-static {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 35
    :pswitch_2
    const-string v0, "unbind_guide_skip"

    .line 3281
    invoke-static {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 23
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d012f
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onCreate(Landroid/os/Bundle;)V

    .line 15
    const v0, 0x7f03003d

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/QuickAddActivity;->setContentView(I)V

    .line 16
    const v0, 0x7f0d0130

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/QuickAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    const v0, 0x7f0d0131

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/QuickAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    const v0, 0x7f0d012f

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/QuickAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    return-void
.end method
