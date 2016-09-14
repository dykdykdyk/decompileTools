.class final Lcom/nut/blehunter/ui/cw;
.super Ljava/lang/Object;
.source "MapLocationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/MapLocationActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/MapLocationActivity;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/nut/blehunter/ui/cw;->a:Lcom/nut/blehunter/ui/MapLocationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 96
    iget-object v0, p0, Lcom/nut/blehunter/ui/cw;->a:Lcom/nut/blehunter/ui/MapLocationActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/MapLocationActivity;->a(Lcom/nut/blehunter/ui/MapLocationActivity;)Lcom/nut/blehunter/ui/widget/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/widget/k;->dismiss()V

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 107
    :goto_0
    return-void

    .line 99
    :sswitch_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/cw;->a:Lcom/nut/blehunter/ui/MapLocationActivity;

    iget-object v1, p0, Lcom/nut/blehunter/ui/cw;->a:Lcom/nut/blehunter/ui/MapLocationActivity;

    invoke-static {v1}, Lcom/nut/blehunter/ui/MapLocationActivity;->b(Lcom/nut/blehunter/ui/MapLocationActivity;)Lcom/nut/blehunter/entity/Nut;

    move-result-object v1

    iget-object v2, p0, Lcom/nut/blehunter/ui/cw;->a:Lcom/nut/blehunter/ui/MapLocationActivity;

    invoke-static {v2}, Lcom/nut/blehunter/ui/MapLocationActivity;->c(Lcom/nut/blehunter/ui/MapLocationActivity;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/nut/blehunter/ui/MapLocationActivity;->a(Lcom/nut/blehunter/entity/Nut;Landroid/graphics/Bitmap;Z)V

    .line 100
    iget-object v0, p0, Lcom/nut/blehunter/ui/cw;->a:Lcom/nut/blehunter/ui/MapLocationActivity;

    const-string v1, "item_lost_share_with_wechat_friend"

    .line 1281
    invoke-static {v0, v1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :sswitch_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/cw;->a:Lcom/nut/blehunter/ui/MapLocationActivity;

    iget-object v1, p0, Lcom/nut/blehunter/ui/cw;->a:Lcom/nut/blehunter/ui/MapLocationActivity;

    invoke-static {v1}, Lcom/nut/blehunter/ui/MapLocationActivity;->b(Lcom/nut/blehunter/ui/MapLocationActivity;)Lcom/nut/blehunter/entity/Nut;

    move-result-object v1

    iget-object v2, p0, Lcom/nut/blehunter/ui/cw;->a:Lcom/nut/blehunter/ui/MapLocationActivity;

    invoke-static {v2}, Lcom/nut/blehunter/ui/MapLocationActivity;->c(Lcom/nut/blehunter/ui/MapLocationActivity;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/nut/blehunter/ui/MapLocationActivity;->a(Lcom/nut/blehunter/entity/Nut;Landroid/graphics/Bitmap;Z)V

    .line 104
    iget-object v0, p0, Lcom/nut/blehunter/ui/cw;->a:Lcom/nut/blehunter/ui/MapLocationActivity;

    const-string v1, "item_lost_share_with_wechat_moments"

    .line 2281
    invoke-static {v0, v1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 97
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d0180 -> :sswitch_0
        0x7f0d018a -> :sswitch_1
    .end sparse-switch
.end method
