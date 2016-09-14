.class final Lcom/nut/blehunter/ui/go;
.super Ljava/lang/Object;
.source "SilenceAddOrEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/nut/blehunter/ui/go;->a:Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 59
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 60
    const-string v1, "index"

    iget-object v2, p0, Lcom/nut/blehunter/ui/go;->a:Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;

    invoke-static {v2}, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->a(Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 61
    iget-object v1, p0, Lcom/nut/blehunter/ui/go;->a:Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->setResult(ILandroid/content/Intent;)V

    .line 62
    iget-object v0, p0, Lcom/nut/blehunter/ui/go;->a:Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->finish()V

    .line 63
    const-string v0, "NTSilentPeriodEvent"

    const-string v1, "PERIOD_REMOVED"

    invoke-static {v0, v1}, Lcom/nut/blehunter/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method
