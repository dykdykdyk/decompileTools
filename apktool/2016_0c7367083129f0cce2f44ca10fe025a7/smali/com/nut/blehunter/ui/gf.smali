.class final Lcom/nut/blehunter/ui/gf;
.super Lcom/nut/blehunter/ui/a/o;
.source "SelectWiFiActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nut/blehunter/ui/a/o",
        "<",
        "Lcom/nut/blehunter/entity/aj;",
        "Landroid/widget/ListView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/SelectWiFiActivity;


# direct methods
.method public constructor <init>(Lcom/nut/blehunter/ui/SelectWiFiActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/nut/blehunter/entity/aj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 254
    iput-object p1, p0, Lcom/nut/blehunter/ui/gf;->a:Lcom/nut/blehunter/ui/SelectWiFiActivity;

    .line 255
    invoke-direct {p0, p2, p3}, Lcom/nut/blehunter/ui/a/o;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 256
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 261
    if-nez p2, :cond_0

    .line 262
    iget-object v0, p0, Lcom/nut/blehunter/ui/gf;->b:Landroid/content/Context;

    const v1, 0x7f03009c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 263
    new-instance v1, Lcom/nut/blehunter/ui/ge;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/nut/blehunter/ui/ge;-><init>(B)V

    .line 264
    const v0, 0x7f0d020b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/nut/blehunter/ui/ge;->a:Landroid/widget/TextView;

    .line 265
    const v0, 0x7f0d020c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/nut/blehunter/ui/ge;->b:Landroid/widget/ImageView;

    .line 266
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 270
    :goto_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/gf;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/aj;

    .line 1020
    iget-object v0, v0, Lcom/nut/blehunter/entity/aj;->a:Ljava/lang/String;

    .line 271
    iget-object v2, v1, Lcom/nut/blehunter/ui/ge;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1278
    iget-object v2, p0, Lcom/nut/blehunter/ui/gf;->a:Lcom/nut/blehunter/ui/SelectWiFiActivity;

    invoke-virtual {v2, v0}, Lcom/nut/blehunter/ui/SelectWiFiActivity;->c(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 274
    :goto_1
    return-object p2

    .line 268
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ui/ge;

    move-object v1, v0

    goto :goto_0

    .line 1280
    :pswitch_0
    iget-object v0, v1, Lcom/nut/blehunter/ui/ge;->b:Landroid/widget/ImageView;

    const v1, 0x7f02007c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 1283
    :pswitch_1
    iget-object v0, v1, Lcom/nut/blehunter/ui/ge;->b:Landroid/widget/ImageView;

    const v1, 0x7f02007d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 1286
    :pswitch_2
    iget-object v0, v1, Lcom/nut/blehunter/ui/ge;->b:Landroid/widget/ImageView;

    const v1, 0x7f020088

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 1278
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
