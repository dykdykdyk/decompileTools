.class final Lcom/nut/blehunter/ui/eg;
.super Ljava/lang/Object;
.source "NutDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/nut/blehunter/ui/NutDetailActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/NutDetailActivity;I)V
    .locals 0

    .prologue
    .line 501
    iput-object p1, p0, Lcom/nut/blehunter/ui/eg;->b:Lcom/nut/blehunter/ui/NutDetailActivity;

    iput p2, p0, Lcom/nut/blehunter/ui/eg;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 504
    const-string v0, ""

    .line 505
    iget v1, p0, Lcom/nut/blehunter/ui/eg;->a:I

    packed-switch v1, :pswitch_data_0

    .line 531
    :goto_0
    iget-object v1, p0, Lcom/nut/blehunter/ui/eg;->b:Lcom/nut/blehunter/ui/NutDetailActivity;

    invoke-static {v1, p1, v0}, Lcom/nut/blehunter/ui/NutDetailActivity;->a(Lcom/nut/blehunter/ui/NutDetailActivity;Landroid/view/View;Ljava/lang/String;)V

    .line 532
    return-void

    .line 507
    :pswitch_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/eg;->b:Lcom/nut/blehunter/ui/NutDetailActivity;

    const v1, 0x7f060188

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/NutDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 511
    :pswitch_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/eg;->b:Lcom/nut/blehunter/ui/NutDetailActivity;

    const v1, 0x7f06018a

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/NutDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 515
    :pswitch_2
    iget-object v0, p0, Lcom/nut/blehunter/ui/eg;->b:Lcom/nut/blehunter/ui/NutDetailActivity;

    const v1, 0x7f060187

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/NutDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 519
    :pswitch_3
    iget-object v0, p0, Lcom/nut/blehunter/ui/eg;->b:Lcom/nut/blehunter/ui/NutDetailActivity;

    const v1, 0x7f060189

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/NutDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 523
    :pswitch_4
    iget-object v0, p0, Lcom/nut/blehunter/ui/eg;->b:Lcom/nut/blehunter/ui/NutDetailActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/NutDetailActivity;->h(Lcom/nut/blehunter/ui/NutDetailActivity;)Lcom/nut/blehunter/entity/Nut;

    move-result-object v0

    iget-object v0, v0, Lcom/nut/blehunter/entity/Nut;->B:Lcom/nut/blehunter/entity/User;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 524
    :goto_1
    iget-object v1, p0, Lcom/nut/blehunter/ui/eg;->b:Lcom/nut/blehunter/ui/NutDetailActivity;

    const v2, 0x7f060185

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/nut/blehunter/ui/NutDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/eg;->b:Lcom/nut/blehunter/ui/NutDetailActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/NutDetailActivity;->h(Lcom/nut/blehunter/ui/NutDetailActivity;)Lcom/nut/blehunter/entity/Nut;

    move-result-object v0

    iget-object v0, v0, Lcom/nut/blehunter/entity/Nut;->B:Lcom/nut/blehunter/entity/User;

    iget-object v0, v0, Lcom/nut/blehunter/entity/User;->b:Ljava/lang/String;

    goto :goto_1

    .line 528
    :pswitch_5
    iget-object v0, p0, Lcom/nut/blehunter/ui/eg;->b:Lcom/nut/blehunter/ui/NutDetailActivity;

    const v1, 0x7f060186

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/NutDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 505
    :pswitch_data_0
    .packed-switch 0x7f030079
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method
