.class public Lcom/nut/blehunter/ui/NutConfigActivity;
.super Lcom/nut/blehunter/ui/b;
.source "NutConfigActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/nut/blehunter/entity/User;

.field private b:Lcom/nut/blehunter/entity/Nut;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 41
    :goto_0
    return-void

    .line 36
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nut/blehunter/ui/ConnectRecordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    const-string v1, "nut"

    iget-object v2, p0, Lcom/nut/blehunter/ui/NutConfigActivity;->b:Lcom/nut/blehunter/entity/Nut;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 38
    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NutConfigActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 34
    :pswitch_data_0
    .packed-switch 0x7f0d011c
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/NutConfigActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "nut"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/Nut;

    iput-object v0, p0, Lcom/nut/blehunter/ui/NutConfigActivity;->b:Lcom/nut/blehunter/entity/Nut;

    .line 22
    const v0, 0x7f030039

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NutConfigActivity;->setContentView(I)V

    .line 23
    const v0, 0x7f060262

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NutConfigActivity;->a(I)V

    .line 25
    invoke-static {}, Lcom/nut/blehunter/provider/o;->b()Lcom/nut/blehunter/provider/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/provider/o;->c()Lcom/nut/blehunter/entity/User;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/NutConfigActivity;->a:Lcom/nut/blehunter/entity/User;

    .line 26
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutConfigActivity;->a:Lcom/nut/blehunter/entity/User;

    if-nez v0, :cond_0

    .line 30
    :goto_0
    return-void

    .line 29
    :cond_0
    const v0, 0x7f0d011c

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NutConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
