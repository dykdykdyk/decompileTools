.class public Lcom/nut/blehunter/ui/UserRatingActivity;
.super Lcom/nut/blehunter/ui/b;
.source "UserRatingActivity.java"

# interfaces
.implements Lcom/nut/blehunter/ui/b/a/ah;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 0

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/UserRatingActivity;->finish()V

    .line 50
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const v0, 0x7f03004b

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/UserRatingActivity;->setContentView(I)V

    .line 18
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/UserRatingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 19
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/UserRatingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 20
    packed-switch v0, :pswitch_data_0

    .line 45
    :goto_0
    return-void

    .line 22
    :pswitch_0
    const/4 v0, 0x1

    invoke-static {v0, v1}, Lcom/nut/blehunter/ui/b/a/ag;->a(ILjava/lang/String;)Lcom/nut/blehunter/ui/b/a/ag;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/UserRatingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "user_rating_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/ag;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 24
    const-string v0, "review_stop_beep_showed"

    .line 1281
    invoke-static {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 28
    :pswitch_1
    const/4 v0, 0x2

    invoke-static {v0, v1}, Lcom/nut/blehunter/ui/b/a/ag;->a(ILjava/lang/String;)Lcom/nut/blehunter/ui/b/a/ag;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/UserRatingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "user_rating_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/ag;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 30
    const-string v0, "review_find_phone_showed"

    .line 2281
    invoke-static {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 34
    :pswitch_2
    const/4 v0, 0x3

    invoke-static {v0, v1}, Lcom/nut/blehunter/ui/b/a/ag;->a(ILjava/lang/String;)Lcom/nut/blehunter/ui/b/a/ag;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/UserRatingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "user_rating_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/ag;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 36
    const-string v0, "review_reconnect_lost_showed"

    .line 3281
    invoke-static {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :pswitch_3
    const/4 v0, 0x4

    invoke-static {v0, v1}, Lcom/nut/blehunter/ui/b/a/ag;->a(ILjava/lang/String;)Lcom/nut/blehunter/ui/b/a/ag;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/UserRatingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "user_rating_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/ag;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 42
    const-string v0, "review_locate_friend_success_showed"

    .line 4281
    invoke-static {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 20
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
