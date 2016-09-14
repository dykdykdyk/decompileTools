.class public final Lcom/nut/blehunter/ui/fz;
.super Landroid/support/v7/widget/ex;
.source "ScanDeviceActivity.java"


# instance fields
.field l:Landroid/widget/ImageView;

.field m:Landroid/widget/TextView;

.field n:Landroid/widget/ImageView;

.field final synthetic o:Lcom/nut/blehunter/ui/fy;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/fy;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1024
    iput-object p1, p0, Lcom/nut/blehunter/ui/fz;->o:Lcom/nut/blehunter/ui/fy;

    .line 1025
    invoke-direct {p0, p2}, Landroid/support/v7/widget/ex;-><init>(Landroid/view/View;)V

    .line 1026
    const v0, 0x7f0d01fb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/fz;->l:Landroid/widget/ImageView;

    .line 1027
    const v0, 0x7f0d01fe

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/fz;->m:Landroid/widget/TextView;

    .line 1028
    const v0, 0x7f0d01fd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/fz;->n:Landroid/widget/ImageView;

    .line 1029
    new-instance v0, Lcom/nut/blehunter/ui/ga;

    invoke-direct {v0, p0, p1}, Lcom/nut/blehunter/ui/ga;-><init>(Lcom/nut/blehunter/ui/fz;Lcom/nut/blehunter/ui/fy;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1038
    return-void
.end method
