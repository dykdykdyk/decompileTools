.class final Lcom/nut/blehunter/ui/b/z;
.super Ljava/lang/Object;
.source "NotDisturbSilenceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/entity/Silence;

.field final synthetic b:Lcom/nut/blehunter/ui/b/x;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/b/x;Lcom/nut/blehunter/entity/Silence;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/nut/blehunter/ui/b/z;->b:Lcom/nut/blehunter/ui/b/x;

    iput-object p2, p0, Lcom/nut/blehunter/ui/b/z;->a:Lcom/nut/blehunter/entity/Silence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 121
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nut/blehunter/ui/b/z;->b:Lcom/nut/blehunter/ui/b/x;

    invoke-virtual {v1}, Lcom/nut/blehunter/ui/b/x;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    const-string v1, "silence"

    iget-object v2, p0, Lcom/nut/blehunter/ui/b/z;->a:Lcom/nut/blehunter/entity/Silence;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 123
    const-string v1, "index"

    iget-object v2, p0, Lcom/nut/blehunter/ui/b/z;->b:Lcom/nut/blehunter/ui/b/x;

    invoke-static {v2}, Lcom/nut/blehunter/ui/b/x;->b(Lcom/nut/blehunter/ui/b/x;)Lcom/nut/blehunter/entity/User;

    move-result-object v2

    iget-object v2, v2, Lcom/nut/blehunter/entity/User;->s:Lcom/nut/blehunter/entity/aa;

    iget-object v2, v2, Lcom/nut/blehunter/entity/aa;->b:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/nut/blehunter/ui/b/z;->a:Lcom/nut/blehunter/entity/Silence;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 124
    const-string v1, "edit"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 125
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/z;->b:Lcom/nut/blehunter/ui/b/x;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/nut/blehunter/ui/b/x;->startActivityForResult(Landroid/content/Intent;I)V

    .line 126
    return-void
.end method
