.class final Lcom/nut/blehunter/ui/gr;
.super Ljava/lang/Object;
.source "SilencesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/entity/Silence;

.field final synthetic b:Lcom/nut/blehunter/ui/SilencesActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/SilencesActivity;Lcom/nut/blehunter/entity/Silence;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/nut/blehunter/ui/gr;->b:Lcom/nut/blehunter/ui/SilencesActivity;

    iput-object p2, p0, Lcom/nut/blehunter/ui/gr;->a:Lcom/nut/blehunter/entity/Silence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 106
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nut/blehunter/ui/gr;->b:Lcom/nut/blehunter/ui/SilencesActivity;

    const-class v2, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    const-string v1, "silence"

    iget-object v2, p0, Lcom/nut/blehunter/ui/gr;->a:Lcom/nut/blehunter/entity/Silence;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 108
    const-string v1, "index"

    iget-object v2, p0, Lcom/nut/blehunter/ui/gr;->b:Lcom/nut/blehunter/ui/SilencesActivity;

    invoke-static {v2}, Lcom/nut/blehunter/ui/SilencesActivity;->b(Lcom/nut/blehunter/ui/SilencesActivity;)Lcom/nut/blehunter/entity/User;

    move-result-object v2

    iget-object v2, v2, Lcom/nut/blehunter/entity/User;->s:Lcom/nut/blehunter/entity/aa;

    iget-object v2, v2, Lcom/nut/blehunter/entity/aa;->b:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/nut/blehunter/ui/gr;->a:Lcom/nut/blehunter/entity/Silence;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 109
    const-string v1, "edit"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 110
    iget-object v1, p0, Lcom/nut/blehunter/ui/gr;->b:Lcom/nut/blehunter/ui/SilencesActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/nut/blehunter/ui/SilencesActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 111
    return-void
.end method
