.class public Lcom/nut/blehunter/ui/LocationFriendFailedTipsActivity;
.super Lcom/nut/blehunter/ui/b;
.source "LocationFriendFailedTipsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected final i()I
    .locals 1

    .prologue
    .line 18
    const v0, 0x7f0201e0

    return v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/LocationFriendFailedTipsActivity;->finish()V

    .line 24
    const/4 v0, 0x0

    const v1, 0x7f040011

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ui/LocationFriendFailedTipsActivity;->overridePendingTransition(II)V

    .line 25
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 11
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onCreate(Landroid/os/Bundle;)V

    .line 12
    const v0, 0x7f030030

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/LocationFriendFailedTipsActivity;->setContentView(I)V

    .line 13
    const v0, 0x7f060140

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/LocationFriendFailedTipsActivity;->a(I)V

    .line 14
    return-void
.end method
