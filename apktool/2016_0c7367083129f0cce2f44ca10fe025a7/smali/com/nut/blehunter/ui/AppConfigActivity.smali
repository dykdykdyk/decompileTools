.class public Lcom/nut/blehunter/ui/AppConfigActivity;
.super Lcom/nut/blehunter/ui/b;
.source "AppConfigActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/nut/blehunter/ui/b/a/d;


# instance fields
.field private a:Lcom/nut/blehunter/entity/User;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/DialogFragment;I)V
    .locals 4

    .prologue
    .line 53
    invoke-virtual {p1}, Landroid/support/v4/app/DialogFragment;->getTag()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 60
    :goto_1
    return-void

    .line 53
    :pswitch_0
    const-string v2, "picker_number"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 55
    :pswitch_1
    check-cast p1, Lcom/nut/blehunter/ui/b/a/v;

    .line 1074
    iget-object v0, p1, Lcom/nut/blehunter/ui/b/a/v;->f:Ljava/lang/String;

    .line 56
    iget-object v1, p0, Lcom/nut/blehunter/ui/AppConfigActivity;->b:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2063
    iget-object v1, p0, Lcom/nut/blehunter/ui/AppConfigActivity;->a:Lcom/nut/blehunter/entity/User;

    iput v0, v1, Lcom/nut/blehunter/entity/User;->p:I

    .line 2064
    invoke-static {}, Lcom/nut/blehunter/provider/o;->b()Lcom/nut/blehunter/provider/o;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/AppConfigActivity;->a:Lcom/nut/blehunter/entity/User;

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/provider/o;->a(Lcom/nut/blehunter/entity/User;)V

    goto :goto_1

    .line 53
    :pswitch_data_0
    .packed-switch 0x5561b41a
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 49
    :goto_0
    return-void

    .line 44
    :pswitch_0
    const v0, 0x7f060227

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nut/blehunter/ui/AppConfigActivity;->a:Lcom/nut/blehunter/entity/User;

    iget v2, v2, Lcom/nut/blehunter/entity/User;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, p0}, Lcom/nut/blehunter/ui/b/a/v;->a(Landroid/content/Context;ILjava/lang/String;Lcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/v;

    move-result-object v0

    const-string v1, "picker_number"

    invoke-virtual {v0, p0, v1}, Lcom/nut/blehunter/ui/b/a/v;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :pswitch_data_0
    .packed-switch 0x7f0d008e
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v0, 0x7f030020

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/AppConfigActivity;->setContentView(I)V

    .line 25
    const v0, 0x7f060229

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/AppConfigActivity;->a(I)V

    .line 27
    invoke-static {}, Lcom/nut/blehunter/provider/o;->b()Lcom/nut/blehunter/provider/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/provider/o;->c()Lcom/nut/blehunter/entity/User;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/AppConfigActivity;->a:Lcom/nut/blehunter/entity/User;

    .line 28
    iget-object v0, p0, Lcom/nut/blehunter/ui/AppConfigActivity;->a:Lcom/nut/blehunter/entity/User;

    if-nez v0, :cond_0

    .line 32
    :goto_0
    return-void

    .line 1035
    :cond_0
    const v0, 0x7f0d008e

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/AppConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1036
    const v0, 0x7f0d008f

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/AppConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/AppConfigActivity;->b:Landroid/widget/TextView;

    .line 1037
    iget-object v0, p0, Lcom/nut/blehunter/ui/AppConfigActivity;->b:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nut/blehunter/ui/AppConfigActivity;->a:Lcom/nut/blehunter/entity/User;

    iget v2, v2, Lcom/nut/blehunter/entity/User;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
